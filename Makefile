# Development targets

IMAGE := bopen/ubuntugis-pyenv

shell:
	docker run --rm -ti -v$$(pwd):/src -w/src $(DOCKERFLAGS) $(IMAGE)

image:
	docker build -t $(IMAGE) $(DOCKERBUILDFLAGS) .
