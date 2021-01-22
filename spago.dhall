{ name = "my-project"
, dependencies =
  [ "aff"
  , "console"
  , "css"
  , "effect"
  , "gimel"
  , "psci-support"
  , "react"
  , "react-dom"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs"]
}
