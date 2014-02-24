_editnote() 
{
    editnotedir=$HOME/Documents/notes/
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(ls $editnotedir | grep 'markdown' | sed 's/\.markdown//')

#if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
#fi
}
complete -F _editnote edit-note
