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
# Function: p6df::modules::sqlite::external::brews()
#
#>
######################################################################
p6df::modules::sqlite::external::brews() {

  p6df::core::homebrew::cli::brew::install sqlite
  p6df::core::homebrew::cli::brew::install sqlite-analyzer
  p6df::core::homebrew::cli::brew::install sqlite-utils
  p6df::core::homebrew::cli::brew::install sqliteodbc

#  p6df::core::homebrew::cli::brew::install --cask db-browser-for-sqlite
#  p6df::core::homebrew::cli::brew::install --cask sqlitemanager

  p6_return_void
}

######################################################################
#<
#
# Function: words sqlite $SQLITE_PATH = p6df::modules::sqlite::profile::mod()
#
#  Returns:
#	words - sqlite $SQLITE_PATH
#
#  Environment:	 SQLITE_PATH
#>
######################################################################
p6df::modules::sqlite::profile::mod() {

  p6_return_words 'sqlite' "$"
}
