module Main where

import Data.List (sort)

-- Type alias
type Foo = String
type Bar = Int

-- Data type
data Baz = Baz Foo Bar

-- Function
foobar :: Foo -> Bar -> Baz
foobar foo bar = Baz foo bar

-- Pattern matching
bazValue :: Baz -> Foo
bazValue (Baz foo _) = foo

-- List comprehension
listComprehension :: [Bar] -> [Bar]
listComprehension xs = [x * 2 | x <- xs, x * 2 > 10]

-- Higher order function
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- IO action
main :: IO ()
main = do
  putStrLn "Hello, world!"
  let foo = "Lorem Ipsum"
  let bar = 123
  let baz = foobar foo bar
  putStrLn $ bazValue baz
  let xs = [1..10]
  print $ listComprehension xs
  print $ applyTwice (*2) bar
