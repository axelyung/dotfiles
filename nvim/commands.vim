command! ReloadVimrc :so ~/.config/nvim/init.vim

"command! GoTest execute "!go test -failfast -v $GOPATH/%"
command! GoTests execute "!gotests -all -exported -w %"
