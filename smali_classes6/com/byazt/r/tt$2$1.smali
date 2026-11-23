.class public Lcom/byazt/r/tt$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3bd,
        0x383
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/r/tt$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/r/tt$2;


# direct methods
.method public constructor <init>(Lcom/byazt/r/tt$2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/r/tt$2$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    new-array v1, v0, [Ljava/lang/Integer;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    if-ge v2, v0, :cond_3

    .line 64
    .line 65
    aget-object v3, v1, v2

    .line 66
    .line 67
    iget-object v4, p0, Lcom/byazt/r/tt$2$1;->c:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v4}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v4, v3}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/4 v5, -0x5

    .line 88
    if-eq v4, v5, :cond_1

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const/4 v5, -0x2

    .line 95
    if-ne v4, v5, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    :cond_1
    iget-object v4, p0, Lcom/byazt/r/tt$2$1;->tt:Lcom/byazt/r/tt$2;

    .line 104
    .line 105
    iget-object v4, v4, Lcom/byazt/r/tt$2;->c:Lcom/byazt/r/tt;

    .line 106
    .line 107
    iget-object v5, p0, Lcom/byazt/r/tt$2$1;->c:Landroid/content/Context;

    .line 108
    .line 109
    const/4 v6, 0x2

    .line 110
    const/4 v7, 0x1

    .line 111
    invoke-static {v4, v5, v3, v7, v6}, Lcom/byazt/r/tt;->c(Lcom/byazt/r/tt;Landroid/content/Context;Lcom/byazt/t/DownloadInfo;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
