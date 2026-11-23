.class public Lcom/byazt/sd/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sd/x$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/sd/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/sd/x;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/sd/x;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/sd/x$c;->c()Lcom/byazt/sd/x;

    move-result-object v0

    return-object v0
.end method

.method private c(ILcom/byazt/dd/tt;Lorg/json/JSONObject;)V
    .locals 9

    .line 8
    invoke-static {}, Lcom/byazt/p/uj;->c()Z

    move-result v0

    const-string v1, "error_code"

    if-nez v0, :cond_0

    const/16 p1, 0x3ec

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x3ed

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/n/tt;->n(I)Lcom/byazt/n/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/n/tt;->a(I)V

    .line 14
    :cond_2
    new-instance v1, Lcom/byazt/p/c;

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/byazt/p/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/n/c;->c(J)V

    .line 16
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/n/c;->tt(J)V

    .line 17
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/byazt/n/c;->c(ILcom/byazt/m/BaseException;ZZ)V

    .line 18
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/n/tt;->c(Lcom/byazt/n/c;)V

    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/byazt/n/c;->c(Lcom/byazt/m/BaseException;Z)V

    .line 20
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string v0, "download_notification_show"

    invoke-virtual {p1, v0, p3, p2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/sd/x;->c(ILcom/byazt/dd/tt;Lorg/json/JSONObject;)V

    return-void
.end method

.method private tt(Lcom/byazt/dd/tt;J)V
    .locals 5
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/byazt/sd/x;->c(I)V

    .line 5
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v1

    new-instance v2, Lcom/byazt/sd/x$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/sd/x$1;-><init>(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private ve(Lcom/byazt/dd/tt;J)V
    .locals 5
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/byazt/sd/x;->c(I)V

    .line 5
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v1

    new-instance v2, Lcom/byazt/sd/x$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/sd/x$2;-><init>(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/byazt/dd/tt;)V
    .locals 3
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "noti_open_delay_secs"

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/sd/x;->c(Lcom/byazt/dd/tt;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/byazt/p/ve;->c()Lcom/byazt/p/ve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/p/ve;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/byazt/p/ve;->c()Lcom/byazt/p/ve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/byazt/p/ve;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dd/tt;)V
    .locals 2

    const-wide/16 v0, 0x5

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/sd/x;->tt(Lcom/byazt/dd/tt;J)V

    return-void
.end method

.method public c(Lcom/byazt/dd/tt;J)V
    .locals 5
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/byazt/sd/x;->c(I)V

    .line 7
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v1

    new-instance v2, Lcom/byazt/sd/x$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/sd/x$3;-><init>(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;)V

    const-wide/16 v3, 0x3e8

    mul-long p2, p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public n(Lcom/byazt/dd/tt;)V
    .locals 2
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x5

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/sd/x;->c(Lcom/byazt/dd/tt;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tt(Lcom/byazt/dd/tt;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "noti_continue_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/sd/x;->tt(Lcom/byazt/dd/tt;J)V

    return-void
.end method

.method public uj(Lcom/byazt/dd/tt;)V
    .locals 3
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "noti_install_delay_secs"

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/sd/x;->ve(Lcom/byazt/dd/tt;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public ve(Lcom/byazt/dd/tt;)V
    .locals 2
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/sd/x;->ve(Lcom/byazt/dd/tt;J)V

    return-void
.end method
