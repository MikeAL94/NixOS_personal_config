{config, pkgs, ...}:

{
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git 
    veracrypt
    keepassxc
    onlyoffice-bin
    gnupg
    pinentry
    ani-cli
    google-chrome
    thunderbird 
    logseq
    alacritty
    samba4Full
    gh 
    git 
  ];
  
  # Steam
    programs.steam.enable = true;
    programs.steam.gamescopeSession.enable = true;
    programs.gamemode.enable = true; 

  # Enable flatpak
    services.flatpak.enable = true; 
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    xdg.portal.config.common.default = "gtk";


  # Permisões. 
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-27.3.11"
	];
  
  # Enable Pinentry.
  programs.gnupg.agent = {
  	enable = true;
	enableSSHSupport = true;
  };
  services.pcscd.enable = true;
}