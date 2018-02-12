module Interop.Android.Database.Types where

import Java

-- Start android.database.Cursor

data Cursor = Cursor @android.databse.Cursor
  deriving Class

-- End android.database.Cursor

-- Start android.database.ContentObserver

data ContentObserver = ContentObserver @android.databse.ContentObserver
  deriving Class

-- End android.database.ContentObserver
