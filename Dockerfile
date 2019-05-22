FROM fedora

RUN dnf -y update && dnf clean all
RUN dnf -y install git cmake ninja-build llvm clang && dnf clean all

