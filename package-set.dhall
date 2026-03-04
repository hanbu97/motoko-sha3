let upstream =
      https://github.com/dfinity/vessel-package-set/releases/download/mo-0.15.0-20250726/package-set.dhall

let Package =
    { name : Text, version : Text, repo : Text, dependencies : List Text }

let
  -- This is where you can add your own packages to the package-set
  additions = [
       { name = "core"
        , version = "preview-0.6.0"
        , repo = "https://github.com/dfinity/motoko-core"
        , dependencies = [] : List Text
        }
    ] : List Package

let
  -- This is where you can override existing packages in the package-set
  overrides = [] : List Package

-- in  upstream # additions # overrides
in upstream # additions # overrides
