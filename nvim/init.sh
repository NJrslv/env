# https://nvchad.com
brew install neovim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

rm -rf ~/.config/nvim/lua/custom
mv ./custom ~/.config/nvim/lua/
