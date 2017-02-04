# Elementary-OS-First-Steps
:baby_bottle: My steps for configuring a fresh installed eOS

## 1 update the system


command: `sudo apt-get update && sudo apt-get upgrade`


## 2 deb & ppa


command: `sudo apt install gdebi && sudo apt-get install software-properties-common`


## 3 elementary tweaks


install: `sudo add-apt-repository ppa:philip.scott/elementary-tweaks && sudo apt-get update && sudo apt-get install elementary-tweaks`


## 4 prevent heating & mem overload


install TLP: `sudo apt install tlp tlp-rdw`


stop samba: `sudo chmod 744 /usr/lib/gvfs/gvfsd-smb-browse`


## 5 libreoffice


install: `sudo apt install libreoffice`


## 6 vim, git & zsh


• vim: `sudo apt-get install vim && sudo update-alternatives --config editor`


• git: `sudo apt-get install git`


• [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)


## 7 thefuck, revolver, Sublime Text & Antigen


• [Sublime Text](https://sublimetext.com)


• [The Fuck](https://github.com/nvbn/thefuck)


• [revolver](https://github.com/molovo/revolver)


• [Antigen](https://github.com/zsh-users/antigen)



## 8 n & nodengine

• [n](https://github.com/mklement0/n-install)

• [nodengine](https://github.com/Kikobeats/nodengine)


## 9 .zshrc


[.zshrc](https://bitbucket.org/snippets/designprovisuale/rj59R)


## 5 hyper & yarn 


• [hyper](https://github.com/zeit/hyper)


• [hpm-cli](https://www.npmjs.com/package/hpm-cli)


• [.hyper.js config](https://bitbucket.org/snippets/designprovisuale/aB4kd/hyper-default-config)


• [yarn](https://yarnpkg.com/docs/install)


## 6 other

• [trash-cli](https://github.com/sindresorhus/trash-cli): comando para substituir seguramente o `rm -rf qualquer-coisa`.


• [gitflow](https://github.com/petervanderdoes/gitflow-avh)


• [sushi](sudo apt-get update && sudo apt-get install gnome-sushi)


• Sushi(nemo):


```
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install nemo-gloobus-sushi
```


• Ranger:

```
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo

```


• htop:

```
sudo apt-get install htop

```

• [indicator-sysmonitor](https://github.com/fossfreedom/indicator-sysmonitor)



### Magic mouse: [askubuntu](http://askubuntu.com/questions/261791/how-to-set-the-scroll-speed-of-apple-magic-mouse)


> put to the /etc/modprobe.d/magicmouse.conf this:
> 
> `options hid_magicmouse scroll-speed=45 scroll-acceleration=1`


### Alternate command & ctrl keys: [StackExchange](http://elementaryos.stackexchange.com/questions/1283/how-to-setup-keyboard-layout-similar-to-os-x)


> `gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swap_lwin_lctl']"`


### Disable annoying middle mouse click: [AskUbuntu](http://askubuntu.com/questions/4507/how-do-i-disable-middle-mouse-button-click-paste)

> Run the following command:
>
> `xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9"`
>
> To persist this behavior, edit `~/.Xmodmap` and add
>
> `pointer = 1 25 3 4 5 6 7 8 9`
