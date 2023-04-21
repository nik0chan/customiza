#!/bin/sh 

echo "Instalando zsh + dependencias"
sudo apt-get -y install zsh curl git  
echo "Descargando Oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Instalando tema powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#sed -i "s/^ZSH_THEME.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g" $HOME/.zshrc

echo "Instalando plugins zsh"
echo "Syntax Highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo " Autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Configurando zshrc"
curl https://raw.githubusercontent.com/nik0chan/customiza/main/zshrc > $HOME/.zshrc
echo" Configurrando el perfil de power10k"
curl https://raw.githubusercontent.com/nik0chan/customiza/main/p10k.zsh > $HOME/.p10k.zsh
echo "Estableciendo zsh como shell por defecto"
sudo chsh -s $(which zsh)
