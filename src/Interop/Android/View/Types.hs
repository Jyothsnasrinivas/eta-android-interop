module Interop.Android.View.Types where

import Java
import Interop.Android.Content.Types
import Interop.Android.OS.Types

-- Start android.view.ContextThemeWrapper

data ContextThemeWrapper = ContextThemeWrapper @android.view.ContextThemeWrapper
  deriving Class

type instance Inherits ContextThemeWrapper = '[ContextWrapper]

-- End android.view.ContextThemeWrapper

-- Start android.view.LayoutInflater.Factory2

data LayoutInflatorFactory2 = LayoutInflatorFactory2 @android.view.LayoutInflator$Factory2
  deriving Class

type instance Inherits LayoutInflatorFactory2 = '[LayoutInflatorFactory]

-- End android.view.LayoutInflater.Factory2

-- Start android.view.LayoutInflater.Factory

data LayoutInflatorFactory = LayoutInflatorFactory @android.view.LayoutInflator$Factory
  deriving Class

-- End android.view.LayoutInflater.Factory

-- Start android.view.Window.Callback

data WindowCallback = WindowCallback @android.view.Window.Callback
  deriving Class

-- End android.view.Window.Callback

-- Start android.view.KeyEvent.Callback

data KeyEventCallback = KeyEventCallback @android.view.KeyEvent.Callback
  deriving Class

-- End android.view.KeyEvent.Callback

-- Start android.view.View.OnCreateContextMenuListener

data OnCreateContextMenuListener = OnCreateContextMenuListener @android.view.View.OnCreateContextMenuListener
  deriving Class

-- End android.view.View.OnCreateContextMenuListener

-- Start android.view.ViewGroup

data ViewGroup = ViewGroup @android.view.ViewGroup
  deriving Class

type instance Inherits ViewGroup = '[ViewParent, ViewManager]

-- End android.view.ViewGroup

-- Start android.view.ViewParent

data ViewParent = ViewParent @android.view.ViewParent
  deriving Class

-- End android.view.ViewParent

-- Start android.view.ViewManager

data ViewManager = ViewManager @android.view.ViewManager
  deriving Class

-- End android.view.ViewManager

-- Start android.view.accessibility.AccessibilityEvent

data AccessibilityEvent = AccessibilityEvent
  @android.view.accessibility.AccessibilityEvent
    deriving Class

type instance Inherits AccessibilityEvent = '[AccessibilityRecord, Parcelable]

-- End android.view.accessibility.AccessibilityEvent

-- Start android.view.accessibility.AccessibilityRecord

data AccessibilityRecord = AccessibilityRecord
  @android.view.accessibility.AccessibilityRecord
    deriving Class

-- End android.view.accessibility.AccessibilityRecord

-- Start android.view.ViewGroup.MarginLayoutParams

data MarginLayoutParams = MarginLayoutParams @android.view.ViewGroup.MarginLayoutParams
  deriving Class

type instance Inherits MarginLayoutParams = '[ViewGroupLayoutParams]

-- End android.view.ViewGroup.MarginLayoutParams

-- Start android.view.ViewGroup.LayoutParams

data ViewGroupLayoutParams = ViewGroupLayoutParams @android.view.ViewGroup$LayoutParams
  deriving Class

-- End android.view.ViewGroup.LayoutParams
