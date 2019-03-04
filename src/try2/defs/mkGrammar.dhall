

-- let RawGrammar : Type = {
--       patterns : List ./Pattern.dhall 
--       , repository: Optional { 
--       , mapKey : String 
--       , mapValue : Grammar
--       }     }
--    }

-- let foo : Type = ∀(Grammar : Type)
--       → ∀(MakeGrammar : { 
--             patterns : List Text
--           , repository: Optional { 
--               mapKey : Text 
--             , mapValue : Grammar
--             }
--           } → Text)
--       → Text

-- let MkGrammar : Type = ∀(Grammar : Type) -> ∀(params: {  
--       patterns :  List Text
--     , repository : Optional {
--         mapKey: Text
--       , mapValue: Grammar 
--       } 
--     })  -> {
--       patterns : List Text
--     , repository : Optional {
--         mapKey: Text
--       , mapValue: Grammar 
--       } 
--     }

let mkGrammar   =  λ(Grammar : Type) → λ(Pattern: Type) -> \(params: {  
      patterns :  List Pattern
    , repository : Optional (List {
        mapKey: Text
      , mapValue: Grammar 
      }) 
    })  -> params
in mkGrammar 
    
    
    
    
    -- MakeGrammar : { 
    --         patterns : List ./Pattern.dhall 
    --       , repository: Optional { 
    --           mapKey : String 
    --         , mapValue : Grammar
    --         }
    --       } → Person)
    --   → Person
