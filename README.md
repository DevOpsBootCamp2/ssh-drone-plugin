# ssh-drone-plugin
Custom Plugin for SSH-ing with drone

Example: run from cli

docker run --rm -it \
  -v ${PWD}:/data \
  -e SSH_USER=**** \
  -e SSH_HOST=***.***.***.*** \
  -e SSH_KEY='/data/***.pem' \
  -e SSH_COMMAND='echo hello' \
  devopsbootcamp2/ssh-drone-plugin
  
  
Example in .drone.yml

pipeline:
  ssh:
    image: devopsbootcamp2/ssh-drone-plugin
    environment:
      - SSH_USER=${SSH_USER}
      - SSH_KEY=/data/***.pem
      - SSH_COMMAND=Hello World
      - SSH_HOST=${SSH_IP}
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - ****:/data

