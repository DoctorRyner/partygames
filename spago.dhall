{ name = "my-project"
, dependencies =
  [ "aff"
  , "argonaut"
  , "console"
  , "css"
  , "effect"
  , "gimel"
  , "gimel-http"
  , "psci-support"
  , "react"
  , "react-dom"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
