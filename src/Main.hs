module Main where

import Reflex.Dom

main :: IO ()
main = mainWidget $ el "div" $ do
  el "h1" $ text "rampart-web"
  el "a" $ text "Now you can start playing with Reflex!"
  el "div" $ do
      t <- textInput def
      text "Last key pressed: "
      let keypressEvent = fmap show $ _textInput_keypress t
      keypressDyn <- holdDyn "None" keypressEvent
      dynText keypressDyn
