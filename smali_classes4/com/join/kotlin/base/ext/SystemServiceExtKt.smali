.class public final Lcom/join/kotlin/base/ext/SystemServiceExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemServiceExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n1#1,59:1\n30#1:60\n30#1:61\n30#1:62\n30#1:63\n30#1:64\n30#1:65\n30#1:66\n30#1:67\n30#1:68\n30#1:69\n30#1:70\n30#1:71\n30#1:72\n30#1:73\n30#1:74\n30#1:75\n30#1:76\n30#1:77\n30#1:78\n30#1:79\n30#1:80\n30#1:81\n30#1:82\n30#1:83\n30#1:84\n30#1:85\n*S KotlinDebug\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n32#1:60\n33#1:61\n34#1:62\n35#1:63\n36#1:64\n37#1:65\n38#1:66\n39#1:67\n40#1:68\n41#1:69\n42#1:70\n43#1:71\n44#1:72\n45#1:73\n46#1:74\n47#1:75\n48#1:76\n49#1:77\n50#1:78\n51#1:79\n52#1:80\n53#1:81\n54#1:82\n55#1:83\n56#1:84\n57#1:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0003\"\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\"\u0017\u0010\u0008\u001a\u0004\u0018\u00010\t*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\"\u0017\u0010\u000c\u001a\u0004\u0018\u00010\r*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\"\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\"\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\"\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\"\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001d*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\"\u0017\u0010 \u001a\u0004\u0018\u00010!*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\"\u0017\u0010$\u001a\u0004\u0018\u00010%*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\"\u0017\u0010(\u001a\u0004\u0018\u00010)*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\"\u0017\u0010,\u001a\u0004\u0018\u00010-*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/\"\u0017\u00100\u001a\u0004\u0018\u000101*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\"\u0017\u00104\u001a\u0004\u0018\u000105*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107\"\u0017\u00108\u001a\u0004\u0018\u000109*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;\"\u0017\u0010<\u001a\u0004\u0018\u00010=*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\"\u0017\u0010@\u001a\u0004\u0018\u00010A*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010C\"\u0017\u0010D\u001a\u0004\u0018\u00010E*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010G\"\u0017\u0010H\u001a\u0004\u0018\u00010I*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010K\"\u0017\u0010L\u001a\u0004\u0018\u00010M*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010O\"\u0017\u0010P\u001a\u0004\u0018\u00010Q*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010S\"\u0017\u0010T\u001a\u0004\u0018\u00010U*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010W\"\u0017\u0010X\u001a\u0004\u0018\u00010Y*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[\"\u0017\u0010\\\u001a\u0004\u0018\u00010]*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010_\"\u0017\u0010`\u001a\u0004\u0018\u00010a*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010c\"\u0017\u0010d\u001a\u0004\u0018\u00010e*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010g\"\u0017\u0010h\u001a\u0004\u0018\u00010i*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010k\u00a8\u0006l"
    }
    d2 = {
        "getSystemService",
        "T",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)Ljava/lang/Object;",
        "windowManager",
        "Landroid/view/WindowManager;",
        "getWindowManager",
        "(Landroid/content/Context;)Landroid/view/WindowManager;",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "(Landroid/content/Context;)Landroid/content/ClipboardManager;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "getLayoutInflater",
        "(Landroid/content/Context;)Landroid/view/LayoutInflater;",
        "activityManager",
        "Landroid/app/ActivityManager;",
        "getActivityManager",
        "(Landroid/content/Context;)Landroid/app/ActivityManager;",
        "powerManager",
        "Landroid/os/PowerManager;",
        "getPowerManager",
        "(Landroid/content/Context;)Landroid/os/PowerManager;",
        "alarmManager",
        "Landroid/app/AlarmManager;",
        "getAlarmManager",
        "(Landroid/content/Context;)Landroid/app/AlarmManager;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "(Landroid/content/Context;)Landroid/app/NotificationManager;",
        "keyguardManager",
        "Landroid/app/KeyguardManager;",
        "getKeyguardManager",
        "(Landroid/content/Context;)Landroid/app/KeyguardManager;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "getLocationManager",
        "(Landroid/content/Context;)Landroid/location/LocationManager;",
        "searchManager",
        "Landroid/app/SearchManager;",
        "getSearchManager",
        "(Landroid/content/Context;)Landroid/app/SearchManager;",
        "storageManager",
        "Landroid/os/storage/StorageManager;",
        "getStorageManager",
        "(Landroid/content/Context;)Landroid/os/storage/StorageManager;",
        "vibrator",
        "Landroid/os/Vibrator;",
        "getVibrator",
        "(Landroid/content/Context;)Landroid/os/Vibrator;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "getConnectivityManager",
        "(Landroid/content/Context;)Landroid/net/ConnectivityManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "getWifiManager",
        "(Landroid/content/Context;)Landroid/net/wifi/WifiManager;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "(Landroid/content/Context;)Landroid/media/AudioManager;",
        "mediaRouter",
        "Landroid/media/MediaRouter;",
        "getMediaRouter",
        "(Landroid/content/Context;)Landroid/media/MediaRouter;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "getTelephonyManager",
        "(Landroid/content/Context;)Landroid/telephony/TelephonyManager;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "getSensorManager",
        "(Landroid/content/Context;)Landroid/hardware/SensorManager;",
        "subscriptionManager",
        "Landroid/telephony/SubscriptionManager;",
        "getSubscriptionManager",
        "(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;",
        "carrierConfigManager",
        "Landroid/telephony/CarrierConfigManager;",
        "getCarrierConfigManager",
        "(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "getInputMethodManager",
        "(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;",
        "uiModeManager",
        "Landroid/app/UiModeManager;",
        "getUiModeManager",
        "(Landroid/content/Context;)Landroid/app/UiModeManager;",
        "downloadManager",
        "Landroid/app/DownloadManager;",
        "getDownloadManager",
        "(Landroid/content/Context;)Landroid/app/DownloadManager;",
        "batteryManager",
        "Landroid/os/BatteryManager;",
        "getBatteryManager",
        "(Landroid/content/Context;)Landroid/os/BatteryManager;",
        "jobScheduler",
        "Landroid/app/job/JobScheduler;",
        "getJobScheduler",
        "(Landroid/content/Context;)Landroid/app/job/JobScheduler;",
        "accessibilityManager",
        "Landroid/view/accessibility/AccessibilityManager;",
        "getAccessibilityManager",
        "(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSystemServiceExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n1#1,59:1\n30#1:60\n30#1:61\n30#1:62\n30#1:63\n30#1:64\n30#1:65\n30#1:66\n30#1:67\n30#1:68\n30#1:69\n30#1:70\n30#1:71\n30#1:72\n30#1:73\n30#1:74\n30#1:75\n30#1:76\n30#1:77\n30#1:78\n30#1:79\n30#1:80\n30#1:81\n30#1:82\n30#1:83\n30#1:84\n30#1:85\n*S KotlinDebug\n*F\n+ 1 SystemServiceExt.kt\ncom/join/kotlin/base/ext/SystemServiceExtKt\n*L\n32#1:60\n33#1:61\n34#1:62\n35#1:63\n36#1:64\n37#1:65\n38#1:66\n39#1:67\n40#1:68\n41#1:69\n42#1:70\n43#1:71\n44#1:72\n45#1:73\n46#1:74\n47#1:75\n48#1:76\n49#1:77\n50#1:78\n51#1:79\n52#1:80\n53#1:81\n54#1:82\n55#1:83\n56#1:84\n57#1:85\n*E\n"
    }
.end annotation


# direct methods
.method public static final getAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/ActivityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/ActivityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/AlarmManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/AlarmManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/media/AudioManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/AudioManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getBatteryManager(Landroid/content/Context;)Landroid/os/BatteryManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/BatteryManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/BatteryManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/kotlin/base/ext/e;->a()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/join/kotlin/base/ext/f;->a(Ljava/lang/Object;)Landroid/telephony/CarrierConfigManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/content/ClipboardManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/content/ClipboardManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/DownloadManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/DownloadManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getJobScheduler(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/job/JobScheduler;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/KeyguardManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/KeyguardManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/LayoutInflater;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/location/LocationManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/location/LocationManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getMediaRouter(Landroid/content/Context;)Landroid/media/MediaRouter;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/media/MediaRouter;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/media/MediaRouter;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/NotificationManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/PowerManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/PowerManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSearchManager(Landroid/content/Context;)Landroid/app/SearchManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/SearchManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/SearchManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/hardware/SensorManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/hardware/SensorManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/storage/StorageManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/core/content/a;->a()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lq0/n;->a(Ljava/lang/Object;)Landroid/telephony/SubscriptionManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final synthetic getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    const-string v1, "T"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getUiModeManager(Landroid/content/Context;)Landroid/app/UiModeManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/app/UiModeManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/UiModeManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/os/Vibrator;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/Vibrator;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/view/WindowManager;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    return-object p0
.end method
