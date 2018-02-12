module Interop.Android.Content.Types where

import Java
import Java.Collections
import Java.Exception
import Java.Utils
import Data.Typeable
import Interop.Android.Database.Types
import Interop.Android.OS.Types
import Interop.Android.Util.Types
import Interop.Android.Text.Types
import Interop.Java.Lang
import Interop.Java.Net

-- Start android.content.Context

data Context = Context @android.content.Context
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

foreign import java unsafe "@wrapper onConfigurationChanged,onLowMemory" mkComponentCallbacks
  :: (Configuration -> Java ComponentCallbacks ())
  -> Java ComponentCallbacks ()
  -> ComponentCallbacks

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

data DialogInterface = DialogInterface @android.content.DialogInterface
  deriving Class

-- End android.content.DialogInterface

-- Start android.content.DialogInterface.OnClickListener

data OnClickListener = OnClickListener @android.content.DialogInterface$OnClickListener
  deriving Class

foreign import java unsafe "@wrapper onClick" mkOnClickListener ::
  (DialogInterface -> Int -> Java OnClickListener ()) -> OnClickListener

-- End android.content.DialogInterface.OnClickListener

-- Start android.content.ClipboardManager.OnPrimaryClipChangedListener

data OnPrimaryClipChangedListener = OnPrimaryClipChangedListener
  @android.content.ClipboardManager$OnPrimaryClipChangedListener
  deriving Class

foreign import java unsafe "@wrapper onPrimaryClipChanged" mkOnPrimaryClipChangedListener ::
  Java OnPrimaryClipChangedListener () -> OnPrimaryClipChangedListener

-- End android.content.ClipboardManager.OnPrimaryClipChangedListener

-- Start android.content.ContentProvider.PipeDataWriter

data PipeDataWriter t = PipeDataWriter (@android.content.ContentProvider$PipeDataWriter t)
  deriving Class

foreign import java unsafe "@wrapper writeDataToPipe" mkPipeDataWriter ::
  (ParcelFileDescriptor -> URI -> JString -> Bundle -> Java (PipeDataWriter t) ()) -> (PipeDataWriter t)

-- End android.content.ContentProvider.PipeDataWriter

-- Start android.content.res.Configuration

data Configuration = Configuration @android.content.res.Configuration
  deriving Class

type instance Inherits Configuration = '[Object, Parcelable, Comparable(Configuration)]

-- End android.content.res.Configuration

-- Start android.content.DialogInterface.OnCancelListener

data DialogInterfaceOnCancelListener = DialogInterfaceOnCancelListener
  @android.content.DialogInterface$OnCancelListener
  deriving Class

foreign import java unsafe "@wrapper onCancel" mkDialogInterfaceOnCancelListener ::
  (DialogInterface -> Java DialogInterfaceOnCancelListener ()) -> DialogInterfaceOnCancelListener

-- End android.content.DialogInterface.OnCancelListener

-- Start android.content.DialogInterface.OnDismissListener

data DialogInterfaceOnDismissListener = DialogInterfaceOnDismissListener
  @android.content.DialogInterface$OnDismissListener
  deriving Class

foreign import java unsafe "@wrapper onDismiss" mkDialogInterfaceOnDismissListener ::
  (DialogInterface -> Java DialogInterfaceOnDismissListener ()) -> DialogInterfaceOnDismissListener

-- End android.content.DialogInterface.OnDismssListener

-- Start android.content.DialogInterface.OnKeyListener

data DialogInterfaceOnKeyListener = DialogInterfaceOnKeyListener
  @android.content.DialogInterface$OnKeyListener
  deriving Class

-- foreign import java unsafe "@wrapper onKey" mkDialogInterfaceOnKeyListener
--   :: (DialogInterface -> Int -> KeyEvent -> Java DialogInterfaceOnDismissListener ())
--   -> DialogInterfaceOnKeyListener

-- End android.content.DialogInterface.OnKeyListener

-- Start android.content.DialogInterface.OnMultiChoiceClickListener

data OnMultiChoiceClickListener = OnMultiChoiceClickListener
  @android.content.DialogInterface$OnMultiChoiceClickListener
  deriving Class

foreign import java unsafe "@wrapper onClick" mkOnMultiChoiceClickListener
  :: (DialogInterface -> Int -> Bool -> Java OnMultiChoiceClickListener ())
  -> OnMultiChoiceClickListener

-- End android.content.DialogInterface.OnMultiChoiceClickListener

-- Start android.content.DialogInterface.OnShowListener

data OnShowListener = OnShowListener
  @android.content.DialogInterface$OnShowListener
  deriving Class

foreign import java unsafe "@wrapper onClick" mkOnShowListener
  :: (DialogInterface -> Java OnShowListener ())
  -> OnShowListener

-- End android.content.DialogInterface.OnShowListener

-- Start android.content.EntityIterator

data EntityIterator = EntityIterator @android.content.EntityIterator
  deriving Class

type instance Inherits EntityIterator = '[Iterator Entity]

-- End android.content.EntityIterator

-- Start android.content.Entity

data Entity = Entity @android.content.Entity
  deriving Class

-- End android.content.Entity

-- Start android.content.IntentSender.OnFinished

data IntentSenderOnFinished = IntentSenderOnFinished @android.content.IntentSender$OnFinished
  deriving Class

-- End android.content.IntentSender.OnFinished

-- Start android.content.Loader.OnLoadCanceledListener

data OnLoadCanceledListener d = OnLoadCanceledListener
  (@android.content.Loader$OnLoadCanceledListener d)
  deriving Class

-- End android.content.Loader.OnLoadCanceledListener

-- Start android.content.Loader.OnLoadCompleteListener

data OnLoadCompleteListener d = OnLoadCompleteListener
  (@android.content.Loader$OnLoadCompleteListener d)
  deriving Class

-- End android.content.Loader.OnLoadCompleteListener

-- Start android.content.ServiceConnection

data ServiceConnection = ServiceConnection @android.content.ServiceConnection
  deriving Class

-- End android.content.ServiceConnection

-- Start android.content.SharedPreferences

data SharedPreferences = SharedPreferences @android.content.SharedPreferences
  deriving Class

-- End android.content.SharedPreferences

-- Start android.content.SharedPreferences.Editor

data SharedPreferencesEditor = SharedPreferencesEditor @android.content.SharedPreferences$Editor
  deriving Class

-- End android.content.SharedPreferences.Editor

-- Start android.content.SharedPreferences.OnSharedPreferenceChangeListener

data OnSharedPreferenceChangeListener = OnSharedPreferenceChangeListener
  @android.content.OnSharedPreferenceChangeListener
  deriving Class

-- End android.content.SharedPreferences.OnSharedPreferenceChangeListener

-- Start android.content.SyncStatusObserver

data SyncStatusObserver = SyncStatusObserver @android.content.SyncStatusObserver
  deriving Class

-- End android.content.SyncStatusObserver

-- Start android.content.AbstractThreadedSyncAdapter

data AbstractThreadedSyncAdapter = AbstractThreadedSyncAdapter
  @android.content.AbstractThreadedSyncAdapter
  deriving Class

-- End android.content.AbstractThreadedSyncAdapter

-- Start android.content.AsyncQueryHandler

data AsyncQueryHandler = AsyncQueryHandler @android.content.AsyncQueryHandler
  deriving Class

type instance Inherits AsyncQueryHandler = '[Handler]

-- End android.content.AsyncQueryHandler

-- Start android.content.AsyncQueryHandler.WorkerArgs

data WorkerArgs = WorkerArgs @android.content.AsyncQueryHandler$WorkerArgs
  deriving Class

-- End android.content.AsyncQueryHandler.WorkerArgs

-- Start android.content.AsyncQueryHandler.WorkerHandler

data WorkerHandler = WorkerHandler @android.content.AsyncQueryHandler$WorkerHandler
  deriving Class

-- End android.content.AsyncQueryHandler.WorkerHandler

-- Start android.content.AsyncTaskLoader

data AsyncTaskLoader d = AsyncTaskLoader (@android.content.AsyncTaskLoader d)
  deriving Class

type instance Inherits (AsyncTaskLoader d) = '[(Loader d)]

-- End android.content.AsyncTaskLoader

-- Start android.content.BroadcastReceiver

data BroadcastReceiver = BroadcastReceiver @android.content.BroadcastReceiver
  deriving Class

-- End android.content.BroadcastReceiver

-- Start android.content.BroadcastReceiver.PendingResult

data PendingResult = PendingResult @android.content.BroadcastReceiver$PendingResult
  deriving Class

-- End android.content.BroadcastReceiver.PendingResult

-- Start android.content.ClipboardManager

data ClipboardManagerContent = ClipboardManagerContent @android.content.ClipboardManager
  deriving Class

type instance Inherits ClipboardManagerContent = '[ClipboardManager]

-- End android.content.ClipboardManager

-- Start android.content.ClipData

data ClipData = ClipData @android.content.ClipData
  deriving Class

type instance Inherits ClipData = '[Object, Parcelable]

-- End android.content.ClipData

-- Start android.content.ClipData.Item

data ClipDataItem = ClipDataItem @android.content.ClipData$Item
  deriving Class

-- End android.content.ClipData.Item

-- Start android.content.ClipDescription

data ClipDescription = ClipDescription @android.content.ClipDescription
  deriving Class

type instance Inherits ClipDescription = '[Object, Parcelable]

-- End android.content.ClipDescription

-- Start android.content.ComponentName

data ComponentName = ComponentName @android.content.ComponentName
  deriving Class

type instance Inherits ComponentName = '[Object, Parcelable, Cloneable, (Comparable ComponentName)]

-- End android.content.ClipData

-- Start android.content.ContentProvider

data ContentProvider = ContentProvider @android.content.ContentProvider
  deriving Class

type instance Inherits ContentProvider = '[Object, ComponentCallbacks2]

-- End android.content.ContentProvider

-- Start android.content.ContentProviderClient

data ContentProviderClient = ContentProviderClient @android.content.ContentProviderClient
  deriving Class

type instance Inherits ContentProviderClient = '[Object, AutoCloseable]

-- End android.content.ContentProviderClient

-- Start android.content.ContentProviderOperation

data ContentProviderOperation = ContentProviderOperation @android.content.ContentProviderOperation
  deriving Class

type instance Inherits ContentProviderOperation = '[Object, Parcelable]

-- End android.content.ContentProviderOperation

-- Start android.content.ContentProviderOperation.Builder

data ContentProviderOperationBuilder = ContentProviderOperationBuilder
  @android.content.ContentProviderOperation$Builder
  deriving Class

-- End android.content.ContentProviderOperation.Builder

-- Start android.content.ContentProviderResult

data ContentProviderResult = ContentProviderResult @android.content.ContentProviderResult
  deriving Class

type instance Inherits ContentProviderResult = '[Object, Parcelable]

-- End android.content.ContentProviderResult

-- Start android.content.ContentQueryMap

data ContentQueryMap = ContentQueryMap @android.content.ContentQueryMap
  deriving Class

type instance Inherits ContentQueryMap = '[Observable]

-- End android.content.ContentQueryMap

-- Start android.content.ContentResolver

data ContentResolver = ContentResolver @android.content.ContentResolver
  deriving Class

-- End android.content.ContentResolver

-- Start android.content.ContentUris

data ContentUris = ContentUris @android.content.ContentUris
  deriving Class

-- End android.content.ContentUris

-- Start android.content.ContentValues

data ContentValues = ContentValues @android.content.ContentValues
  deriving Class

type instance Inherits ContentValues = '[Object, Parcelable]

-- End android.content.ContentValues

-- Start android.content.CursorLoader

data CursorLoader = CursorLoader @android.content.CursorLoader
  deriving Class

type instance Inherits CursorLoader = '[AsyncTaskLoader Cursor]

-- End android.content.CursorLoader

-- Start android.content.Entity.NamedContentValues

data EntityNamedContentValues = EntityNamedContentValues @android.content.Entity$NamedContentValues
  deriving Class

-- End android.content.Entity.NamedContentValues

-- Start android.content.Intent.FilterComparison

data IntentFilterComparison = IntentFilterComparison @android.content.Intent$FilterComparison
  deriving Class

-- End android.content.Intent.FilterComparison

-- Start android.content.Intent.ShortcutIconResource

data IntentShortcutIconResource = IntentShortcutIconResource @android.content.Intent$ShortcutIconResource
  deriving Class

type instance Inherits IntentShortcutIconResource = '[Object, Parcelable]

-- End android.content.Intent.ShortcutIconResource

-- Start android.content.IntentFilter

data IntentFilter = IntentFilter @android.content.IntentFilter
  deriving Class

-- End android.content.IntentFilter

-- Start android.content.IntentFilter.AuthorityEntry

data IntentFilterAuthorityEntry = IntentFilterAuthorityEntry
  @android.content.IntentFilter$AuthorityEntry
  deriving Class

-- End android.content.IntentFilter.AuthorityEntry

-- Start android.content.IntentSender

data IntentSender = IntentSender @android.content.IntentSender
  deriving Class

type instance Inherits IntentSender = '[Object, Parcelable]

-- End android.content.IntentSender

-- Start android.content.Loader.ForceLoadContentObserver

data ForceLoadContentObserver = ForceLoadContentObserver @android.content.Loader$ForceLoadContentObserver
  deriving Class

type instance Inherits ForceLoadContentObserver = '[ContentObserver]

-- End android.content.Loader.ForceLoadContentObserver

-- Start android.content.MutableContextWrapper

data MutableContextWrapper = MutableContextWrapper @android.content.MutableContextWrapper
  deriving Class

type instance Inherits MutableContextWrapper = '[ContextWrapper]

-- End android.content.MutableContextWrapper

-- Start android.content.PeriodicSync

data PeriodicSync = PeriodicSync @android.content.PeriodicSync
  deriving Class

type instance Inherits PeriodicSync = '[Object, Parcelable]

-- End android.content.PeriodicSync

-- Start android.content.QuickViewConstants

data QuickViewConstants = QuickViewConstants @android.content.QuickViewConstants
  deriving Class

-- End android.content.QuickViewConstants

-- Start android.content.RestrictionEntry

data RestrictionEntry = RestrictionEntry @android.content.RestrictionEntry
  deriving Class

type instance Inherits RestrictionEntry = '[Object, Parcelable]

-- End android.content.RestrictionEntry

-- Start android.content.RestrictionsManager

data RestrictionsManager = RestrictionsManager @android.content.RestrictionsManager
  deriving Class

-- End android.content.RestrictionsManager

-- Start android.content.SearchRecentSuggestionsProvider

data SearchRecentSuggestionsProvider = SearchRecentSuggestionsProvider
  @android.content.SearchRecentSuggestionsProvider
  deriving Class

type instance Inherits SearchRecentSuggestionsProvider = '[ContentProvider]

-- End android.content.SearchRecentSuggestionsProvider

-- Start android.content.SyncAdapterType

data SyncAdapterType = SyncAdapterType @android.content.SyncAdapterType
  deriving Class

type instance Inherits SyncAdapterType = '[Object, Parcelable]

-- End android.content.SyncAdapterType

-- Start android.content.SyncContext

data SyncContext = SyncContext @android.content.SyncContext
  deriving Class

-- End android.content.SyncContext

-- Start android.content.SyncInfo

data SyncInfo = SyncInfo @android.content.SyncInfo
  deriving Class

type instance Inherits SyncInfo = '[Object, Parcelable]

-- End android.content.SyncInfo

-- Start android.content.SyncRequest

data SyncRequest = SyncRequest @android.content.SyncRequest
  deriving Class

type instance Inherits SyncRequest = '[Object, Parcelable]

-- End android.content.SyncRequest

-- Start android.content.SyncRequest.Builder

data SyncRequestBuilder = SyncRequestBuilder @android.content.SyncRequest$Builder
  deriving Class

-- End android.content.SyncRequest.Builder

-- Start android.content.SyncResult

data SyncResult = SyncResult @android.content.SyncResult
  deriving Class

type instance Inherits SyncResult = '[Object, Parcelable]

-- End android.content.SyncResult

-- Start android.content.SyncStats

data SyncStats = SyncStats @android.content.SyncStats
  deriving Class

type instance Inherits SyncStats = '[Object, Parcelable]

-- End android.content.SyncStats

-- Start android.content.UriMatcher

data UriMatcher = UriMatcher @android.content.UriMatcher
  deriving Class

-- End android.content.UriMatcher

-- Start android.content.UriPermission

data UriPermission = UriPermission @android.content.UriPermission
  deriving Class

type instance Inherits UriPermission = '[Object, Parcelable]

-- End android.content.UriPermission

-- Start android.content.ActivityNotFoundException

data ActivityNotFoundException = ActivityNotFoundException @android.content.ActivityNotFoundException
  deriving (Class, Typeable)

type instance Inherits ActivityNotFoundException = '[RuntimeException]

-- End android.content.ActivityNotFoundException

-- Start android.content.IntentFilter.MalformedMimeTypeException

data MalformedMimeTypeException = MalformedMimeTypeException
  @android.content.IntentFilter$MalformedMimeTypeException
  deriving (Class, Typeable)

type instance Inherits MalformedMimeTypeException = '[AndroidException]

-- End android.content.IntentFilter.MalformedMimeTypeException

-- Start android.content.IntentSender.SendIntentException

data SendIntentException = SendIntentException
  @android.content.IntentSender$SendIntentException
  deriving (Class, Typeable)

type instance Inherits SendIntentException = '[AndroidException]

-- End android.content.IntentSender.SendIntentException

-- Start android.content.OperationApplicationException

data OperationApplicationException = OperationApplicationException
  @android.content.OperationApplicationException
  deriving (Class, Typeable)

type instance Inherits OperationApplicationException = '[JException]

-- End android.content.OperationApplicationException

-- Start android.content.ReceiverCallNotAllowedException

data ReceiverCallNotAllowedException = ReceiverCallNotAllowedException
  @android.content.ReceiverCallNotAllowedException
  deriving (Class, Typeable)

type instance Inherits ReceiverCallNotAllowedException = '[AndroidRuntimeException]

-- End android.content.ReceiverCallNotAllowedException
