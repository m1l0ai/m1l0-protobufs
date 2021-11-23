.PHONY: build buildbuf dist clean install publish

buildbuf:
	buf generate

	touch m1l0_services/__init__.py
	touch m1l0_services/imagebuilder/__init__.py
	touch m1l0_services/imagebuilder/v1/__init__.py
	touch m1l0_services/dataservice/__init__.py
	touch m1l0_services/dataservice/v1/__init__.py
	touch m1l0_pipeline/__init__.py
	touch m1l0_pipeline/v1/__init__.py

build:
	python -m grpc_tools.protoc -I grpc --python_out=. --grpc_python_out=. grpc/m1l0_services/imagebuilder/v1/*.proto

	touch m1l0_services/__init__.py
	touch m1l0_services/imagebuilder/__init__.py
	touch m1l0_services/imagebuilder/v1/__init__.py

	python -m grpc_tools.protoc -I grpc --python_out=. --grpc_python_out=. grpc/m1l0_services/dataservice/v1/*.proto
	touch m1l0_services/dataservice/__init__.py
	touch m1l0_services/dataservice/v1/__init__.py

dist:
	python setup.py bdist_wheel

clean:
	rm -rf m1l0_services m1l0_pipeline __pycache__ build dist *.egg-info .eggs .coverage .pytest* htmlcov

install:
	pip install --force-reinstall dist/m1l0_protobufs-*-py3-none-any.whl

remove:
	pip uninstall -y m1l0-protobufs

# NOTE: tokens in ~/.pypirc
publish:
	twine upload --repository m1l0-protobufs dist/*