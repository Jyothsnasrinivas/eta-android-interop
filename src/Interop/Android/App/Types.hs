module Interop.Android.App.Types where

import Java
import Interop.Android.Content.Types
import Interop.Android.OS.Types
import Interop.Android.View.Types
import Interop.Android.Widget.Types

-- Start android.app.ActionBar.OnMenuVisibilityListener

data OnMenuVisibilityListener = OnMenuVisibilityListener @android.app.ActionBar$OnMenuVisibilityListener
  deriving Class

foreign import java unsafe "@wrapper onMenuVisibilityChanged" mkOnMenuVisibilityListner ::
  (Bool -> Java OnMenuVisibilityListener ()) -> OnMenuVisibilityListener

-- End android.app.ActionBar.OnMenuVisibilityListener

-- Start android.app.ActionBar.OnNavigationListener

data OnNavigationListener = OnNavigationListener @android.app.ActionBar$OnNavigationListener
  deriving Class

foreign import java unsafe "@wrapper onNavigationItemSelected" mkOnNavigationListner ::
  (Int -> Int64 -> Java OnNavigationListener Bool) -> OnNavigationListener

-- End android.app.ActionBar.OnNavigationListener

-- Start android.app.ActionBar.Tab

data Tab = Tab @android.app.ActionBar$Tab
  deriving Class

-- End android.app.ActionBar.Tab

-- Start android.app.FragmentTransaction

data FragmentTransaction = FragmentTransaction @android.app.FragmentTransaction
  deriving Class

-- End android.app.FragmentTransaction

-- Start android.app.ActionBar.TabListener

data TabListener = TabListener @android.app.ActionBar$TabListener
  deriving Class

foreign import java unsafe "@wrapper onTabReselected,onTabSelected,onTabUnSelected" mkTabListener
  :: (Tab -> FragmentTransaction -> Java TabListener ())
  -> (Tab -> FragmentTransaction -> Java TabListener ())
  -> (Tab -> FragmentTransaction -> Java TabListener ())
  -> TabListener

-- End android.app.ActionBar.TabListner

-- Start android.app.AlarmManager.OnAlarmListener

data OnAlarmListener = OnAlarmListener @android.app.AlarmManager.OnAlarmListener
  deriving Class

foreign import java unsafe "@wrapper onAlarm" mkOnAlarmListener :: Java OnAlarmListener () -> OnAlarmListener

-- End android.app.AlarmManager.OnAlarmListener

-- Start android.app.Activity

data Activity = Activity @android.app.Activity
  deriving Class

type instance Inherits Activity = '[ContextThemeWrapper, LayoutInflatorFactory2, WindowCallback, KeyEventCallback,
 OnCreateContextMenuListener, ComponentCallbacks2 ]

-- End android.app.Activity

-- Start android.app.Application.ActivityLifecycleCallbacks

data ActivityLifecycleCallbacks = ActivityLifecycleCallbacks @android.app.Application.ActivityLifecycleCallbacks
  deriving Class

foreign import java unsafe
 "@wrapper onActivityCreated,onActivityDestroyed,onActivityPaused,onActivityResumed,onActivitySaveInstanceState,onActivityStarted,onActivityStopped" mkActivityLifecycleCallbacks
  :: (Activity -> Bundle -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Bundle -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Java ActivityLifecycleCallbacks ())
  -> (Activity -> Java ActivityLifecycleCallbacks ())
  -> ActivityLifecycleCallbacks

-- End android.app.Application.ActivityLifecycleCallbacks

-- Start android.app.Application.OnProvideAssistDataListener

data OnProvideAssistDataListener = OnProvideAssistDataListener
  @android.app.Application.OnProvideAssistDataListener
    deriving Class

foreign import java unsafe "@wrapper onProvideAssistData" mkOnProvideAssistDataListener ::
  (Activity -> Bundle -> Java OnProvideAssistDataListener ()) -> OnProvideAssistDataListener

-- End android.app.Application.OnProvideAssistDataListener

-- Start android.app.AppOpsManager.OnOpChangedListener

data OnOpChangedListener = OnOpChangedListener @android.app.AppOpsManager.OnOpChangedListener
  deriving Class

foreign import java unsafe "@wrapper onOpChanged" mkOnOpChangedListener ::
  (JString -> JString -> Java OnOpChangedListener ()) -> OnOpChangedListener

-- End android.app.AppOpsManager.OnOpChangedListener

-- Start android.app.DatePickerDialog.OnDateSetListener

data OnDateSetListener = OnDateSetListener @android.app.DatePickerDialog$OnDateSetListener
  deriving Class

foreign import java unsafe "@wrapper onDateSet" mkOnDateSetListener ::
  (DatePicker -> Java OnDateSetListener ()) -> OnDateSetListener

-- End android.app.DatePickerDialog.OnDateSetListener

-- Start android.app.FragmentBreadCrumbs.OnBreadCrumbClickListener

data OnBreadCrumbClickListener = OnBreadCrumbClickListener
  @android.app.FragmentBreadCrumbs.OnBreadCrumbClickListener
    deriving Class

foreign import java unsafe "@wrapper onBreadCrumbClick" mkOnBreadCrumbClickListener ::
  (BackStackEntry -> Int -> Java OnBreadCrumbClickListener Bool) -> OnBreadCrumbClickListener

-- End android.app.FragmentBreadCrumbs.OnBreadCrumbClickListener

-- Start android.app.FragmentManager.BackStackEntry

data BackStackEntry = BackStackEntry @android.app.FragmentManager$BackStackEntry
  deriving Class

foreign import java unsafe "@wrapper getBreadCrumbShortTitle,getBreadCrumbShortTitleRes,getBreadCrumbTitle,getBreadCrumbTitleRes,getId,getName" mkBackStackEntry
  :: (Java BackStackEntry CharSequence)
  -> (Java BackStackEntry Int)
  -> (Java BackStackEntry CharSequence)
  -> (Java BackStackEntry Int)
  -> (Java BackStackEntry Int)
  -> (Java BackStackEntry JString)
  -> BackStackEntry

-- End android.app.FragmentManager.BackStackEntry

-- Start android.app.FragmentManager.OnBackStackChangedListener

data OnBackStackChangedListener = OnBackStackChangedListener @android.app.FragmentManager$OnBackStackChangedListener
  deriving Class

foreign import java unsafe "@wrapper onBackStackChanged" mkOnBackStackChangedListener ::
  (Java OnBackStackChangedListener ()) -> OnBackStackChangedListener

-- End android.app.FragmentManager.OnBackStackChangedListener

-- Start android.app.KeyguardManager.OnKeyguardExitResult

data OnKeygaurdExitResult = OnKeygaurdExitResult @android.app.KeyguardManager$OnKeyguardExitResult
  deriving Class

foreign import java unsafe "@wrapper onKeygaurdExitResult" mkOnKeygaurdExitResult ::
 (Bool -> Java OnKeygaurdExitResult ()) -> OnKeygaurdExitResult

-- End android.app.KeyguardManager.OnKeyguardExitResult

-- Start android.app.LoaderManager.LoaderCallbacks<D>

data LoaderCallbacks d = LoaderCallbacks (@android.app.LoaderManager$LoaderCallbacks d)
  deriving Class

foreign import java unsafe "@wrapper onCreateLoader,onLoadFinished,onLoaderReset" mkLoaderCallbacks
  :: (d <: Object)
  => (Int -> Bundle -> Java (LoaderCallbacks d) (Loader d))
  -> (Loader d -> d -> Java (LoaderCallbacks d) ())
  -> (Loader d -> Java (LoaderCallbacks d) ())
  -> (LoaderCallbacks d)

-- End android.app.LoaderManager.LoaderCallbacks<D>

-- Start android.app.Notification.Action.Extender

data NotificationActionExtender = NotificationActionExtender @android.app.Notification$Action$Extender
  deriving Class

foreign import java unsafe "@wrapper extent" mkNotificationActionExtender
  :: (NotificationActionBuilder -> Java NotificationActionExtender NotificationActionBuilder)
  -> NotificationActionExtender

-- End android.app.Notification.Action.Extender

-- Start android.app.Notification.Action.Builder

data NotificationActionBuilder = NotificationActionBuilder @android.app.Notification$Action$Builder
  deriving Class

foreign import java unsafe "@wrapper addExtras,addRemoteInput,build,extend,getExtras,setAllowGeneratedReplies" mkNotificationActionBuilder
  :: (Bundle -> Java NotificationActionBuilder NotificationActionBuilder)
  -> (RemoteInput -> Java NotificationActionBuilder NotificationActionBuilder)
  -> (Java NotificationActionBuilder NotificationAction)
  -> (NotificationActionExtender -> Java NotificationActionBuilder NotificationActionBuilder)
  -> (Java NotificationActionBuilder Bundle)
  -> (Bool -> Java NotificationActionBuilder NotificationActionBuilder)
  -> NotificationActionBuilder

-- End android.app.Notification.Action.Builder

-- Start android.app.Notification.Action

data NotificationAction = NotificationAction @android.app.Notification$Action
  deriving Class

type instance Inherits NotificationAction = '[Object, Parcelable]

-- End android.app.Notification.Action

-- Start android.app.RemoteInput

data RemoteInput = RemoteInput @android.app.RemoteInput
  deriving Class

-- End android.app.RemoteInput

-- Start android.app.Notification.Extender

data NotificationExtender = NotificationExtender @android.app.Notification$Extender
  deriving Class

foreign import java unsafe "@wrapper extend" mkNotificationExtender ::
  (NotificationBuilder -> Java NotificationExtender NotificationBuilder) -> NotificationExtender

-- End android.app.Notification.Extender

-- Start android.app.Notification.Builder

data NotificationBuilder = NotificationBuilder @android.app.Notification.Builder
  deriving Class

-- End android.app.Notification.Builder

-- Start android.app.PendingIntent.OnFinished

data PendingIntentOnFinished = PendingIntentOnFinished @android.app.PendingIntent$OnFinished
  deriving Class

foreign import java unsafe "@wrapper onSendFinished" mkPendingIntentOnFinished
  :: (PendingIntent -> Intent -> JString -> Bundle -> Java PendingIntentOnFinished ())
  -> PendingIntentOnFinished

-- End android.app.PendingIntent.OnFinished

-- Start android.app.PendingIntent

data PendingIntent = PendingIntent @android.app.PendingIntent
  deriving Class

type instance Inherits PendingIntent = '[Object, Parcelable]

-- End android.app.PendingIntent

-- Start android.app.SearchManager.OnCancelListener

data OnCancelListener = OnCancelListener @android.app.SearchManager$OnCancelListener
  deriving Class

foreign import java unsafe "@wrapper onCancel" mkOnCancelListener ::
  (Java OnCancelListener ()) -> OnCancelListener

-- End android.app.SearchManager.OnCancelListener

-- Start android.app.SearchManager.OnDismissListener

data OnDismissListener = OnDismissListener @android.app.SearchManager$OnDismissListener
  deriving Class

foreign import java unsafe "@wrapper onDismiss" mkOnDismissListener ::
  (Java OnDismissListener ()) -> OnDismissListener

-- End android.app.SearchManager.OnDismissListener

-- Start android.app.SharedElementCallback.OnSharedElementsReadyListener

data OnSharedElementsReadyListener = OnSharedElementsReadyListener
  @android.app.SharedElementCallback$OnSharedElementsReadyListener
    deriving Class

foreign import java unsafe "@wrapper onSharedElementsReady" mkOnSharedElementsReadyListener ::
  (Java OnSharedElementsReadyListener ()) -> OnSharedElementsReadyListener

-- End android.app.SharedElementCallback.OnSharedElementsReadyListener

-- Start android.app.TimePickerDialog.OnTimeSetListener

data OnTimeSetListener = OnTimeSetListener
  @android.app.TimePickerDialog$OnTimeSetListener
    deriving Class

foreign import java unsafe "@wrapper onTimeSet" mkOnTimeSetListener ::
  (TimePicker -> Java OnTimeSetListener ()) -> OnTimeSetListener

-- End android.app.TimePickerDialog.OnTimeSetListener

-- Start android.app.UiAutomation.AccessibilityEventFilter

data AccessibilityEventFilter = AccessibilityEventFilter
  @android.app.UiAutomation$AccessibilityEventFilter
    deriving Class

foreign import java unsafe "@wrapper accept" mkAccessibilityEventFilter ::
  (AccessibilityEvent -> Java AccessibilityEventFilter Bool) -> AccessibilityEventFilter

-- End android.app.UiAutomation.AccessibilityEventFilter

-- Start android.app.UiAutomation.OnAccessibilityEventListener

data OnAccessibilityEventListener = OnAccessibilityEventListener
  @android.app.UiAutomation$OnAccessibilityEventListener
    deriving Class

foreign import java unsafe "@wrapper onAccessibilityEvent" mkOnAccessibilityEvent ::
  (AccessibilityEvent -> Java OnAccessibilityEventListener Bool) -> OnAccessibilityEventListener

-- End android.app.UiAutomation.AccessibilityEventListener

-- Start android.app.ActionBar

data ActionBar = ActionBar @android.app.ActionBar
  deriving Class

-- End android.app.ActionBar

-- Start android.app.ActionBar.LayoutParams

data ActionBarLayoutParams = ActionBarLayoutParams @android.app.ActionBar$LayoutParams
  deriving Class

type instance Inherits ActionBarLayoutParams = '[MarginLayoutParams]

-- End android.app.ActionBar.LayoutParams

-- Start android.app.ActivityGroup

data ActivityGroup = ActivityGroup @android.app.ActivityGroup
  deriving Class

type instance Inherits ActivityGroup = '[Activity]

-- End android.app.ActivityGroup

-- Start android.app.ActivityManager

data ActivityManager = ActivityManager @android.app.ActivityManager
  deriving Class

-- End android.app.ActivityManager

-- Start android.app.ActivityManager.AppTask

data ActivityManagerAppTask = ActivityManagerAppTask @android.app.ActivityManager$AppTask
  deriving Class

-- End android.app.ActivityManager.AppTask

-- Start android.app.ActivityManager.MemoryInfo

data ActivityManagerMemoryInfo = ActivityManagerMemoryInfo @android.app.ActivityManager$MemoryInfo
  deriving Class

type instance Inherits ActivityManagerMemoryInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.MemoryInfo

-- Start android.app.ActivityManager.ProcessErrorStateInfo

data ProcessErrorStateInfo = ProcessErrorStateInfo @android.app.ActivityManager.ProcessErrorStateInfo
  deriving Class

type instance Inherits ProcessErrorStateInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.ProcessErrorStateInfo

-- Start android.app.ActivityManager.RecentTaskInfo

data RecentTaskInfo = RecentTaskInfo @android.app.ActivityManager.RecentTaskInfo
  deriving Class

type instance Inherits RecentTaskInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.RecentTaskInfo

-- Start android.app.ActivityManager.RunningAppProcessInfo

data RunningAppProcessInfo = RunningAppProcessInfo @android.app.ActivityManager.RunningAppProcessInfo
  deriving Class

type instance Inherits RunningAppProcessInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.RunningAppProcessInfo

-- Start android.app.ActivityManager.RunningServiceInfo

data RunningServiceInfo = RunningServiceInfo @android.app.ActivityManager.RunningServiceInfo
  deriving Class

type instance Inherits RunningServiceInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.RunningServiceInfo

-- Start android.app.ActivityManager.RunningTaskInfo

data RunningTaskInfo = RunningTaskInfo @android.app.ActivityManager.RunningTaskInfo
  deriving Class

type instance Inherits RunningTaskInfo = '[Object, Parcelable]

-- End android.app.ActivityManager.RunningTaskInfo

-- Start android.app.ActivityManager.TaskDescription

data TaskDescription = TaskDescription @android.app.ActivityManager.TaskDescription
  deriving Class

type instance Inherits TaskDescription = '[Object, Parcelable]

-- End android.app.ActivityManager.TaskDescription

-- Start android.app.ActivityOptions

data ActivityOptions = ActivityOptions @android.app.ActivityOptions
  deriving Class

-- End android.app.ActivityOptions

-- Start android.app.AlarmManager

data AlarmManager = AlarmManager @android.app.AlarmManager
  deriving Class

-- End android.app.AlarmManager

-- Start android.app.AlarmManager.AlarmClockInfo

data AlarmClockInfo = AlarmClockInfo @android.app.AlarmManager$AlarmClockInfo
  deriving Class

type instance Inherits AlarmClockInfo = '[Object, Parcelable]

-- End android.app.AlarmManager.AlarmClockInfo

-- Start android.app.AlertDialog

data AlertDialog = AlertDialog @android.app.AlertDialog
  deriving Class

type instance Inherits AlertDialog = '[Dialog, DialogInterface]

-- End android.app.AlertDialog

-- Start android.app.Dialog

data Dialog = Dialog @android.app.Dialog
  deriving Class

type instance Inherits Dialog = '[Object, DialogInterface, WindowCallback, KeyEventCallback, OnCreateContextMenuListener]

-- End android.app.Dialog

-- Start android.app.AlertDialog.Builder

data AlertDialogBuilder = AlertDialogBuilder @android.app.AlertDialog$Builder
  deriving Class

-- End android.app.AlertDialog.Builder

-- Start android.app.AliasActivity

data AliasActivity = AliasActivity @android.app.AliasActivity
  deriving Class

type instance Inherits AliasActivity = '[Activity]

-- End android.app.AliasActivity

-- Start android.app.Application

data Application = Application @android.app.Application
  deriving Class

type instance Inherits Application = '[ContextWrapper, ComponentCallbacks2]

-- End android.app.Application

-- Start android.app.ApplicationErrorReport

data ApplicationErrorReport = ApplicationErrorReport @android.app.ApplicationErrorReport
  deriving Class

type instance Inherits ApplicationErrorReport = '[Object, Parcelable]

-- End android.app.ApplicationErrorReport

-- Start android.app.ApplicationErrorReport.AnrInfo

data AnrInfo = AnrInfo @android.app.ApplicationErrorReport$AnrInfo
  deriving Class

-- End android.app.ApplicationErrorReport.AnrInfo

-- Start android.app.ApplicationErrorReport.BatteryInfo

data BatteryInfo = BatteryInfo @android.app.ApplicationErrorReport$BatteryInfo
  deriving Class

-- End android.app.ApplicationErrorReport.BatteryInfo

-- Start android.app.ApplicationErrorReport.CrashInfo

data CrashInfo = CrashInfo @android.app.ApplicationErrorReport$CrashInfo
  deriving Class

-- End android.app.ApplicationErrorReport.CrashInfo

-- Start android.app.AppOpsManager

data AppOpsManager = AppOpsManager @android.app.AppOpsManager
  deriving Class

-- End android.app.AppOpsManager

-- Start android.app.AutomaticZenRule

data AutomaticZenRule = AutomaticZenRule @android.app.AutomaticZenRule
  deriving Class

type instance Inherits AutomaticZenRule = '[Object, Parcelable]

-- End android.app.AutomaticZenRule

-- Start android.app.DatePickerDialog

data DatePickerDialog = DatePickerDialog @android.app.DatePickerDialog
  deriving Class

type instance Inherits DatePickerDialog = '[AlertDialog, OnClickListener, OnDateChangedListener]

-- End android.app.DatePickerDialog

-- Start android.app.DialogFragment

data DialogFragment = DialogFragment @android.app.DialogFragment
  deriving Class

type instance Inherits DialogFragment = '[Fragment, OnCancelListener, OnDismissListener]

-- End android.app.DialogFragment

-- Start android.app.Fragment

data Fragment = Fragment @android.app.Fragment
  deriving Class

type instance Inherits Fragment = '[Object, ComponentCallbacks2, OnCreateContextMenuListener]

-- End android.app.Fragment

-- Start android.app.DownloadManager

data DownloadManager = DownloadManager @android.app.DownloadManager
  deriving Class

-- End android.app.DownloadManager

-- Start android.app.DownloadManager.Query

data DownloadManagerQuery = DownloadManagerQuery @android.app.DownloadManagerQuery
  deriving Class

-- End android.app.DownloadManager.Query

-- Start android.app.DownloadManager.Request

data DownloadManagerRequest = DownloadManagerRequest @android.app.DownloadManagerRequest
  deriving Class

-- End android.app.DownloadManager.Request

-- Start android.app.ExpandableListActivity

data ExpandableListActivity = ExpandableListActivity @android.app.ExpandableListActivity
  deriving Class

type instance Inherits ExpandableListActivity = '[ActionBar, OnCreateContextMenuListener, OnChildClickListener, OnGroupCollapseListener, OnGroupExpandisterner]

-- End android.app.ExpandableListActivity

-- Start android.app.Fragment.SavedState

data FragmentSavedState = FragmentSavedState @android.app.Fragment$SavedState
  deriving Class

type instance Inherits FragmentSavedState = '[Object, Parcelable]

-- End android.app.FragmentSavedState

-- Start android.app.FragmentBreadCrumbs

data FragmentBreadCrumbs = FragmentBreadCrumbs @android.app.FragmentBreadCrumbs
    deriving Class

type instance Inherits FragmentBreadCrumbs = '[ViewGroup, OnBackStackChangedListener]

-- End android.app.FragmentBreadCrumbs

-- Start android.app.FragmentContainer

data FragmentContainer = FragmentContainer @android.app.FragmentContainer
  deriving Class

-- End android.app.FragmentContainer

-- Start android.app.FragmentController

data FragmentController = FragmentController @android.app.FragmentController
  deriving Class

-- End android.app.FragmentController

-- Start android.app.FragmentHostCallback

data FragmentHostCallback = FragmentHostCallback @android.app.FragmentHostCallback
  deriving Class

type instance Inherits FragmentHostCallback = '[FragmentContainer]

-- End android.app.FragmentHostCallback

-- Start android.app.FragmentManager

data FragmentManager = FragmentManager @android.app.FragmentManager
  deriving Class

-- End android.app.FragmentManager

-- Start android.app.FragmentManager.FragmentLifecycleCallbacks

data FragmentLifecycleCallbacks = FragmentLifecycleCallbacks
  @android.app.FragmentManager$FragmentLifecycleCallbacks
  deriving Class

-- End android.app.FragmentManager.FragmentLifecycleCallbacks

-- Start android.app.FragmentManagerNonConfig

data FragmentManagerNonConfig = FragmentManagerNonConfig @android.app.FragmentManagerNonConfig
  deriving Class

-- End android.app.FragmentManagerNonConfig

-- Start android.app.Instrumentation

data Instrumentation = Instrumentation @android.app.Instrumentation
  deriving Class

-- End android.app.Instrumentation

-- Start android.app.Instrumentation.ActivityMonitor

data InstrumentationActivityMonitor = InstrumentationActivityMonitor
  @android.app.Instrumentation$ActivityMonitor
  deriving Class

-- End android.app.Instrumentation.ActivityMonitor

-- Start android.app.Instrumentation.ActivityResult

data InstrumentationActivityResult = InstrumentationActivityResult
  @android.app.Instrumentation$ActivityResult
  deriving Class

-- End android.app.Instrumentation.ActivityResult

-- Start android.app.IntentService

data IntentService = IntentService @android.app.IntentService
  deriving Class

type instance Inherits IntentService = '[Service]

-- End android.app.IntentService

-- Start android.app.Service

data Service = Service @android.app.Service
  deriving Class

type instance Inherits Service = '[ContextWrapper, ComponentCallbacks2]

-- End android.app.Service

-- Start android.app.KeygaurdManager

data KeyguardManager = KeyguardManager @android.app.KeyguardManager
  deriving Class

-- End android.app.KeyguardManager

-- Start android.app.KeygaurdManager.KeyguardDismissCallback

data KeyguardDismissCallback = KeyguardDismissCallback @android.app.KeyguardManager$KeyguardDismissCallback
  deriving Class

-- End android.app.KeyguardManager.KeyguardDismissCallback

-- Start android.app.KeygaurdManager.KeyguardLock

data KeyguardLock = KeyguardLock @android.app.KeyguardManager$KeyguardLock
  deriving Class

-- End android.app.KeyguardManager.KeyguardLock

-- Start android.app.LauncherActivity

data LauncherActivity = LauncherActivity @android.app.LauncherActivity
  deriving Class

type instance Inherits LauncherActivity = '[ListActivity]

-- End android.app.LauncherActivity

-- Start android.app.ListActivity

data ListActivity = ListActivity @android.app.ListActivity
  deriving Class

type instance Inherits ListActivity = '[Activity]

-- End android.app.ListActivity

-- Start android.app.LauncherActivity.IconResizer

data IconResizer = IconResizer @android.app.LauncherActivity$IconResizer
  deriving Class

-- End android.app.LauncherActivity.IconResizer

-- Start android.app.LauncherActivity.ListItem

data ListItem = ListItem @android.app.LauncherActivity$ListItem
  deriving Class

-- End android.app.LauncherActivity.ListItem

-- Start android.app.ListFragment

data ListFragment = ListFragment @android.app.ListFragment
  deriving Class

type instance Inherits ListFragment = '[Fragment]

-- End android.app.ListFragment

-- Start android.app.LoaderManager

data LoaderManager = LoaderManager @android.app.LoaderManager
  deriving Class

-- End android.app.LoaderManager

-- Start android.app.LocalActivityManager

data LocalActivityManager = LocalActivityManager @android.app.LocalActivityManager
  deriving Class

-- End android.app.LocalActivityManager

-- Start android.app.MediaRouteActionProvider

data MediaRouteActionProvider = MediaRouteActionProvider @android.app.MediaRouteActionProvider
  deriving Class

type instance Inherits MediaRouteActionProvider = '[ActionProvider]

-- End android.app.MediaRouteActionProvider

-- Start android.app.ActionProvider

data ActionProvider = ActionProvider @android.app.ActionProvider
  deriving Class

-- End android.app.ActionProvider

-- Start android.app.MediaRouteButton

data MediaRouteButton = MediaRouteButton @android.app.MediaRouteButton
  deriving Class

type instance Inherits MediaRouteButton = '[View]

-- End android.app.MediaRouteButton

-- Start android.app.NativeActivity

data NativeActivity = NativeActivity @android.app.NativeActivity
  deriving Class

type instance Inherits NativeActivity = '[Activity, SurfaceHolderCallback2, InputQueueCallback, OnGlobalLayoutListener]

-- End android.app.NativeActivity

-- Start android.app.Notification

data Notification = Notification @android.app.Notification
  deriving Class

type instance Inherits Notification = '[Object, Parcelable]

-- End android.app.Notification

-- Start android.app.Notification.Action.WearableExtender

data WearableExtender = WearableExtender @android.app.Notification$Action$WearableExtender
  deriving Class

type instance Inherits WearableExtender = '[Object, NotificationActionExtender]

-- End android.app.Notification.Action.WearableExtender

-- Start android.app.Notification.BigPictureStyle

data BigPictureStyle = BigPictureStyle @android.app.Notification$BigPictureStyle
  deriving Class

type instance Inherits BigPictureStyle = '[NotificationStyle]

-- End android.app.Notification.BigPictureStyle

-- Start android.app.Notification.Style

data NotificationStyle = NotificationStyle @android.app.Notification$Style
  deriving Class

-- End android.app.Notification.Style

-- Start android.app.Notification.BigTextStyle

data BigTextStyle = BigTextStyle @android.app.Notification$BigTextStyle
  deriving Class

type instance Inherits BigTextStyle = '[NotificationStyle]

-- End android.app.Notification.BigTextStyle

-- Start android.app.Notification.CarExtender

data CarExtender = CarExtender @android.app.Notification$CarExtender
  deriving Class

type instance Inherits CarExtender = '[Object, NotificationExtender]

-- End android.app.Notification.CarExtender

-- Start android.app.Notification.CarExtender.Builder

data CarExtenderBuilder = CarExtenderBuilder @android.app.Notification$CarExtender$Builder
  deriving Class

-- End android.app.Notification.CarExtender.Builder

-- Start android.app.Notification.CarExtender.UnreadConversation

data CarExtenderUnreadConversation = CarExtenderUnreadConversation
  @android.app.Notification$CarExtender$UnreadConversation
  deriving Class

-- End android.app.Notification.CarExtender.UnreadConversation

-- Start android.app.Notification.DecoratedCustomViewStyle

data DecoratedCustomViewStyle = DecoratedCustomViewStyle
  @android.app.Notification$DecoratedCustomViewStyle
  deriving Class

type instance Inherits DecoratedCustomViewStyle = '[NotificationStyle]

-- End android.app.Notification.DecoratedCustomViewStyle

-- Start android.app.Notification.DecoratedMediaCustomViewStyle

data DecoratedMediaCustomViewStyle = DecoratedMediaCustomViewStyle
  @android.app.Notification$DecoratedMediaCustomViewStyle
  deriving Class

type instance Inherits DecoratedMediaCustomViewStyle = '[NotificationMediaStyle]

-- End android.app.Notification.DecoratedMediaCustomViewStyle

-- Start android.app.Notification.MediaStyle

data NotificationMediaStyle = NotificationMediaStyle @android.app.Notification$MediaStyle
  deriving Class

type instance Inherits NotificationMediaStyle = '[NotificationStyle]

-- End android.app.Notification.MediaStyle

-- Start android.app.Notification.InboxStyle

data NotificationInboxStyle = NotificationInboxStyle @android.app.Notification$InboxStyle
  deriving Class

type instance Inherits NotificationInboxStyle = '[NotificationStyle]

-- End android.app.Notification.InboxStyle

-- Start android.app.Notification.MessagingStyle

data NotificationMessagingStyle = NotificationMessagingStyle @android.app.Notification$MessagingStyle
  deriving Class

type instance Inherits NotificationMessagingStyle = '[NotificationStyle]

-- End android.app.Notification.MessagingStyle

-- Start android.app.Notification.MessagingStyle.Message

data MessagingStyleMessage = MessagingStyleMessage
  @android.app.Notification$MessagingStyle$Message
  deriving Class

-- End android.app.Notification.MessagingStyle.Message
