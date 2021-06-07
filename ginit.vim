if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font', 'Jetbrains Mono 9')
    call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 1)
    let g:GuiInternalClipboard = 1
    hi Normal guibg=#f0f0f0
endif

