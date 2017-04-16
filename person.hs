module Person where

type Name = String
type Age = Integer
type ValidatePerson a = Either PersonInvalid a

data Person = Person Name Age deriving Show

data PersonInvalid = AgeTooLow deriving (Eq, Show)

ageOkay :: Age -> Either PersonInvalid Age
ageOkay age = if age >= 0 then Right age else Left AgeTooLow

isAgeOkay :: Age -> Bool
isAgeOkay x = case ageOkay x of
  (Left _) -> False
  (Right _) -> True
