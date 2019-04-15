if [ -z "$1" ]; then 
    read -p "tip: run ./setup-mac.sh git/docker/nodejs/help/yourTag to run only a given set of scripts..."
fi

set -xue
ansible-playbook -i hosts setup-mac.yml -v --tags "${1:-'all'}"
