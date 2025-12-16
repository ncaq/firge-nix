{
  lib,
  stdenvNoCC,
  fetchzip,
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "firge-nerd-font";
  version = "0.3.0";

  src = fetchzip {
    url = "https://github.com/yuru7/Firge/releases/download/v${finalAttrs.version}/FirgeNerd_v${finalAttrs.version}.zip";
    hash = "sha256-Zb95RroGitkOetmLPa4r8EsIKnKiYw7pAlVg6j9lgoc=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/firge-nerd

    runHook postInstall
  '';

  meta = {
    description = "Composite font of Fira Mono, Genshin Gothic and Nerd Fonts";
    homepage = "https://github.com/yuru7/Firge";
    license = lib.licenses.ofl;
    platforms = lib.platforms.all;
    maintainers = [ ];
  };
})
