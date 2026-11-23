.class abstract Lcom/haima/hmcp/cloud/BaseCloudFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACK_TIMEOUT:J = 0xbb8L

.field public static final ERROR_FILE_MD5:I = 0x6

.field public static final ERROR_FILE_NOT_EXISTS:I = 0x3

.field public static final ERROR_FILE_PATH_NAME:I = 0x2

.field public static final ERROR_FILE_SIZE_OUT_OF_GAUGE:I = 0x5

.field public static final ERROR_FILE_TYPE_NOT_SUPPORT:I = 0x4

.field public static final ERROR_PARAM_NULL:I = 0x1

.field public static final ERROR_SYSTEM:I = 0x7

.field public static final EXTERNAL_ERROR:I = 0x1

.field public static final FILE_CACHE_SIZE_DEFAULT:I = 0x1

.field public static final FILE_CACHE_SIZE_MAX:I = 0x2

.field public static final FILE_SEGMENT_COEFFICIENT:I = 0x2

.field public static final FILE_SEGMENT_COUNT:I = 0x2

.field public static final FILE_SEGMENT_MAX_COUNT:I = 0x80

.field public static final FILE_SIZE_MAX:J = 0xa00000L

.field public static final FILE_SIZE_MIN:J = 0x400L

.field public static final FILTER_TAG:Ljava/lang/String; = "cloud-file: "

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STOKEN_VALID_TIME:J = 0x1d4c0L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private jsonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchUploadWork:Lcom/haima/hmcp/cloud/BatchUploadWork;

.field mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

.field protected mContext:Landroid/content/Context;

.field private mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

.field private mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->jsonMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method getCloudFile(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;->makeCloudFile()Lcom/haima/hmcp/beans/CloudFile;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method declared-synchronized getInternalCloudFile(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/cloud/ICloudFile;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/haima/hmcp/cloud/UploadWork;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/UploadWork;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object p1

    .line 21
    :cond_1
    :try_start_1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mBatchUploadWork:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    new-instance p1, Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/BatchUploadWork;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mBatchUploadWork:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mBatchUploadWork:Lcom/haima/hmcp/cloud/BatchUploadWork;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-object p1

    .line 40
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    new-instance p1, Lcom/haima/hmcp/cloud/DownloadWork;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/haima/hmcp/cloud/DownloadWork;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 52
    .line 53
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method

.method getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->jsonMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->jsonMap:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "message"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->jsonMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method handleDownloadMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/DownloadWork;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/DownloadWork;->onMessage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "download work is running"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method handleUploadMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/UploadWork;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/UploadWork;->onMessage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "upload work is running"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public abstract hasHangUpTask(Lcom/haima/hmcp/enums/CloudOperation;)Z
.end method

.method public isRunning(Lcom/haima/hmcp/enums/CloudOperation;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->hasHangUpTask(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne p1, v0, :cond_3

    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mUploadWork:Lcom/haima/hmcp/cloud/UploadWork;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/UploadWork;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1

    .line 30
    :cond_3
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 31
    .line 32
    if-ne p1, v0, :cond_6

    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mBatchUploadWork:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 35
    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    return v2

    .line 39
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 44
    .line 45
    if-eq p1, v0, :cond_5

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    const/4 v1, 0x0

    .line 49
    :goto_1
    return v1

    .line 50
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mDownloadWork:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 51
    .line 52
    if-nez p1, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/DownloadWork;->getStatus()Lcom/haima/hmcp/cloud/WorkStatus;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 60
    .line 61
    if-eq p1, v0, :cond_8

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_8
    const/4 v1, 0x0

    .line 65
    :goto_2
    return v1
.end method

.method public setConfig(Lcom/haima/hmcp/beans/CloudFileConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 2
    .line 3
    return-void
.end method
