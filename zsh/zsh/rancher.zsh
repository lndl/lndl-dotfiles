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
