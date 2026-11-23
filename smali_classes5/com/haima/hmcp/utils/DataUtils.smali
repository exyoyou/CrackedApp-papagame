.class public Lcom/haima/hmcp/utils/DataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADVERT_NAME:Ljava/lang/String; = "advert_name"

.field public static final CID_CACHE_EXPIRE_TIME:Ljava/lang/String; = "cid_cache_expire_time"

.field public static final CID_CACHE_INTERVAL:Ljava/lang/String; = "cid_cache_interval"

.field public static final CLIENT_KEY:Ljava/lang/String; = "client_key"

.field public static final CONFIG_INFO_KEY:Ljava/lang/String; = "config_info_key"

.field public static final COUNTLY_DEVICE_ID:Ljava/lang/String; = "countly_device_id"

.field private static final IS_DATA_REPORT_ENABLED_KEY:Ljava/lang/String; = "hmcp_is_data_report_enabled"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "saas_sdk_preferences"

.field private static final REPORT_LEN:I = 0x78

.field public static final SPEED_PLAY_TIME:Ljava/lang/String; = "speed_play_time"

.field public static final SPEED_URL:Ljava/lang/String; = "speed_url"

.field private static final TAG:Ljava/lang/String; = "DataUtils"

.field private static final VALUE_MAX_LEN_TO_REPORT:I = 0x140

.field private static mInstance:Lcom/haima/hmcp/utils/DataUtils;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method private checkSpIsNull()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private clearCache()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->clearSp()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hmcp_is_data_report_enabled"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private clearSp()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v1, Lcom/haima/hmcp/utils/DataUtils$5;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/haima/hmcp/utils/DataUtils$5;-><init>(Lcom/haima/hmcp/utils/DataUtils;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->mInstance:Lcom/haima/hmcp/utils/DataUtils;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/DataUtils;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/DataUtils;->mInstance:Lcom/haima/hmcp/utils/DataUtils;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/DataUtils;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/DataUtils;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/DataUtils;->mInstance:Lcom/haima/hmcp/utils/DataUtils;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "saas_sdk_preferences"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sput-object p0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/haima/hmcp/utils/DataUtils;->mInstance:Lcom/haima/hmcp/utils/DataUtils;

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public getCidPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v1, "HMCP_CID"

    .line 11
    .line 12
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "getCidPreferences(),key="

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", mapString="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ",md5(key) = "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-object p2

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    const-string v0, "HMCP_CID_VALUE"

    .line 79
    .line 80
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "\u8fd4\u56de\u7684\u7f13\u5b58CID Value="

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {v1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method public getPreferences(Ljava/lang/String;I)I
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 4
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPreferences(Ljava/lang/String;J)J
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 8
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreferences(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 2
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public putPreferences(Ljava/lang/String;I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread name1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/utils/DataUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/haima/hmcp/utils/DataUtils$2;-><init>(Lcom/haima/hmcp/utils/DataUtils;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public putPreferences(Ljava/lang/String;J)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread name1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/utils/DataUtils$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/haima/hmcp/utils/DataUtils$3;-><init>(Lcom/haima/hmcp/utils/DataUtils;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public putPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread name1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/utils/DataUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/haima/hmcp/utils/DataUtils$1;-><init>(Lcom/haima/hmcp/utils/DataUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public putPreferences(Ljava/lang/String;Z)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->checkSpIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread name1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/utils/DataUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/utils/DataUtils$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/haima/hmcp/utils/DataUtils$4;-><init>(Lcom/haima/hmcp/utils/DataUtils;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public readDataReportIsEnabled()Z
    .locals 2

    .line 1
    const-string v0, "hmcp_is_data_report_enabled"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public updateDataReportEnable(Z)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/DataUtils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Thread name1:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const-string v0, "hmcp_is_data_report_enabled"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/utils/DataUtils;->clearCache()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return p1
.end method
