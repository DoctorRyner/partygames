let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20210118/packages.dhall sha256:a59c5c93a68d5d066f3815a89f398bcf00e130a51cb185b2da29b20e2d8ae115

let overrides = {=}

let additions =
    { gimel =
        { dependencies = [ "prelude", "css", "js-timers" ]
        , repo         = "https://github.com/DoctorRyner/gimel"
        , version      = "v0.1-alpha"
        }
    -- , gimel-http =
    --     { dependencies =
    --       [ "prelude"
    --       , "aff"
    --       , "affjax"
    --       , "css"
    --       , "console"
    --       , "effect"
    --       , "filterable"
    --       , "js-timers"
    --       , "ordered-collections"
    --       , "react"
    --       , "react-dom"
    --       , "web-html"
    --       ]
    --     , repo         = "https://github.com/DoctorRyner/gimel-http"
    --     , version      = "c366df711836568e9a090aea126991a3b010c8c2"
    --     }
    , react-mui =
        { dependencies = [ "tscompat" ]
        , repo         = "https://github.com/doolse/purescript-react-mui"
        , version      = "v3.9.313"
        }
    , tscompat =
        { dependencies = [ "prelude" ]
        , repo         = "https://github.com/doolse/purescript-tscompat"
        , version      = "v1.0.1"
        }
    }

in  upstream // overrides // additions