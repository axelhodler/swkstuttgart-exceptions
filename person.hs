-- Taken from Haskellbook 0.12.0 p. 460 and slightly changed

module Person where

type Name = String
type Age = Integer
type ValidatePerson a = Either [PersonInvalid] a

data Person = Person Name Age deriving Show

data PersonInvalid = NameEmpty
                   | AgeTooLow deriving (Eq, Show)

ageOkay :: Age -> Either [PersonInvalid] Age
ageOkay age = if age >= 0 then Right age else Left [AgeTooLow]

nameOkay :: Name -> Either [PersonInvalid] Name
nameOkay name = if name /= "" then Right name else Left [NameEmpty]
