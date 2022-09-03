if status is-interactive
  # Commands to run in interactive sessions can go here

  # path
  # anyenv
  set -x PATH "$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
  # Node
  set -x PATH $PATH:./node_modules/.bin
  # Go
  set -x GOPATH $HOME/.go
  # Java
  set -x JAVA_HOME `/usr/libexec/java_home -v 1.8`
  # postgres
  set -x PGDATA /usr/local/var/postgres
  # CS CLI
  set -x CS_HOME $HOME/bin/cloud-search-tools
  set -x PATH $PATH:$CS_HOME/bin
  set -x CS_ENDPOINT cloudsearch.ap-northeast-1.amazonaws.com
  # Oracle CLI
  set -x ORACLE_HOME ~/bin/sqlplus/instantclient_12_1
  set -x PATH $ORACLE_HOME:$PATH
  set -x LD_LIBRARY_PATH ~/bin/sqlplus/instantclient_12_1:$LD_LIBRARY_PATH
  set -x NLS_LANG Japanese_Japan.AL32UTF8

  # alias
  # Vim
  alias vi 'vim'

  # Ruby
  alias be 'bundle exec'
  alias RET "RAILS_ENV test"
  alias RED "RAILS_ENV development"
  alias REP "RAILS_ENV production"

  # ls
  alias la "ls -a"
  alias lf "ls -F"
  alias ll "ls -l"
  alias lla "ls -la"

  alias ctags "`brew --prefix`/bin/ctags"

  alias python 'python3'
  alias pip 'pip3'
end
