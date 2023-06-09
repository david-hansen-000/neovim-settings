# neovim-settings
good settings for neovim

# need to create dirs

.config

.config/nvim

# then cd to .config/nvim

cp neovim-settings/init.lua ./

cp -R neovim-settings/lua ./

cp -R neovim-settings/plugins ./

# individually copy instead of "cp -R neovim-settings/* ./" because you probably don't want to copy all of the .git files, unless you do want to do that.
after that run nvim
it will cause errors
then go to .local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim
and run the following cmake commands 

cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release

cmake --build build --config Release

cmake --install build --prefix build
