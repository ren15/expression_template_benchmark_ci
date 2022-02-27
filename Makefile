.PHONY: $(MAKECMDGOALS)

BUILD_DIR=${PWD}/build

git_clone:
    git clone https://bitbucket.org/blaze-lib/blaze.git
	git clone https://github.com/romeric/Fastor.git

configure:
	rm -rf ${BUILD_DIR}
	mkdir -p ${BUILD_DIR}
	cmake -S ${PWD} -B ${BUILD_DIR}

build:
	cmake --build ${BUILD_DIR}
