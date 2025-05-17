{ stdenv
, pname
, meta
, fetchurl
, undmg
, lib
}:

stdenv.mkDerivation {
  inherit pname;

  version = "1.1.97.962.g24733a46";

  src = fetchurl {
    url = "";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  }; 

  nativeBuildInputs = [ undmg ];

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out/Applications
    cp -r *.app $out/Applications
  '';

	updateScript = 

  meta = meta // {
    maintainers = with lib.maintainers; [ Enzime ];
  };
}

