
"command! GoTest execute "!go test -failfast -v $GOPATH/%"
command! GoTests execute "!gotests -all -exported -w %"

command! -range -nargs=0 D <line1>,<line2>d|norm ``
