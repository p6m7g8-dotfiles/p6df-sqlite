# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::sqlite::deps()
#
#>
######################################################################
p6df::modules::sqlite::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6sqlite
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

  p6df::modules::homebrew::cli::brew::install sqlite
  p6df::modules::homebrew::cli::brew::install sqlite-analyzer
  p6df::modules::homebrew::cli::brew::install sqlite-utils
  p6df::modules::homebrew::cli::brew::install sqliteodbc

#  p6df::modules::homebrew::cli::brew::install --cask db-browser-for-sqlite
#  p6df::modules::homebrew::cli::brew::install --cask sqlitemanager

  p6_return_void
}
