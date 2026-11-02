{ stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "my-grub-theme";
  version = "1.0";

  src = ./theme;

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/grub/themes/my-grub-theme
    cp -r . $out/share/grub/themes/my-grub-theme/
  '';
}