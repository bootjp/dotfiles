# dotfiles

```
NAME="Manjaro Linux"
ID=manjaro
ID_LIKE=arch
BUILD_ID=rolling
PRETTY_NAME="Manjaro Linux"
ANSI_COLOR="32;1;24;144;200"
HOME_URL="https://manjaro.org/"
DOCUMENTATION_URL="https://wiki.manjaro.org/"
SUPPORT_URL="https://manjaro.org/"
BUG_REPORT_URL="https://bugs.manjaro.org/"
LOGO=manjarolinux
```

and cinnamon decktop

## linux desktop setup

```
gsettings set org.cinnamon.desktop.interface gtk-key-theme Emacs
```

### installs

```
cinnamon-desktop
github.com/bootjp/linux-screen-reader
fcitx-mozc-ut-unified
Google Chrome
Discord
Idea*
neovim
docker-ce
https://github.com/cdown/clipnotify (self build)
xsel
jdk11-openjdk (depend version Idea)
dnsutils (dig)
Krita (image edit)
HackGen
Noto Sans
bash_completion
git-completion.bash
git-prompt.sh
poppler-data
goldendict
```

### setting

```
KeyBordLayout
- Ctrl is mapped to Win and the usual Ctrl
- X server shutdown key sequence
```

## IME 辞書

- dic-nico-intersection-pixiv
  - https://cdn.ncaq.net/dic-nico-intersection-pixiv.txt
- google-ime-user-dictionary-ja-en
  - https://code.google.com/archive/p/google-ime-user-dictionary-ja-en/
- 人名
  - https://www.vector.co.jp/soft/data/writing/se008149.html

## usb boot raspberry pi only

```
# /etc/modprobe.d/blacklist-sdhci.conf
# ignore sd cord unload error
blacklist sdhci


```

```
pacman-key --populate archlinuxarm
```

```
ln -s ~/src/dotfiles/.git ~/.git
ln -s ~/src/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/src/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/src/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/src/dotfiles/.bashrc ~/.bashrc
ln -s ~/src/dotfiles/.xprofile ~/.xprofile
ln -s ~/src/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/src/dotfiles/.config/alacritty/ ~/.config/
ln -s ~/src/dotfiles/.tmux.conf ~/.tmux.conf
```
