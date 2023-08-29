# dotfiles

Not happy with the current config, a lot of things may change, but im just
saving this here for myself.

## installing

This is meant to be used with Archlinux:
```bash
# install the packages
sudo pacman -S - < ./.config/basic_packages.txt

# install pipx packages
cat ./.config/pipx_packages.txt | xargs -n 1 pipx install

# install go pacakges
# TIP: list them with `gols` alias
cat ./.config/go_packages.txt | xargs -n 1 go install -v

cat ./.config/rust_packages.txt | xargs -n 1 cargo install

# install haiti-hash because i use it sometimes
gem install haiti-hash

# copy everything to ~
mv -v .config ~
mv -v .bashrc ~
mv -v .gitconfig ~
mv -v .tmux.conf ~
mv -v .xinitrc ~
mv -v .fehbg ~
```
