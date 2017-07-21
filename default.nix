with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  LANG = "en_US.UTF-8";
  buildInputs = [
    git
    elixir
    nodejs
    stdenv
    zlib
    glibcLocales
    inotify-tools
  ];
  pathsToLink = [ "/include" ];

  shellHook = ''
    function phoenix {
      iex -S mix phoenix.server
    }
  '';
}
