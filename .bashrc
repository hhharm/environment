alias gk='echo "gitk --all&"; gitk --all&'
alias fixgit='echo "eval $(ssh-agent); ssh-add"; eval $(ssh-agent); ssh-add'
alias gitfix='fixgit'
alias add='echo "git add -u"; git add -u'
alias add='echo "git add -u"; git add -u'
alias ci="git ci -m \"$@\""
alias push="git push"
alias co="git co"
alias pull="git pull --ff-only"
alias run="mvn spring-boot:run -Drun.profiles=dev"
alias rerun="echo 'mvn clean install && run'; mvn clean install && run"
alias qrerun="echo 'mvn clean install && run'; mvn clean install 2>&1 1>/dev/null && echo 'installed sucessfully' && run"
alias git-remove-old-branches="git remote prune origin && git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d "alias howcreate="echo 'cd <some folder> && ng g module <module name> && ng g component <name> -c=OnPush -m=<module name> -p=<app name> --style=less'"
alias pushnew="git push --set-upstream origin ` git branch | grep -e '^*' | cut -d ' ' -f 2`"

#**replace here**
alias homeXXX'cd XXX && pwd'
alias homeYYY='cd YYY && pwd'
alias home='homeXXX'
