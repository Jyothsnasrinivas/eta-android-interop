module Interop.Android.Widget.Types where

import Java
import Interop.Android.View.Types
import Interop.Android.Text.Types

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

-- Start android.widget.DatePicker.OnDateChangedListener

data OnDateChangedListener = OnDateChangedListener @android.widget.DatePicker$OnDateChangedListener
  deriving Class

foreign import java unsafe "@wrapper onDateChanged" mkOnDateChangedListener ::
  (DatePicker -> Int -> Int -> Int -> Java OnDateChangedListener ()) -> OnDateChangedListener

-- End android.widget.DatePicker.OnDateChangedListener

-- Start android.widget.ExpandableListView.OnChildClickListener

data OnChildClickListener = OnChildClickListener @android.widget.ExpandableListView$OnChildClickListener
  deriving Class

foreign import java unsafe "@wrapper onChildClick" mkOnChildClickListener
 :: (ExpandableListView -> View -> Int -> Int -> Int64 -> Java OnChildClickListener Bool)
 -> OnChildClickListener

-- End android.widget.ExpandableListView.OnDateChangedListener

-- Start android.widget.ExpandableListView.OnGroupCollapseListener

data OnGroupCollapseListener = OnGroupCollapseListener @android.widget.ExpandableListView$OnGroupCollapseListener
  deriving Class

foreign import java unsafe "@wrapper onGroupCollapse" mkOnGroupCollapseListener ::
  (Int -> Java OnGroupCollapseListener ()) -> OnGroupCollapseListener

-- End android.widget.ExpandableListView.OnGroupCollapseListener

-- Start android.widget.ExpandableListView

data ExpandableListView = ExpandableListView @android.widget.ExpandableListView
  deriving Class

type instance Inherits ExpandableListView = '[ListView]

-- End android.widget.ExpandableListView

-- Start android.widget.ExpandableListView.OnGroupExpandisterner

data OnGroupExpandisterner = OnGroupExpandisterner
  @android.widget.ExpandableListView$OnGroupExpandisterner
  deriving Class

-- End android.widget.ExpandableListView.OnGroupExpandisterner

-- Start android.widget.ListView

data ListView = ListView @android.widget.ListView
  deriving Class

type instance Inherits ListView = '[AbsListView]

-- End android.widget.ListView

-- Start android.widget.AbsListView

data AbsListView = AbsListView @android.widget.AbsListView
  deriving Class

type instance Inherits AbsListView = '[(AdapterView ListAdapter), TextWatcher, OnGlobalLayoutListener, FilterFilterListener, OnTouchModeChangeListener]

-- End android.widget.AbsListView

-- Start android.widget.ListView

data AdapterView t = AdapterView (@android.widget.AdapterView t)
  deriving Class

type instance Inherits (AdapterView t )= '[ViewGroup]

-- End android.widget.AdapterView

-- Start android.widget.ListAdapter

data ListAdapter = ListAdapter @android.widget.ListAdapter
  deriving Class

type instance Inherits ListAdapter = '[Adapter]

-- End android.widget.ListAdapter

-- Start android.widget.Adapter

data Adapter = Adapter @android.widget.Adapter
  deriving Class

-- End android.widget.Adapter

-- Start android.widget.Filter.FilterListener

data FilterFilterListener = FilterFilterListener @android.widget.Filter$FilterListener
  deriving Class

foreign import java unsafe "@wrapper onFilterComplete" mkFilterFilterListener ::
  (Int -> Java FilterFilterListener ()) -> FilterFilterListener

-- End android.widget.Fileter.FilterListener
