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
