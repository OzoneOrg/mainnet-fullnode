arm64:
	docker build --build-arg="UBUNTU_VERSION=latest" --build-arg="BUILD_ARCH=aarch64" -t tlchain:latest --no-cache .

amd64:
	docker build --build-arg="UBUNTU_VERSION=latest" --build-arg="BUILD_ARCH=x86_64" -t tlchain:latest --no-cache .
