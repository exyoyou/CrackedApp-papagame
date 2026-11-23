.class public Lcom/byazt/p/tt;
.super Lcom/byazt/c/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15e,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public n:Ljava/lang/String;

.field public sp:Lcom/byazt/n/c;

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/c/uj;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    .line 4
    :goto_0
    iput p2, p0, Lcom/byazt/p/tt;->tt:I

    .line 5
    iput-object p3, p0, Lcom/byazt/p/tt;->ve:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/byazt/p/tt;->uj:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/byazt/p/tt;->n:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/byazt/p/tt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/n/c;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/byazt/c/uj;-><init>()V

    .line 10
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/byazt/p/tt;->sp:Lcom/byazt/n/c;

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/n/c;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/p/tt;->sp:Lcom/byazt/n/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/p/c;

    .line 10
    .line 11
    iget v3, p0, Lcom/byazt/p/tt;->tt:I

    .line 12
    .line 13
    iget-object v4, p0, Lcom/byazt/p/tt;->ve:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/byazt/p/tt;->uj:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/byazt/p/tt;->n:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/byazt/p/tt;->a:Ljava/lang/String;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/byazt/p/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v0
.end method

.method public onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->canShowNotification()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/c/uj;->onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/c/uj;->onPause(Lcom/byazt/t/DownloadInfo;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepare(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/c/uj;->onPrepare(Lcom/byazt/t/DownloadInfo;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/c/uj;->onProgress(Lcom/byazt/t/DownloadInfo;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/c/uj;->onStart(Lcom/byazt/t/DownloadInfo;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccessed(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/p/tt;->c:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->canShowNotification()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstallWithoutNotification()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstall()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1}, Lcom/byazt/c/uj;->onSuccessed(Lcom/byazt/t/DownloadInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isAutoInstall()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-static {p1}, Lcom/byazt/i/tt;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method
