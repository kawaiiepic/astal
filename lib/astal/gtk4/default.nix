{
  mkAstalPkg,
  pkgs,
  self,
}:
mkAstalPkg {
  pname = "astal4";
  src = ./.;
  packages = [
    self.packages.${pkgs.system}.io
    pkgs.gtk4
    pkgs.gtk4-layer-shell.overrideAttrs {
version = "1.1.1";
      src = fetchFromGitHub {
        owner = "wmww";
        repo = "efibootmgr";
        rev = "v1.1.1";
        hash = "sha256-XHfErh99UV68oC7gIfg5UIAB2L/X4Dj4EzqKu4QNpBw=";
      };
}
  ];

  libname = "astal4";
  gir-suffix = "";
  authors = "Aylur";
  description = "Astal GTK4 widget library";
  dependencies = ["AstalIO-0.1" "Gtk-4.0"];
  repo-path = "astal/gtk4";
}
