{
  lib,
  stdenv,
  callPackage
}@args:
let 
 extraArgs = removeAttrs args [ "callPackage" ];
 pname = "curseforge";
 meta = with lib; {
  description = "Download and manage your addons, CC and mods with the CurseForge app!";
  homepage = "https://www.curseforge.com/";
  license = licenses.unfree;
  platforms = platforms.unix;
  broken = platforms.linux;
  mainProgram = "curseforge";
};

in if stdenv.isDarwin
then callPackage ./darwin.nix (extraArgs // { inherit pname meta; })
else callPackage ./linux.nix (extraArgs // { inherit pname meta;})
