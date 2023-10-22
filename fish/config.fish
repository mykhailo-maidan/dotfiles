if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/mykhailo-work/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx TRILIUM_DATA_DIR /run/media/mykhailo-work/Sage/trilium-data-base/
