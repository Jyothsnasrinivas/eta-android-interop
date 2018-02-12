module Interop.Android.OS.Types where

import Java
import Interop.Java.Lang
import Interop.Java.IO

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

-- Start android.os.ParcelFileDescriptor

data ParcelFileDescriptor = ParcelFileDescriptor @android.os.ParcelFileDescriptor
  deriving Class

type instance Inherits ParcelFileDescriptor = '[Parcelable, Closeable]

-- End android.os.ParcelFileDescriptor

-- Start android.os.Handler

data Handler = Handler @android.os.Handler
  deriving Class

-- End android.os.Handler
