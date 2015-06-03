module DuplicateProperties where

foreign import data Test :: # * -> *

foreign import subtractX :: forall r. Test (x :: Unit | r) -> Test r

foreign import hasX :: Test (x :: Unit, y :: Unit)

baz = subtractX (subtractX hasX)
