
######################################################################
#<
#
# Function: p6df::modules::sqlite::deps()
#
#>
######################################################################
p6df::modules::sqlite::deps() {
  Modules=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::sqlite::external::brew()
#
#>
######################################################################
p6df::modules::sqlite::external::brew() {

  brew install sqlite
  brew install sqlite-analyzer
  brew install sqlite-utils
  brew install sqliteodbc

  brew install --cask db-browser-for-sqlite
  brew install --cask sqlitemanager
  brew install --cask sqlitestudio
}
