.PHONY: build dist clean install publish

build:
	python -m grpc_tools.protoc -I protobufs --python_out=. --grpc_python_out=. protobufs/m1l0_services/imagebuilder/*.proto

	touch m1l0_services/__init__.py

	touch m1l0_services/imagebuilder/__init__.py

	python -m grpc_tools.protoc -I protobufs --python_out=. --grpc_python_out=. protobufs/m1l0_services/dataservice/*.proto

	touch m1l0_services/dataservice/__init__.py

dist:
	python setup.py bdist_wheel

clean:
	rm -rf m1l0_services __pycache__ build dist *.egg-info .eggs .coverage .pytest* htmlcov

install:
	pip install --force-reinstall dist/m1l0_protobufs-0.6.0-py3-none-any.whl

remove:
	pip uninstall -y m1l0-protobufs

# NOTE: tokens in ~/.pypirc
publish:
	twine upload --repository m1l0-protobufs dist/*