.class public Lcom/sigmob/sdk/base/views/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/z$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/content/Context;

.field private final c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final d:Lcom/sigmob/sdk/base/views/z$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/z$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/base/views/z;->a:I

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelDownloadTask()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/o;->c(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getApKDownloadProcess()I
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/z$a;->onApkDownloadProcess()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->a()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/Long;)[J

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/common/o;->d(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)[J

    move-result-object v0

    :goto_0
    const/4 v2, 0x2

    aget-wide v3, v0, v2

    long-to-int v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_5

    const/4 v0, 0x4

    if-eq v4, v0, :cond_4

    const/16 v0, 0x8

    if-eq v4, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x64

    return v0

    :cond_4
    const/4 v0, -0x2

    return v0

    :cond_5
    aget-wide v1, v0, v5

    aget-wide v3, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_7

    cmp-long v0, v1, v6

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x64

    mul-long v1, v1, v5

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0

    :cond_7
    :goto_1
    return v5

    :cond_8
    :goto_2
    return v1
.end method

.method public getApKDownloadType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->a()I

    move-result v0

    return v0
.end method

.method public pauseDownload()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/o;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public resumeDownload()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/o;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
