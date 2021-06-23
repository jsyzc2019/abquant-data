[settings]
os=Linux
os_build=Linux
arch=x86_64
arch_build=x86_64
compiler=clang
compiler.version=12
compiler.libcxx=libc++
build_type=Release
[options]
qt:shared=True
[build_requires]
# *: cmake/3.20.3, ninja/1.10.2
[env]

CC="ccache clang"
CXX="ccache clang++"
CPP="ccache cpp"

# CC="clang"
# CXX="clang++"
# CPP="cpp"

LDFLAGS="-fuse-ld=lld"

CONAN_CMAKE_GENERATOR=Ninja
