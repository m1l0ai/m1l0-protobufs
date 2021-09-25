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


### References

* [Publishing packages on PYPI](https://packaging.python.org/tutorials/packaging-projects/)


### TODO:

* Setup linter https://docs.buf.build/tour-3

* Setup type checking