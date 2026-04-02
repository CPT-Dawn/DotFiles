# ==========================================
# System & Wayland (Niri Specific)
# ==========================================
export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="niri"

# Fix for Java apps (like Android Studio/IntelliJ) in tiling WMs
export _JAVA_AWT_WM_NONREPARENTING=1

export QT_QPA_PLATFORM="wayland;xcb"
export SDL_VIDEODRIVER="wayland"
export CLUTTER_BACKEND="wayland"

# ==========================================
# Auto-start Niri on TTY1
# ==========================================
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec niri --session
fi
