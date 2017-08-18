Mac/Linux preference.

# usage:
```bash
curl -fsSL https://raw.githubusercontent.com/chuan92/dotfiles/master/startup.sh | bash
```

# optional software
__anaconda__
```bash
OS="Linux"
wget http://mirrors.ustc.edu.cn/anaconda/archive/Anaconda3-4.4.0-$OS-x86_64.sh -O Anaconda3-4.4.0-$OS-x86_64.sh
bash Anaconda3-4.4.0-$OS-x86_64.sh -b -p "anaconda3"
#需要手动更改$PATH
conda config --add channels https://mirrors.ustc.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes
```
__homebrew__
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 替换HOMEBREW源
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```

__centos添加源__
```bash
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum localinstall epel-release-latest-7.noarch.rpm
sudo yum makecache
rm -rf epel-release-latest-7.noarch.rpm
```

