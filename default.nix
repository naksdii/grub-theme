{ stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "grub-theme";
  version = "1.0";

  src = ./theme;

  dontBuild = true;

  installPhase = ''
    mkdir -p $out
    cp -r . $out/
  '';
}