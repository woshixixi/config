# config 
- .vimrc
- .zshrc
- .tmux.conf
- vscode  

# install in new mac
1. install homebrew: 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
  problem founded: __xcode-select --install__ failed 
  solution: 
   download the command line tools for OS X Mavericks manually from here:https://developer.apple.com/downloads/index.action?name=for%20Xcode
  
2. install oh-my-zsh:
```
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. replace .zshrc in project ===>(bindkey not bindKey)
   - run __source .zshrc__ find two problems:
   - plugin: zsh-autosuggestions & autojump not found
   - install zsh-autosuggestions plugin: 
   ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   ```
   - install autojump plugin:
   ```
   brew install autojump
   ```
4. install pygmentize
  https://gist.github.com/BretFisher/6f688dde0122399efdca5a9d26100437
  ```
  brew install python3
  brew install python
  brew unlink python && brew link --overwrite python # make sure python links to python2

  pip2 install --upgrade pip setuptools # upgrade to latest pip2
  pip3 install --upgrade pip setuptools # upgrade to latest pip3

  # never use the generic “python” and “pip”.
  # always use “python[2/3]” and “pip[2/3]”.
  
  pip3 install pygments  
  ```
  
5. install tmux
  ```
  brew install tmux
  ```
6. config tmux
  ```
  touch .tmux.conf
  
  source .tmux.conf(outside of tmux)
  
  ```
   
  
