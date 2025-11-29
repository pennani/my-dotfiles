#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Script to open file at -n index in the current directoy with Nvim.
indexvim() {
  file="$(ls -1 | sed -n "${1}p")"
  if [ -z "$file" ]; then
    echo "Ingen fil hittad på index $1."
    return 1
  fi
  echo "Öppnar: $file"
  nvim "$file"
}

# Script to print out the index of each file in the current directory.
indexdir() {
  for dir in "$PWD"; do
    echo "$PWD"
  done
}
fastfetch
cat .cache/wal/sequences
