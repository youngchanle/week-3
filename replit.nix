{ pkgs }: {
  deps = [
    pkgs.llvmPackages_rocm.bintools-unwrapped
    pkgs.ed
    pkgs.vim
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}