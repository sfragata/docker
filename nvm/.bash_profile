green=$'\e[1;32m'
magenta=$'\e[1;35m'
normal_colours=$'\e[m'


_node_version()
{
  local br
  br=$(node -v 2>/dev/null)
  test -n "$br" && printf %s "node=${magenta}${br}${normal_colours}" || :
}

_npm_version()
{
  local br
  br=$(npm -v 2>/dev/null)
  test -n "$br" && printf %s "npm=${green}${br}${normal_colours}" || :
}

PS1="\$(_node_version) \$(_npm_version) ${PS1}"