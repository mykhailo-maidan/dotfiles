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
# pnpm
set -gx PNPM_HOME "/home/mykhailo-work/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx TRILIUM_DATA_DIR /run/media/mykhailomaidan-work/storage/trilium-data-base/
