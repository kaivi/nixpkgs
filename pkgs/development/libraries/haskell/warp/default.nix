{ cabal, blazeBuilder, blazeBuilderEnumerator, caseInsensitive
, enumerator, httpTypes, network, simpleSendfile, transformers
, unixCompat, wai
}:

cabal.mkDerivation (self: {
  pname = "warp";
  version = "0.4.6.3";
  sha256 = "1gfjhp1s42ynpi3kh8fr6fp5nwirxz0gasr7zs7q2qwwvlq9pzm6";
  buildDepends = [
    blazeBuilder blazeBuilderEnumerator caseInsensitive enumerator
    httpTypes network simpleSendfile transformers unixCompat wai
  ];
  meta = {
    homepage = "http://github.com/yesodweb/wai";
    description = "A fast, light-weight web server for WAI applications";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
