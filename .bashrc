if kubectl version > /dev/null 2>&1; then 
	source <(kubectl completion bash)
	alias k=kubectl
	complete -o default -F __start_kubectl k
fi

figlet -v >/dev/null 2>&1 && bind -x '"\C-l": clear; hostname | figlet'
