module Interop.Android.Widget.Types where

import Java
import Interop.Android.View.Types

-- Start android.widget.DatePicker

data DatePicker = DatePicker @android.widget.DatePicker
  deriving Class

type instance Inherits DatePicker = '[FrameLayout]

-- End android.widget.DatePicker

-- Start android.widget.FrameLayout

data FrameLayout = FrameLayout @android.widget.FrameLayout
  deriving Class

type instance Inherits FrameLayout = '[ViewGroup]

-- End android.widget.FrameLayout

-- Start android.widget.TimePicker

data TimePicker = TimePicker @android.widget.TimePicker
  deriving Class

type instance Inherits TimePicker = '[FrameLayout]

-- End android.widget.TimePicker
