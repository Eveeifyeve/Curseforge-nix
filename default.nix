{
  lib,
  stdenv,
  callPackage
}@args:
let 
 extraArgs = removeAttrs args [ "callPackage" ];
 pname = "curseforge";
 version = "latest";
 meta = with lib; {
  description = "Download and manage your addons, CC and mods with the CurseForge app!";
  homepage = "https://www.curseforge.com/";
  license = licenses.unfree;
  platforms = platforms.all;
  broken = platforms.linux;
  mainProgram = "curseforge";
};

in if stdenv.isDarwin
then callPackage ./darwin.nix (extraArgs // { inherit pname version meta; })
else throw "Unsupported system"