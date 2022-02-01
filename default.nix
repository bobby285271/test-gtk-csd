{ pkgs ? import <nixpkgs> { }
}:

with pkgs;

stdenv.mkDerivation rec {
  name = "test-gtk-csd";

  src = ./.;

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    vala
  ];

  buildInputs = [
    gtk3
  ];
}
