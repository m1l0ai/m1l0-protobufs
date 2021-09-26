### M1L0 Protobufs

Protobufs for micro services used by the M1L0 framework

Current list of protobufs:

* protobufs/imagebuilder

  Image builder service

* protobufs/dataservice

  Data pipeline service


The python package contains the python client needed to interface with the grpc services.

To use the client:
```

from m1l0_services.imagebuilder import image_builder_pb2
from m1l0_services.imagebuilder import image_builder_pb2_grpc

```

The protobufs are packaged into a PyPI package and published at the following location:

https://pypi.org/project/m1l0-protobufs/


### Using buf

https://docs.buf.build

```
buf lint # apply liniting to protobuf files

buf build # if no errors means its ok?

buf ls-files

```


### References

* [Publishing packages on PYPI](https://packaging.python.org/tutorials/packaging-projects/)


### TODO:

* Setup type checking


### Issues:

* Compiling grpc_python_plugin

  The grpc_python_plugin is required to use buf generate

  To build from source:
  ```
  git clone --recursive https://github.com/grpc/grpc
  cmake .
  cmake --build . --target plugins
  ```

* Unable to call buf generate as its failing with following error:
  ```
  Unknown flag: --descriptor_set_in
  ```

  Above fixed by updating protoc to 3.18.0