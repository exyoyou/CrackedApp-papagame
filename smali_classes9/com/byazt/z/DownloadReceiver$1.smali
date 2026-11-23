.class public Lcom/byazt/z/DownloadReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x8ef
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic ve:Lcom/byazt/z/DownloadReceiver;


# direct methods
.method public constructor <init>(Lcom/byazt/z/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/DownloadReceiver$1;->ve:Lcom/byazt/z/DownloadReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/z/DownloadReceiver$1;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/z/DownloadReceiver$1;->tt:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/z/DownloadReceiver$1;->c:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/byazt/z/uj;->ve()Lcom/byazt/s/n;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/byazt/z/DownloadReceiver$1;->tt:Landroid/content/Context;

    .line 25
    .line 26
    invoke-interface {v1, v2, v0}, Lcom/byazt/s/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lcom/byazt/z/DownloadReceiver$1;->tt:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "application/vnd.android.package-archive"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/byazt/zz/Downloader;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_7

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_7

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/byazt/t/DownloadInfo;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-static {v2, v0}, Lcom/byazt/z/ve;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/byazt/z/DownloadReceiver$1;->tt:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v1, v3}, Lcom/byazt/zz/Downloader;->getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-interface {v1}, Lcom/byazt/c/yv;->c()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/byazt/w/a;->a(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const/16 v3, 0x9

    .line 94
    .line 95
    const-string v4, ""

    .line 96
    .line 97
    invoke-interface {v1, v3, v2, v0, v4}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v1, v3}, Lcom/byazt/n/tt;->n(I)Lcom/byazt/n/c;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v3, 0x0

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-virtual {v1, v4, v3}, Lcom/byazt/n/c;->c(Lcom/byazt/m/BaseException;Z)V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v4, "install_queue_enable"

    .line 128
    .line 129
    invoke-virtual {v1, v4, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v4, 0x1

    .line 134
    if-ne v1, v4, :cond_5

    .line 135
    .line 136
    const/4 v3, 0x1

    .line 137
    :cond_5
    if-eqz v3, :cond_6

    .line 138
    .line 139
    invoke-static {}, Lcom/byazt/z/sp;->c()Lcom/byazt/z/sp;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, v2, v0}, Lcom/byazt/z/sp;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    iget-object v0, p0, Lcom/byazt/z/DownloadReceiver$1;->ve:Lcom/byazt/z/DownloadReceiver;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/byazt/z/DownloadReceiver;->c(Lcom/byazt/z/DownloadReceiver;)Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v1, Lcom/byazt/z/DownloadReceiver$1$1;

    .line 153
    .line 154
    invoke-direct {v1, p0, v2}, Lcom/byazt/z/DownloadReceiver$1$1;-><init>(Lcom/byazt/z/DownloadReceiver$1;Lcom/byazt/t/DownloadInfo;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v2, 0x3e8

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    :cond_7
    return-void
.end method
