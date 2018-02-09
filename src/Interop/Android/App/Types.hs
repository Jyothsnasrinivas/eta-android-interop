module Interop.Android.App.Types where

import Java

data OnMenuVisibilityListener = OnMenuVisibilityListener @android.app.ActionBar$OnMenuVisibilityListener
  deriving Class

foreign import java unsafe "@wrapper onMenuVisibilityChanged" onMenuVisibilityChanged ::
  (Bool -> Java OnMenuVisibilityListener ()) -> OnMenuVisibilityListener
