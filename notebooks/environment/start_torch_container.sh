#!/bin/bash
usedPorts=$(netstat -latn --inet | awk '{print $4}' | awk -F : '{print $2}' | sort -u)
for port in {8988..8999}; do
  echo "trying port $port"
  echo "$usedPorts" | grep -q "^$port$" || break
done

username=$(whoami)

docker run -d \
    --name torch_keras \
    -u "$(id -u):$(id -g)" \
    -v /home/$username:/home/$username \
    -v /home:/host-homes \
    -v /home:/home \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/shadow:/etc/shadow:ro \
    -p "$port:$port" \
    --gpus device=0 \
    --workdir="/home/$username/" \
    pytorch-keras:2.1 \
    bash -c "tail -f /dev/null"