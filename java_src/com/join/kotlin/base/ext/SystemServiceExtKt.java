package com.join.kotlin.base.ext;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.job.JobScheduler;
import android.content.ClipboardManager;
import android.content.Context;
import android.hardware.SensorManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.PowerManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.n;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\u0086\b¢\u0006\u0002\u0010\u0003\"\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\"\u0017\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\"\u0017\u0010\f\u001a\u0004\u0018\u00010\r*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\"\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\"\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017\"\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\"\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001d*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f\"\u0017\u0010 \u001a\u0004\u0018\u00010!*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\"\u0010#\"\u0017\u0010$\u001a\u0004\u0018\u00010%*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b&\u0010'\"\u0017\u0010(\u001a\u0004\u0018\u00010)*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b*\u0010+\"\u0017\u0010,\u001a\u0004\u0018\u00010-*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b.\u0010/\"\u0017\u00100\u001a\u0004\u0018\u000101*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b2\u00103\"\u0017\u00104\u001a\u0004\u0018\u000105*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b6\u00107\"\u0017\u00108\u001a\u0004\u0018\u000109*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b:\u0010;\"\u0017\u0010<\u001a\u0004\u0018\u00010=*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b>\u0010?\"\u0017\u0010@\u001a\u0004\u0018\u00010A*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bB\u0010C\"\u0017\u0010D\u001a\u0004\u0018\u00010E*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bF\u0010G\"\u0017\u0010H\u001a\u0004\u0018\u00010I*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bJ\u0010K\"\u0017\u0010L\u001a\u0004\u0018\u00010M*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bN\u0010O\"\u0017\u0010P\u001a\u0004\u0018\u00010Q*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bR\u0010S\"\u0017\u0010T\u001a\u0004\u0018\u00010U*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bV\u0010W\"\u0017\u0010X\u001a\u0004\u0018\u00010Y*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bZ\u0010[\"\u0017\u0010\\\u001a\u0004\u0018\u00010]*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b^\u0010_\"\u0017\u0010`\u001a\u0004\u0018\u00010a*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bb\u0010c\"\u0017\u0010d\u001a\u0004\u0018\u00010e*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bf\u0010g\"\u0017\u0010h\u001a\u0004\u0018\u00010i*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bj\u0010k¨\u0006l"}, d2 = {"getSystemService", "T", "Landroid/content/Context;", "(Landroid/content/Context;)Ljava/lang/Object;", "windowManager", "Landroid/view/WindowManager;", "getWindowManager", "(Landroid/content/Context;)Landroid/view/WindowManager;", "clipboardManager", "Landroid/content/ClipboardManager;", "getClipboardManager", "(Landroid/content/Context;)Landroid/content/ClipboardManager;", "layoutInflater", "Landroid/view/LayoutInflater;", "getLayoutInflater", "(Landroid/content/Context;)Landroid/view/LayoutInflater;", "activityManager", "Landroid/app/ActivityManager;", "getActivityManager", "(Landroid/content/Context;)Landroid/app/ActivityManager;", "powerManager", "Landroid/os/PowerManager;", "getPowerManager", "(Landroid/content/Context;)Landroid/os/PowerManager;", "alarmManager", "Landroid/app/AlarmManager;", "getAlarmManager", "(Landroid/content/Context;)Landroid/app/AlarmManager;", "notificationManager", "Landroid/app/NotificationManager;", "getNotificationManager", "(Landroid/content/Context;)Landroid/app/NotificationManager;", "keyguardManager", "Landroid/app/KeyguardManager;", "getKeyguardManager", "(Landroid/content/Context;)Landroid/app/KeyguardManager;", "locationManager", "Landroid/location/LocationManager;", "getLocationManager", "(Landroid/content/Context;)Landroid/location/LocationManager;", "searchManager", "Landroid/app/SearchManager;", "getSearchManager", "(Landroid/content/Context;)Landroid/app/SearchManager;", "storageManager", "Landroid/os/storage/StorageManager;", "getStorageManager", "(Landroid/content/Context;)Landroid/os/storage/StorageManager;", "vibrator", "Landroid/os/Vibrator;", "getVibrator", "(Landroid/content/Context;)Landroid/os/Vibrator;", "connectivityManager", "Landroid/net/ConnectivityManager;", "getConnectivityManager", "(Landroid/content/Context;)Landroid/net/ConnectivityManager;", "wifiManager", "Landroid/net/wifi/WifiManager;", "getWifiManager", "(Landroid/content/Context;)Landroid/net/wifi/WifiManager;", "audioManager", "Landroid/media/AudioManager;", "getAudioManager", "(Landroid/content/Context;)Landroid/media/AudioManager;", "mediaRouter", "Landroid/media/MediaRouter;", "getMediaRouter", "(Landroid/content/Context;)Landroid/media/MediaRouter;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "(Landroid/content/Context;)Landroid/telephony/TelephonyManager;", "sensorManager", "Landroid/hardware/SensorManager;", "getSensorManager", "(Landroid/content/Context;)Landroid/hardware/SensorManager;", "subscriptionManager", "Landroid/telephony/SubscriptionManager;", "getSubscriptionManager", "(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;", "carrierConfigManager", "Landroid/telephony/CarrierConfigManager;", "getCarrierConfigManager", "(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "getInputMethodManager", "(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;", "uiModeManager", "Landroid/app/UiModeManager;", "getUiModeManager", "(Landroid/content/Context;)Landroid/app/UiModeManager;", "downloadManager", "Landroid/app/DownloadManager;", "getDownloadManager", "(Landroid/content/Context;)Landroid/app/DownloadManager;", "batteryManager", "Landroid/os/BatteryManager;", "getBatteryManager", "(Landroid/content/Context;)Landroid/os/BatteryManager;", "jobScheduler", "Landroid/app/job/JobScheduler;", "getJobScheduler", "(Landroid/content/Context;)Landroid/app/job/JobScheduler;", "accessibilityManager", "Landroid/view/accessibility/AccessibilityManager;", "getAccessibilityManager", "(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSystemServiceExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n1#1,59:1\n30#1:60\n30#1:61\n30#1:62\n30#1:63\n30#1:64\n30#1:65\n30#1:66\n30#1:67\n30#1:68\n30#1:69\n30#1:70\n30#1:71\n30#1:72\n30#1:73\n30#1:74\n30#1:75\n30#1:76\n30#1:77\n30#1:78\n30#1:79\n30#1:80\n30#1:81\n30#1:82\n30#1:83\n30#1:84\n30#1:85\n*S KotlinDebug\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n32#1:60\n33#1:61\n34#1:62\n35#1:63\n36#1:64\n37#1:65\n38#1:66\n39#1:67\n40#1:68\n41#1:69\n42#1:70\n43#1:71\n44#1:72\n45#1:73\n46#1:74\n47#1:75\n48#1:76\n49#1:77\n50#1:78\n51#1:79\n52#1:80\n53#1:81\n54#1:82\n55#1:83\n56#1:84\n57#1:85\n*E\n"})
public final class SystemServiceExtKt {
    @Nullable
    public static final AccessibilityManager getAccessibilityManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (AccessibilityManager) ContextCompat.getSystemService(context, AccessibilityManager.class);
    }

    @Nullable
    public static final ActivityManager getActivityManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (ActivityManager) ContextCompat.getSystemService(context, ActivityManager.class);
    }

    @Nullable
    public static final AlarmManager getAlarmManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (AlarmManager) ContextCompat.getSystemService(context, AlarmManager.class);
    }

    @Nullable
    public static final AudioManager getAudioManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (AudioManager) ContextCompat.getSystemService(context, AudioManager.class);
    }

    @Nullable
    public static final BatteryManager getBatteryManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (BatteryManager) ContextCompat.getSystemService(context, BatteryManager.class);
    }

    @Nullable
    public static final CarrierConfigManager getCarrierConfigManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return f.a(ContextCompat.getSystemService(context, e.a()));
    }

    @Nullable
    public static final ClipboardManager getClipboardManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (ClipboardManager) ContextCompat.getSystemService(context, ClipboardManager.class);
    }

    @Nullable
    public static final ConnectivityManager getConnectivityManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (ConnectivityManager) ContextCompat.getSystemService(context, ConnectivityManager.class);
    }

    @Nullable
    public static final DownloadManager getDownloadManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (DownloadManager) ContextCompat.getSystemService(context, DownloadManager.class);
    }

    @Nullable
    public static final InputMethodManager getInputMethodManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (InputMethodManager) ContextCompat.getSystemService(context, InputMethodManager.class);
    }

    @Nullable
    public static final JobScheduler getJobScheduler(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (JobScheduler) ContextCompat.getSystemService(context, JobScheduler.class);
    }

    @Nullable
    public static final KeyguardManager getKeyguardManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (KeyguardManager) ContextCompat.getSystemService(context, KeyguardManager.class);
    }

    @Nullable
    public static final LayoutInflater getLayoutInflater(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (LayoutInflater) ContextCompat.getSystemService(context, LayoutInflater.class);
    }

    @Nullable
    public static final LocationManager getLocationManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (LocationManager) ContextCompat.getSystemService(context, LocationManager.class);
    }

    @Nullable
    public static final MediaRouter getMediaRouter(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (MediaRouter) ContextCompat.getSystemService(context, MediaRouter.class);
    }

    @Nullable
    public static final NotificationManager getNotificationManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (NotificationManager) ContextCompat.getSystemService(context, NotificationManager.class);
    }

    @Nullable
    public static final PowerManager getPowerManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (PowerManager) ContextCompat.getSystemService(context, PowerManager.class);
    }

    @Nullable
    public static final SearchManager getSearchManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (SearchManager) ContextCompat.getSystemService(context, SearchManager.class);
    }

    @Nullable
    public static final SensorManager getSensorManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (SensorManager) ContextCompat.getSystemService(context, SensorManager.class);
    }

    @Nullable
    public static final StorageManager getStorageManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (StorageManager) ContextCompat.getSystemService(context, StorageManager.class);
    }

    @Nullable
    public static final SubscriptionManager getSubscriptionManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return n.a(ContextCompat.getSystemService(context, androidx.core.content.a.a()));
    }

    public static final /* synthetic */ <T> T getSystemService(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) ContextCompat.getSystemService(context, Object.class);
    }

    @Nullable
    public static final TelephonyManager getTelephonyManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (TelephonyManager) ContextCompat.getSystemService(context, TelephonyManager.class);
    }

    @Nullable
    public static final UiModeManager getUiModeManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (UiModeManager) ContextCompat.getSystemService(context, UiModeManager.class);
    }

    @Nullable
    public static final Vibrator getVibrator(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (Vibrator) ContextCompat.getSystemService(context, Vibrator.class);
    }

    @Nullable
    public static final WifiManager getWifiManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (WifiManager) ContextCompat.getSystemService(context, WifiManager.class);
    }

    @Nullable
    public static final WindowManager getWindowManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (WindowManager) ContextCompat.getSystemService(context, WindowManager.class);
    }
}
