NAME      := webapp-onbuild
REGISTRY  := whiteplus/$(NAME)
VERSION   := latest

.PHONY: build tag push

build:
	docker build -t $(NAME):$(VERSION) .

tag: build
	docker tag $(NAME):$(VERSION) $(REGISTRY):$(VERSION)

push: tag
	docker push $(REGISTRY):$(VERSION)

