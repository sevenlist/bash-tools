alias all-ports="sudo lsof -i -P"
alias j=". ~/.bash_tools/use_java.sh"
alias j7="j 7; m 305"
alias j8="j 8; m 339"
alias l="ls -la"
alias loc="find . -type f -name '*.java' -exec cat {} \; | sed '/^\s*#/d;/^\s*$/d;/^\s*\/\//d' | wc -l"
alias m=". ~/.bash_tools/use_maven.sh"
alias own-ports="lsof -i -P"
alias p="git config --global user.name sevenlist; git config --global user.email sevenlist@web.de; git config --global -l; unalias mvn"
alias s="open -a 'Sublime Text 2'"
alias w="git config --global user.name '<name>'; git config --global user.email <email>; git config --global -l; alias mvn=\"mvn -s $HOME/.m2/<company>-settings.xml\""

export PS1="(\!) \u@\h:\w>"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home
export M2_HOME=/Applications/apache-maven-3.3.9
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

source ~/git-completion.bash

GIT_PROMPT_ONLY_IN_REPO=1
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/<name>/.sdkman"
[[ -s "/Users/<name>/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/<name>/.sdkman/bin/sdkman-init.sh"

w