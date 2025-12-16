{
  lib,
  stdenvNoCC,
  fetchzip,
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "firge-font";
  version = "0.3.0";

  src = fetchzip {
    url = "https://github.com/yuru7/Firge/releases/download/v${finalAttrs.version}/Firge_v${finalAttrs.version}.zip";
    hash = "sha256-zPAeOits3FxIwerGCY8L3eDZtBi3qU19p3XOhtcMV64=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/firge

    runHook postInstall
  '';

  meta = {
    description = "Composite font of Fira Mono and Genshin Gothic";
    homepage = "https://github.com/yuru7/Firge";
    license = lib.licenses.ofl;
    platforms = lib.platforms.all;
    maintainers = [ ];
  };
})
