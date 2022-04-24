GIT_TAG ?= "master"

build:
	docker buildx build --platform linux/arm64 \
		--build-arg CC=gcc-11 \
		--build-arg CMAKE_BUILD_TYPE=Release \
		--build-arg CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=" \
		--build-arg ARCH=arm64 --build-arg GIT_TAG=${GIT_TAG}\
		-f Dockerfile-builder -o build .
