module Interop.Android.View.Types where

import Java
import Interop.Android.Content.Types
import Interop.Android.Graphics.Types
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

data KeyEventCallback = KeyEventCallback @android.view.KeyEvent$Callback
  deriving Class

foreign import java unsafe "@wrapper onKeyDown,onKeyLongPress,onKeyMultiple,onKeyUp" mkKeyEventCallback
  :: (Int -> KeyEvent -> Java KeyEventCallback Bool)
  -> (Int -> KeyEvent -> Java KeyEventCallback Bool)
  -> (Int -> Int -> KeyEvent -> Java KeyEventCallback Bool)
  -> (Int -> KeyEvent -> Java KeyEventCallback Bool)
  -> KeyEventCallback

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

-- Start android.view.View

data View = View @android.view.View
  deriving Class

type instance Inherits View = '[DrawableCallback, KeyEventCallback, AccessibilityEventSource]

-- End android.view.View

-- Start android.view.KeyEvent

data KeyEvent = KeyEvent @android.view.KeyEvent
  deriving Class

type instance Inherits KeyEvent = '[InputEvent, Parcelable]

-- End android.view.KeyEvent

-- Start android.view.InputEvent

data InputEvent = InputEvent @android.view.InputEvent
  deriving Class

type instance Inherits InputEvent = '[Object, Parcelable]

-- End android.view.InputEvent

-- Start android.view.accessibility.AccessibilityEventSource

data AccessibilityEventSource = AccessibilityEventSource @android.view.accessibility.AccessibilityEventSource
  deriving Class

-- End android.view.accessibility.AccessibilityEventSource

-- Start android.view.ViewTreeObserver.OnGlobalLayoutListener

data OnGlobalLayoutListener = OnGlobalLayoutListener @android.view.ViewTreeObserver$OnGlobalLayoutListener
  deriving Class

foreign import java unsafe "@wrapper onGlobalLayout" mkOnGlobalLayoutListener ::
  (Java OnGlobalLayoutListener ()) -> OnGlobalLayoutListener

-- End android.view.ViewTreeObserver.OnGlobalLayoutListener

-- Start android.view.ViewTreeObserver.OnTouchModeChangeListener

data OnTouchModeChangeListener = OnTouchModeChangeListener
  @android.view.ViewTreeObserver$OnTouchModeChangeListener
  deriving Class

foreign import java unsafe "@wrapper onTouchModeChanged" mkOnTouchModeChangedListener ::
  (Bool -> Java OnTouchModeChangeListener ()) -> OnTouchModeChangeListener

-- End android.view.ViewTreeObserver.OnTouchModeChangeListener

-- Start android.view.SurfaceHolder.Callback2

data SurfaceHolderCallback2 = SurfaceHolderCallback2 @android.view.SurfaceHolder$Callback2
  deriving Class

type instance Inherits SurfaceHolderCallback2 = '[SurfaceHolderCallback]

-- End android.view.SurfaceHolder.Callback2

-- Start android.view.SurfaceHolder.Callback

data SurfaceHolderCallback = SurfaceHolderCallback @android.view.SurfaceHolder$Callback
  deriving Class

-- End android.view.SurfaceHolder.Callback

-- Start android.view.InputQueue.Callback

data InputQueueCallback = InputQueueCallback @android.view.InputQueue$Callback
  deriving Class

-- End android.view.InputQueue.Callback
