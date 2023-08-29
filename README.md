# dotfiles

Not happy with the current config, a lot of things may change, but im just
saving this here for myself.

## installing

This is meant to be used with Archlinux:
```bash
# install the packages
sudo pacman -S - < ./.config/basic_packages.txt

# install pipx packages
cat ./.config/pipx_packages | xargs -n 1 pipx install

# copy everything to ~
mv -v .config ~
mv -v .bashrc ~
mv -v .gitconfig ~
mv -v .tmux.conf ~
mv -v .xinitrc ~
mv -v .fehbg ~
```
