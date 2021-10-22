#github pages
alias build='ng build --prod --output-path docs --base-href "https://hhharm.github.io/mental-health/"'
alias publish='ngh --dir=docs'

#docker 
alias showcontainers="docker container ls -a"
alias dockerstart="docker container start"
alias dockerexec='docker exec -it'

#start on another port in bg and write logs
alias npm_newport='HOST_PORT=5005 nohup npm start 2>&1 > logs &'

#start nodejs for remote debug
alias noderemotedebug="node --inspect-brk=0.0.0.0:9230 src"
#then open chrome://insect and there should be your app

#settings when windows does not see node and java :\
export PATH="$PATH:/c/Program Files/nodejs/"
alias java="/c/Program\ Files/Java/jre1.8.0_161/bin/java.exe"

#git
alias gk='echo "gitk --all&"; gitk --all&'
alias fixgit='echo "eval $(ssh-agent); ssh-add"; eval $(ssh-agent); ssh-add'
alias gitfix='fixgit'
alias add='echo "git add -u"; git add -u'
alias add='echo "git add -u"; git add -u'
alias ci="git ci -m \"$@\""
alias push="git push"
alias co="git co"
alias pull="git pull --ff-only"
alias git-remove-old-branches="git remote prune origin && git branch -vv | grep 'origin/.*: gone]' | cut -d ' ' -f3 | xargs -r git branch -d "
alias git-remove-old-branches-force="echo \"git remote prune origin && git branch -vv | grep 'origin/.*: gone]' |cut -d ' ' -f3 | xargs -r git branch -D\"; git remote prune origin  &&git branch -vv | grep 'origin/.*: gone]' |cut -d ' ' -f3 | xargs git -r branch -D"
alias pushnew="git push --set-upstream origin ` git branch | grep -e '^*' | cut -d ' ' -f 2`"
#https://stackoverflow.com/questions/1459150/how-to-undo-git-commit-amend-done-instead-of-git-commit/1459264
alias git-undo-amend="git reset --soft HEAD@{1}"

#run spring
alias run="mvn spring-boot:run -Drun.profiles=dev"
alias rerun="echo 'mvn clean install && run'; mvn clean install && run"
alias qrerun="echo 'mvn clean install && run'; mvn clean install 2>&1 1>/dev/null && echo 'installed sucessfully' && run"
alias fe="echo 'npm run start' && npm run start"

#angular cli 
alias howcreate="echo 'cd <some folder> && ng g module <module name> && ng g component <name> -c=OnPush -m=<module name> -p=<app name> --style=less'"

#angular test
alias launch-test="npm run test"
alias result-test="cat testlog.txt | grep 'should create FAILED' | tee -a testlog.txt"
alias test="echo 'Run tests'; launch-test | tee testlog.txt; echo 'Tests has been completed'; result-test"

#oc
#oc login
#oc project <project name>
#oc get pods | grep <pod name partial>
#oc port-forward <pod name full> <local port>:<remote port>



