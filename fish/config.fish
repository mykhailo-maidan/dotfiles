if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# atuin
atuin init fish | source
# bind to ctrl-r in normal and insert mode, add any other bindings you want here too
bind \cr _atuin_bind_up
bind -M insert \cr _atuin_search
bind '^r' _atuin_search

## ssh setup
for key in ~/.ssh/  # This matches private keys (like id_rsa, id_ed25519, etc.)
    if test -f $key; and not string match "*.pub" $key  # Exclude public keys # Exclude public keys
        ssh-add $key
    end
end
