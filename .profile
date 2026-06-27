export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH

if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR=/tmp/run-user-$(id -u)
    if [ ! -d "$XDG_RUNTIME_DIR" ]; then
        mkdir -p "$XDG_RUNTIME_DIR"
        chmod 700 "$XDG_RUNTIME_DIR"
    fi
fi

export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export EGL_PLATFORM=wayland
