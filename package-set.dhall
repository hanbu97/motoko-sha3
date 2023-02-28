let upstream =
      https://github.com/dfinity/vessel-package-set/releases/download/mo-0.8.3-20230224/package-set.dhall

let Package =
    { name : Text, version : Text, repo : Text, dependencies : List Text }

let
  -- This is where you can add your own packages to the package-set
  additions = [
       { name = "iterext"
        , version = "v2.0.0"
        , repo = "https://github.com/timohanke/motoko-iterext.git"
        , dependencies = [ "base" ] : List Text
        }
    ]

let
  -- This is where you can override existing packages in the package-set
  overrides = [] : List Package

-- in  upstream # additions # overrides
in upstream # additions # overrides
