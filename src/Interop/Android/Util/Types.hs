module Interop.Android.Util.Types where

import Java
import Java.Exception
import Data.Typeable

-- Start android.util.AndroidRuntimeException

data AndroidRuntimeException = AndroidRuntimeException @android.util.AndroidRuntimeException
  deriving (Class, Typeable)

type instance Inherits AndroidRuntimeException = '[RuntimeException]

-- End android.util.AndroidRuntimeException

-- Start android.util.AndroidException

data AndroidException = AndroidException @android.util.AndroidException
  deriving (Class, Typeable)

type instance Inherits AndroidException = '[JException]

-- End android.util.AndroidException
