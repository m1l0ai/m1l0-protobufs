import os
from setuptools import setup, find_packages

HERE = os.path.abspath(os.path.dirname(__file__))

with open(os.path.join(HERE, "README.md")) as f:
    README = f.read()

setup(
    name="m1l0-protobufs",
    version="0.7.1",
    description="M1L0 Protobufs",
    long_description=README,
    long_description_content_type="text/markdown",
    url="https://github.com/m1l0ai",
    author="Chee Yeo",
    author_email="ckyeo.1@gmail.com",
    license="MIT",
    packages=find_packages(exclude=[
        'protobufs',
        'protobufs/*.proto',
        'tests', 
        'tests.*',
        '__pycache__',
        'buf.*.yaml'
    ]),
    include_package_data=False
)