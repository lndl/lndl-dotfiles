renv () {
  env_file="$HOME/.rancher/$1.env"
  if [ $# -ne 1 ]
  then
    echo 'Missing env name' >&2
    return 1
  elif [ ! -f $env_file ]
  then
    echo "Missing env file: $env_file" >&2
    return 2
  else
    export $(cat $env_file)
    export SSHRANCHER_ENDPOINT="${RANCHER_URL}/v1"
    export SSHRANCHER_USER="${RANCHER_ACCESS_KEY}"
    export SSHRANCHER_PASSWORD="${RANCHER_SECRET_KEY}"
  fi
}

ranchercp() {
  [ -z "$1" ] && echo "No container suplied" && return 1
  [ -z "$2" ] && echo "No container path supplied" && return 1
  [ -z "$3" ] && echo "No local path supplied" && return 1

  local hostId=$(rancher ps -c | grep $1 | awk '{ print $5 }')
  local containerId=$(rancher ps -c | grep $1 | awk '{ print $7 }')

  rancher --host $hostId docker cp $containerId:$2 $3
}
