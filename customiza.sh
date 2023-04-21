#!/bin/sh 

# Instalando zsh + dependencias
sudo apt-get install zsh curl git
zsh
# Estableciendo zsh como shell por defecto

# Descargando Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Instalando tema powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#sed -i "s/^ZSH_THEME.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g" $HOME/.zshrc
# Configuramos el perfil de power10k
curl -o $HOME/.p10k.zsh https://raw.githubusercontent.com/nik0chan/customiza/p10k.zsh

# Plugins zsh
# Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

curl -o $HOME/.zshrc https://raw.githubusercontent.com/nik0chan/customiza/zshrc
