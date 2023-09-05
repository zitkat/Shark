import ctypes

clib = ctypes.CDLL("../cext/libparq.so")

print("Hello from Python!")
print(clib.sayhello(42))

