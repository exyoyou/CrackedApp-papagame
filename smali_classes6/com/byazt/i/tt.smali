.class public Lcom/byazt/i/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a,
        0xd
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/i/tt;->tt(Lcom/byazt/t/DownloadInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->isAutoResumed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->isShowNotificationForNetworkResumed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getExtra()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/byazt/z/ve;->tt(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v4, "application/vnd.android.package-archive"

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "auto_install_when_resume"

    .line 60
    .line 61
    invoke-virtual {v1, v4, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eq v1, v3, :cond_2

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    :cond_2
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v0, v1, v2}, Lcom/byazt/z/ve;->c(Landroid/content/Context;IZ)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 v1, 0x2

    .line 80
    :goto_0
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lcom/byazt/i/tt$1;

    .line 85
    .line 86
    invoke-direct {v3, v0, p0, v1}, Lcom/byazt/i/tt$1;-><init>(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
