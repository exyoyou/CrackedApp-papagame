.class public Lcom/byazt/sd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0x22
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/byazt/sd/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(IILjava/lang/String;IJ)V
    .locals 13

    move v0, p2

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lcom/byazt/sd/a;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v2

    move v3, p1

    invoke-virtual {v2, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 4
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    const-string v5, "download_notification"

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v3, "download_notification_click"

    invoke-virtual {v0, v5, v3, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dd/c;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v3, "download_notification_continue"

    invoke-virtual {v0, v5, v3, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void

    .line 8
    :cond_5
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v3, "download_notification_pause"

    invoke-virtual {v0, v5, v3, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void

    .line 9
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v4}, Lcom/byazt/di/c;->tt(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v3

    const-string v4, "download_notification_install"

    invoke-virtual {v3, v5, v4, v0, v2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void

    .line 11
    :cond_7
    invoke-static {v4, v2}, Lcom/byazt/di/c;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)V

    const-string v0, "application/vnd.android.package-archive"

    .line 12
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-static {}, Lcom/byazt/gq/c;->c()Lcom/byazt/gq/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/byazt/dd/tt;->t()J

    move-result-wide v7

    .line 14
    invoke-virtual {v2}, Lcom/byazt/dd/tt;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/byazt/dd/tt;->uj()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual/range {v3 .. v12}, Lcom/byazt/gq/c;->c(Lcom/byazt/t/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/byazt/sd/a;->c:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1, p4}, Lcom/byazt/t/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/byazt/gq/tt;->c()Lcom/byazt/gq/tt;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/sd/a;->c:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/byazt/gq/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/di/c;->c()Lcom/byazt/di/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/di/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/di/x;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 19
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "report_download_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    const-string v1, ""

    const/16 v3, 0x3f4

    if-ne v0, v2, :cond_1

    .line 20
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    new-instance v2, Lcom/byazt/m/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/byazt/zn/c;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    new-instance v2, Lcom/byazt/m/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/byazt/zn/c;->tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/byazt/gq/tt;->c()Lcom/byazt/gq/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gq/tt;->tt()Z

    move-result v0

    return v0
.end method

.method public c(IZ)Z
    .locals 0

    .line 16
    invoke-static {}, Lcom/byazt/gq/t;->z()Lcom/byazt/ou/uj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-static {}, Lcom/byazt/gq/t;->z()Lcom/byazt/ou/uj;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/byazt/ou/uj;->c(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
