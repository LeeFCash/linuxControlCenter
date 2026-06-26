# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
programs.neovim.enable = true;
programs.neovim.defaultEditor = true;
programs.neovim.viAlias = true;
programs.neovim.vimAlias = true;
programs.neovim.configure.customRC = ''
colorscheme jellybeans
set number
set relativenumber
set cc=0
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

lua << EOF
local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'buffer' }
  }
})
EOF

if &diff
	colorscheme blue
endif
'';
programs.neovim.configure.packages.myVimPackage.start = with pkgs.vimPlugins; [
	jellybeans-vim
	nvim-cmp	
	cmp-buffer
];
}
