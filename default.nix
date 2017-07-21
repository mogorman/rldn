with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    git
    elixir
    nodejs
    stdenv
    zlib
  ];
  pathsToLink = [ "/include" ];
}
