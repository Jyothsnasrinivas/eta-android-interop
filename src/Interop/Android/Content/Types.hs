module Interop.Android.Content.Types where

import Java

-- Start android.content.Context

data Context = Context @app.content.Context
  deriving Class

-- End android.content.Context

-- Start android.content.ContextWrapper

data ContextWrapper = ContextWrapper @android.content.ContextWrapper
  deriving Class

type instance Inherits ContextWrapper = '[Context]

-- End android.content.ContextWrapper

-- Start android.content.ComponentCallbacks

data ComponentCallbacks = ComponentCallbacks @android.content.ComponentCallbacks
  deriving Class

-- End android.content.ComponentCallbacks

-- Start android.content.ComponentCallbacks2

data ComponentCallbacks2 = ComponentCallbacks2 @android.content.ComponentCallbacks2
  deriving Class

type instance Inherits ComponentCallbacks2 = '[ComponentCallbacks]

-- End android.content.ComponentCallbacks

-- Start android.content.Loader(d)

data Loader d = Loader (@android.content.Loader d)
  deriving Class

-- End android.content.Loader(d)

-- Start android.content.Intent

data Intent = Intent @android.content.Intent
  deriving Class

-- End android.content.Intent

-- Start android.content.DialogInterface

data DialogInterface = DialogInterface @android.app.DialogInterface
  deriving Class

-- End android.app.DialogInterface

-- Start android.content.DialogInterface.OnClickListener

data OnClickListener = OnClickListener @android.app.DialogInterface$OnClickListener
  deriving Class

foreign import java unsafe "@wrapper onClick" mkOnClickListener ::
  (DialogInterface -> Int -> Java OnClickListener ()) -> OnClickListener

-- End android.app.DialogInterface.OnClickListener
