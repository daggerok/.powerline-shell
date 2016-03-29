# powerine prompt
function _update_ps1() {
 PS1="$(~/powerline-shell.py \
         --cwd-mode=fancy \
         --cwd-max-depth=3 \
         --cwd-max-dir-size=20 \
         --mode=compatible \
         $? 2> /dev/null)"
}
if [ "$TERM" != "linux" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
