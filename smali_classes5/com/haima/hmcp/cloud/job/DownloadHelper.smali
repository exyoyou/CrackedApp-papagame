.class public Lcom/haima/hmcp/cloud/job/DownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;,
        Lcom/haima/hmcp/cloud/job/DownloadHelper$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CONTENT_LIST_DEFAULT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadHelper"

.field private static isInited:Z

.field private static mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

.field private static mContext:Landroid/content/Context;

.field private static mDownloadRetryStrategy:Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

.field private static mHttpImpl:Lcom/haima/hmcp/business/IHttp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "all"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->isInited:Z

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/cloud/job/DownloadHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/job/DownloadHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Lcom/haima/hmcp/cloud/job/DownloadHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper$InstanceHolder;->instance:Lcom/haima/hmcp/cloud/job/DownloadHelper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/business/IHttp;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public download(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/haima/hmcp/business/DownloadFileInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mDownloadRetryStrategy:Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;->getInterval()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    move-object v0, v9

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/haima/hmcp/business/DownloadFileInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    sget-object v2, Lcom/haima/hmcp/cloud/job/DownloadHelper;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 41
    .line 42
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {v9, v0}, Lcom/haima/hmcp/business/DownloadFileInfo;->setContentTypeList(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 50
    .line 51
    new-instance v1, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;

    .line 52
    .line 53
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;-><init>(Lcom/haima/hmcp/cloud/job/DownloadHelper;Lcom/haima/hmcp/listeners/CloudOperationListener;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v9, v1}, Lcom/haima/hmcp/business/IHttp;->download(Lcom/haima/hmcp/business/DownloadFileInfo;Lcom/haima/hmcp/business/DownloadResponseListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->isInited:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p1, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 14
    .line 15
    new-instance p1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object p1, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mConfig:Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;

    .line 21
    .line 22
    new-instance v0, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;-><init>(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/haima/hmcp/cloud/job/DownloadHelper;->mDownloadRetryStrategy:Lcom/haima/hmcp/cloud/video/strategy/DownloadRetryStrategy;

    .line 28
    .line 29
    :cond_0
    return-void
.end method
