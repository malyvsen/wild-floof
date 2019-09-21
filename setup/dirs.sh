read -p "[desert-wolf] clear home directory? (y/N) " -r
if [[ "$REPLY" =~ (y|Y).* ]]; then
  rm -r "${HOME}/*"
fi

echo "[desert-wolf] setting up directories" &&
xdg-user-dirs-update --set DESKTOP "${HOME}/library/desktop" && mkdir -p $(xdg-user-dir DESKTOP) &&
xdg-user-dirs-update --set DOWNLOAD "${HOME}/temp" && mkdir -p $(xdg-user-dir DOWNLOAD) &&
xdg-user-dirs-update --set TEMPLATES "${HOME}/library/templates" && mkdir -p $(xdg-user-dir TEMPLATES) &&
xdg-user-dirs-update --set PUBLICSHARE "${HOME}/library/public" && mkdir -p $(xdg-user-dir PUBLICSHARE) &&
xdg-user-dirs-update --set DOCUMENTS "${HOME}/creative/writing" && mkdir -p $(xdg-user-dir DOCUMENTS) &&
xdg-user-dirs-update --set MUSIC "${HOME}/library/audio/music" && mkdir -p $(xdg-user-dir MUSIC) &&
xdg-user-dirs-update --set PICTURES "${HOME}/library/visual" && mkdir -p $(xdg-user-dir PICTURES) &&
xdg-user-dirs-update --set VIDEOS "${HOME}/library/visual/videos" && mkdir -p $(xdg-user-dir VIDEOS) &&
xdg-user-dirs-update --set WALLPAPERS "${HOME}/library/visual/wallpapers" && mkdir -p $(xdg-user-dir WALLPAPERS) &&
xdg-user-dirs-update --set REPOS "${HOME}/library/coding" && mkdir -p $(xdg-user-dir REPOS) &&
xdg-user-dirs-update
