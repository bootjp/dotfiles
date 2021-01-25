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


## usb boot raspberry pi only 

```
# /etc/modprobe.d/blacklist-sdhci.conf
# ignore sd cord unload error
blacklist sdhci 
```
