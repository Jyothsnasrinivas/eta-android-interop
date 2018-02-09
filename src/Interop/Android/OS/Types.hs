module Interop.Android.OS.Types where

import Java
import Interop.Java.Lang

-- Start android.os.Bundle

data Bundle = Bundle @android.os.Bundle
  deriving Class

type instance Inherits Bundle = '[BaseBundle, Cloneable, Parcelable]

-- End android.os.Bundle

-- Start android.os.BaseBundle

data BaseBundle = BaseBundle @android.os.BaseBundle
  deriving Class

-- End android.os.BaseBundle

-- Start android.os.Parcelable

data Parcelable = Parcelable @android.os.Parcelable
  deriving Class

-- End android.os.Parcelable
