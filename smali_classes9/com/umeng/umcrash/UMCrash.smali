.class public Lcom/umeng/umcrash/UMCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/umcrash/UMCrash$PaClientImpl;,
        Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_PA_TIMEOUT_TIME:J = 0x7d0L

.field private static final DEFAULT_VALUE_CRASH_ANR:Z = true

.field private static final DEFAULT_VALUE_CRASH_JAVA:Z = true

.field private static final DEFAULT_VALUE_CRASH_NATIVE:Z = true

.field private static final DEFAULT_VALUE_CRASH_UNEXP:Z = false

.field private static final DEFAULT_VALUE_FLUTTER:Z = true

.field private static final DEFAULT_VALUE_H5PAGE:Z = true

.field private static final DEFAULT_VALUE_LAUNCH:Z = true

.field private static final DEFAULT_VALUE_MEM:Z = true

.field private static final DEFAULT_VALUE_NET:Z = true

.field private static final DEFAULT_VALUE_PA:Z = true

.field private static final DEFAULT_VALUE_PAGE:Z = true

.field private static final DEFAULT_VALUE_POWER:Z = true

.field private static final INTEGRATIONTESTING_SP:Ljava/lang/String; = "itconfig"

.field private static final IT_DEBUGKEY:Ljava/lang/String; = "apm_debugkey"

.field private static final IT_SENDAGING:Ljava/lang/String; = "apm_sendaging"

.field private static final KEY_ACTIITY_ON_CREATED:Ljava/lang/String; = "onCreated"

.field private static final KEY_ACTIITY_ON_DESTROYED:Ljava/lang/String; = "onDestroyed"

.field private static final KEY_ACTIITY_ON_PAUSED:Ljava/lang/String; = "onPaused"

.field private static final KEY_ACTIITY_ON_RESUMED:Ljava/lang/String; = "onResumed"

.field private static final KEY_ACTIITY_ON_STARTED:Ljava/lang/String; = "onStarted"

.field private static final KEY_ACTIITY_ON_STOPPED:Ljava/lang/String; = "onStopped"

.field public static final KEY_APM_DEFAULT_SECRET:Ljava/lang/String; = "NEej8y@anWa*8hep"

.field public static final KEY_APM_ROOT_NAME:Ljava/lang/String; = "UApm"

.field public static final KEY_CALLBACK_PAGE_ACTION:Ljava/lang/String; = "um_action_log"

.field public static final KEY_CALLBACK_SESSION_ID:Ljava/lang/String; = "um_session_id"

.field public static final KEY_CALLBACK_UMID:Ljava/lang/String; = "um_umid"

.field private static final KEY_CALLBACK_USER_STRING:Ljava/lang/String; = "um_user_string"

.field public static final KEY_DEBUGKEY:Ljava/lang/String; = "um_dk"

.field public static final KEY_ENABLE_ANR:Ljava/lang/String; = "enableANRLog"

.field public static final KEY_ENABLE_CRASH_JAVA:Ljava/lang/String; = "enableJavaLog"

.field public static final KEY_ENABLE_CRASH_NATIVE:Ljava/lang/String; = "enableNativeLog"

.field public static final KEY_ENABLE_CRASH_UNEXP:Ljava/lang/String; = "enableUnexpLog"

.field public static final KEY_ENABLE_FLUTTER:Ljava/lang/String; = "enableFlutterLog"

.field public static final KEY_ENABLE_H5PAGE:Ljava/lang/String; = "enableH5PageLog"

.field public static final KEY_ENABLE_LAUNCH:Ljava/lang/String; = "enableLaunchLog"

.field public static final KEY_ENABLE_MEM:Ljava/lang/String; = "enableMemLog"

.field public static final KEY_ENABLE_NET:Ljava/lang/String; = "enableNetLog"

.field public static final KEY_ENABLE_PA:Ljava/lang/String; = "enablePaLog"

.field public static final KEY_ENABLE_PAGE:Ljava/lang/String; = "enablePageLog"

.field public static final KEY_ENABLE_POWER:Ljava/lang/String; = "enablePowerLog"

.field public static final KEY_HEADER_ACCESS:Ljava/lang/String; = "um_access"

.field public static final KEY_HEADER_ACCESS_SUBTYPE:Ljava/lang/String; = "um_access_subtype"

.field public static final KEY_HEADER_APPKEY:Ljava/lang/String; = "um_app_key"

.field public static final KEY_HEADER_BESRIAL:Ljava/lang/String; = "um_bserial"

.field public static final KEY_HEADER_BSVER:Ljava/lang/String; = "um_bsver"

.field public static final KEY_HEADER_BVER:Ljava/lang/String; = "um_bver"

.field public static final KEY_HEADER_CARRIER:Ljava/lang/String; = "um_app_carrier"

.field public static final KEY_HEADER_CHANNEL:Ljava/lang/String; = "um_app_channel"

.field public static final KEY_HEADER_CRASH_VERSION:Ljava/lang/String; = "um_crash_sdk_version"

.field public static final KEY_HEADER_DEBUGKEY:Ljava/lang/String; = "um_dk"

.field public static final KEY_HEADER_NETWORK_TYPE:Ljava/lang/String; = "um_network_type"

.field public static final KEY_HEADER_OS:Ljava/lang/String; = "um_os"

.field public static final KEY_HEADER_PROVIDER:Ljava/lang/String; = "um_app_provider"

.field public static final KEY_HEADER_PUID:Ljava/lang/String; = "um_app_puid"

.field public static final KEY_HEADER_START_TIME:Ljava/lang/String; = "um_app_start_time"

.field public static final KEY_HEADER_UMID:Ljava/lang/String; = "um_umid_header"

.field private static final KEY_MAX_LENGTH:I = 0x5000

.field private static final KEY_MAX_LENGTH_128:I = 0x80

.field public static final KEY_PA_TIMEOUT_TIME:Ljava/lang/String; = "pa_timeout_time"

.field public static final SP_KEY_DEBUG:Ljava/lang/String; = "debugkey"

.field public static final SP_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TAG:Ljava/lang/String; = "UMCrash"

.field private static crashSdkVersion:Ljava/lang/String; = "1.9.5"

.field private static enableANRLog:Z = false

.field private static enableFlutterLog:Z = false

.field private static enableH5PageLog:Z = false

.field private static enableJavaLog:Z = false

.field private static enableLaunchLog:Z = false

.field private static enableMemLog:Z = false

.field private static enableNativeLog:Z = false

.field private static enableNetLog:Z = false

.field private static enablePaLog:Z = false

.field private static enablePageLog:Z = false

.field private static enablePowerLog:Z = false

.field private static index:I = 0x0

.field private static isBuildId:Z = true

.field private static isDebug:Z = true

.field private static isEncrypt:Z = false

.field private static isFlutter:Z = false

.field private static isIntl:Z = false

.field private static isLa:Z = false

.field private static isNet:Z = false

.field private static isOpenUserCrash:Z = false

.field private static isPA:Z = false

.field private static isPage:Z = false

.field private static isPower:Z = false

.field private static isUploadNowUserCrash:Z = false

.field private static isZip:Z = true

.field private static mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

.field private static paTimeoutTime:J

.field private static pageArrayLock:Ljava/lang/Object;

.field public static sReporter:Lcom/efs/sdk/base/EfsReporter;

.field private static userBesrial:Ljava/lang/String;

.field private static userBsver:Ljava/lang/String;

.field private static userBver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPA:Z

    .line 19
    .line 20
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isLa:Z

    .line 21
    .line 22
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isNet:Z

    .line 23
    .line 24
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPage:Z

    .line 25
    .line 26
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPower:Z

    .line 27
    .line 28
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isFlutter:Z

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 32
    .line 33
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 34
    .line 35
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 36
    .line 37
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    .line 38
    .line 39
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    .line 40
    .line 41
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    .line 42
    .line 43
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNetLog:Z

    .line 44
    .line 45
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableH5PageLog:Z

    .line 46
    .line 47
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePageLog:Z

    .line 48
    .line 49
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePowerLog:Z

    .line 50
    .line 51
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableFlutterLog:Z

    .line 52
    .line 53
    const-wide/16 v2, 0x7d0

    .line 54
    .line 55
    sput-wide v2, Lcom/umeng/umcrash/UMCrash;->paTimeoutTime:J

    .line 56
    .line 57
    sput v0, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 58
    .line 59
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z

    .line 60
    .line 61
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPage:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 1
    sget v0, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$1008()I
    .locals 2

    .line 1
    sget v0, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$1010()I
    .locals 2

    .line 1
    sget v0, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    sput v1, Lcom/umeng/umcrash/UMCrash;->index:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/umeng/umcrash/UMCrash;->paTimeoutTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isPA:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/umeng/umcrash/UMCrash;->saveLocalCrashSampling(Landroid/content/Context;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/umeng/umcrash/UMCrash;->updateLocalCrashConfig(Landroid/content/Context;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600()Lcom/umeng/umcrash/UMCrashCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/umeng/umcrash/UMCrash;->saveActivityState(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableANRLog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 2
    .line 3
    return-void
.end method

.method public static enableJavaScriptBridge(Landroid/view/View;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/efs/sdk/h5pagesdk/H5Manager;->setWebView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static enableJavaScriptBridge(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->enableJavaScriptBridge(Landroid/view/View;)V

    return-void
.end method

.method public static enableMemoryMonitor(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->setEnable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static enableNativeLog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 2
    .line 3
    return-void
.end method

.method public static generateCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "exception"

    .line 16
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z

    if-nez v1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 18
    :cond_1
    :try_start_0
    new-instance v1, Lcom/uc/crashsdk/export/CustomLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "um_umid"

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "um_action_log"

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "um_session_id"

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "um_user_string"

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iput-object v2, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    iput-boolean v2, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 27
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "k_ct"

    .line 28
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "k_ac"

    .line 29
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "\n"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception message:\nBack traces starts.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Back traces ends."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_3
    iput-object p1, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 37
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {p0, v1}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method public static generateCustomLog(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    new-instance v0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    invoke-direct {v0, p1}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack(Ljava/lang/Throwable;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->build()Lcom/uc/crashsdk/export/CustomLogInfo;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "um_umid"

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "um_action_log"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "um_session_id"

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "um_user_string"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    iput-boolean p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    .line 14
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, p0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static getReporter()Lcom/efs/sdk/base/EfsReporter;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 2
    .line 3
    return-object v0
.end method

.method private static declared-synchronized getSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Lcom/umeng/umcrash/UMCrash;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v2, "com.umeng.commonsdk.statistics.common.DeviceConfig"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    nop

    .line 19
    move-object v2, v1

    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    :try_start_1
    const-string v5, "getSid"

    .line 25
    .line 26
    new-array v6, v4, [Ljava/lang/Class;

    .line 27
    .line 28
    const-class v7, Landroid/content/Context;

    .line 29
    .line 30
    aput-object v7, v6, v3

    .line 31
    .line 32
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    nop

    .line 38
    move-object v2, v1

    .line 39
    :goto_1
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p0, v4, v3

    .line 44
    .line 45
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    move-object v1, p0

    .line 56
    goto :goto_3

    .line 57
    :goto_2
    monitor-exit v0

    .line 58
    throw p0

    .line 59
    :catch_2
    :cond_1
    :goto_3
    monitor-exit v0

    .line 60
    return-object v1
.end method

.method public static getUMAPMFlag()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "version"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    const-string v1, "crash"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    const-string v4, "crashJava"

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    const-string v4, "crashNative"

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    :goto_1
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    const-string v4, "anr"

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    :goto_2
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    const-string v4, "pa"

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :try_start_4
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :goto_3
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isLa:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    .line 72
    const-string v4, "la"

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    :try_start_5
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    :goto_4
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->isEnable()Z

    .line 88
    .line 89
    .line 90
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    const-string v4, "mem"

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    :try_start_6
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    :goto_5
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isNet:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    .line 104
    const-string v4, "net"

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    :try_start_7
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    :goto_6
    invoke-static {}, Lcom/efs/sdk/h5pagesdk/H5Manager;->getH5ConfigMananger()Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;

    .line 116
    .line 117
    .line 118
    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    const-string v4, "h5"

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    :try_start_8
    invoke-static {}, Lcom/efs/sdk/h5pagesdk/H5Manager;->getH5ConfigMananger()Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/efs/sdk/h5pagesdk/H5ConfigMananger;->isH5TracerEnable()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    :goto_7
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    .line 142
    const-string v4, "crashUser"

    .line 143
    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    :try_start_9
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_8
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    :goto_8
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPage:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 154
    .line 155
    const-string v4, "page"

    .line 156
    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    :try_start_a
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_9
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    :goto_9
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPower:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 167
    .line 168
    const-string v4, "power"

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    :try_start_b
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_a
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 177
    .line 178
    .line 179
    :catchall_0
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

.method private static declared-synchronized getUMID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Lcom/umeng/umcrash/UMCrash;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v2, "com.umeng.commonsdk.UMConfigure"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    nop

    .line 19
    move-object v2, v1

    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    :try_start_1
    const-string v5, "getUMIDString"

    .line 25
    .line 26
    new-array v6, v4, [Ljava/lang/Class;

    .line 27
    .line 28
    const-class v7, Landroid/content/Context;

    .line 29
    .line 30
    aput-object v7, v6, v3

    .line 31
    .line 32
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    nop

    .line 38
    move-object v2, v1

    .line 39
    :goto_1
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p0, v4, v3

    .line 44
    .line 45
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    move-object v1, p0

    .line 56
    goto :goto_3

    .line 57
    :goto_2
    monitor-exit v0

    .line 58
    throw p0

    .line 59
    :catch_2
    :cond_1
    :goto_3
    monitor-exit v0

    .line 60
    return-object v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "um_app_provider"

    .line 6
    .line 7
    const-string v4, "um_app_puid"

    .line 8
    .line 9
    const-string v5, "https://errnewlogos.umeng.com"

    .line 10
    .line 11
    const-string v6, "https://errnewlog.umeng.com"

    .line 12
    .line 13
    const-string v7, ""

    .line 14
    .line 15
    if-eqz v1, :cond_2d

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_13

    .line 20
    .line 21
    :cond_0
    sput-object v1, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    :try_start_0
    new-instance v0, Lcom/umeng/umcrash/UMCrash$1;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/umeng/umcrash/UMCrash$1;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    const/4 v8, 0x0

    .line 37
    const/4 v9, -0x1

    .line 38
    :try_start_1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v10, "apm_ctr_flag"

    .line 41
    .line 42
    invoke-static {v0, v10, v8}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sget-boolean v10, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 47
    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v11, "int apm. flag is "

    .line 56
    .line 57
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    :cond_1
    if-ne v0, v9, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v10, 0x1

    .line 71
    :try_start_2
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-string v11, "hit_wl"

    .line 74
    .line 75
    invoke-static {v0, v11, v8}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 80
    .line 81
    if-eqz v11, :cond_3

    .line 82
    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v12, "int apm. hitWlState is "

    .line 89
    .line 90
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_3
    if-ne v0, v10, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 v0, 0x0

    .line 101
    :goto_1
    invoke-static {v0}, Lcom/efs/sdk/base/samplingwhitelist/SamplingWhiteListUtil;->setHitWL(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_2
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_2
    const-string v0, "itconfig"

    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    const/16 v12, 0x64

    .line 116
    .line 117
    :try_start_3
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v13, "apm_crash_java_sampling_rate"

    .line 126
    .line 127
    invoke-static {v0, v13, v12}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 136
    .line 137
    :cond_5
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v13, "apm_crash_native_sampling_rate"

    .line 146
    .line 147
    invoke-static {v0, v13, v12}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 156
    .line 157
    :cond_6
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v13, "apm_crash_anr_sampling_rate"

    .line 166
    .line 167
    invoke-static {v0, v13, v12}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 176
    .line 177
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v13, "apm_crash_user_sampling_rate"

    .line 182
    .line 183
    invoke-static {v0, v13, v12}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v13, "apm_crash_user_upload_type"

    .line 198
    .line 199
    invoke-static {v0, v13, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_8

    .line 204
    .line 205
    sput-boolean v10, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    sput-boolean v8, Lcom/umeng/umcrash/UMCrash;->isUploadNowUserCrash:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catchall_3
    move-exception v0

    .line 212
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    .line 216
    .line 217
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v13, "mDebug"

    .line 221
    .line 222
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 223
    .line 224
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    .line 226
    .line 227
    const-string v13, "mEncryptLog"

    .line 228
    .line 229
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isEncrypt:Z

    .line 230
    .line 231
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    .line 233
    .line 234
    const-string v13, "mZipLog"

    .line 235
    .line 236
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isZip:Z

    .line 237
    .line 238
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    .line 240
    .line 241
    const-string v13, "enableJavaLog"

    .line 242
    .line 243
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 244
    .line 245
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    .line 247
    .line 248
    const-string v13, "enableNativeLog"

    .line 249
    .line 250
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 251
    .line 252
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    const-string v13, "enableANRLog"

    .line 256
    .line 257
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 258
    .line 259
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    sget-boolean v13, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 263
    .line 264
    if-eqz v13, :cond_9

    .line 265
    .line 266
    new-instance v13, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v14, "enable : java is "

    .line 272
    .line 273
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 277
    .line 278
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v14, ", native is "

    .line 282
    .line 283
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 287
    .line 288
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v14, ", anr is "

    .line 292
    .line 293
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 297
    .line 298
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    :cond_9
    const-string v13, "enableUnexpLog"

    .line 302
    .line 303
    invoke-virtual {v0, v13, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    .line 305
    .line 306
    const-string v13, "mIsInternational"

    .line 307
    .line 308
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 309
    .line 310
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    const-string v13, "mDumpUserSolibBuildId"

    .line 314
    .line 315
    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isBuildId:Z

    .line 316
    .line 317
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    sget-boolean v13, Lcom/umeng/umcrash/UMCrash;->isIntl:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 321
    .line 322
    const-string v14, "mCrashRateUploadUrl"

    .line 323
    .line 324
    const-string v15, "mCrashSDKAuthUrl"

    .line 325
    .line 326
    const-string v12, "mCrashLogUploadUrl"

    .line 327
    .line 328
    if-eqz v13, :cond_a

    .line 329
    .line 330
    :try_start_5
    const-string v6, "https://errnewlogos.umeng.com/upload"

    .line 331
    .line 332
    invoke-virtual {v0, v12, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v14, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_a
    const-string v5, "https://errnewlog.umeng.com/upload"

    .line 345
    .line 346
    invoke-virtual {v0, v12, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v15, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v14, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 356
    .line 357
    :goto_4
    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 358
    .line 359
    new-instance v6, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;

    .line 360
    .line 361
    const/4 v12, 0x0

    .line 362
    invoke-direct {v6, v12}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>(Lcom/umeng/umcrash/UMCrash$1;)V

    .line 363
    .line 364
    .line 365
    invoke-static {v1, v2, v5, v0, v6}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    if-eqz v5, :cond_11

    .line 370
    .line 371
    const-string v0, "um_app_key"

    .line 372
    .line 373
    invoke-virtual {v5, v0, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v0, "um_app_channel"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 377
    .line 378
    move-object/from16 v6, p2

    .line 379
    .line 380
    :try_start_6
    invoke-virtual {v5, v0, v6}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v0, "um_os"

    .line 384
    .line 385
    const-string v12, "android"

    .line 386
    .line 387
    invoke-virtual {v5, v0, v12}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const-string v0, "um_crash_sdk_version"

    .line 391
    .line 392
    sget-object v12, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v5, v0, v12}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v0, "um_umid_header"

    .line 398
    .line 399
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    invoke-virtual {v5, v0, v12}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 404
    .line 405
    .line 406
    :try_start_7
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_b

    .line 411
    .line 412
    array-length v12, v0

    .line 413
    const/4 v13, 0x2

    .line 414
    if-ne v12, v13, :cond_b

    .line 415
    .line 416
    aget-object v12, v0, v10

    .line 417
    .line 418
    invoke-virtual {v5, v4, v12}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    aget-object v0, v0, v8

    .line 422
    .line 423
    invoke-virtual {v5, v3, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :catchall_4
    :try_start_8
    invoke-virtual {v5, v4, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5, v3, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_b
    :goto_5
    const-string v0, "um_app_carrier"

    .line 434
    .line 435
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 443
    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-nez v0, :cond_c

    .line 449
    .line 450
    const-string v0, "um_bver"

    .line 451
    .line 452
    sget-object v3, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_c
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-nez v0, :cond_d

    .line 464
    .line 465
    const-string v0, "um_bsver"

    .line 466
    .line 467
    sget-object v3, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :cond_d
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 473
    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_e

    .line 479
    .line 480
    const-string v0, "um_bserial"

    .line 481
    .line 482
    sget-object v3, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 485
    .line 486
    .line 487
    :cond_e
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkTypeUmeng(Landroid/content/Context;)I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    const-string v3, "um_network_type"

    .line 492
    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v5, v3, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :catchall_5
    move-exception v0

    .line 513
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 514
    .line 515
    .line 516
    :goto_6
    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->isHarmony(Landroid/content/Context;)Z

    .line 517
    .line 518
    .line 519
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 520
    const-string v3, "others_OS"

    .line 521
    .line 522
    if-eqz v0, :cond_f

    .line 523
    .line 524
    :try_start_c
    const-string v0, "harmony"

    .line 525
    .line 526
    invoke-virtual {v5, v3, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_f
    const-string v0, "Android"

    .line 531
    .line 532
    invoke-virtual {v5, v3, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 533
    .line 534
    .line 535
    goto :goto_7

    .line 536
    :catchall_6
    move-exception v0

    .line 537
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    .line 539
    .line 540
    :goto_7
    instance-of v0, v1, Landroid/app/Application;

    .line 541
    .line 542
    if-eqz v0, :cond_10

    .line 543
    .line 544
    move-object v0, v1

    .line 545
    check-cast v0, Landroid/app/Application;

    .line 546
    .line 547
    new-instance v3, Lcom/umeng/umcrash/UMCrash$2;

    .line 548
    .line 549
    invoke-direct {v3, v2, v11}, Lcom/umeng/umcrash/UMCrash$2;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 553
    .line 554
    .line 555
    const-string v0, "um_umid"

    .line 556
    .line 557
    const v3, 0x100011

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 561
    .line 562
    .line 563
    const-string v0, "um_action_log"

    .line 564
    .line 565
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 566
    .line 567
    .line 568
    const-string v0, "um_session_id"

    .line 569
    .line 570
    invoke-virtual {v5, v0, v3}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 571
    .line 572
    .line 573
    :cond_10
    :try_start_e
    new-instance v0, Lcom/umeng/umcrash/UMCrash$3;

    .line 574
    .line 575
    invoke-direct {v0, v1, v5}, Lcom/umeng/umcrash/UMCrash$3;-><init>(Landroid/content/Context;Lcom/uc/crashsdk/export/CrashApi;)V

    .line 576
    .line 577
    .line 578
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 579
    .line 580
    .line 581
    goto :goto_8

    .line 582
    :catchall_7
    move-exception v0

    .line 583
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 584
    .line 585
    .line 586
    goto :goto_8

    .line 587
    :catchall_8
    :cond_11
    move-object/from16 v6, p2

    .line 588
    .line 589
    :catchall_9
    :goto_8
    :try_start_10
    invoke-static/range {p0 .. p2}, Lcom/umeng/umcrash/UMCrash;->initReporter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 590
    .line 591
    .line 592
    goto :goto_9

    .line 593
    :catchall_a
    move-exception v0

    .line 594
    move-object v2, v0

    .line 595
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    .line 597
    .line 598
    :goto_9
    :try_start_11
    const-string v0, "debugkey"

    .line 599
    .line 600
    invoke-interface {v11, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    const-string v2, "timestamp"

    .line 605
    .line 606
    const-wide/16 v3, 0x0

    .line 607
    .line 608
    invoke-interface {v11, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 609
    .line 610
    .line 611
    move-result-wide v5

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 613
    .line 614
    .line 615
    move-result-wide v12

    .line 616
    sub-long/2addr v5, v12

    .line 617
    cmp-long v2, v5, v3

    .line 618
    .line 619
    if-ltz v2, :cond_12

    .line 620
    .line 621
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    if-nez v2, :cond_12

    .line 626
    .line 627
    invoke-static {v10}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->setIntegrationTestingInPeriod(Z)V

    .line 628
    .line 629
    .line 630
    invoke-static {v0}, Lcom/umeng/umcrash/UMCrashUtils;->setIntegrationTesingParams(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    goto :goto_a

    .line 634
    :cond_12
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 643
    .line 644
    .line 645
    invoke-static {v8}, Lcom/efs/sdk/base/integrationtesting/IntegrationTestingUtil;->setIntegrationTestingInPeriod(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 646
    .line 647
    .line 648
    goto :goto_a

    .line 649
    :catchall_b
    move-exception v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 651
    .line 652
    .line 653
    :goto_a
    :try_start_12
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    .line 654
    .line 655
    if-eqz v0, :cond_13

    .line 656
    .line 657
    new-instance v0, Lcom/umeng/umcrash/UMCrash$4;

    .line 658
    .line 659
    invoke-direct {v0, v1}, Lcom/umeng/umcrash/UMCrash$4;-><init>(Landroid/content/Context;)V

    .line 660
    .line 661
    .line 662
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 663
    .line 664
    .line 665
    goto :goto_b

    .line 666
    :cond_13
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 667
    .line 668
    goto :goto_b

    .line 669
    :catchall_c
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 671
    .line 672
    .line 673
    :goto_b
    :try_start_13
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    .line 674
    .line 675
    if-eqz v0, :cond_16

    .line 676
    .line 677
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 678
    .line 679
    invoke-static {v1, v0}, Lcom/efs/sdk/launch/LaunchManager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    .line 680
    .line 681
    .line 682
    :try_start_14
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getLaunchConfigManager()Lcom/efs/sdk/launch/LaunchConfigManager;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    if-eqz v0, :cond_14

    .line 687
    .line 688
    invoke-static {}, Lcom/efs/sdk/launch/LaunchManager;->getLaunchConfigManager()Lcom/efs/sdk/launch/LaunchConfigManager;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/efs/sdk/launch/LaunchConfigManager;->enableTracer()Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isLa:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 697
    .line 698
    goto :goto_c

    .line 699
    :catchall_d
    move-exception v0

    .line 700
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    .line 702
    .line 703
    :cond_14
    :goto_c
    invoke-static/range {p0 .. p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    if-eqz v0, :cond_15

    .line 708
    .line 709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-eqz v0, :cond_17

    .line 714
    .line 715
    :cond_15
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 716
    .line 717
    invoke-static/range {p0 .. p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const-string v2, "umid"

    .line 722
    .line 723
    new-instance v3, Lcom/umeng/umcrash/UMCrash$5;

    .line 724
    .line 725
    invoke-direct {v3, v1}, Lcom/umeng/umcrash/UMCrash$5;-><init>(Landroid/content/Context;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 729
    .line 730
    .line 731
    goto :goto_d

    .line 732
    :cond_16
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 733
    .line 734
    goto :goto_d

    .line 735
    :catchall_e
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 737
    .line 738
    .line 739
    :cond_17
    :goto_d
    :try_start_16
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    .line 740
    .line 741
    if-eqz v0, :cond_18

    .line 742
    .line 743
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 748
    .line 749
    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->start(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V

    .line 750
    .line 751
    .line 752
    goto :goto_e

    .line 753
    :cond_18
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 754
    .line 755
    goto :goto_e

    .line 756
    :catchall_f
    move-exception v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 758
    .line 759
    .line 760
    :goto_e
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const-string v2, "apm_netperf_state"

    .line 765
    .line 766
    invoke-static {v0, v2, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 771
    .line 772
    if-eqz v2, :cond_19

    .line 773
    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .line 778
    .line 779
    const-string v3, "inner config : net rate is "

    .line 780
    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    :cond_19
    if-nez v0, :cond_1a

    .line 788
    .line 789
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 790
    .line 791
    goto :goto_f

    .line 792
    :cond_1a
    const/16 v2, 0x64

    .line 793
    .line 794
    if-ne v0, v2, :cond_1e

    .line 795
    .line 796
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 797
    .line 798
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableNetLog:Z

    .line 799
    .line 800
    if-eqz v0, :cond_1d

    .line 801
    .line 802
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 803
    .line 804
    invoke-static {v1, v0}, Lcom/efs/sdk/net/NetManager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 805
    .line 806
    .line 807
    :try_start_18
    invoke-static {}, Lcom/efs/sdk/net/NetManager;->getNetConfigManager()Lcom/efs/sdk/net/NetConfigManager;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-eqz v0, :cond_1e

    .line 812
    .line 813
    invoke-static {}, Lcom/efs/sdk/net/NetManager;->getNetConfigManager()Lcom/efs/sdk/net/NetConfigManager;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/efs/sdk/net/NetConfigManager;->enableTracer()Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isNet:Z

    .line 822
    .line 823
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    const-string v2, "apm_netperf_bd_state"

    .line 828
    .line 829
    invoke-static {v0, v2, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 834
    .line 835
    if-eqz v2, :cond_1b

    .line 836
    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .line 841
    .line 842
    const-string v3, "inner config : net reqBody rate is "

    .line 843
    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    :cond_1b
    const/16 v2, 0x64

    .line 851
    .line 852
    if-ne v0, v2, :cond_1c

    .line 853
    .line 854
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 855
    .line 856
    invoke-static {}, Lcom/efs/sdk/net/NetManager;->getNetConfigManager()Lcom/efs/sdk/net/NetConfigManager;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-virtual {v0, v10}, Lcom/efs/sdk/net/NetConfigManager;->setNetRequestBodyCollectState(Z)V

    .line 861
    .line 862
    .line 863
    goto :goto_f

    .line 864
    :cond_1c
    if-nez v0, :cond_1e

    .line 865
    .line 866
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    .line 867
    .line 868
    goto :goto_f

    .line 869
    :catchall_10
    move-exception v0

    .line 870
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 871
    .line 872
    .line 873
    goto :goto_f

    .line 874
    :cond_1d
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    .line 875
    .line 876
    goto :goto_f

    .line 877
    :catchall_11
    move-exception v0

    .line 878
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 879
    .line 880
    .line 881
    :cond_1e
    :goto_f
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    const-string v2, "apm_native_h5_state"

    .line 886
    .line 887
    invoke-static {v0, v2, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 892
    .line 893
    if-eqz v2, :cond_1f

    .line 894
    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .line 899
    .line 900
    const-string v3, "inner config : nativeH5Rate is "

    .line 901
    .line 902
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    :cond_1f
    if-nez v0, :cond_20

    .line 909
    .line 910
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 911
    .line 912
    goto :goto_10

    .line 913
    :cond_20
    const/16 v2, 0x64

    .line 914
    .line 915
    if-ne v0, v2, :cond_22

    .line 916
    .line 917
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 918
    .line 919
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableH5PageLog:Z

    .line 920
    .line 921
    if-eqz v0, :cond_21

    .line 922
    .line 923
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 924
    .line 925
    invoke-static {v1, v0}, Lcom/efs/sdk/h5pagesdk/H5Manager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V

    .line 926
    .line 927
    .line 928
    goto :goto_10

    .line 929
    :cond_21
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 930
    .line 931
    goto :goto_10

    .line 932
    :catchall_12
    move-exception v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 934
    .line 935
    .line 936
    :cond_22
    :goto_10
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    const-string v2, "apm_page_state"

    .line 941
    .line 942
    invoke-static {v0, v2, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 943
    .line 944
    .line 945
    move-result v0

    .line 946
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 947
    .line 948
    if-eqz v2, :cond_23

    .line 949
    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .line 954
    .line 955
    const-string v3, "inner config : page rate is "

    .line 956
    .line 957
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    :cond_23
    if-nez v0, :cond_24

    .line 964
    .line 965
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 966
    .line 967
    goto :goto_11

    .line 968
    :cond_24
    const/16 v2, 0x64

    .line 969
    .line 970
    if-ne v0, v2, :cond_26

    .line 971
    .line 972
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 973
    .line 974
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enablePageLog:Z

    .line 975
    .line 976
    if-eqz v0, :cond_25

    .line 977
    .line 978
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 979
    .line 980
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 981
    .line 982
    invoke-static {v0, v2}, Lcom/umeng/pagesdk/PageManger;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_14

    .line 983
    .line 984
    .line 985
    :try_start_1c
    invoke-static {}, Lcom/umeng/pagesdk/PageManger;->getPageConfigManger()Lcom/umeng/pagesdk/PageConfigManger;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    if-eqz v0, :cond_26

    .line 990
    .line 991
    invoke-static {}, Lcom/umeng/pagesdk/PageManger;->getPageConfigManger()Lcom/umeng/pagesdk/PageConfigManger;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v0}, Lcom/umeng/pagesdk/PageConfigManger;->enableTracer()Z

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPage:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    .line 1000
    .line 1001
    goto :goto_11

    .line 1002
    :catchall_13
    move-exception v0

    .line 1003
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_11

    .line 1007
    :cond_25
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    .line 1008
    .line 1009
    goto :goto_11

    .line 1010
    :catchall_14
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1012
    .line 1013
    .line 1014
    :cond_26
    :goto_11
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    const-string v2, "apm_power_state"

    .line 1019
    .line 1020
    invoke-static {v0, v2, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 1025
    .line 1026
    if-eqz v2, :cond_27

    .line 1027
    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    const-string v3, "inner config : power rate is "

    .line 1034
    .line 1035
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    :cond_27
    if-nez v0, :cond_28

    .line 1042
    .line 1043
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 1044
    .line 1045
    goto :goto_12

    .line 1046
    :cond_28
    const/16 v2, 0x64

    .line 1047
    .line 1048
    if-ne v0, v2, :cond_2a

    .line 1049
    .line 1050
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 1051
    .line 1052
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enablePowerLog:Z

    .line 1053
    .line 1054
    if-eqz v0, :cond_29

    .line 1055
    .line 1056
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 1057
    .line 1058
    sget-object v2, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 1059
    .line 1060
    invoke-static {v0, v2}, Lcom/umeng/powersdk/PowerManager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    .line 1061
    .line 1062
    .line 1063
    :try_start_1f
    invoke-static {}, Lcom/umeng/powersdk/PowerManager;->getPowerConfigManager()Lcom/umeng/powersdk/PowerConfigManager;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    if-eqz v0, :cond_2a

    .line 1068
    .line 1069
    invoke-static {}, Lcom/umeng/powersdk/PowerManager;->getPowerConfigManager()Lcom/umeng/powersdk/PowerConfigManager;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Lcom/umeng/powersdk/PowerConfigManager;->enableTracer()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v0

    .line 1077
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPower:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    .line 1078
    .line 1079
    goto :goto_12

    .line 1080
    :catchall_15
    move-exception v0

    .line 1081
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_12

    .line 1085
    :cond_29
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    .line 1086
    .line 1087
    goto :goto_12

    .line 1088
    :catchall_16
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1090
    .line 1091
    .line 1092
    :cond_2a
    :goto_12
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    const-string v1, "apm_flutter_state"

    .line 1097
    .line 1098
    invoke-static {v0, v1, v9}, Lcom/umeng/umcrash/UMCrashUtils;->getInnerConfig(Landroid/content/Context;Ljava/lang/String;I)I

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 1103
    .line 1104
    if-eqz v1, :cond_2b

    .line 1105
    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .line 1110
    .line 1111
    const-string v2, "inner config : flutter rate is "

    .line 1112
    .line 1113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    :cond_2b
    if-nez v0, :cond_2c

    .line 1120
    .line 1121
    goto :goto_13

    .line 1122
    :cond_2c
    const/16 v1, 0x64

    .line 1123
    .line 1124
    if-ne v0, v1, :cond_2d

    .line 1125
    .line 1126
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 1127
    .line 1128
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableFlutterLog:Z

    .line 1129
    .line 1130
    if-eqz v0, :cond_2d

    .line 1131
    .line 1132
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 1133
    .line 1134
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 1135
    .line 1136
    invoke-static {v0, v1}, Lcom/efs/sdk/fluttersdk/FlutterManager;->init(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_18

    .line 1137
    .line 1138
    .line 1139
    :try_start_22
    invoke-static {}, Lcom/efs/sdk/fluttersdk/FlutterManager;->getFlutterConfigManager()Lcom/efs/sdk/fluttersdk/FlutterConfigManager;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    if-eqz v0, :cond_2d

    .line 1144
    .line 1145
    invoke-static {}, Lcom/efs/sdk/fluttersdk/FlutterManager;->getFlutterConfigManager()Lcom/efs/sdk/fluttersdk/FlutterConfigManager;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Lcom/efs/sdk/fluttersdk/FlutterConfigManager;->isFlutterEnable()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v0

    .line 1153
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isFlutter:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    .line 1154
    .line 1155
    goto :goto_13

    .line 1156
    :catchall_17
    move-exception v0

    .line 1157
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    .line 1158
    .line 1159
    .line 1160
    goto :goto_13

    .line 1161
    :catchall_18
    move-exception v0

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1163
    .line 1164
    .line 1165
    :cond_2d
    :goto_13
    return-void
.end method

.method public static initConfig(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const-string v0, "enableJavaLog"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableJavaLog:Z

    .line 17
    .line 18
    :goto_0
    const-string v0, "enableNativeLog"

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 30
    .line 31
    :goto_1
    const-string v0, "enableANRLog"

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 43
    .line 44
    :goto_2
    const-string v0, "enablePaLog"

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enablePaLog:Z

    .line 56
    .line 57
    :goto_3
    const-string v0, "enableLaunchLog"

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableLaunchLog:Z

    .line 69
    .line 70
    :goto_4
    const-string v0, "enableMemLog"

    .line 71
    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_5
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableMemLog:Z

    .line 82
    .line 83
    :goto_5
    const-string v0, "enableNetLog"

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNetLog:Z

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableNetLog:Z

    .line 95
    .line 96
    :goto_6
    const-string v0, "enableH5PageLog"

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableH5PageLog:Z

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_7
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableH5PageLog:Z

    .line 108
    .line 109
    :goto_7
    const-string v0, "pa_timeout_time"

    .line 110
    .line 111
    const-wide/16 v3, 0x7d0

    .line 112
    .line 113
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    sput-wide v3, Lcom/umeng/umcrash/UMCrash;->paTimeoutTime:J

    .line 118
    .line 119
    const-string v0, "enablePageLog"

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePageLog:Z

    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_8
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enablePageLog:Z

    .line 131
    .line 132
    :goto_8
    const-string v0, "enablePowerLog"

    .line 133
    .line 134
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enablePowerLog:Z

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_9
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enablePowerLog:Z

    .line 144
    .line 145
    :goto_9
    const-string v0, "enableFlutterLog"

    .line 146
    .line 147
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_a

    .line 152
    .line 153
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableFlutterLog:Z

    .line 154
    .line 155
    goto :goto_a

    .line 156
    :cond_a
    sput-boolean v2, Lcom/umeng/umcrash/UMCrash;->enableFlutterLog:Z

    .line 157
    .line 158
    :cond_b
    :goto_a
    return-void
.end method

.method private static initReporter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "um_app_provider"

    .line 2
    .line 3
    const-string v1, "um_app_puid"

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v4, "um_umid_header"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v4, "um_app_channel"

    .line 21
    .line 22
    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p2, "um_app_carrier"

    .line 26
    .line 27
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p2, "um_os"

    .line 35
    .line 36
    const-string v4, "android"

    .line 37
    .line 38
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p2, "um_crash_sdk_version"

    .line 42
    .line 43
    sget-object v4, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    const/4 v4, 0x0

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    array-length v6, v5

    .line 57
    if-ne v6, p2, :cond_0

    .line 58
    .line 59
    aget-object v6, v5, v3

    .line 60
    .line 61
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    aget-object v5, v5, v4

    .line 65
    .line 66
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    const-string v5, ""

    .line 71
    .line 72
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_0
    :goto_0
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    const-string v0, "um_bver"

    .line 87
    .line 88
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_1
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    const-string v0, "um_bsver"

    .line 102
    .line 103
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_2
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    const-string v0, "um_bserial"

    .line 117
    .line 118
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->isHarmony(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    const-string v1, "others_OS"

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    :try_start_2
    const-string v0, "harmony"

    .line 132
    .line 133
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    const-string v0, "Android"

    .line 138
    .line 139
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_1
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :goto_1
    new-instance v0, Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v5, "NEej8y@anWa*8hep"

    .line 154
    .line 155
    invoke-direct {v0, v1, p1, v5}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v0, "UApm"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;->efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;->printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;->intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1, v4}, Lcom/efs/sdk/base/EfsReporter$Builder;->enableWaStat(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->build()Lcom/efs/sdk/base/EfsReporter;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    sput-object p1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    :try_start_3
    sget-object p1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 196
    .line 197
    const/16 v0, 0xd

    .line 198
    .line 199
    new-array v0, v0, [Ljava/lang/String;

    .line 200
    .line 201
    const-string v1, "hit_wl"

    .line 202
    .line 203
    aput-object v1, v0, v4

    .line 204
    .line 205
    const-string v1, "apm_flutter_state"

    .line 206
    .line 207
    aput-object v1, v0, v3

    .line 208
    .line 209
    const-string v1, "apm_power_state"

    .line 210
    .line 211
    aput-object v1, v0, p2

    .line 212
    .line 213
    const-string p2, "apm_page_state"

    .line 214
    .line 215
    const/4 v1, 0x3

    .line 216
    aput-object p2, v0, v1

    .line 217
    .line 218
    const-string p2, "apm_netperf_state"

    .line 219
    .line 220
    const/4 v1, 0x4

    .line 221
    aput-object p2, v0, v1

    .line 222
    .line 223
    const-string p2, "apm_netperf_bd_state"

    .line 224
    .line 225
    const/4 v1, 0x5

    .line 226
    aput-object p2, v0, v1

    .line 227
    .line 228
    const-string p2, "apm_native_h5_state"

    .line 229
    .line 230
    const/4 v1, 0x6

    .line 231
    aput-object p2, v0, v1

    .line 232
    .line 233
    const-string p2, "apm_crash_java_sampling_rate"

    .line 234
    .line 235
    const/4 v1, 0x7

    .line 236
    aput-object p2, v0, v1

    .line 237
    .line 238
    const-string p2, "apm_crash_native_sampling_rate"

    .line 239
    .line 240
    const/16 v1, 0x8

    .line 241
    .line 242
    aput-object p2, v0, v1

    .line 243
    .line 244
    const-string p2, "apm_crash_anr_sampling_rate"

    .line 245
    .line 246
    const/16 v1, 0x9

    .line 247
    .line 248
    aput-object p2, v0, v1

    .line 249
    .line 250
    const-string p2, "apm_crash_user_sampling_rate"

    .line 251
    .line 252
    const/16 v1, 0xa

    .line 253
    .line 254
    aput-object p2, v0, v1

    .line 255
    .line 256
    const-string p2, "apm_crash_user_max_count"

    .line 257
    .line 258
    const/16 v1, 0xb

    .line 259
    .line 260
    aput-object p2, v0, v1

    .line 261
    .line 262
    const-string p2, "apm_crash_user_upload_type"

    .line 263
    .line 264
    const/16 v1, 0xc

    .line 265
    .line 266
    aput-object p2, v0, v1

    .line 267
    .line 268
    new-instance p2, Lcom/umeng/umcrash/UMCrash$6;

    .line 269
    .line 270
    invoke-direct {p2, p0}, Lcom/umeng/umcrash/UMCrash$6;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0, p2}, Lcom/efs/sdk/base/EfsReporter;->getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catchall_2
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :goto_2
    return-void
.end method

.method public static isBuildId(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isBuildId:Z

    .line 2
    .line 3
    return-void
.end method

.method public static registerUMCrashCallback(Lcom/umeng/umcrash/UMCrashCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    .line 4
    .line 5
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "um_user_string"

    .line 16
    .line 17
    const v1, 0x100011

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static saveActivityState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :catchall_0
    :cond_1
    return-void
.end method

.method private static saveLocalCrashSampling(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const-string v0, "apm_crash_java_sampling_rate"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "callback crashJavaSampling is "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, v0, v1}, Lcom/umeng/umcrash/UMCrashUtils;->saveInnerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const-string v0, "apm_crash_native_sampling_rate"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "callback crashNativeSampling is "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2, v0, v1}, Lcom/umeng/umcrash/UMCrashUtils;->saveInnerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    const-string v0, "apm_crash_anr_sampling_rate"

    .line 78
    .line 79
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "callback crashANRSampling is "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2, v0, v1}, Lcom/umeng/umcrash/UMCrashUtils;->saveInnerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    const-string v0, "apm_crash_user_sampling_rate"

    .line 114
    .line 115
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "callback crashUserSampling is "

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, v0, p1}, Lcom/umeng/umcrash/UMCrashUtils;->saveInnerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v0, v0

    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p0, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 28
    .line 29
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    array-length p0, p0

    .line 44
    if-le p0, v1, :cond_2

    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_2
    sput-object p1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 54
    .line 55
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_5

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    array-length p0, p0

    .line 70
    if-le p0, v1, :cond_4

    .line 71
    .line 72
    invoke-static {p2, v1}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :cond_4
    sput-object p2, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 80
    .line 81
    :goto_2
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const-string p1, "um_bserial"

    .line 86
    .line 87
    const-string p2, "um_bsver"

    .line 88
    .line 89
    const-string v0, "um_bver"

    .line 90
    .line 91
    if-eqz p0, :cond_8

    .line 92
    .line 93
    :try_start_1
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_6

    .line 100
    .line 101
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, p2, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_9

    .line 126
    .line 127
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0, p1, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 134
    .line 135
    :cond_9
    :goto_3
    new-instance p0, Ljava/util/HashMap;

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-direct {p0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    .line 140
    .line 141
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_a

    .line 148
    .line 149
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_a
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_b
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_c

    .line 174
    .line 175
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_c
    sget-object v1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 181
    .line 182
    if-eqz v1, :cond_d

    .line 183
    .line 184
    invoke-virtual {v1, p0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_d
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 189
    .line 190
    :goto_4
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_e

    .line 197
    .line 198
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBver:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v0, p0}, Lcom/umeng/umcrash/UMCrashUtils;->setCommonTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_e
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-nez p0, :cond_f

    .line 210
    .line 211
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBsver:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p2, p0}, Lcom/umeng/umcrash/UMCrashUtils;->setCommonTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_f
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    if-nez p0, :cond_10

    .line 223
    .line 224
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->userBesrial:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p1, p0}, Lcom/umeng/umcrash/UMCrashUtils;->setCommonTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :catchall_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :cond_10
    :goto_5
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 2
    .line 3
    sput-boolean p0, Lcom/efs/sdk/launch/LaunchManager;->isDebug:Z

    .line 4
    .line 5
    sput-boolean p0, Lcom/efs/sdk/h5pagesdk/H5Manager;->isDebug:Z

    .line 6
    .line 7
    sput-boolean p0, Lcom/umeng/pagesdk/PageManger;->isDebug:Z

    .line 8
    .line 9
    sput-boolean p0, Lcom/umeng/powersdk/PowerManager;->isDebug:Z

    .line 10
    .line 11
    return-void
.end method

.method public static setPaTimeoutTime(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/umeng/umcrash/UMCrash;->paTimeoutTime:J

    .line 2
    .line 3
    return-void
.end method

.method private static updateLocalCrashConfig(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    new-instance p0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "apm_crash_user_max_count"

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "callback crashMaxUserCount is "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v1, "mMaxCustomLogCountPerTypePerDay"

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const-string v0, "mMaxUploadCustomLogCountPerDay"

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/uc/crashsdk/export/CrashApi;->updateCustomInfo(Landroid/os/Bundle;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method private static updateLocalCrashSampling(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/16 p0, 0x10

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/uc/crashsdk/export/CrashApi;->disableLog(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    invoke-virtual {v0, p0}, Lcom/uc/crashsdk/export/CrashApi;->disableLog(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    const/high16 p0, 0x100000

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lcom/uc/crashsdk/export/CrashApi;->disableLog(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    if-eqz p3, :cond_3

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->random(I)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isOpenUserCrash:Z

    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method private static useIntlServices(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 2
    .line 3
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "useIntlServices is "

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
