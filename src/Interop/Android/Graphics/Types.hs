module Interop.Android.Graphics.Types where

import Java
import Interop.Java.Lang

-- Start android.graphics.drawable.Drawable.Callback

data DrawableCallback = DrawableCallback @android.graphics.drawable.Drawable$Callback
  deriving Class

foreign import java unsafe "@wrapper invalidateDrawable,scheduleDrawable,unscheduleDrawable" mkDrawableCallback
  :: (Drawable -> Java DrawableCallback ())
  -> (Drawable -> Runnable -> Int64 -> Java DrawableCallback ())
  -> (Drawable -> Runnable -> Java DrawableCallback ())
  -> DrawableCallback

-- End android.graphics.drawable.Drawable.Callback

-- Start android.graphics.drawable.Drawable

data Drawable = Drawable @android.graphics.drawable.Drawable
  deriving Class

-- End android.graphics.drawable.Drawable
