docker run --rm -it \
    --user $(id -u):$(id -g) --net=host \
    -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
    -v /etc/localtime:/etc/localtime:ro \
    -v /home/$(whoami):/home/$(whoami) \
    --hostname repo_env \
    --privileged \
    -w ${PWD} \
    repo_env $@