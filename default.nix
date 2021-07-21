{ stdenv, lib, mkDerivation,
    network, optparse-applicative, storable-tuple, text, parsec, time-locale-compat,
    profiling ? false
}:
mkDerivation {
  pname = "Utmp";
  version = "0.1.0.0";
  src = lib.cleanSource ./.;
  isLibrary = true;
  isExecutable = true;
  enableLibraryProfiling = profiling;
  enableExecutableProfiling = profiling;
  executableHaskellDepends = [
    network  optparse-applicative  storable-tuple  text  parsec  time-locale-compat
  ];
  description = "A library for reading and writing Linux utmp files";
  license = lib.licenses.mit;
}
