.class public Lcom/haima/hmcp/cloud/video/job/DownloadJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final STATUS_CANCEL:I = 0x4

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_FINISH:I = 0x2

.field public static final STATUS_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadJob"


# instance fields
.field private mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

.field private mCid:Ljava/lang/String;

.field private mDownloadConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

.field private mDownloadSize:J

.field private final mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field private mHttpImpl:Lcom/haima/hmcp/business/IHttp;

.field private mUrl:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->status:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 10
    .line 11
    new-instance p2, Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 12
    .line 13
    invoke-direct {p2, p1, v0}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/cloud/video/job/DownloadJob;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setStatus(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$402(Lcom/haima/hmcp/cloud/video/job/DownloadJob;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mDownloadSize:J

    .line 2
    .line 3
    return-wide p1
.end method

.method private setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->status:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->status:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setStatus(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "download-file: file download request cancel"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/haima/hmcp/business/IHttp;->clear()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 30
    .line 31
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "download-file: file download executor cancel"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mDownloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isDownloading()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->status:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public run()V
    .locals 11

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: file download executor start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "event"

    .line 14
    .line 15
    const-string v2, "request download url"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "file"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "url"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    const-string v1, "12630"

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/haima/hmcp/business/DownloadFileInfo;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 58
    .line 59
    iget-wide v5, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadedSize:J

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getTempFileNameWithPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iget-object v8, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mUrl:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->downloadRetryStrategy:Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;->getInterval()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    move-object v2, v0

    .line 76
    invoke-direct/range {v2 .. v10}, Lcom/haima/hmcp/business/DownloadFileInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mDownloadConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/DownloadFileInfo;->setContentTypeList(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 87
    .line 88
    new-instance v2, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;-><init>(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v0, v2}, Lcom/haima/hmcp/business/IHttp;->download(Lcom/haima/hmcp/business/DownloadFileInfo;Lcom/haima/hmcp/business/DownloadResponseListener;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->setStatus(I)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "download-file: to request download file"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mCid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mDownloadConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
