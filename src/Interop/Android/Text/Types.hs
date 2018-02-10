module Interop.Android.Text.Types where

import Java
import Interop.Java.Lang

-- Start android.text.TextWatcher

data TextWatcher = TextWatcher @android.text.TextWatcher
  deriving Class

type instance Inherits TextWatcher = '[NoCopySpan]

foreign import java unsafe "@wrapper afterTextChanged,beforeTextChanged,onTextChanged" mkTextWatcher
  :: (Editable -> Java TextWatcher ())
  -> (CharSequence -> Int -> Int -> Int -> Java TextWatcher ())
  -> (CharSequence -> Int -> Int -> Int -> Java TextWatcher ())
  -> TextWatcher

-- End android.text.TextWatcher

-- Start android.text.NoCopySpan

data NoCopySpan = NoCopySpan @android.text.NoCopySpan
  deriving Class

-- End android.text.NoCopySpan

-- Start android.text.Editable

data Editable = Editable @android.text.Editable
  deriving Class

type instance Inherits Editable = '[CharSequence, GetChars, Spannable, Appendable]

-- End android.text.Editable

-- Start android.text.GetChars

data GetChars = GetChars @android.text.GetChars
  deriving Class

type instance Inherits GetChars = '[CharSequence]

-- End android.text.GetChars

-- Start android.text.Spannable

data Spannable = Spannable @android.text.Spannable
  deriving Class

type instance Inherits Spannable = '[Spanned]

-- End android.text.Spannable

-- Start android.text.Spanned

data Spanned = Spanned @android.text.Spanned
  deriving Class

type instance Inherits Spanned = '[CharSequence]

-- End android.text.Spanned
