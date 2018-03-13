export ZSH=/Users/hogni/.oh-my-zsh

#denv stuff
export DEVMANAGEMENTHOME=/Users/hogni/greenqloud/development-management
source ~/greenqloud/.creds/rc
export PATH=$PATH:/usr/local/Cellar/ec2-api-tools/1.7.5.1/bin:$DEVMANAGEMENTHOME/bin

#zsh stuff
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ls="ls -Gl"
alias grep="grep --color"
alias buildserver="ssh buildserver"
alias azure_tunnel="ssh -L 8080:172.18.2.100:80 -N -f -l hogni 104.209.35.98"
alias aws_tunnel="ssh -L 8081:172.18.3.100:80 -N -f -l hogni 54.177.244.1"
alias gcp_tunnel="ssh -L 8082:192.168.2.50:80 -N -f -l hogni 35.230.174.230"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ssh-add -K
source <(kubectl completion zsh)
source ~/.helmautocomplete
