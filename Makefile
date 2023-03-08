.ONESHELL: # Applies to every targets in the file!

PROJECT_HOME = "/home/mak/MEGA/MEGAsync/mak/sustainingInnovation/project-workspace/nextGendi/missionOneDoubleO/DevContainerDemo/hello-world-python-vsCode-Container"
PWD = $(shell pwd)

# Test ***Hello starts***
hello:
	echo "hello world";
# Test ***Hello ends***

update-dev-container-template:
	cd $(PROJECT_HOME) && \
	echo "The .devcontainer contents"
	ls -lrt .devcontainer && \
	rm -rf ./dev-container-template-vault/* && \
	cp -r ./.devcontainer/* ./dev-container-template-vault && \
	echo "The devcontainer template vault contents"
	ls -lrt ./dev-container-template-vault