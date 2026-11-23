.class public Lcom/github/snowdream/android/app/downloader/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static C:Ljava/lang/String; = null

.field private static final z:Ljava/lang/String; = "a"


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/io/InputStream;

.field j:Ljava/io/RandomAccessFile;

.field k:Ljava/io/InputStream;

.field l:Ljava/io/RandomAccessFile;

.field m:Ljava/net/HttpURLConnection;

.field n:Ljava/net/HttpURLConnection;

.field o:Ljava/net/HttpURLConnection;

.field p:Ljava/net/HttpURLConnection;

.field q:Ljava/io/File;

.field r:Ljava/io/File;

.field s:J

.field t:J

.field u:J

.field v:J

.field w:Ljava/lang/String;

.field x:Z

.field y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "_url",
            "_id",
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/InputStream;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/InputStream;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->x:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    .line 39
    .line 40
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    cmp-long v5, v0, v2

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcom/join/mgps/event/p;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, v1, v4}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 44
    .line 45
    sub-long/2addr v1, v5

    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/a;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 58
    .line 59
    sub-long/2addr v1, v5

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/join/mgps/event/p;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "downloadStartError"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "duration",
            "interrupt"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setInterrupt(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 p3, 0x5

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    const-wide/16 p2, 0x64

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_1
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_2
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_1
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_2
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_2
    return-void
.end method

.method private h(Ljava/net/HttpURLConnection;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v2, "Content-Length"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :goto_1
    return-wide v0

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0
.end method

.method private l(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    const-string v0, "skip"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, v1}, Lb7/i;->r1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/GameMD5ResultInfo;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMD5ResultInfo;->getInfo()Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/join/mgps/dto/GameMD5ResultInfo;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMD5ResultInfo;->getInfo()Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;->getState()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p1

    .line 73
    :cond_0
    return-object v0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method private m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/join/mgps/event/p;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v3, 0x22

    .line 18
    .line 19
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v0, 0x28

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1b

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lcom/join/mgps/event/p;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v3, 0x23

    .line 19
    .line 20
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMobleNetNeedStop()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "[014]:gid="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method private o()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x3

    .line 4
    :goto_0
    if-lez v3, :cond_38

    .line 5
    .line 6
    iget-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 7
    .line 8
    if-nez v4, :cond_38

    .line 9
    .line 10
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v8, "readFileSize: "

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    if-eqz v7, :cond_2d

    .line 35
    .line 36
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 37
    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v9, "downStatus:"

    .line 44
    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 73
    .line 74
    .line 75
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-nez v8, :cond_1

    .line 77
    .line 78
    :try_start_1
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    .line 80
    invoke-static {v8}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object v2, v0

    .line 96
    move/from16 v16, v3

    .line 97
    .line 98
    :goto_1
    const/4 v3, 0x3

    .line 99
    goto/16 :goto_20

    .line 100
    .line 101
    :cond_1
    :goto_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v7}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v9, ".mod"

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    sget-object v10, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v10, "mod/"

    .line 133
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 138
    .line 139
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v10, "/"

    .line 147
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    const-string v10, ""

    .line 163
    .line 164
    if-eqz v9, :cond_2

    .line 165
    .line 166
    move-object v8, v10

    .line 167
    :cond_2
    :try_start_3
    new-instance v9, Ljava/io/File;

    .line 168
    .line 169
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iput-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 173
    .line 174
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-instance v9, Ljava/io/File;

    .line 181
    .line 182
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iput-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v8

    .line 191
    iput-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 192
    .line 193
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 194
    .line 195
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 196
    .line 197
    .line 198
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    const-string v9, "openConnection first... "

    .line 200
    .line 201
    const-string v11, ",err:"

    .line 202
    .line 203
    const-string v13, "audio/x-mod"

    .line 204
    .line 205
    const-string v14, "application/zip"

    .line 206
    .line 207
    const-string v15, "application/vnd.android.package-archive"

    .line 208
    .line 209
    const-string v4, "application/octet-stream"

    .line 210
    .line 211
    const-string v5, "Content-Type"

    .line 212
    .line 213
    const-string v6, "GET"

    .line 214
    .line 215
    const-string v12, "Keep-Alive"

    .line 216
    .line 217
    const-string v2, "Connection"

    .line 218
    .line 219
    move/from16 v16, v3

    .line 220
    .line 221
    const/4 v3, 0x1

    .line 222
    if-eqz v8, :cond_4

    .line 223
    .line 224
    :try_start_4
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 225
    .line 226
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-eq v8, v3, :cond_4

    .line 231
    .line 232
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 233
    .line 234
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    const/4 v3, 0x3

    .line 239
    if-ne v8, v3, :cond_3

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_3
    const/4 v3, 0x1

    .line 243
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    .line 245
    move-object/from16 v18, v10

    .line 246
    .line 247
    move-object/from16 v17, v11

    .line 248
    .line 249
    goto/16 :goto_b

    .line 250
    .line 251
    :catch_1
    move-exception v0

    .line 252
    move-object v2, v0

    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_4
    :goto_4
    :try_start_5
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 265
    if-nez v3, :cond_10

    .line 266
    .line 267
    :try_start_6
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_5

    .line 274
    .line 275
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 276
    .line 277
    move-object v8, v10

    .line 278
    move-object/from16 v17, v11

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 281
    .line 282
    .line 283
    move-result-wide v10

    .line 284
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_5
    move-object v8, v10

    .line 288
    move-object/from16 v17, v11

    .line 289
    .line 290
    :goto_5
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 291
    .line 292
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 293
    .line 294
    invoke-virtual {v3, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Ljava/net/URL;

    .line 298
    .line 299
    invoke-direct {v3, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 318
    .line 319
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 320
    .line 321
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    new-instance v7, Lcom/join/mgps/event/p;

    .line 326
    .line 327
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 328
    .line 329
    const/16 v11, 0x15

    .line 330
    .line 331
    invoke-direct {v7, v10, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 338
    .line 339
    const/16 v7, 0x3e8

    .line 340
    .line 341
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 345
    .line 346
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 347
    .line 348
    .line 349
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 350
    .line 351
    invoke-virtual {v3, v2, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 355
    .line 356
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string v10, "openConnection ... status="

    .line 371
    .line 372
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 379
    .line 380
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 381
    .line 382
    .line 383
    const/16 v7, 0xc8

    .line 384
    .line 385
    if-ne v3, v7, :cond_8

    .line 386
    .line 387
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 388
    .line 389
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-eqz v7, :cond_6

    .line 398
    .line 399
    move-object v3, v8

    .line 400
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-nez v7, :cond_7

    .line 409
    .line 410
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-nez v7, :cond_7

    .line 415
    .line 416
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-nez v7, :cond_7

    .line 421
    .line 422
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-nez v3, :cond_7

    .line 427
    .line 428
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 429
    .line 430
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 431
    .line 432
    .line 433
    move-result-wide v10

    .line 434
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    move-object/from16 v18, v8

    .line 441
    .line 442
    int-to-long v7, v3

    .line 443
    cmp-long v3, v10, v7

    .line 444
    .line 445
    if-nez v3, :cond_f

    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_7
    move-object/from16 v18, v8

    .line 449
    .line 450
    :goto_6
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 451
    .line 452
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->h(Ljava/net/HttpURLConnection;)J

    .line 453
    .line 454
    .line 455
    move-result-wide v7

    .line 456
    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 457
    .line 458
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 459
    .line 460
    invoke-virtual {v3, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 461
    .line 462
    .line 463
    const/4 v3, 0x1

    .line 464
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Z

    .line 465
    .line 466
    goto/16 :goto_a

    .line 467
    .line 468
    :cond_8
    move-object/from16 v18, v8

    .line 469
    .line 470
    const/16 v7, 0x12e

    .line 471
    .line 472
    if-eq v3, v7, :cond_c

    .line 473
    .line 474
    const/16 v7, 0x12d

    .line 475
    .line 476
    if-eq v3, v7, :cond_c

    .line 477
    .line 478
    const/16 v7, 0x12f

    .line 479
    .line 480
    if-ne v3, v7, :cond_9

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v8, "[016]:gid="

    .line 489
    .line 490
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 494
    .line 495
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    move-object/from16 v8, v17

    .line 503
    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 508
    .line 509
    if-eqz v10, :cond_a

    .line 510
    .line 511
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    goto :goto_7

    .line 516
    :cond_a
    move-object/from16 v10, v18

    .line 517
    .line 518
    :goto_7
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v10, ",status:"

    .line 522
    .line 523
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    :cond_b
    move-object/from16 v17, v8

    .line 537
    .line 538
    goto/16 :goto_a

    .line 539
    .line 540
    :cond_c
    :goto_8
    move-object/from16 v8, v17

    .line 541
    .line 542
    new-instance v3, Ljava/net/URL;

    .line 543
    .line 544
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 545
    .line 546
    const-string v10, "Location"

    .line 547
    .line 548
    invoke-virtual {v7, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    invoke-direct {v3, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 560
    .line 561
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 562
    .line 563
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    new-instance v7, Lcom/join/mgps/event/p;

    .line 568
    .line 569
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 570
    .line 571
    const/16 v11, 0x15

    .line 572
    .line 573
    invoke-direct {v7, v10, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 580
    .line 581
    const/16 v7, 0x3e8

    .line 582
    .line 583
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 584
    .line 585
    .line 586
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 587
    .line 588
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 592
    .line 593
    invoke-virtual {v3, v2, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 597
    .line 598
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 602
    .line 603
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 608
    .line 609
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 610
    .line 611
    .line 612
    const/16 v7, 0xc8

    .line 613
    .line 614
    if-ne v3, v7, :cond_b

    .line 615
    .line 616
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 617
    .line 618
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    if-eqz v7, :cond_d

    .line 627
    .line 628
    move-object/from16 v3, v18

    .line 629
    .line 630
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    if-nez v7, :cond_e

    .line 639
    .line 640
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v7

    .line 644
    if-nez v7, :cond_e

    .line 645
    .line 646
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-nez v7, :cond_e

    .line 651
    .line 652
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-nez v3, :cond_e

    .line 657
    .line 658
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 659
    .line 660
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 661
    .line 662
    .line 663
    move-result-wide v10

    .line 664
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 665
    .line 666
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    move-object/from16 v17, v8

    .line 671
    .line 672
    int-to-long v7, v3

    .line 673
    cmp-long v3, v10, v7

    .line 674
    .line 675
    if-nez v3, :cond_f

    .line 676
    .line 677
    goto :goto_9

    .line 678
    :cond_e
    move-object/from16 v17, v8

    .line 679
    .line 680
    :goto_9
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 681
    .line 682
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->h(Ljava/net/HttpURLConnection;)J

    .line 683
    .line 684
    .line 685
    move-result-wide v7

    .line 686
    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 687
    .line 688
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 689
    .line 690
    invoke-virtual {v3, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 691
    .line 692
    .line 693
    const/4 v3, 0x1

    .line 694
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 695
    .line 696
    :cond_f
    :goto_a
    :try_start_7
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 697
    .line 698
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 699
    .line 700
    .line 701
    goto :goto_b

    .line 702
    :catch_2
    move-exception v0

    .line 703
    move-object v3, v0

    .line 704
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 705
    .line 706
    .line 707
    goto :goto_b

    .line 708
    :cond_10
    move-object/from16 v18, v10

    .line 709
    .line 710
    move-object/from16 v17, v11

    .line 711
    .line 712
    const/4 v3, 0x1

    .line 713
    :try_start_9
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Z

    .line 714
    .line 715
    :goto_b
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 716
    .line 717
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 718
    .line 719
    .line 720
    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 721
    const/4 v8, 0x2

    .line 722
    if-eqz v3, :cond_12

    .line 723
    .line 724
    :try_start_a
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 725
    .line 726
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-ne v3, v8, :cond_11

    .line 731
    .line 732
    goto :goto_c

    .line 733
    :cond_11
    const/4 v3, 0x1

    .line 734
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 735
    .line 736
    move-object/from16 v11, v18

    .line 737
    .line 738
    goto/16 :goto_19

    .line 739
    .line 740
    :cond_12
    :goto_c
    :try_start_b
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 741
    .line 742
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 747
    .line 748
    .line 749
    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 750
    if-nez v3, :cond_28

    .line 751
    .line 752
    :try_start_c
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 753
    .line 754
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    if-eqz v3, :cond_13

    .line 759
    .line 760
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 763
    .line 764
    .line 765
    move-result-wide v10

    .line 766
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 767
    .line 768
    goto :goto_d

    .line 769
    :cond_13
    const-wide/16 v10, 0x0

    .line 770
    .line 771
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 772
    .line 773
    :goto_d
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 774
    .line 775
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    new-instance v10, Ljava/net/URL;

    .line 780
    .line 781
    invoke-direct {v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 800
    .line 801
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 802
    .line 803
    const/16 v9, 0x3e8

    .line 804
    .line 805
    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 806
    .line 807
    .line 808
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 809
    .line 810
    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 811
    .line 812
    .line 813
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 814
    .line 815
    invoke-virtual {v3, v2, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 819
    .line 820
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    sget-object v3, Lcom/join/mgps/Util/z;->t:Ljava/lang/String;

    .line 824
    .line 825
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 826
    .line 827
    .line 828
    move-result v9

    .line 829
    if-eqz v9, :cond_15

    .line 830
    .line 831
    const-string v9, ","

    .line 832
    .line 833
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    array-length v9, v3

    .line 838
    const/4 v10, 0x0

    .line 839
    :goto_e
    if-ge v10, v9, :cond_15

    .line 840
    .line 841
    aget-object v11, v3, v10

    .line 842
    .line 843
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 844
    .line 845
    invoke-virtual {v7, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 850
    .line 851
    .line 852
    move-result v11

    .line 853
    if-eqz v11, :cond_14

    .line 854
    .line 855
    const-string v3, "\""

    .line 856
    .line 857
    move-object/from16 v11, v18

    .line 858
    .line 859
    invoke-virtual {v7, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 864
    .line 865
    goto :goto_f

    .line 866
    :cond_14
    move-object/from16 v11, v18

    .line 867
    .line 868
    add-int/lit8 v10, v10, 0x1

    .line 869
    .line 870
    goto :goto_e

    .line 871
    :cond_15
    move-object/from16 v11, v18

    .line 872
    .line 873
    :goto_f
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 874
    .line 875
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 880
    .line 881
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 882
    .line 883
    .line 884
    const/16 v7, 0xc8

    .line 885
    .line 886
    if-ne v3, v7, :cond_1c

    .line 887
    .line 888
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 889
    .line 890
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_16

    .line 899
    .line 900
    move-object v2, v11

    .line 901
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    if-nez v3, :cond_1b

    .line 910
    .line 911
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    if-nez v3, :cond_1b

    .line 916
    .line 917
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    if-nez v3, :cond_1b

    .line 922
    .line 923
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    if-nez v2, :cond_1b

    .line 928
    .line 929
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 930
    .line 931
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 932
    .line 933
    .line 934
    move-result-wide v2

    .line 935
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 936
    .line 937
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    .line 938
    .line 939
    .line 940
    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 941
    int-to-long v4, v4

    .line 942
    cmp-long v6, v2, v4

    .line 943
    .line 944
    if-nez v6, :cond_17

    .line 945
    .line 946
    goto :goto_12

    .line 947
    :cond_17
    :try_start_d
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 948
    .line 949
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 950
    .line 951
    .line 952
    goto :goto_10

    .line 953
    :catch_3
    move-exception v0

    .line 954
    move-object v2, v0

    .line 955
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 956
    .line 957
    .line 958
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .line 962
    .line 963
    const-string v3, "[002]:gid="

    .line 964
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 969
    .line 970
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 982
    .line 983
    .line 984
    :try_start_f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 985
    .line 986
    if-eqz v2, :cond_18

    .line 987
    .line 988
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 989
    .line 990
    .line 991
    const/4 v2, 0x0

    .line 992
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 993
    .line 994
    :cond_18
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 995
    .line 996
    if-eqz v2, :cond_19

    .line 997
    .line 998
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 999
    .line 1000
    .line 1001
    const/4 v2, 0x0

    .line 1002
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1003
    .line 1004
    :cond_19
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1005
    .line 1006
    if-nez v2, :cond_1a

    .line 1007
    .line 1008
    const-wide/16 v2, 0x4b0

    .line 1009
    .line 1010
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 1011
    .line 1012
    .line 1013
    goto :goto_11

    .line 1014
    :catch_4
    move-exception v0

    .line 1015
    move-object v2, v0

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1017
    .line 1018
    .line 1019
    :cond_1a
    :goto_11
    return-void

    .line 1020
    :cond_1b
    :goto_12
    :try_start_10
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1021
    .line 1022
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->h(Ljava/net/HttpURLConnection;)J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v2

    .line 1026
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1027
    .line 1028
    const/4 v2, 0x1

    .line 1029
    iput-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    .line 1030
    .line 1031
    goto/16 :goto_18

    .line 1032
    .line 1033
    :cond_1c
    const/16 v7, 0x12e

    .line 1034
    .line 1035
    if-eq v3, v7, :cond_1f

    .line 1036
    .line 1037
    const/16 v7, 0x12d

    .line 1038
    .line 1039
    if-eq v3, v7, :cond_1f

    .line 1040
    .line 1041
    const/16 v7, 0x12f

    .line 1042
    .line 1043
    if-ne v3, v7, :cond_1d

    .line 1044
    .line 1045
    goto :goto_14

    .line 1046
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .line 1050
    .line 1051
    const-string v4, "[015]:gid="

    .line 1052
    .line 1053
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1057
    .line 1058
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    move-object/from16 v7, v17

    .line 1066
    .line 1067
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1071
    .line 1072
    if-eqz v4, :cond_1e

    .line 1073
    .line 1074
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    goto :goto_13

    .line 1079
    :cond_1e
    move-object v4, v11

    .line 1080
    :goto_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const-string v4, ",status:"

    .line 1084
    .line 1085
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_18

    .line 1099
    .line 1100
    :cond_1f
    :goto_14
    move-object/from16 v7, v17

    .line 1101
    .line 1102
    new-instance v3, Ljava/net/URL;

    .line 1103
    .line 1104
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1105
    .line 1106
    const-string v10, "Location"

    .line 1107
    .line 1108
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v9

    .line 1112
    invoke-direct {v3, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1120
    .line 1121
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1122
    .line 1123
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    new-instance v9, Lcom/join/mgps/event/p;

    .line 1128
    .line 1129
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1130
    .line 1131
    const/16 v8, 0x15

    .line 1132
    .line 1133
    invoke-direct {v9, v10, v8}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3, v9}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1137
    .line 1138
    .line 1139
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1140
    .line 1141
    const/16 v8, 0x3e8

    .line 1142
    .line 1143
    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1144
    .line 1145
    .line 1146
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1147
    .line 1148
    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1152
    .line 1153
    invoke-virtual {v3, v2, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1157
    .line 1158
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1162
    .line 1163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 1164
    .line 1165
    .line 1166
    move-result v2

    .line 1167
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1168
    .line 1169
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 1170
    .line 1171
    .line 1172
    const/16 v3, 0xc8

    .line 1173
    .line 1174
    if-ne v2, v3, :cond_27

    .line 1175
    .line 1176
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1177
    .line 1178
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    if-eqz v3, :cond_20

    .line 1187
    .line 1188
    move-object v2, v11

    .line 1189
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v3

    .line 1197
    if-nez v3, :cond_26

    .line 1198
    .line 1199
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v3

    .line 1203
    if-nez v3, :cond_26

    .line 1204
    .line 1205
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v3

    .line 1209
    if-nez v3, :cond_26

    .line 1210
    .line 1211
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v2

    .line 1215
    if-nez v2, :cond_26

    .line 1216
    .line 1217
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1218
    .line 1219
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v2

    .line 1223
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1224
    .line 1225
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    .line 1226
    .line 1227
    .line 1228
    move-result v4

    .line 1229
    int-to-long v4, v4

    .line 1230
    cmp-long v6, v2, v4

    .line 1231
    .line 1232
    if-nez v6, :cond_21

    .line 1233
    .line 1234
    goto :goto_17

    .line 1235
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .line 1239
    .line 1240
    const-string v3, "[003]:gid="

    .line 1241
    .line 1242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1246
    .line 1247
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1258
    .line 1259
    if-eqz v3, :cond_22

    .line 1260
    .line 1261
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v10

    .line 1265
    goto :goto_15

    .line 1266
    :cond_22
    move-object v10, v11

    .line 1267
    :goto_15
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1275
    .line 1276
    .line 1277
    :try_start_11
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1278
    .line 1279
    if-eqz v2, :cond_23

    .line 1280
    .line 1281
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1282
    .line 1283
    .line 1284
    const/4 v2, 0x0

    .line 1285
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1286
    .line 1287
    :cond_23
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1288
    .line 1289
    if-eqz v2, :cond_24

    .line 1290
    .line 1291
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1292
    .line 1293
    .line 1294
    const/4 v2, 0x0

    .line 1295
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1296
    .line 1297
    :cond_24
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1298
    .line 1299
    if-nez v2, :cond_25

    .line 1300
    .line 1301
    const-wide/16 v2, 0x4b0

    .line 1302
    .line 1303
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 1304
    .line 1305
    .line 1306
    goto :goto_16

    .line 1307
    :catch_5
    move-exception v0

    .line 1308
    move-object v2, v0

    .line 1309
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1310
    .line 1311
    .line 1312
    :cond_25
    :goto_16
    return-void

    .line 1313
    :cond_26
    :goto_17
    :try_start_12
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1314
    .line 1315
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->h(Ljava/net/HttpURLConnection;)J

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v2

    .line 1319
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1320
    .line 1321
    const/4 v2, 0x1

    .line 1322
    iput-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1323
    .line 1324
    :cond_27
    :goto_18
    :try_start_13
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1325
    .line 1326
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1327
    .line 1328
    .line 1329
    goto :goto_19

    .line 1330
    :catch_6
    move-exception v0

    .line 1331
    move-object v2, v0

    .line 1332
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1333
    .line 1334
    .line 1335
    goto :goto_19

    .line 1336
    :cond_28
    move-object/from16 v11, v18

    .line 1337
    .line 1338
    const/4 v2, 0x1

    .line 1339
    :try_start_15
    iput-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    .line 1340
    .line 1341
    :goto_19
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1342
    .line 1343
    if-eqz v2, :cond_29

    .line 1344
    .line 1345
    :try_start_16
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1346
    .line 1347
    if-eqz v2, :cond_29

    .line 1348
    .line 1349
    const/4 v3, 0x1

    .line 1350
    goto :goto_1a

    .line 1351
    :cond_29
    const/4 v3, 0x0

    .line 1352
    :goto_1a
    :try_start_17
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1353
    .line 1354
    if-eqz v3, :cond_2e

    .line 1355
    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1359
    .line 1360
    .line 1361
    const-string v3, "readFileSize22222: "

    .line 1362
    .line 1363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1367
    .line 1368
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    const-string v3, "----readResSize:"

    .line 1372
    .line 1373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1377
    .line 1378
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1382
    .line 1383
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1384
    .line 1385
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1386
    .line 1387
    add-long/2addr v3, v5

    .line 1388
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 1389
    .line 1390
    .line 1391
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1392
    .line 1393
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1396
    .line 1397
    .line 1398
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1399
    .line 1400
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1401
    .line 1402
    add-long/2addr v4, v6

    .line 1403
    long-to-float v4, v4

    .line 1404
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1405
    .line 1406
    mul-float v4, v4, v5

    .line 1407
    .line 1408
    const/high16 v5, 0x44800000    # 1024.0f

    .line 1409
    .line 1410
    div-float/2addr v4, v5

    .line 1411
    div-float/2addr v4, v5

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1428
    .line 1429
    .line 1430
    const-string v3, "setShowSize:"

    .line 1431
    .line 1432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1436
    .line 1437
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    const-string v3, "curResSize:"

    .line 1445
    .line 1446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1450
    .line 1451
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    .line 1454
    const-string v3, "curFileSize:"

    .line 1455
    .line 1456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1460
    .line 1461
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    const-string v3, "currentTotal:"

    .line 1465
    .line 1466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1470
    .line 1471
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1472
    .line 1473
    add-long/2addr v3, v5

    .line 1474
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    const-string v3, "totalFile:"

    .line 1478
    .line 1479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1483
    .line 1484
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1485
    .line 1486
    add-long/2addr v3, v5

    .line 1487
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1491
    .line 1492
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1493
    .line 1494
    .line 1495
    move-result v2

    .line 1496
    if-eqz v2, :cond_2a

    .line 1497
    .line 1498
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1499
    .line 1500
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1501
    .line 1502
    .line 1503
    move-result v2

    .line 1504
    const/4 v3, 0x1

    .line 1505
    if-eq v2, v3, :cond_2a

    .line 1506
    .line 1507
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1508
    .line 1509
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1510
    .line 1511
    .line 1512
    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1513
    const/4 v3, 0x3

    .line 1514
    if-ne v2, v3, :cond_2b

    .line 1515
    .line 1516
    goto :goto_1b

    .line 1517
    :cond_2a
    const/4 v3, 0x3

    .line 1518
    :goto_1b
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->g()V

    .line 1519
    .line 1520
    .line 1521
    :cond_2b
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1522
    .line 1523
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1524
    .line 1525
    .line 1526
    move-result v2

    .line 1527
    if-eqz v2, :cond_2c

    .line 1528
    .line 1529
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1530
    .line 1531
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1532
    .line 1533
    .line 1534
    move-result v2

    .line 1535
    const/4 v4, 0x2

    .line 1536
    if-ne v2, v4, :cond_2f

    .line 1537
    .line 1538
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->e()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1539
    .line 1540
    .line 1541
    goto :goto_1c

    .line 1542
    :catch_7
    move-exception v0

    .line 1543
    goto :goto_1f

    .line 1544
    :catch_8
    move-exception v0

    .line 1545
    goto :goto_1e

    .line 1546
    :cond_2d
    move/from16 v16, v3

    .line 1547
    .line 1548
    :cond_2e
    const/4 v3, 0x3

    .line 1549
    :cond_2f
    :goto_1c
    :try_start_19
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1550
    .line 1551
    if-eqz v2, :cond_30

    .line 1552
    .line 1553
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1554
    .line 1555
    .line 1556
    const/4 v2, 0x0

    .line 1557
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1558
    .line 1559
    :cond_30
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1560
    .line 1561
    if-eqz v2, :cond_31

    .line 1562
    .line 1563
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1564
    .line 1565
    .line 1566
    const/4 v2, 0x0

    .line 1567
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1568
    .line 1569
    :cond_31
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1570
    .line 1571
    if-nez v2, :cond_34

    .line 1572
    .line 1573
    const-wide/16 v4, 0x4b0

    .line 1574
    .line 1575
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 1576
    .line 1577
    .line 1578
    :goto_1d
    add-int/lit8 v2, v16, -0x1

    .line 1579
    .line 1580
    goto :goto_22

    .line 1581
    :catch_9
    move-exception v0

    .line 1582
    move-object v2, v0

    .line 1583
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_21

    .line 1587
    :catchall_0
    move-exception v0

    .line 1588
    move-object v2, v0

    .line 1589
    goto :goto_23

    .line 1590
    :catch_a
    move-exception v0

    .line 1591
    move/from16 v16, v3

    .line 1592
    .line 1593
    :goto_1e
    const/4 v3, 0x3

    .line 1594
    :goto_1f
    move-object v2, v0

    .line 1595
    :goto_20
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1596
    .line 1597
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1598
    .line 1599
    .line 1600
    const-string v5, "[004]:gid="

    .line 1601
    .line 1602
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    .line 1604
    .line 1605
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1606
    .line 1607
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v5

    .line 1611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    const-string v5, "err:"

    .line 1615
    .line 1616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v5

    .line 1623
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v4

    .line 1630
    invoke-direct {v1, v4}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1634
    .line 1635
    .line 1636
    :try_start_1b
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1637
    .line 1638
    if-eqz v2, :cond_32

    .line 1639
    .line 1640
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1641
    .line 1642
    .line 1643
    const/4 v2, 0x0

    .line 1644
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1645
    .line 1646
    :cond_32
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1647
    .line 1648
    if-eqz v2, :cond_33

    .line 1649
    .line 1650
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1651
    .line 1652
    .line 1653
    const/4 v2, 0x0

    .line 1654
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1655
    .line 1656
    :cond_33
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1657
    .line 1658
    if-nez v2, :cond_34

    .line 1659
    .line 1660
    const-wide/16 v4, 0x4b0

    .line 1661
    .line 1662
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 1663
    .line 1664
    .line 1665
    goto :goto_1d

    .line 1666
    :cond_34
    :goto_21
    move/from16 v2, v16

    .line 1667
    .line 1668
    :goto_22
    move v3, v2

    .line 1669
    goto/16 :goto_0

    .line 1670
    .line 1671
    :goto_23
    :try_start_1c
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1672
    .line 1673
    if-eqz v3, :cond_35

    .line 1674
    .line 1675
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1676
    .line 1677
    .line 1678
    const/4 v3, 0x0

    .line 1679
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 1680
    .line 1681
    :cond_35
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1682
    .line 1683
    if-eqz v3, :cond_36

    .line 1684
    .line 1685
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1686
    .line 1687
    .line 1688
    const/4 v3, 0x0

    .line 1689
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 1690
    .line 1691
    :cond_36
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1692
    .line 1693
    if-nez v3, :cond_37

    .line 1694
    .line 1695
    const-wide/16 v3, 0x4b0

    .line 1696
    .line 1697
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    .line 1698
    .line 1699
    .line 1700
    goto :goto_24

    .line 1701
    :catch_b
    move-exception v0

    .line 1702
    move-object v3, v0

    .line 1703
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1704
    .line 1705
    .line 1706
    :cond_37
    :goto_24
    throw v2

    .line 1707
    :cond_38
    move/from16 v16, v3

    .line 1708
    .line 1709
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 1710
    .line 1711
    if-nez v2, :cond_39

    .line 1712
    .line 1713
    if-gtz v16, :cond_39

    .line 1714
    .line 1715
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1718
    .line 1719
    .line 1720
    const-string v3, "[005]:gid="

    .line 1721
    .line 1722
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1726
    .line 1727
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v3

    .line 1731
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v2

    .line 1738
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    :cond_39
    return-void
.end method

.method private p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "duration"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 p3, 0x5

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    const-wide/16 p2, 0x64

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "duration",
            "interrupt"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setInterrupt(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 p3, 0x5

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    const-wide/16 p2, 0x64

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method e()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "GET"

    .line 4
    .line 5
    const-string v3, "Keep-Alive"

    .line 6
    .line 7
    const-string v4, "Connection"

    .line 8
    .line 9
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    if-eqz v5, :cond_48

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2e

    .line 24
    .line 25
    :cond_0
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v6, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    :goto_0
    if-lez v6, :cond_47

    .line 40
    .line 41
    :try_start_0
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v10, "tryCount="

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-direct {v1, v9}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_46

    .line 73
    .line 74
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-direct {v1, v9}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_1

    .line 81
    .line 82
    goto/16 :goto_29

    .line 83
    .line 84
    :cond_1
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 85
    .line 86
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    const-wide/16 v13, 0x0

    .line 89
    .line 90
    cmp-long v15, v9, v11

    .line 91
    .line 92
    if-lez v15, :cond_3

    .line 93
    .line 94
    :try_start_1
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 103
    .line 104
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 108
    .line 109
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 112
    .line 113
    invoke-virtual {v9, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 114
    .line 115
    .line 116
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 117
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 123
    .line 124
    sub-long/2addr v10, v13

    .line 125
    invoke-direct {v1, v9, v10, v11}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :goto_1
    move-object v7, v2

    .line 131
    move-object v12, v3

    .line 132
    move-object v13, v4

    .line 133
    goto/16 :goto_2a

    .line 134
    .line 135
    :cond_3
    :goto_2
    :try_start_2
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    const/4 v11, 0x5

    .line 138
    const/16 v12, 0x1f

    .line 139
    .line 140
    const-wide/16 v13, 0x0

    .line 141
    .line 142
    cmp-long v17, v9, v13

    .line 143
    .line 144
    if-lez v17, :cond_5

    .line 145
    .line 146
    :try_start_3
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 147
    .line 148
    cmp-long v17, v9, v13

    .line 149
    .line 150
    if-nez v17, :cond_5

    .line 151
    .line 152
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 159
    .line 160
    sub-long/2addr v8, v13

    .line 161
    invoke-direct {v1, v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    new-instance v8, Lcom/join/mgps/event/p;

    .line 169
    .line 170
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v8, v9, v12}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v7, Lcom/MApplication;->z:Lcom/MApplication;

    .line 179
    .line 180
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 181
    .line 182
    invoke-static {v7, v8, v11}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 183
    .line 184
    .line 185
    sget-boolean v7, Lcom/MApplication;->q1:Z

    .line 186
    .line 187
    if-eqz v7, :cond_4

    .line 188
    .line 189
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 194
    .line 195
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v7, v8}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_5
    :try_start_4
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 207
    .line 208
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    new-instance v10, Ljava/net/URL;

    .line 213
    .line 214
    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 218
    .line 219
    invoke-direct {v1, v13}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-nez v13, :cond_45

    .line 224
    .line 225
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 226
    .line 227
    invoke-direct {v1, v13}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    if-eqz v13, :cond_6

    .line 232
    .line 233
    goto/16 :goto_28

    .line 234
    .line 235
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    new-instance v14, Lcom/join/mgps/event/p;

    .line 240
    .line 241
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 242
    .line 243
    const/16 v11, 0x16

    .line 244
    .line 245
    invoke-direct {v14, v15, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v14}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    check-cast v10, Ljava/net/HttpURLConnection;

    .line 256
    .line 257
    iput-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 258
    .line 259
    const/16 v11, 0x1388

    .line 260
    .line 261
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 262
    .line 263
    .line 264
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 265
    .line 266
    const/16 v13, 0x2710

    .line 267
    .line 268
    invoke-virtual {v10, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 269
    .line 270
    .line 271
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 272
    .line 273
    invoke-virtual {v10, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 277
    .line 278
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    .line 283
    const-string v10, "-"

    .line 284
    .line 285
    const-string v12, "bytes="

    .line 286
    .line 287
    const-string v13, "Range"

    .line 288
    .line 289
    const-string v11, "set connection property:range="

    .line 290
    .line 291
    const-wide/16 v16, 0x0

    .line 292
    .line 293
    cmp-long v18, v14, v16

    .line 294
    .line 295
    if-lez v18, :cond_7

    .line 296
    .line 297
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    .line 304
    .line 305
    move-object/from16 v17, v5

    .line 306
    .line 307
    move/from16 v18, v6

    .line 308
    .line 309
    :try_start_6
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 310
    .line 311
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 315
    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 325
    .line 326
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v5, v13, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :catch_1
    move-exception v0

    .line 341
    move-object v7, v2

    .line 342
    move-object v12, v3

    .line 343
    move-object v13, v4

    .line 344
    move-object/from16 v5, v17

    .line 345
    .line 346
    move/from16 v6, v18

    .line 347
    .line 348
    goto/16 :goto_2a

    .line 349
    .line 350
    :catch_2
    move-exception v0

    .line 351
    move-object/from16 v17, v5

    .line 352
    .line 353
    move/from16 v18, v6

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_7
    move-object/from16 v17, v5

    .line 358
    .line 359
    move/from16 v18, v6

    .line 360
    .line 361
    :goto_3
    :try_start_7
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v14, "HTTP STATUS CODE: "

    .line 373
    .line 374
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 378
    .line 379
    .line 380
    const/16 v6, 0xc8

    .line 381
    .line 382
    const-string v14, ""

    .line 383
    .line 384
    if-eq v5, v6, :cond_e

    .line 385
    .line 386
    const/16 v15, 0xce

    .line 387
    .line 388
    if-eq v5, v15, :cond_e

    .line 389
    .line 390
    packed-switch v5, :pswitch_data_0

    .line 391
    .line 392
    .line 393
    move-object v12, v3

    .line 394
    move-object v13, v4

    .line 395
    move-object v11, v7

    .line 396
    const/4 v15, 0x0

    .line 397
    move-object v7, v2

    .line 398
    const/4 v2, 0x0

    .line 399
    goto/16 :goto_b

    .line 400
    .line 401
    :pswitch_0
    :try_start_8
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 402
    .line 403
    const-string v9, "Location"

    .line 404
    .line 405
    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 410
    .line 411
    const-string v15, "Set-Cookie"

    .line 412
    .line 413
    invoke-virtual {v5, v15}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 417
    :try_start_9
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 418
    .line 419
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :catch_3
    move-exception v0

    .line 424
    move-object v15, v0

    .line 425
    :try_start_a
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    .line 427
    .line 428
    :goto_4
    new-instance v15, Ljava/net/URL;

    .line 429
    .line 430
    invoke-direct {v15, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 434
    .line 435
    .line 436
    move-result-object v15

    .line 437
    check-cast v15, Ljava/net/HttpURLConnection;

    .line 438
    .line 439
    iput-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 440
    .line 441
    const/16 v6, 0x1388

    .line 442
    .line 443
    invoke-virtual {v15, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 444
    .line 445
    .line 446
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 447
    .line 448
    const/16 v15, 0x2710

    .line 449
    .line 450
    invoke-virtual {v6, v15}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 451
    .line 452
    .line 453
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 454
    .line 455
    invoke-virtual {v6, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 456
    .line 457
    .line 458
    if-eqz v5, :cond_8

    .line 459
    .line 460
    if-eq v5, v14, :cond_8

    .line 461
    .line 462
    :try_start_b
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 463
    .line 464
    const-string v15, "Cookie"

    .line 465
    .line 466
    invoke-virtual {v6, v15, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 467
    .line 468
    .line 469
    :cond_8
    :try_start_c
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 470
    .line 471
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 475
    .line 476
    const-wide/16 v19, 0x0

    .line 477
    .line 478
    cmp-long v15, v5, v19

    .line 479
    .line 480
    const/4 v6, 0x1

    .line 481
    if-lez v15, :cond_9

    .line 482
    .line 483
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    move-object v11, v7

    .line 492
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 493
    .line 494
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 498
    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 505
    .line 506
    .line 507
    move-object v7, v2

    .line 508
    move-object v12, v3

    .line 509
    :try_start_e
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 510
    .line 511
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-virtual {v5, v13, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :catch_4
    move-exception v0

    .line 526
    goto :goto_5

    .line 527
    :catch_5
    move-exception v0

    .line 528
    move-object v7, v2

    .line 529
    move-object v12, v3

    .line 530
    :goto_5
    move-object v2, v0

    .line 531
    move-object v13, v4

    .line 532
    goto/16 :goto_26

    .line 533
    .line 534
    :cond_9
    move-object v12, v3

    .line 535
    move-object v11, v7

    .line 536
    move-object v7, v2

    .line 537
    :goto_6
    :try_start_f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v3, "Redirect Url : "

    .line 549
    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const/16 v2, 0xc8

    .line 557
    .line 558
    if-ne v5, v2, :cond_d

    .line 559
    .line 560
    if-ne v5, v2, :cond_c

    .line 561
    .line 562
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 563
    .line 564
    move-object v6, v4

    .line 565
    move v10, v5

    .line 566
    const-wide/16 v4, 0x0

    .line 567
    .line 568
    cmp-long v13, v2, v4

    .line 569
    .line 570
    if-lez v13, :cond_b

    .line 571
    .line 572
    :try_start_10
    iput-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 573
    .line 574
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 575
    .line 576
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 577
    .line 578
    .line 579
    move-result v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 580
    if-eqz v4, :cond_a

    .line 581
    .line 582
    :try_start_11
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 583
    .line 584
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 585
    .line 586
    .line 587
    goto :goto_7

    .line 588
    :catch_6
    move-exception v0

    .line 589
    move-object v2, v0

    .line 590
    move-object v13, v6

    .line 591
    goto/16 :goto_26

    .line 592
    .line 593
    :cond_a
    :goto_7
    :try_start_12
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 594
    .line 595
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 596
    .line 597
    invoke-virtual {v4, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 598
    .line 599
    .line 600
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 601
    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 603
    .line 604
    .line 605
    move-result-wide v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 606
    move-object v13, v6

    .line 607
    :try_start_13
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 608
    .line 609
    sub-long/2addr v3, v5

    .line 610
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 611
    .line 612
    .line 613
    goto :goto_8

    .line 614
    :catch_7
    move-exception v0

    .line 615
    move-object v13, v6

    .line 616
    goto/16 :goto_25

    .line 617
    .line 618
    :cond_b
    move-object v13, v6

    .line 619
    goto :goto_8

    .line 620
    :cond_c
    move-object v13, v4

    .line 621
    move v10, v5

    .line 622
    :goto_8
    move v5, v10

    .line 623
    const/4 v2, 0x1

    .line 624
    goto :goto_9

    .line 625
    :cond_d
    move-object v13, v4

    .line 626
    move v10, v5

    .line 627
    const/4 v2, 0x0

    .line 628
    :goto_9
    const/4 v15, 0x1

    .line 629
    goto :goto_b

    .line 630
    :catch_8
    move-exception v0

    .line 631
    goto/16 :goto_24

    .line 632
    .line 633
    :cond_e
    move-object v12, v3

    .line 634
    move-object v13, v4

    .line 635
    move-object v11, v7

    .line 636
    move-object v7, v2

    .line 637
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 638
    .line 639
    const-string v3, "Transfer-Encoding"

    .line 640
    .line 641
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    if-nez v3, :cond_f

    .line 650
    .line 651
    const-string v3, "chunked"

    .line 652
    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    :cond_f
    const/16 v2, 0xc8

    .line 658
    .line 659
    if-ne v5, v2, :cond_12

    .line 660
    .line 661
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 662
    .line 663
    move v6, v5

    .line 664
    const-wide/16 v4, 0x0

    .line 665
    .line 666
    cmp-long v10, v2, v4

    .line 667
    .line 668
    if-lez v10, :cond_11

    .line 669
    .line 670
    iput-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 671
    .line 672
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 673
    .line 674
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    if-eqz v4, :cond_10

    .line 679
    .line 680
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 681
    .line 682
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 683
    .line 684
    .line 685
    :cond_10
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 686
    .line 687
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 688
    .line 689
    invoke-virtual {v4, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 690
    .line 691
    .line 692
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 693
    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 695
    .line 696
    .line 697
    move-result-wide v3

    .line 698
    move v10, v6

    .line 699
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 700
    .line 701
    sub-long/2addr v3, v5

    .line 702
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 703
    .line 704
    .line 705
    goto :goto_a

    .line 706
    :cond_11
    move v10, v6

    .line 707
    goto :goto_a

    .line 708
    :cond_12
    move v10, v5

    .line 709
    :goto_a
    move v5, v10

    .line 710
    const/4 v2, 0x1

    .line 711
    const/4 v15, 0x0

    .line 712
    :goto_b
    if-nez v15, :cond_13

    .line 713
    .line 714
    if-nez v2, :cond_13

    .line 715
    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    const-string v3, "[010]:gid"

    .line 722
    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 727
    .line 728
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string v3, ",err:status["

    .line 736
    .line 737
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v3, "],e["

    .line 744
    .line 745
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 749
    .line 750
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v3, "]"

    .line 758
    .line 759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 767
    .line 768
    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 770
    .line 771
    .line 772
    return-void

    .line 773
    :cond_13
    :try_start_14
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 774
    .line 775
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 780
    .line 781
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-static {v2, v3}, Lcom/papa/sim/statistic/s;->q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 793
    .line 794
    const-string v3, "Content-Type"

    .line 795
    .line 796
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    if-eqz v3, :cond_14

    .line 805
    .line 806
    move-object v2, v14

    .line 807
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    const-string v3, "application/octet-stream"

    .line 812
    .line 813
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    if-nez v3, :cond_17

    .line 818
    .line 819
    const-string v3, "application/vnd.android.package-archive"

    .line 820
    .line 821
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-nez v3, :cond_17

    .line 826
    .line 827
    const-string v3, "application/zip"

    .line 828
    .line 829
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-nez v3, :cond_17

    .line 834
    .line 835
    const-string v3, "audio/x-mod"

    .line 836
    .line 837
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v3

    .line 841
    if-nez v3, :cond_17

    .line 842
    .line 843
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 844
    .line 845
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 846
    .line 847
    .line 848
    move-result-wide v3

    .line 849
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 850
    .line 851
    cmp-long v10, v3, v5

    .line 852
    .line 853
    if-nez v10, :cond_15

    .line 854
    .line 855
    goto :goto_d

    .line 856
    :cond_15
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .line 860
    .line 861
    const-string v4, "contentTypeConnection error. "

    .line 862
    .line 863
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 870
    .line 871
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 872
    .line 873
    .line 874
    goto :goto_c

    .line 875
    :catch_9
    move-exception v0

    .line 876
    move-object v2, v0

    .line 877
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 878
    .line 879
    .line 880
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .line 884
    .line 885
    const-string v3, "[011]:gid="

    .line 886
    .line 887
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 891
    .line 892
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    const-string v3, "err:"

    .line 900
    .line 901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 905
    .line 906
    if-eqz v3, :cond_16

    .line 907
    .line 908
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v14

    .line 912
    :cond_16
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 920
    .line 921
    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 923
    .line 924
    .line 925
    return-void

    .line 926
    :cond_17
    :goto_d
    :try_start_17
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 927
    .line 928
    const/16 v4, 0x2d

    .line 929
    .line 930
    const-wide/16 v5, 0x0

    .line 931
    .line 932
    cmp-long v10, v2, v5

    .line 933
    .line 934
    if-nez v10, :cond_27

    .line 935
    .line 936
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 937
    .line 938
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    if-eq v8, v5, :cond_18

    .line 943
    .line 944
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 945
    .line 946
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 951
    .line 952
    invoke-virtual {v6, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMimeType(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    :cond_18
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    if-eqz v5, :cond_20

    .line 960
    .line 961
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 962
    .line 963
    const-string v6, "Content-Disposition"

    .line 964
    .line 965
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    if-eqz v5, :cond_1a

    .line 970
    .line 971
    const-string v6, "filename="

    .line 972
    .line 973
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    const/16 v8, 0x3b

    .line 978
    .line 979
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(II)I

    .line 980
    .line 981
    .line 982
    move-result v8

    .line 983
    add-int/lit8 v6, v6, 0x9

    .line 984
    .line 985
    if-lez v8, :cond_19

    .line 986
    .line 987
    goto :goto_e

    .line 988
    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 989
    .line 990
    .line 991
    move-result v8

    .line 992
    :goto_e
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    const-string v6, "\""

    .line 997
    .line 998
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v6

    .line 1002
    if-eqz v6, :cond_1b

    .line 1003
    .line 1004
    const-string v6, "\""

    .line 1005
    .line 1006
    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v5

    .line 1010
    goto :goto_f

    .line 1011
    :cond_1a
    const-string v5, "/"

    .line 1012
    .line 1013
    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    move-result v5

    .line 1017
    const/4 v6, 0x1

    .line 1018
    add-int/2addr v5, v6

    .line 1019
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1020
    .line 1021
    .line 1022
    move-result v6

    .line 1023
    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    :cond_1b
    :goto_f
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v6

    .line 1031
    if-nez v6, :cond_1c

    .line 1032
    .line 1033
    const-string v6, "nt"

    .line 1034
    .line 1035
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v6

    .line 1039
    if-eqz v6, :cond_1d

    .line 1040
    .line 1041
    :cond_1c
    const-string v5, "/"

    .line 1042
    .line 1043
    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v5

    .line 1047
    const/4 v6, 0x1

    .line 1048
    add-int/2addr v5, v6

    .line 1049
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1050
    .line 1051
    .line 1052
    move-result v6

    .line 1053
    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v5

    .line 1057
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1058
    .line 1059
    .line 1060
    move-result v6

    .line 1061
    const/16 v8, 0x32

    .line 1062
    .line 1063
    if-le v6, v8, :cond_1f

    .line 1064
    .line 1065
    const-string v6, "?"

    .line 1066
    .line 1067
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v6

    .line 1071
    if-eqz v6, :cond_1e

    .line 1072
    .line 1073
    const-string v6, "?"

    .line 1074
    .line 1075
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    move-result v6

    .line 1079
    const/4 v8, 0x0

    .line 1080
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v5

    .line 1084
    goto :goto_10

    .line 1085
    :cond_1e
    const/4 v6, 0x0

    .line 1086
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v5

    .line 1090
    :cond_1f
    :goto_10
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1091
    .line 1092
    invoke-virtual {v6, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setName(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    goto :goto_11

    .line 1096
    :cond_20
    move-object v5, v11

    .line 1097
    :goto_11
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v6

    .line 1101
    if-eqz v6, :cond_25

    .line 1102
    .line 1103
    sget-object v6, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 1104
    .line 1105
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v6

    .line 1109
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1110
    .line 1111
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v8

    .line 1115
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v6

    .line 1119
    if-nez v6, :cond_22

    .line 1120
    .line 1121
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1122
    .line 1123
    invoke-static {v6}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v6

    .line 1127
    if-eqz v6, :cond_21

    .line 1128
    .line 1129
    goto :goto_12

    .line 1130
    :cond_21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    sget-object v8, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 1136
    .line 1137
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1141
    .line 1142
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v8

    .line 1146
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    const-string v8, "/roms/"

    .line 1150
    .line 1151
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    goto :goto_13

    .line 1162
    :cond_22
    :goto_12
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .line 1166
    .line 1167
    sget-object v8, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 1168
    .line 1169
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    const-string v8, "apk/"

    .line 1173
    .line 1174
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1184
    :goto_13
    :try_start_18
    new-instance v6, Ljava/io/File;

    .line 1185
    .line 1186
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1190
    .line 1191
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v6

    .line 1195
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 1196
    .line 1197
    .line 1198
    move-result v8

    .line 1199
    if-nez v8, :cond_23

    .line 1200
    .line 1201
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1202
    .line 1203
    .line 1204
    move-result v6

    .line 1205
    if-nez v6, :cond_23

    .line 1206
    .line 1207
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    new-instance v3, Lcom/join/mgps/event/p;

    .line 1212
    .line 1213
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1214
    .line 1215
    const/16 v6, 0x20

    .line 1216
    .line 1217
    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1224
    .line 1225
    .line 1226
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 1227
    .line 1228
    .line 1229
    return-void

    .line 1230
    :cond_23
    :try_start_19
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1231
    .line 1232
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v6

    .line 1236
    if-nez v6, :cond_24

    .line 1237
    .line 1238
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1239
    .line 1240
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 1241
    .line 1242
    .line 1243
    :cond_24
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1244
    .line 1245
    invoke-virtual {v6, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_14

    .line 1249
    :cond_25
    move-object/from16 v5, v17

    .line 1250
    .line 1251
    :goto_14
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1252
    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1254
    .line 1255
    .line 1256
    move-result-wide v8

    .line 1257
    invoke-virtual {v6, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 1258
    .line 1259
    .line 1260
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1261
    .line 1262
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1263
    .line 1264
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 1265
    .line 1266
    .line 1267
    move-result-wide v10

    .line 1268
    cmp-long v6, v8, v10

    .line 1269
    .line 1270
    if-nez v6, :cond_28

    .line 1271
    .line 1272
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1273
    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v3

    .line 1278
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 1279
    .line 1280
    sub-long/2addr v3, v8

    .line 1281
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 1282
    .line 1283
    .line 1284
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v2

    .line 1288
    new-instance v3, Lcom/join/mgps/event/p;

    .line 1289
    .line 1290
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1291
    .line 1292
    const/16 v6, 0x1f

    .line 1293
    .line 1294
    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1298
    .line 1299
    .line 1300
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1301
    .line 1302
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1303
    .line 1304
    const/4 v4, 0x5

    .line 1305
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1306
    .line 1307
    .line 1308
    sget-boolean v2, Lcom/MApplication;->q1:Z

    .line 1309
    .line 1310
    if-eqz v2, :cond_26

    .line 1311
    .line 1312
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1317
    .line 1318
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v3

    .line 1322
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1323
    .line 1324
    .line 1325
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 1326
    .line 1327
    .line 1328
    return-void

    .line 1329
    :cond_27
    move-object/from16 v5, v17

    .line 1330
    .line 1331
    :cond_28
    :try_start_1a
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1332
    .line 1333
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6

    .line 1337
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 1338
    .line 1339
    .line 1340
    move-result v8
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1341
    if-nez v8, :cond_29

    .line 1342
    .line 1343
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v6

    .line 1347
    if-nez v6, :cond_29

    .line 1348
    .line 1349
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v2

    .line 1353
    new-instance v3, Lcom/join/mgps/event/p;

    .line 1354
    .line 1355
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1356
    .line 1357
    const/16 v6, 0x20

    .line 1358
    .line 1359
    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1366
    .line 1367
    .line 1368
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 1369
    .line 1370
    .line 1371
    return-void

    .line 1372
    :catch_a
    move-exception v0

    .line 1373
    goto/16 :goto_23

    .line 1374
    .line 1375
    :cond_29
    :try_start_1c
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1376
    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1378
    .line 1379
    .line 1380
    move-result-wide v8

    .line 1381
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 1382
    .line 1383
    sub-long/2addr v8, v10

    .line 1384
    invoke-direct {v1, v6, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1385
    .line 1386
    .line 1387
    :try_start_1d
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 1388
    .line 1389
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1390
    .line 1391
    const-string v9, "rw"

    .line 1392
    .line 1393
    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;

    .line 1397
    .line 1398
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1399
    .line 1400
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 1401
    .line 1402
    .line 1403
    goto :goto_15

    .line 1404
    :catch_b
    move-exception v0

    .line 1405
    move-object v6, v0

    .line 1406
    :try_start_1e
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v6

    .line 1413
    const-string v8, "EISDIR"

    .line 1414
    .line 1415
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1419
    if-eqz v6, :cond_2b

    .line 1420
    .line 1421
    :try_start_1f
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1422
    .line 1423
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v6

    .line 1427
    if-eqz v6, :cond_2a

    .line 1428
    .line 1429
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1430
    .line 1431
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v6

    .line 1435
    if-eqz v6, :cond_2a

    .line 1436
    .line 1437
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1438
    .line 1439
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 1440
    .line 1441
    .line 1442
    const-wide/16 v2, 0x0

    .line 1443
    .line 1444
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1445
    .line 1446
    :cond_2a
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 1447
    .line 1448
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1449
    .line 1450
    const-string v9, "rw"

    .line 1451
    .line 1452
    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;

    .line 1456
    .line 1457
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1458
    .line 1459
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 1460
    .line 1461
    .line 1462
    :cond_2b
    :goto_15
    :try_start_20
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 1463
    .line 1464
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    .line 1465
    .line 1466
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v8

    .line 1470
    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1471
    .line 1472
    .line 1473
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/InputStream;

    .line 1474
    .line 1475
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v6

    .line 1479
    new-instance v8, Lcom/join/mgps/event/p;

    .line 1480
    .line 1481
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1482
    .line 1483
    const/16 v10, 0x14

    .line 1484
    .line 1485
    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v6, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v6

    .line 1495
    new-instance v8, Lcom/join/mgps/event/p;

    .line 1496
    .line 1497
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1498
    .line 1499
    const/16 v11, 0x17

    .line 1500
    .line 1501
    invoke-direct {v8, v9, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v6, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1505
    .line 1506
    .line 1507
    const/16 v6, 0x1000

    .line 1508
    .line 1509
    new-array v6, v6, [B

    .line 1510
    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1512
    .line 1513
    .line 1514
    move-result-wide v8

    .line 1515
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v11

    .line 1519
    new-instance v14, Lcom/join/mgps/event/p;

    .line 1520
    .line 1521
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1522
    .line 1523
    const/16 v2, 0x18

    .line 1524
    .line 1525
    invoke-direct {v14, v15, v2}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v11, v14}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1529
    .line 1530
    .line 1531
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1532
    .line 1533
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v2

    .line 1537
    if-nez v2, :cond_44

    .line 1538
    .line 1539
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1540
    .line 1541
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v2

    .line 1545
    if-eqz v2, :cond_2c

    .line 1546
    .line 1547
    goto/16 :goto_22

    .line 1548
    .line 1549
    :cond_2c
    const-wide/16 v2, -0x1

    .line 1550
    .line 1551
    :goto_16
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/InputStream;

    .line 1552
    .line 1553
    const/16 v14, 0x1000

    .line 1554
    .line 1555
    const/4 v15, 0x0

    .line 1556
    invoke-virtual {v11, v6, v15, v14}, Ljava/io/InputStream;->read([BII)I

    .line 1557
    .line 1558
    .line 1559
    move-result v11
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1560
    move-object/from16 v17, v5

    .line 1561
    .line 1562
    if-lez v11, :cond_35

    .line 1563
    .line 1564
    :try_start_21
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1565
    .line 1566
    const-wide/16 v19, 0x0

    .line 1567
    .line 1568
    cmp-long v21, v14, v19

    .line 1569
    .line 1570
    if-nez v21, :cond_2d

    .line 1571
    .line 1572
    const/4 v14, 0x1

    .line 1573
    iput-boolean v14, v1, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 1574
    .line 1575
    :cond_2d
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/io/RandomAccessFile;

    .line 1576
    .line 1577
    const/4 v15, 0x0

    .line 1578
    invoke-virtual {v14, v6, v15, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1579
    .line 1580
    .line 1581
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1582
    .line 1583
    int-to-long v10, v11

    .line 1584
    add-long/2addr v14, v10

    .line 1585
    iput-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1586
    .line 1587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1588
    .line 1589
    .line 1590
    move-result-wide v10

    .line 1591
    sub-long/2addr v10, v8

    .line 1592
    const-wide/16 v14, 0x0

    .line 1593
    .line 1594
    cmp-long v19, v10, v14

    .line 1595
    .line 1596
    if-gez v19, :cond_2e

    .line 1597
    .line 1598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1599
    .line 1600
    .line 1601
    move-result-wide v8

    .line 1602
    :cond_2e
    const-wide/16 v19, 0x3e8

    .line 1603
    .line 1604
    cmp-long v22, v10, v19

    .line 1605
    .line 1606
    if-lez v22, :cond_32

    .line 1607
    .line 1608
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1611
    .line 1612
    .line 1613
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1614
    .line 1615
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v15

    .line 1619
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    .line 1621
    .line 1622
    const-string v15, " Downloading "

    .line 1623
    .line 1624
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1628
    .line 1629
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1630
    .line 1631
    add-long/2addr v14, v4

    .line 1632
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1633
    .line 1634
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 1635
    .line 1636
    .line 1637
    move-result-wide v4

    .line 1638
    sub-long/2addr v14, v4

    .line 1639
    const-wide/16 v4, 0x0

    .line 1640
    .line 1641
    cmp-long v19, v14, v4

    .line 1642
    .line 1643
    if-lez v19, :cond_31

    .line 1644
    .line 1645
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1646
    .line 1647
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1648
    .line 1649
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1650
    .line 1651
    add-long/2addr v14, v4

    .line 1652
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 1653
    .line 1654
    .line 1655
    move-result-wide v4

    .line 1656
    sub-long/2addr v14, v4

    .line 1657
    const-wide/16 v4, 0x3e8

    .line 1658
    .line 1659
    mul-long v14, v14, v4

    .line 1660
    .line 1661
    div-long/2addr v14, v10

    .line 1662
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v4

    .line 1666
    invoke-virtual {v8, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 1667
    .line 1668
    .line 1669
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1670
    .line 1671
    const-wide/16 v8, 0x0

    .line 1672
    .line 1673
    cmp-long v10, v4, v8

    .line 1674
    .line 1675
    if-eqz v10, :cond_2f

    .line 1676
    .line 1677
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1678
    .line 1679
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1680
    .line 1681
    add-long/2addr v2, v8

    .line 1682
    const-wide/16 v8, 0x64

    .line 1683
    .line 1684
    mul-long v2, v2, v8

    .line 1685
    .line 1686
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1687
    .line 1688
    add-long/2addr v4, v8

    .line 1689
    div-long/2addr v2, v4

    .line 1690
    :cond_2f
    const-wide/16 v4, 0x1

    .line 1691
    .line 1692
    cmp-long v8, v2, v4

    .line 1693
    .line 1694
    if-gez v8, :cond_30

    .line 1695
    .line 1696
    const-wide/16 v2, 0x1

    .line 1697
    .line 1698
    :cond_30
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1699
    .line 1700
    invoke-virtual {v4, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 1701
    .line 1702
    .line 1703
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1704
    .line 1705
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1706
    .line 1707
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1708
    .line 1709
    add-long/2addr v8, v10

    .line 1710
    invoke-virtual {v4, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 1711
    .line 1712
    .line 1713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1714
    .line 1715
    .line 1716
    move-result-wide v8

    .line 1717
    goto :goto_17

    .line 1718
    :cond_31
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1719
    .line 1720
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1721
    .line 1722
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1723
    .line 1724
    add-long/2addr v10, v14

    .line 1725
    invoke-virtual {v4, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 1726
    .line 1727
    .line 1728
    :goto_17
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1729
    .line 1730
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1731
    .line 1732
    const/16 v10, 0x8

    .line 1733
    .line 1734
    invoke-static {v4, v5, v10}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1735
    .line 1736
    .line 1737
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v4

    .line 1741
    new-instance v5, Lcom/join/mgps/event/p;

    .line 1742
    .line 1743
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1744
    .line 1745
    const/16 v11, 0x21

    .line 1746
    .line 1747
    invoke-direct {v5, v10, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1751
    .line 1752
    .line 1753
    :cond_32
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1754
    .line 1755
    invoke-direct {v1, v4}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v4

    .line 1759
    if-eqz v4, :cond_33

    .line 1760
    .line 1761
    goto :goto_18

    .line 1762
    :cond_33
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1763
    .line 1764
    invoke-direct {v1, v4}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v4

    .line 1768
    if-eqz v4, :cond_34

    .line 1769
    .line 1770
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1771
    .line 1772
    const-string v3, "0"

    .line 1773
    .line 1774
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 1775
    .line 1776
    .line 1777
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1778
    .line 1779
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1780
    .line 1781
    const/16 v4, 0x8

    .line 1782
    .line 1783
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1784
    .line 1785
    .line 1786
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v2

    .line 1790
    new-instance v3, Lcom/join/mgps/event/p;

    .line 1791
    .line 1792
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1793
    .line 1794
    const/16 v5, 0x21

    .line 1795
    .line 1796
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1800
    .line 1801
    .line 1802
    const/4 v15, 0x0

    .line 1803
    goto :goto_19

    .line 1804
    :cond_34
    move-object/from16 v5, v17

    .line 1805
    .line 1806
    const/16 v4, 0x2d

    .line 1807
    .line 1808
    const/16 v10, 0x14

    .line 1809
    .line 1810
    goto/16 :goto_16

    .line 1811
    .line 1812
    :cond_35
    :goto_18
    const/4 v15, 0x1

    .line 1813
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 1814
    .line 1815
    .line 1816
    if-nez v15, :cond_37

    .line 1817
    .line 1818
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1819
    .line 1820
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 1821
    .line 1822
    .line 1823
    move-result v2

    .line 1824
    const/4 v3, 0x7

    .line 1825
    if-eq v2, v3, :cond_36

    .line 1826
    .line 1827
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1828
    .line 1829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1830
    .line 1831
    .line 1832
    move-result-wide v3

    .line 1833
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 1834
    .line 1835
    sub-long/2addr v3, v5

    .line 1836
    const/4 v5, 0x1

    .line 1837
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1838
    .line 1839
    .line 1840
    :cond_36
    :goto_1a
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 1841
    .line 1842
    .line 1843
    goto/16 :goto_2d

    .line 1844
    .line 1845
    :cond_37
    :try_start_22
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1846
    .line 1847
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v2

    .line 1851
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1852
    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1854
    .line 1855
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1856
    .line 1857
    .line 1858
    const-string v3, "range: "

    .line 1859
    .line 1860
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    .line 1862
    .line 1863
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1864
    .line 1865
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1866
    .line 1867
    .line 1868
    const-string v3, " size: "

    .line 1869
    .line 1870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    .line 1872
    .line 1873
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1874
    .line 1875
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 1879
    .line 1880
    invoke-static {v2}, Lcom/join/mgps/Util/i1;->c(Ljava/io/File;)Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v2

    .line 1884
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 1885
    .line 1886
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1887
    .line 1888
    .line 1889
    move-result v3

    .line 1890
    if-eqz v3, :cond_39

    .line 1891
    .line 1892
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 1893
    .line 1894
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1895
    .line 1896
    .line 1897
    move-result v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_11
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1898
    if-eqz v3, :cond_38

    .line 1899
    .line 1900
    :try_start_23
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1901
    .line 1902
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v2

    .line 1906
    sget-object v3, Lcom/papa/sim/statistic/Event;->downlooadmd5Complete:Lcom/papa/sim/statistic/Event;

    .line 1907
    .line 1908
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 1909
    .line 1910
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 1911
    .line 1912
    .line 1913
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1914
    .line 1915
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v4

    .line 1919
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 1920
    .line 1921
    .line 1922
    goto/16 :goto_1d

    .line 1923
    .line 1924
    :catch_c
    move-exception v0

    .line 1925
    move-object v2, v0

    .line 1926
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1927
    .line 1928
    .line 1929
    goto/16 :goto_1d

    .line 1930
    .line 1931
    :cond_38
    :try_start_25
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1932
    .line 1933
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v3

    .line 1937
    sget-object v4, Lcom/papa/sim/statistic/Event;->downlooadmd5Incomplete:Lcom/papa/sim/statistic/Event;

    .line 1938
    .line 1939
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 1940
    .line 1941
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 1942
    .line 1943
    .line 1944
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1945
    .line 1946
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v5

    .line 1950
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 1951
    .line 1952
    .line 1953
    goto :goto_1b

    .line 1954
    :catch_d
    move-exception v0

    .line 1955
    move-object v3, v0

    .line 1956
    :try_start_26
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1957
    .line 1958
    .line 1959
    :goto_1b
    new-instance v3, Lcom/join/mgps/dto/GameMd5Data;

    .line 1960
    .line 1961
    invoke-direct {v3}, Lcom/join/mgps/dto/GameMd5Data;-><init>()V

    .line 1962
    .line 1963
    .line 1964
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1965
    .line 1966
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GameMd5Data;->setGameId(Ljava/lang/String;)V

    .line 1967
    .line 1968
    .line 1969
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 1970
    .line 1971
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GameMd5Data;->setServerGameFileMd5(Ljava/lang/String;)V

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setAppGameFileMd5(Ljava/lang/String;)V

    .line 1975
    .line 1976
    .line 1977
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1978
    .line 1979
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v2

    .line 1983
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setGameDownLoadUrl(Ljava/lang/String;)V

    .line 1984
    .line 1985
    .line 1986
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v2

    .line 1990
    const-string v3, "retry"

    .line 1991
    .line 1992
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1993
    .line 1994
    .line 1995
    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 1996
    if-eqz v2, :cond_3a

    .line 1997
    .line 1998
    add-int/lit8 v6, v18, -0x1

    .line 1999
    .line 2000
    if-lez v6, :cond_3b

    .line 2001
    .line 2002
    const-wide/16 v2, 0x0

    .line 2003
    .line 2004
    :try_start_27
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 2005
    .line 2006
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2007
    .line 2008
    .line 2009
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 2010
    .line 2011
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 2012
    .line 2013
    .line 2014
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2015
    .line 2016
    const-wide/16 v3, 0x1

    .line 2017
    .line 2018
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 2019
    .line 2020
    .line 2021
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2022
    .line 2023
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2024
    .line 2025
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 2026
    .line 2027
    .line 2028
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2029
    .line 2030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2031
    .line 2032
    .line 2033
    move-result-wide v3

    .line 2034
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2035
    .line 2036
    sub-long/2addr v3, v8

    .line 2037
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 2038
    .line 2039
    .line 2040
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v2

    .line 2044
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2045
    .line 2046
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2047
    .line 2048
    const/16 v5, 0x14

    .line 2049
    .line 2050
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2054
    .line 2055
    .line 2056
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v2

    .line 2060
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2061
    .line 2062
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2063
    .line 2064
    const/16 v5, 0x2d

    .line 2065
    .line 2066
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2067
    .line 2068
    .line 2069
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2070
    .line 2071
    .line 2072
    const-wide/16 v2, 0xfa0

    .line 2073
    .line 2074
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_f
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 2075
    .line 2076
    .line 2077
    goto/16 :goto_21

    .line 2078
    .line 2079
    :cond_39
    :try_start_28
    sget-object v5, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2080
    .line 2081
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v5

    .line 2085
    sget-object v6, Lcom/papa/sim/statistic/Event;->Md5FailureAchieve:Lcom/papa/sim/statistic/Event;

    .line 2086
    .line 2087
    new-instance v8, Lcom/papa/sim/statistic/Ext;

    .line 2088
    .line 2089
    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2090
    .line 2091
    .line 2092
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2093
    .line 2094
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v8

    .line 2098
    invoke-virtual {v5, v6, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 2099
    .line 2100
    .line 2101
    goto :goto_1c

    .line 2102
    :catch_e
    move-exception v0

    .line 2103
    move-object v5, v0

    .line 2104
    :try_start_29
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2105
    .line 2106
    .line 2107
    :goto_1c
    new-instance v5, Lcom/join/mgps/dto/GameMd5Data;

    .line 2108
    .line 2109
    invoke-direct {v5}, Lcom/join/mgps/dto/GameMd5Data;-><init>()V

    .line 2110
    .line 2111
    .line 2112
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2113
    .line 2114
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/GameMd5Data;->setGameId(Ljava/lang/String;)V

    .line 2115
    .line 2116
    .line 2117
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->w:Ljava/lang/String;

    .line 2118
    .line 2119
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/GameMd5Data;->setServerGameFileMd5(Ljava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/GameMd5Data;->setAppGameFileMd5(Ljava/lang/String;)V

    .line 2123
    .line 2124
    .line 2125
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2126
    .line 2127
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v2

    .line 2131
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/GameMd5Data;->setGameDownLoadUrl(Ljava/lang/String;)V

    .line 2132
    .line 2133
    .line 2134
    invoke-direct {v1, v5}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v2

    .line 2138
    const-string v5, "retry"

    .line 2139
    .line 2140
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2141
    .line 2142
    .line 2143
    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_11
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 2144
    if-eqz v2, :cond_3a

    .line 2145
    .line 2146
    add-int/lit8 v6, v18, -0x1

    .line 2147
    .line 2148
    if-lez v6, :cond_3b

    .line 2149
    .line 2150
    const-wide/16 v2, 0x0

    .line 2151
    .line 2152
    :try_start_2a
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 2153
    .line 2154
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2155
    .line 2156
    .line 2157
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 2158
    .line 2159
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 2160
    .line 2161
    .line 2162
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2163
    .line 2164
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2165
    .line 2166
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 2167
    .line 2168
    .line 2169
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2170
    .line 2171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2172
    .line 2173
    .line 2174
    move-result-wide v3

    .line 2175
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2176
    .line 2177
    sub-long/2addr v3, v8

    .line 2178
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 2179
    .line 2180
    .line 2181
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2182
    .line 2183
    const-wide/16 v3, 0x0

    .line 2184
    .line 2185
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 2186
    .line 2187
    .line 2188
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v2

    .line 2192
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2193
    .line 2194
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2195
    .line 2196
    const/16 v5, 0x14

    .line 2197
    .line 2198
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2199
    .line 2200
    .line 2201
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2202
    .line 2203
    .line 2204
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v2

    .line 2208
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2209
    .line 2210
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2211
    .line 2212
    const/16 v5, 0x2d

    .line 2213
    .line 2214
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2218
    .line 2219
    .line 2220
    const-wide/16 v2, 0xfa0

    .line 2221
    .line 2222
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2223
    .line 2224
    .line 2225
    goto/16 :goto_21

    .line 2226
    .line 2227
    :cond_3a
    :goto_1d
    move/from16 v6, v18

    .line 2228
    .line 2229
    :cond_3b
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 2230
    .line 2231
    const-wide/16 v2, 0x0

    .line 2232
    .line 2233
    cmp-long v8, v4, v2

    .line 2234
    .line 2235
    if-eqz v8, :cond_40

    .line 2236
    .line 2237
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 2238
    .line 2239
    cmp-long v10, v4, v8

    .line 2240
    .line 2241
    if-nez v10, :cond_40

    .line 2242
    .line 2243
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2244
    .line 2245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2246
    .line 2247
    .line 2248
    move-result-wide v3

    .line 2249
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 2250
    .line 2251
    .line 2252
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2253
    .line 2254
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    .line 2255
    .line 2256
    .line 2257
    move-result-wide v3

    .line 2258
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 2259
    .line 2260
    add-long/2addr v3, v8

    .line 2261
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 2262
    .line 2263
    .line 2264
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2265
    .line 2266
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2267
    .line 2268
    const/16 v4, 0x8

    .line 2269
    .line 2270
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2271
    .line 2272
    .line 2273
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v2

    .line 2277
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2278
    .line 2279
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2280
    .line 2281
    const/16 v5, 0x21

    .line 2282
    .line 2283
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2287
    .line 2288
    .line 2289
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 2290
    .line 2291
    if-eqz v2, :cond_3d

    .line 2292
    .line 2293
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2294
    .line 2295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2296
    .line 2297
    .line 2298
    move-result-wide v3

    .line 2299
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2300
    .line 2301
    sub-long/2addr v3, v8

    .line 2302
    const/4 v5, 0x0

    .line 2303
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/a;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 2304
    .line 2305
    .line 2306
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2307
    .line 2308
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v2

    .line 2312
    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2313
    .line 2314
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v3

    .line 2318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2319
    .line 2320
    .line 2321
    move-result v2

    .line 2322
    if-eqz v2, :cond_3c

    .line 2323
    .line 2324
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v2

    .line 2328
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2329
    .line 2330
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2331
    .line 2332
    const/16 v5, 0x24

    .line 2333
    .line 2334
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2335
    .line 2336
    .line 2337
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2338
    .line 2339
    .line 2340
    goto :goto_1e

    .line 2341
    :cond_3c
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2346
    .line 2347
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2348
    .line 2349
    const/16 v5, 0x1f

    .line 2350
    .line 2351
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2355
    .line 2356
    .line 2357
    :goto_1e
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2358
    .line 2359
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2360
    .line 2361
    const/4 v4, 0x5

    .line 2362
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2363
    .line 2364
    .line 2365
    sget-boolean v2, Lcom/MApplication;->q1:Z

    .line 2366
    .line 2367
    if-eqz v2, :cond_3f

    .line 2368
    .line 2369
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v2

    .line 2373
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2374
    .line 2375
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v3

    .line 2379
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2380
    .line 2381
    .line 2382
    goto :goto_20

    .line 2383
    :cond_3d
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2384
    .line 2385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2386
    .line 2387
    .line 2388
    move-result-wide v3

    .line 2389
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2390
    .line 2391
    sub-long/2addr v3, v8

    .line 2392
    const/4 v5, 0x1

    .line 2393
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/a;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 2394
    .line 2395
    .line 2396
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2397
    .line 2398
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v2

    .line 2402
    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2403
    .line 2404
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v3

    .line 2408
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2409
    .line 2410
    .line 2411
    move-result v2

    .line 2412
    if-eqz v2, :cond_3e

    .line 2413
    .line 2414
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v2

    .line 2418
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2419
    .line 2420
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2421
    .line 2422
    const/16 v5, 0x24

    .line 2423
    .line 2424
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2428
    .line 2429
    .line 2430
    goto :goto_1f

    .line 2431
    :cond_3e
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v2

    .line 2435
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2436
    .line 2437
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2438
    .line 2439
    const/16 v5, 0x1f

    .line 2440
    .line 2441
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2442
    .line 2443
    .line 2444
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2445
    .line 2446
    .line 2447
    :goto_1f
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2448
    .line 2449
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2450
    .line 2451
    const/4 v4, 0x5

    .line 2452
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2453
    .line 2454
    .line 2455
    sget-boolean v2, Lcom/MApplication;->q1:Z

    .line 2456
    .line 2457
    if-eqz v2, :cond_3f

    .line 2458
    .line 2459
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v2

    .line 2463
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2464
    .line 2465
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v3

    .line 2469
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2470
    .line 2471
    .line 2472
    :cond_3f
    :goto_20
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2473
    .line 2474
    .line 2475
    goto/16 :goto_1a

    .line 2476
    .line 2477
    :cond_40
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2478
    .line 2479
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 2480
    .line 2481
    .line 2482
    move-result v4

    .line 2483
    const/4 v5, 0x7

    .line 2484
    if-ne v4, v5, :cond_41

    .line 2485
    .line 2486
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2487
    .line 2488
    .line 2489
    goto/16 :goto_1a

    .line 2490
    .line 2491
    :cond_41
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 2492
    .line 2493
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 2494
    .line 2495
    .line 2496
    move-result v4

    .line 2497
    if-eqz v4, :cond_42

    .line 2498
    .line 2499
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 2500
    .line 2501
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 2502
    .line 2503
    .line 2504
    move-result-wide v4

    .line 2505
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 2506
    .line 2507
    cmp-long v10, v4, v8

    .line 2508
    .line 2509
    if-eqz v10, :cond_43

    .line 2510
    .line 2511
    :cond_42
    add-int/lit8 v6, v6, -0x1

    .line 2512
    .line 2513
    if-lez v6, :cond_43

    .line 2514
    .line 2515
    const-wide/16 v2, 0x0

    .line 2516
    .line 2517
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 2518
    .line 2519
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 2520
    .line 2521
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 2522
    .line 2523
    .line 2524
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2525
    .line 2526
    const-wide/16 v3, 0x1

    .line 2527
    .line 2528
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 2529
    .line 2530
    .line 2531
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2532
    .line 2533
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2534
    .line 2535
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 2536
    .line 2537
    .line 2538
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2539
    .line 2540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2541
    .line 2542
    .line 2543
    move-result-wide v3

    .line 2544
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2545
    .line 2546
    sub-long/2addr v3, v8

    .line 2547
    invoke-direct {v1, v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 2548
    .line 2549
    .line 2550
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v2

    .line 2554
    new-instance v3, Lcom/join/mgps/event/p;

    .line 2555
    .line 2556
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2557
    .line 2558
    const/16 v5, 0x14

    .line 2559
    .line 2560
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2561
    .line 2562
    .line 2563
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2564
    .line 2565
    .line 2566
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 2567
    .line 2568
    .line 2569
    :goto_21
    add-int/lit8 v6, v6, -0x1

    .line 2570
    .line 2571
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2572
    .line 2573
    .line 2574
    move-object v2, v7

    .line 2575
    move-object v3, v12

    .line 2576
    move-object v4, v13

    .line 2577
    move-object/from16 v5, v17

    .line 2578
    .line 2579
    goto/16 :goto_0

    .line 2580
    .line 2581
    :cond_43
    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2582
    .line 2583
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2584
    .line 2585
    .line 2586
    const-string v3, "[012]:gid="

    .line 2587
    .line 2588
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    .line 2590
    .line 2591
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2592
    .line 2593
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v3

    .line 2597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    .line 2599
    .line 2600
    const-string v3, ",err:range: "

    .line 2601
    .line 2602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    .line 2604
    .line 2605
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 2606
    .line 2607
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2608
    .line 2609
    .line 2610
    const-string v3, " size: "

    .line 2611
    .line 2612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    .line 2614
    .line 2615
    iget-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 2616
    .line 2617
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2618
    .line 2619
    .line 2620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v2

    .line 2624
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 2625
    .line 2626
    .line 2627
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 2628
    .line 2629
    .line 2630
    goto/16 :goto_1a

    .line 2631
    .line 2632
    :catch_f
    move-exception v0

    .line 2633
    move-object v2, v0

    .line 2634
    move-object/from16 v5, v17

    .line 2635
    .line 2636
    goto :goto_2b

    .line 2637
    :cond_44
    :goto_22
    move-object/from16 v17, v5

    .line 2638
    .line 2639
    :try_start_2c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_11
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 2640
    .line 2641
    .line 2642
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2643
    .line 2644
    .line 2645
    return-void

    .line 2646
    :catch_10
    move-exception v0

    .line 2647
    move-object/from16 v17, v5

    .line 2648
    .line 2649
    :goto_23
    move-object v2, v0

    .line 2650
    goto :goto_27

    .line 2651
    :catch_11
    move-exception v0

    .line 2652
    goto :goto_25

    .line 2653
    :catch_12
    move-exception v0

    .line 2654
    move-object v7, v2

    .line 2655
    move-object v12, v3

    .line 2656
    :goto_24
    move-object v13, v4

    .line 2657
    :goto_25
    move-object v2, v0

    .line 2658
    :goto_26
    move-object/from16 v5, v17

    .line 2659
    .line 2660
    :goto_27
    move/from16 v6, v18

    .line 2661
    .line 2662
    goto :goto_2b

    .line 2663
    :cond_45
    :goto_28
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2664
    .line 2665
    .line 2666
    return-void

    .line 2667
    :cond_46
    :goto_29
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2668
    .line 2669
    .line 2670
    return-void

    .line 2671
    :catchall_0
    move-exception v0

    .line 2672
    move-object v2, v0

    .line 2673
    goto :goto_2c

    .line 2674
    :catch_13
    move-exception v0

    .line 2675
    move-object v7, v2

    .line 2676
    move-object v12, v3

    .line 2677
    move-object v13, v4

    .line 2678
    move-object/from16 v17, v5

    .line 2679
    .line 2680
    move/from16 v18, v6

    .line 2681
    .line 2682
    :goto_2a
    move-object v2, v0

    .line 2683
    :goto_2b
    :try_start_2d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2684
    .line 2685
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2686
    .line 2687
    .line 2688
    const-string v4, "[013]:gid="

    .line 2689
    .line 2690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    .line 2692
    .line 2693
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2694
    .line 2695
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v4

    .line 2699
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    .line 2701
    .line 2702
    const-string v4, ",err:"

    .line 2703
    .line 2704
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    .line 2706
    .line 2707
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2708
    .line 2709
    .line 2710
    move-result-object v4

    .line 2711
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    .line 2713
    .line 2714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v3

    .line 2718
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 2719
    .line 2720
    .line 2721
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 2722
    .line 2723
    .line 2724
    add-int/lit8 v6, v6, -0x1

    .line 2725
    .line 2726
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2727
    .line 2728
    .line 2729
    move-object v2, v7

    .line 2730
    move-object v3, v12

    .line 2731
    move-object v4, v13

    .line 2732
    goto/16 :goto_0

    .line 2733
    .line 2734
    :goto_2c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2735
    .line 2736
    .line 2737
    throw v2

    .line 2738
    :cond_47
    :goto_2d
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 2739
    .line 2740
    .line 2741
    :cond_48
    :goto_2e
    return-void

    .line 2742
    nop

    .line 2743
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method g()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "rw"

    .line 4
    .line 5
    const-string v3, "GET"

    .line 6
    .line 7
    const-string v4, "Keep-Alive"

    .line 8
    .line 9
    const-string v5, "Connection"

    .line 10
    .line 11
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    if-eqz v6, :cond_4b

    .line 14
    .line 15
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    goto/16 :goto_27

    .line 26
    .line 27
    :cond_0
    const/4 v7, 0x3

    .line 28
    :goto_0
    if-lez v7, :cond_4a

    .line 29
    .line 30
    :try_start_0
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 45
    .line 46
    .line 47
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const-string v11, "mod/"

    .line 49
    .line 50
    const-string v12, "/"

    .line 51
    .line 52
    if-nez v10, :cond_2

    .line 53
    .line 54
    :try_start_1
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-static {v10}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    move-object v6, v0

    .line 78
    move/from16 v16, v7

    .line 79
    .line 80
    :goto_1
    const/4 v7, 0x3

    .line 81
    goto/16 :goto_23

    .line 82
    .line 83
    :cond_2
    :goto_2
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {v9}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v13, ".mod"

    .line 96
    .line 97
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    sget-object v14, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 118
    .line 119
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    :goto_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    if-nez v14, :cond_3

    .line 141
    .line 142
    :try_start_3
    new-instance v14, Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    :cond_3
    :try_start_4
    new-instance v14, Ljava/net/URL;

    .line 150
    .line 151
    invoke-direct {v14, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    invoke-direct {v1, v15}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-nez v15, :cond_49

    .line 161
    .line 162
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 163
    .line 164
    invoke-direct {v1, v15}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 165
    .line 166
    .line 167
    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    if-eqz v15, :cond_4

    .line 169
    .line 170
    goto/16 :goto_20

    .line 171
    .line 172
    :cond_4
    move/from16 v16, v7

    .line 173
    .line 174
    :try_start_5
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 175
    .line 176
    move-object/from16 v17, v8

    .line 177
    .line 178
    move-object/from16 v18, v9

    .line 179
    .line 180
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    .line 182
    move-object/from16 v19, v11

    .line 183
    .line 184
    move-object/from16 v20, v12

    .line 185
    .line 186
    const-wide/16 v11, 0x0

    .line 187
    .line 188
    cmp-long v21, v6, v8

    .line 189
    .line 190
    if-lez v21, :cond_6

    .line 191
    .line 192
    :try_start_6
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 193
    .line 194
    if-eqz v6, :cond_5

    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_5

    .line 201
    .line 202
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 203
    .line 204
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 205
    .line 206
    .line 207
    :cond_5
    iput-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 208
    .line 209
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 210
    .line 211
    invoke-virtual {v6, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 212
    .line 213
    .line 214
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v7

    .line 220
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 221
    .line 222
    sub-long/2addr v7, v11

    .line 223
    invoke-direct {v1, v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :catch_1
    move-exception v0

    .line 228
    move-object v6, v0

    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_6
    :goto_4
    :try_start_7
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    .line 233
    const/4 v11, 0x1

    .line 234
    const-wide/16 v21, 0x0

    .line 235
    .line 236
    cmp-long v12, v6, v21

    .line 237
    .line 238
    if-lez v12, :cond_9

    .line 239
    .line 240
    :try_start_8
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 241
    .line 242
    cmp-long v23, v6, v8

    .line 243
    .line 244
    if-nez v23, :cond_9

    .line 245
    .line 246
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 247
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v7

    .line 252
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 253
    .line 254
    sub-long/2addr v7, v9

    .line 255
    invoke-direct {v1, v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 259
    .line 260
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eq v6, v11, :cond_7

    .line 265
    .line 266
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 267
    .line 268
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    const/4 v7, 0x3

    .line 273
    if-ne v6, v7, :cond_8

    .line 274
    .line 275
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    new-instance v7, Lcom/join/mgps/event/p;

    .line 280
    .line 281
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 282
    .line 283
    const/16 v9, 0x1f

    .line 284
    .line 285
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    sget-object v6, Lcom/MApplication;->z:Lcom/MApplication;

    .line 292
    .line 293
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 294
    .line 295
    const/4 v8, 0x5

    .line 296
    invoke-static {v6, v7, v8}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 297
    .line 298
    .line 299
    sget-boolean v6, Lcom/MApplication;->q1:Z

    .line 300
    .line 301
    if-eqz v6, :cond_8

    .line 302
    .line 303
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 308
    .line 309
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v6, v7}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 314
    .line 315
    .line 316
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_9
    :try_start_9
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 321
    .line 322
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-nez v6, :cond_48

    .line 327
    .line 328
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 329
    .line 330
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_a

    .line 335
    .line 336
    goto/16 :goto_1f

    .line 337
    .line 338
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    new-instance v7, Lcom/join/mgps/event/p;

    .line 343
    .line 344
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 345
    .line 346
    const/16 v9, 0x16

    .line 347
    .line 348
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    check-cast v6, Ljava/net/HttpURLConnection;

    .line 359
    .line 360
    iput-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 361
    .line 362
    const/16 v7, 0x1388

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 365
    .line 366
    .line 367
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 368
    .line 369
    const/16 v8, 0x2710

    .line 370
    .line 371
    invoke-virtual {v6, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 372
    .line 373
    .line 374
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 375
    .line 376
    invoke-virtual {v6, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 380
    .line 381
    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    move-object v9, v13

    .line 385
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 386
    .line 387
    const-string v14, "-"

    .line 388
    .line 389
    const-string v6, "bytes="

    .line 390
    .line 391
    const-string v15, "Range"

    .line 392
    .line 393
    const-string v11, "set connection property:range="

    .line 394
    .line 395
    const-wide/16 v21, 0x0

    .line 396
    .line 397
    cmp-long v24, v12, v21

    .line 398
    .line 399
    if-lez v24, :cond_b

    .line 400
    .line 401
    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    move-object/from16 v24, v9

    .line 410
    .line 411
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 412
    .line 413
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 417
    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    move-object/from16 v25, v8

    .line 427
    .line 428
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 429
    .line 430
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    move-object/from16 v8, v25

    .line 441
    .line 442
    invoke-virtual {v8, v15, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_b
    move-object/from16 v24, v9

    .line 447
    .line 448
    :goto_5
    :try_start_b
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 449
    .line 450
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    const-string v9, "HTTP STATUS CODE: "

    .line 460
    .line 461
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 465
    .line 466
    .line 467
    const-string v8, ""

    .line 468
    .line 469
    const/16 v9, 0xc8

    .line 470
    .line 471
    if-eq v7, v9, :cond_13

    .line 472
    .line 473
    const/16 v13, 0xce

    .line 474
    .line 475
    if-eq v7, v13, :cond_13

    .line 476
    .line 477
    packed-switch v7, :pswitch_data_0

    .line 478
    .line 479
    .line 480
    move-object/from16 v9, v18

    .line 481
    .line 482
    const/4 v6, 0x0

    .line 483
    :goto_6
    const/4 v12, 0x0

    .line 484
    goto/16 :goto_8

    .line 485
    .line 486
    :pswitch_0
    :try_start_c
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 487
    .line 488
    const-string v13, "Location"

    .line 489
    .line 490
    invoke-virtual {v7, v13}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 495
    .line 496
    const-string v12, "Set-Cookie"

    .line 497
    .line 498
    invoke-virtual {v13, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 502
    :try_start_d
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 503
    .line 504
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :catch_2
    move-exception v0

    .line 509
    move-object v13, v0

    .line 510
    :try_start_e
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    .line 512
    .line 513
    :goto_7
    new-instance v13, Ljava/net/URL;

    .line 514
    .line 515
    invoke-direct {v13, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 519
    .line 520
    .line 521
    move-result-object v13

    .line 522
    check-cast v13, Ljava/net/HttpURLConnection;

    .line 523
    .line 524
    iput-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 525
    .line 526
    const/16 v9, 0x1388

    .line 527
    .line 528
    invoke-virtual {v13, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 529
    .line 530
    .line 531
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 532
    .line 533
    const/16 v13, 0x2710

    .line 534
    .line 535
    invoke-virtual {v9, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 536
    .line 537
    .line 538
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 539
    .line 540
    invoke-virtual {v9, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    if-eqz v12, :cond_c

    .line 544
    .line 545
    if-eq v12, v8, :cond_c

    .line 546
    .line 547
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 548
    .line 549
    const-string v13, "Cookie"

    .line 550
    .line 551
    invoke-virtual {v9, v13, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    :cond_c
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 555
    .line 556
    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 560
    .line 561
    const-wide/16 v21, 0x0

    .line 562
    .line 563
    cmp-long v9, v12, v21

    .line 564
    .line 565
    if-lez v9, :cond_d

    .line 566
    .line 567
    new-instance v9, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 576
    .line 577
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 581
    .line 582
    new-instance v11, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 591
    .line 592
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-virtual {v9, v15, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    :cond_d
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 606
    .line 607
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    const/16 v9, 0xc8

    .line 612
    .line 613
    if-ne v6, v9, :cond_f

    .line 614
    .line 615
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 616
    .line 617
    const-wide/16 v13, 0x0

    .line 618
    .line 619
    cmp-long v6, v11, v13

    .line 620
    .line 621
    if-lez v6, :cond_f

    .line 622
    .line 623
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 624
    .line 625
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 626
    .line 627
    if-eqz v6, :cond_e

    .line 628
    .line 629
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    if-eqz v6, :cond_e

    .line 634
    .line 635
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 636
    .line 637
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 638
    .line 639
    .line 640
    :cond_e
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 641
    .line 642
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 643
    .line 644
    invoke-virtual {v6, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 645
    .line 646
    .line 647
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 648
    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 650
    .line 651
    .line 652
    move-result-wide v11

    .line 653
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 654
    .line 655
    sub-long/2addr v11, v13

    .line 656
    invoke-direct {v1, v6, v11, v12}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 657
    .line 658
    .line 659
    :cond_f
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 660
    .line 661
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 662
    .line 663
    .line 664
    move-result v6

    .line 665
    new-instance v9, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .line 669
    .line 670
    const-string v11, "Redirect Url : "

    .line 671
    .line 672
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    const/16 v9, 0xc8

    .line 679
    .line 680
    if-ne v6, v9, :cond_12

    .line 681
    .line 682
    if-ne v6, v9, :cond_11

    .line 683
    .line 684
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 685
    .line 686
    const-wide/16 v13, 0x0

    .line 687
    .line 688
    cmp-long v9, v11, v13

    .line 689
    .line 690
    if-lez v9, :cond_11

    .line 691
    .line 692
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 693
    .line 694
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 695
    .line 696
    if-eqz v9, :cond_10

    .line 697
    .line 698
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 699
    .line 700
    .line 701
    move-result v9

    .line 702
    if-eqz v9, :cond_10

    .line 703
    .line 704
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 705
    .line 706
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 707
    .line 708
    .line 709
    :cond_10
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 710
    .line 711
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 712
    .line 713
    invoke-virtual {v9, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 714
    .line 715
    .line 716
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 717
    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 719
    .line 720
    .line 721
    move-result-wide v11

    .line 722
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 723
    .line 724
    sub-long/2addr v11, v13

    .line 725
    invoke-direct {v1, v9, v11, v12}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 726
    .line 727
    .line 728
    :cond_11
    move-object v9, v7

    .line 729
    const/4 v12, 0x1

    .line 730
    move v7, v6

    .line 731
    const/4 v6, 0x1

    .line 732
    goto :goto_8

    .line 733
    :cond_12
    move-object v9, v7

    .line 734
    const/4 v12, 0x1

    .line 735
    move v7, v6

    .line 736
    const/4 v6, 0x0

    .line 737
    goto :goto_8

    .line 738
    :cond_13
    :try_start_f
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 739
    .line 740
    const-string v9, "Transfer-Encoding"

    .line 741
    .line 742
    invoke-virtual {v6, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 747
    .line 748
    .line 749
    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 750
    if-nez v9, :cond_14

    .line 751
    .line 752
    :try_start_10
    const-string v9, "chunked"

    .line 753
    .line 754
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    :cond_14
    const/16 v6, 0xc8

    .line 759
    .line 760
    if-ne v7, v6, :cond_16

    .line 761
    .line 762
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 763
    .line 764
    const-wide/16 v13, 0x0

    .line 765
    .line 766
    cmp-long v6, v11, v13

    .line 767
    .line 768
    if-lez v6, :cond_16

    .line 769
    .line 770
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 771
    .line 772
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 773
    .line 774
    if-eqz v6, :cond_15

    .line 775
    .line 776
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-eqz v6, :cond_15

    .line 781
    .line 782
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 783
    .line 784
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 785
    .line 786
    .line 787
    :cond_15
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 788
    .line 789
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 790
    .line 791
    invoke-virtual {v6, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 792
    .line 793
    .line 794
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 795
    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 797
    .line 798
    .line 799
    move-result-wide v11

    .line 800
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 801
    .line 802
    sub-long/2addr v11, v13

    .line 803
    invoke-direct {v1, v6, v11, v12}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 804
    .line 805
    .line 806
    :cond_16
    move-object/from16 v9, v18

    .line 807
    .line 808
    const/4 v6, 0x1

    .line 809
    goto/16 :goto_6

    .line 810
    .line 811
    :goto_8
    if-nez v12, :cond_17

    .line 812
    .line 813
    if-nez v6, :cond_17

    .line 814
    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    .line 816
    .line 817
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .line 819
    .line 820
    const-string v8, "[006]:gid="

    .line 821
    .line 822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 826
    .line 827
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v8

    .line 831
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v8, ",err:status["

    .line 835
    .line 836
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    const-string v7, "],e["

    .line 843
    .line 844
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 848
    .line 849
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    const-string v7, "]"

    .line 857
    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v6

    .line 865
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 866
    .line 867
    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 869
    .line 870
    .line 871
    return-void

    .line 872
    :cond_17
    :try_start_11
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 873
    .line 874
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 879
    .line 880
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 881
    .line 882
    .line 883
    move-result-object v7

    .line 884
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v7

    .line 888
    invoke-static {v6, v7}, Lcom/papa/sim/statistic/s;->q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 892
    .line 893
    const-string v7, "Content-Type"

    .line 894
    .line 895
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v6

    .line 899
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 900
    .line 901
    .line 902
    move-result v7

    .line 903
    if-eqz v7, :cond_18

    .line 904
    .line 905
    move-object v6, v8

    .line 906
    :cond_18
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v6

    .line 910
    const-string v7, "application/octet-stream"

    .line 911
    .line 912
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 916
    if-nez v7, :cond_1b

    .line 917
    .line 918
    :try_start_12
    const-string v7, "application/vnd.android.package-archive"

    .line 919
    .line 920
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v7

    .line 924
    if-nez v7, :cond_1b

    .line 925
    .line 926
    const-string v7, "application/zip"

    .line 927
    .line 928
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v7

    .line 932
    if-nez v7, :cond_1b

    .line 933
    .line 934
    const-string v7, "audio/x-mod"

    .line 935
    .line 936
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v7

    .line 940
    if-nez v7, :cond_1b

    .line 941
    .line 942
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 943
    .line 944
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 945
    .line 946
    .line 947
    move-result-wide v11

    .line 948
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 949
    .line 950
    cmp-long v7, v11, v13

    .line 951
    .line 952
    if-nez v7, :cond_19

    .line 953
    .line 954
    goto :goto_a

    .line 955
    :cond_19
    :try_start_13
    new-instance v7, Ljava/lang/StringBuilder;

    .line 956
    .line 957
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .line 959
    .line 960
    const-string v9, "contentTypeConnection error. "

    .line 961
    .line 962
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 969
    .line 970
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 971
    .line 972
    .line 973
    goto :goto_9

    .line 974
    :catch_3
    move-exception v0

    .line 975
    move-object v6, v0

    .line 976
    :try_start_14
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 977
    .line 978
    .line 979
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .line 983
    .line 984
    const-string v7, "[007]:gid="

    .line 985
    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 990
    .line 991
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-string v7, "err:"

    .line 999
    .line 1000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 1004
    .line 1005
    if-eqz v7, :cond_1a

    .line 1006
    .line 1007
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v8

    .line 1011
    :cond_1a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v6

    .line 1018
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1019
    .line 1020
    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 1022
    .line 1023
    .line 1024
    return-void

    .line 1025
    :cond_1b
    :goto_a
    :try_start_15
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1029
    if-eqz v6, :cond_22

    .line 1030
    .line 1031
    :try_start_16
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 1032
    .line 1033
    const-string v7, "Content-Disposition"

    .line 1034
    .line 1035
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v6

    .line 1039
    if-eqz v6, :cond_1e

    .line 1040
    .line 1041
    const-string v7, "filename="

    .line 1042
    .line 1043
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v7

    .line 1047
    const/16 v10, 0x3b

    .line 1048
    .line 1049
    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->indexOf(II)I

    .line 1050
    .line 1051
    .line 1052
    move-result v10

    .line 1053
    add-int/lit8 v7, v7, 0x9

    .line 1054
    .line 1055
    if-lez v10, :cond_1c

    .line 1056
    .line 1057
    goto :goto_b

    .line 1058
    :cond_1c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1059
    .line 1060
    .line 1061
    move-result v10

    .line 1062
    :goto_b
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v6

    .line 1066
    const-string v7, "\""

    .line 1067
    .line 1068
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v7

    .line 1072
    if-eqz v7, :cond_1d

    .line 1073
    .line 1074
    const-string v7, "\""

    .line 1075
    .line 1076
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v6

    .line 1080
    :cond_1d
    move-object v7, v6

    .line 1081
    move-object/from16 v6, v20

    .line 1082
    .line 1083
    goto :goto_c

    .line 1084
    :cond_1e
    move-object/from16 v6, v20

    .line 1085
    .line 1086
    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1087
    .line 1088
    .line 1089
    move-result v7

    .line 1090
    const/4 v10, 0x1

    .line 1091
    add-int/2addr v7, v10

    .line 1092
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v10

    .line 1096
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v7

    .line 1100
    :goto_c
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v8

    .line 1104
    if-nez v8, :cond_20

    .line 1105
    .line 1106
    const-string v8, "nt"

    .line 1107
    .line 1108
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v8

    .line 1112
    if-eqz v8, :cond_1f

    .line 1113
    .line 1114
    goto :goto_e

    .line 1115
    :cond_1f
    :goto_d
    move-object v10, v7

    .line 1116
    goto :goto_f

    .line 1117
    :cond_20
    :goto_e
    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1118
    .line 1119
    .line 1120
    move-result v7

    .line 1121
    const/4 v8, 0x1

    .line 1122
    add-int/2addr v7, v8

    .line 1123
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1124
    .line 1125
    .line 1126
    move-result v8

    .line 1127
    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v7

    .line 1131
    goto :goto_d

    .line 1132
    :goto_f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1133
    .line 1134
    .line 1135
    move-result v7

    .line 1136
    const/16 v8, 0x32

    .line 1137
    .line 1138
    if-le v7, v8, :cond_23

    .line 1139
    .line 1140
    const-string v7, "?"

    .line 1141
    .line 1142
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v7

    .line 1146
    if-eqz v7, :cond_21

    .line 1147
    .line 1148
    const-string v7, "?"

    .line 1149
    .line 1150
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1151
    .line 1152
    .line 1153
    move-result v7

    .line 1154
    const/4 v8, 0x0

    .line 1155
    invoke-virtual {v10, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v10

    .line 1159
    goto :goto_10

    .line 1160
    :cond_21
    const/16 v7, 0x2d

    .line 1161
    .line 1162
    const/4 v8, 0x0

    .line 1163
    invoke-virtual {v10, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1167
    goto :goto_10

    .line 1168
    :cond_22
    move-object/from16 v6, v20

    .line 1169
    .line 1170
    :cond_23
    :goto_10
    :try_start_17
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1171
    .line 1172
    const-wide/16 v11, 0x0

    .line 1173
    .line 1174
    cmp-long v9, v7, v11

    .line 1175
    .line 1176
    if-nez v9, :cond_2c

    .line 1177
    .line 1178
    :try_start_18
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 1179
    .line 1180
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    move-object/from16 v8, v17

    .line 1185
    .line 1186
    if-eq v8, v7, :cond_24

    .line 1187
    .line 1188
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 1189
    .line 1190
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    :cond_24
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v7

    .line 1197
    if-eqz v7, :cond_29

    .line 1198
    .line 1199
    sget-object v7, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 1200
    .line 1201
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v7

    .line 1205
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1206
    .line 1207
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v8

    .line 1211
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v7

    .line 1215
    if-nez v7, :cond_26

    .line 1216
    .line 1217
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1218
    .line 1219
    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v7

    .line 1223
    if-eqz v7, :cond_25

    .line 1224
    .line 1225
    goto :goto_11

    .line 1226
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    sget-object v7, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 1232
    .line 1233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1237
    .line 1238
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v7

    .line 1242
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    .line 1245
    const-string v7, "/roms/"

    .line 1246
    .line 1247
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1254
    .line 1255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v6

    .line 1262
    goto :goto_12

    .line 1263
    :cond_26
    :goto_11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1266
    .line 1267
    .line 1268
    sget-object v8, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 1269
    .line 1270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    move-object/from16 v8, v19

    .line 1274
    .line 1275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1279
    .line 1280
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v8

    .line 1284
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v6

    .line 1297
    :goto_12
    new-instance v7, Ljava/io/File;

    .line 1298
    .line 1299
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1303
    .line 1304
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v7

    .line 1308
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1309
    .line 1310
    .line 1311
    move-result v8

    .line 1312
    if-nez v8, :cond_27

    .line 1313
    .line 1314
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1315
    .line 1316
    .line 1317
    move-result v7

    .line 1318
    if-nez v7, :cond_27

    .line 1319
    .line 1320
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v6

    .line 1324
    new-instance v7, Lcom/join/mgps/event/p;

    .line 1325
    .line 1326
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1327
    .line 1328
    const/16 v9, 0x20

    .line 1329
    .line 1330
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1334
    .line 1335
    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1337
    .line 1338
    .line 1339
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 1340
    .line 1341
    .line 1342
    return-void

    .line 1343
    :cond_27
    :try_start_19
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1344
    .line 1345
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1346
    .line 1347
    .line 1348
    move-result v7

    .line 1349
    if-nez v7, :cond_28

    .line 1350
    .line 1351
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1352
    .line 1353
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1354
    .line 1355
    .line 1356
    :cond_28
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1357
    .line 1358
    invoke-virtual {v7, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    :cond_29
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1362
    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v7

    .line 1367
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 1368
    .line 1369
    .line 1370
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1371
    .line 1372
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1373
    .line 1374
    cmp-long v10, v6, v8

    .line 1375
    .line 1376
    if-nez v10, :cond_2c

    .line 1377
    .line 1378
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1379
    .line 1380
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1381
    .line 1382
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 1383
    .line 1384
    .line 1385
    move-result-wide v7

    .line 1386
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 1387
    .line 1388
    .line 1389
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1390
    .line 1391
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1392
    .line 1393
    .line 1394
    move-result v6

    .line 1395
    const/4 v7, 0x1

    .line 1396
    if-eq v6, v7, :cond_2a

    .line 1397
    .line 1398
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1399
    .line 1400
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1401
    .line 1402
    .line 1403
    move-result v6

    .line 1404
    const/4 v7, 0x3

    .line 1405
    if-ne v6, v7, :cond_2b

    .line 1406
    .line 1407
    :cond_2a
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1408
    .line 1409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1410
    .line 1411
    .line 1412
    move-result-wide v7

    .line 1413
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 1414
    .line 1415
    sub-long/2addr v7, v9

    .line 1416
    invoke-direct {v1, v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 1417
    .line 1418
    .line 1419
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v6

    .line 1423
    new-instance v7, Lcom/join/mgps/event/p;

    .line 1424
    .line 1425
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1426
    .line 1427
    const/16 v9, 0x1f

    .line 1428
    .line 1429
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1433
    .line 1434
    .line 1435
    sget-boolean v6, Lcom/MApplication;->q1:Z

    .line 1436
    .line 1437
    if-eqz v6, :cond_2b

    .line 1438
    .line 1439
    sget-object v6, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1440
    .line 1441
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1442
    .line 1443
    const/4 v8, 0x5

    .line 1444
    invoke-static {v6, v7, v8}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v6

    .line 1451
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1452
    .line 1453
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v7

    .line 1457
    invoke-virtual {v6, v7}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1458
    .line 1459
    .line 1460
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 1461
    .line 1462
    .line 1463
    return-void

    .line 1464
    :cond_2c
    :try_start_1a
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1465
    .line 1466
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v7

    .line 1470
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1471
    .line 1472
    .line 1473
    move-result v8
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1474
    if-nez v8, :cond_2d

    .line 1475
    .line 1476
    :try_start_1b
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v7

    .line 1480
    if-nez v7, :cond_2d

    .line 1481
    .line 1482
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v6

    .line 1486
    new-instance v7, Lcom/join/mgps/event/p;

    .line 1487
    .line 1488
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1489
    .line 1490
    const/16 v9, 0x20

    .line 1491
    .line 1492
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1499
    .line 1500
    .line 1501
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 1502
    .line 1503
    .line 1504
    return-void

    .line 1505
    :cond_2d
    :try_start_1c
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 1506
    .line 1507
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1508
    .line 1509
    invoke-direct {v7, v8, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;

    .line 1513
    .line 1514
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1515
    .line 1516
    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1517
    .line 1518
    .line 1519
    goto :goto_13

    .line 1520
    :catch_4
    move-exception v0

    .line 1521
    move-object v7, v0

    .line 1522
    :try_start_1d
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v7

    .line 1529
    const-string v8, "EISDIR"

    .line 1530
    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v7
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 1535
    if-eqz v7, :cond_2f

    .line 1536
    .line 1537
    :try_start_1e
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1538
    .line 1539
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v7

    .line 1543
    if-eqz v7, :cond_2e

    .line 1544
    .line 1545
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1546
    .line 1547
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 1548
    .line 1549
    .line 1550
    move-result v7

    .line 1551
    if-eqz v7, :cond_2e

    .line 1552
    .line 1553
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1554
    .line 1555
    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 1556
    .line 1557
    .line 1558
    :cond_2e
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 1559
    .line 1560
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1561
    .line 1562
    invoke-direct {v7, v8, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;

    .line 1566
    .line 1567
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1568
    .line 1569
    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1570
    .line 1571
    .line 1572
    :cond_2f
    :goto_13
    :try_start_1f
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 1573
    .line 1574
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/net/HttpURLConnection;

    .line 1575
    .line 1576
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v8

    .line 1580
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1581
    .line 1582
    .line 1583
    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/InputStream;

    .line 1584
    .line 1585
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v7

    .line 1589
    new-instance v8, Lcom/join/mgps/event/p;

    .line 1590
    .line 1591
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1592
    .line 1593
    const/16 v10, 0x14

    .line 1594
    .line 1595
    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1599
    .line 1600
    .line 1601
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v7

    .line 1605
    new-instance v8, Lcom/join/mgps/event/p;

    .line 1606
    .line 1607
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1608
    .line 1609
    const/16 v10, 0x17

    .line 1610
    .line 1611
    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    const/16 v7, 0x1000

    .line 1618
    .line 1619
    new-array v7, v7, [B

    .line 1620
    .line 1621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1622
    .line 1623
    .line 1624
    move-result-wide v8

    .line 1625
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v10

    .line 1629
    new-instance v11, Lcom/join/mgps/event/p;

    .line 1630
    .line 1631
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1632
    .line 1633
    const/16 v13, 0x18

    .line 1634
    .line 1635
    invoke-direct {v11, v12, v13}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1636
    .line 1637
    .line 1638
    invoke-virtual {v10, v11}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1639
    .line 1640
    .line 1641
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1642
    .line 1643
    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v10

    .line 1647
    if-nez v10, :cond_47

    .line 1648
    .line 1649
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1650
    .line 1651
    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v10

    .line 1655
    if-eqz v10, :cond_30

    .line 1656
    .line 1657
    goto/16 :goto_1e

    .line 1658
    .line 1659
    :cond_30
    const-wide/16 v10, -0x1

    .line 1660
    .line 1661
    :goto_14
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/InputStream;

    .line 1662
    .line 1663
    const/16 v13, 0x1000

    .line 1664
    .line 1665
    const/4 v14, 0x0

    .line 1666
    invoke-virtual {v12, v7, v14, v13}, Ljava/io/InputStream;->read([BII)I

    .line 1667
    .line 1668
    .line 1669
    move-result v12
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 1670
    if-lez v12, :cond_3b

    .line 1671
    .line 1672
    :try_start_20
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1673
    .line 1674
    const-wide/16 v18, 0x0

    .line 1675
    .line 1676
    cmp-long v20, v13, v18

    .line 1677
    .line 1678
    if-nez v20, :cond_31

    .line 1679
    .line 1680
    const/4 v13, 0x1

    .line 1681
    iput-boolean v13, v1, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 1682
    .line 1683
    :cond_31
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/RandomAccessFile;

    .line 1684
    .line 1685
    const/4 v14, 0x0

    .line 1686
    invoke-virtual {v13, v7, v14, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1687
    .line 1688
    .line 1689
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1690
    .line 1691
    move-object/from16 v18, v7

    .line 1692
    .line 1693
    int-to-long v6, v12

    .line 1694
    add-long/2addr v13, v6

    .line 1695
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1696
    .line 1697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1698
    .line 1699
    .line 1700
    move-result-wide v6

    .line 1701
    sub-long/2addr v6, v8

    .line 1702
    const-wide/16 v12, 0x0

    .line 1703
    .line 1704
    cmp-long v14, v6, v12

    .line 1705
    .line 1706
    if-gez v14, :cond_32

    .line 1707
    .line 1708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1709
    .line 1710
    .line 1711
    move-result-wide v8

    .line 1712
    :cond_32
    const-wide/16 v12, 0x3e8

    .line 1713
    .line 1714
    cmp-long v14, v6, v12

    .line 1715
    .line 1716
    if-lez v14, :cond_38

    .line 1717
    .line 1718
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1719
    .line 1720
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1721
    .line 1722
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    .line 1723
    .line 1724
    .line 1725
    move-result-wide v19

    .line 1726
    sub-long v12, v12, v19

    .line 1727
    .line 1728
    const-wide/16 v19, 0x0

    .line 1729
    .line 1730
    cmp-long v14, v12, v19

    .line 1731
    .line 1732
    if-lez v14, :cond_37

    .line 1733
    .line 1734
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1735
    .line 1736
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1737
    .line 1738
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    .line 1739
    .line 1740
    .line 1741
    move-result-wide v19

    .line 1742
    sub-long v12, v12, v19

    .line 1743
    .line 1744
    const-wide/16 v19, 0x3e8

    .line 1745
    .line 1746
    mul-long v12, v12, v19

    .line 1747
    .line 1748
    div-long/2addr v12, v6

    .line 1749
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v6

    .line 1753
    invoke-virtual {v8, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 1754
    .line 1755
    .line 1756
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1757
    .line 1758
    const-wide/16 v8, 0x0

    .line 1759
    .line 1760
    cmp-long v12, v6, v8

    .line 1761
    .line 1762
    if-eqz v12, :cond_35

    .line 1763
    .line 1764
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1765
    .line 1766
    const-wide/16 v8, 0x64

    .line 1767
    .line 1768
    mul-long v6, v6, v8

    .line 1769
    .line 1770
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1771
    .line 1772
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    .line 1773
    .line 1774
    .line 1775
    move-result-wide v8

    .line 1776
    add-long/2addr v6, v8

    .line 1777
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1778
    .line 1779
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1780
    .line 1781
    .line 1782
    move-result v8

    .line 1783
    if-eqz v8, :cond_34

    .line 1784
    .line 1785
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1786
    .line 1787
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1788
    .line 1789
    .line 1790
    move-result v8

    .line 1791
    const/4 v9, 0x2

    .line 1792
    if-ne v8, v9, :cond_33

    .line 1793
    .line 1794
    goto :goto_15

    .line 1795
    :cond_33
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1796
    .line 1797
    goto :goto_16

    .line 1798
    :cond_34
    :goto_15
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 1799
    .line 1800
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 1801
    .line 1802
    add-long/2addr v8, v10

    .line 1803
    :goto_16
    div-long v10, v6, v8

    .line 1804
    .line 1805
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    .line 1809
    .line 1810
    const-string v7, "downloadResProgress: "

    .line 1811
    .line 1812
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1816
    .line 1817
    .line 1818
    const-string v7, "totalSize\uff1a"

    .line 1819
    .line 1820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1824
    .line 1825
    .line 1826
    :cond_35
    const-wide/16 v6, 0x1

    .line 1827
    .line 1828
    cmp-long v8, v10, v6

    .line 1829
    .line 1830
    if-gez v8, :cond_36

    .line 1831
    .line 1832
    const-wide/16 v6, 0x1

    .line 1833
    .line 1834
    move-wide v10, v6

    .line 1835
    :cond_36
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1836
    .line 1837
    invoke-virtual {v6, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 1838
    .line 1839
    .line 1840
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1841
    .line 1842
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1843
    .line 1844
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 1845
    .line 1846
    .line 1847
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1848
    .line 1849
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    .line 1850
    .line 1851
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1852
    .line 1853
    add-long/2addr v7, v12

    .line 1854
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 1855
    .line 1856
    .line 1857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1858
    .line 1859
    .line 1860
    move-result-wide v8

    .line 1861
    goto :goto_17

    .line 1862
    :cond_37
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1863
    .line 1864
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1865
    .line 1866
    invoke-virtual {v6, v12, v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 1867
    .line 1868
    .line 1869
    :goto_17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v6

    .line 1873
    new-instance v7, Lcom/join/mgps/event/p;

    .line 1874
    .line 1875
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1876
    .line 1877
    const/16 v13, 0x21

    .line 1878
    .line 1879
    invoke-direct {v7, v12, v13}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1883
    .line 1884
    .line 1885
    :cond_38
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1886
    .line 1887
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1888
    .line 1889
    .line 1890
    move-result v6

    .line 1891
    if-eqz v6, :cond_39

    .line 1892
    .line 1893
    goto :goto_18

    .line 1894
    :cond_39
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1895
    .line 1896
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1897
    .line 1898
    .line 1899
    move-result v6

    .line 1900
    if-eqz v6, :cond_3a

    .line 1901
    .line 1902
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1903
    .line 1904
    const-string v7, "0"

    .line 1905
    .line 1906
    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 1907
    .line 1908
    .line 1909
    sget-object v6, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1910
    .line 1911
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1912
    .line 1913
    const/16 v8, 0x8

    .line 1914
    .line 1915
    invoke-static {v6, v7, v8}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1916
    .line 1917
    .line 1918
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v6

    .line 1922
    new-instance v7, Lcom/join/mgps/event/p;

    .line 1923
    .line 1924
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 1925
    .line 1926
    const/16 v9, 0x21

    .line 1927
    .line 1928
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {v6, v7}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1932
    .line 1933
    .line 1934
    const/4 v6, 0x0

    .line 1935
    goto :goto_19

    .line 1936
    :cond_3a
    move-object/from16 v7, v18

    .line 1937
    .line 1938
    goto/16 :goto_14

    .line 1939
    .line 1940
    :cond_3b
    :goto_18
    const/4 v6, 0x1

    .line 1941
    :goto_19
    :try_start_21
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1942
    .line 1943
    .line 1944
    if-nez v6, :cond_3d

    .line 1945
    .line 1946
    :try_start_22
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1947
    .line 1948
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 1949
    .line 1950
    .line 1951
    move-result v6

    .line 1952
    const/4 v7, 0x7

    .line 1953
    if-eq v6, v7, :cond_3c

    .line 1954
    .line 1955
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1956
    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1958
    .line 1959
    .line 1960
    move-result-wide v7

    .line 1961
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 1962
    .line 1963
    sub-long/2addr v7, v9

    .line 1964
    const/4 v9, 0x1

    .line 1965
    invoke-direct {v1, v6, v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1966
    .line 1967
    .line 1968
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 1969
    .line 1970
    .line 1971
    goto/16 :goto_26

    .line 1972
    .line 1973
    :cond_3d
    :try_start_23
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 1974
    .line 1975
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 1976
    .line 1977
    .line 1978
    move-result-wide v6

    .line 1979
    iput-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1980
    .line 1981
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1982
    .line 1983
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1984
    .line 1985
    .line 1986
    const-string v7, "range: "

    .line 1987
    .line 1988
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    .line 1991
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 1992
    .line 1993
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1994
    .line 1995
    .line 1996
    const-string v7, " size: "

    .line 1997
    .line 1998
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    .line 2000
    .line 2001
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 2002
    .line 2003
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    iget-wide v6, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2007
    .line 2008
    const-wide/16 v8, 0x0

    .line 2009
    .line 2010
    cmp-long v10, v6, v8

    .line 2011
    .line 2012
    if-eqz v10, :cond_42

    .line 2013
    .line 2014
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 2015
    .line 2016
    cmp-long v10, v6, v8

    .line 2017
    .line 2018
    if-nez v10, :cond_42

    .line 2019
    .line 2020
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2021
    .line 2022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2023
    .line 2024
    .line 2025
    move-result-wide v7

    .line 2026
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2030
    .line 2031
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2032
    .line 2033
    invoke-virtual {v6, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 2034
    .line 2035
    .line 2036
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2037
    .line 2038
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 2039
    .line 2040
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v7

    .line 2044
    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 2045
    .line 2046
    .line 2047
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2048
    .line 2049
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 2050
    .line 2051
    .line 2052
    move-result v6

    .line 2053
    const/4 v7, 0x1

    .line 2054
    if-eq v6, v7, :cond_3f

    .line 2055
    .line 2056
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2057
    .line 2058
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 2059
    .line 2060
    .line 2061
    move-result v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 2062
    const/4 v7, 0x3

    .line 2063
    if-ne v6, v7, :cond_3e

    .line 2064
    .line 2065
    goto :goto_1a

    .line 2066
    :cond_3e
    :try_start_24
    sget-object v6, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2067
    .line 2068
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2069
    .line 2070
    const/16 v9, 0x8

    .line 2071
    .line 2072
    invoke-static {v6, v8, v9}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2073
    .line 2074
    .line 2075
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v6

    .line 2079
    new-instance v8, Lcom/join/mgps/event/p;

    .line 2080
    .line 2081
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2082
    .line 2083
    const/16 v10, 0x21

    .line 2084
    .line 2085
    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2086
    .line 2087
    .line 2088
    invoke-virtual {v6, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2089
    .line 2090
    .line 2091
    goto :goto_1b

    .line 2092
    :cond_3f
    const/4 v7, 0x3

    .line 2093
    :goto_1a
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2094
    .line 2095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2096
    .line 2097
    .line 2098
    move-result-wide v8

    .line 2099
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2100
    .line 2101
    sub-long/2addr v8, v10

    .line 2102
    invoke-direct {v1, v6, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 2103
    .line 2104
    .line 2105
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v6

    .line 2109
    new-instance v8, Lcom/join/mgps/event/p;

    .line 2110
    .line 2111
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2112
    .line 2113
    const/16 v10, 0x1f

    .line 2114
    .line 2115
    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v6, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2119
    .line 2120
    .line 2121
    sget-object v6, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2122
    .line 2123
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2124
    .line 2125
    const/4 v9, 0x5

    .line 2126
    invoke-static {v6, v8, v9}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 2127
    .line 2128
    .line 2129
    sget-boolean v6, Lcom/MApplication;->q1:Z

    .line 2130
    .line 2131
    if-eqz v6, :cond_40

    .line 2132
    .line 2133
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v6

    .line 2137
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2138
    .line 2139
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v8

    .line 2143
    invoke-virtual {v6, v8}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2144
    .line 2145
    .line 2146
    :cond_40
    :goto_1b
    iget-boolean v6, v1, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    .line 2147
    .line 2148
    if-eqz v6, :cond_41

    .line 2149
    .line 2150
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2151
    .line 2152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2153
    .line 2154
    .line 2155
    move-result-wide v8

    .line 2156
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2157
    .line 2158
    sub-long/2addr v8, v10

    .line 2159
    const/4 v10, 0x0

    .line 2160
    invoke-direct {v1, v6, v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 2161
    .line 2162
    .line 2163
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2164
    .line 2165
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v6

    .line 2169
    sget-object v8, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2170
    .line 2171
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v8

    .line 2175
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2176
    .line 2177
    .line 2178
    goto :goto_1c

    .line 2179
    :cond_41
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2180
    .line 2181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2182
    .line 2183
    .line 2184
    move-result-wide v8

    .line 2185
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2186
    .line 2187
    sub-long/2addr v8, v10

    .line 2188
    const/4 v10, 0x1

    .line 2189
    invoke-direct {v1, v6, v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 2190
    .line 2191
    .line 2192
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2193
    .line 2194
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v6

    .line 2198
    sget-object v8, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2199
    .line 2200
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v8

    .line 2204
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2205
    .line 2206
    .line 2207
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 2208
    .line 2209
    .line 2210
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2211
    .line 2212
    .line 2213
    return-void

    .line 2214
    :cond_42
    const/4 v7, 0x3

    .line 2215
    :try_start_25
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2216
    .line 2217
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 2218
    .line 2219
    .line 2220
    move-result v6

    .line 2221
    const/4 v8, 0x7

    .line 2222
    if-ne v6, v8, :cond_43

    .line 2223
    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_6
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 2225
    .line 2226
    .line 2227
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2228
    .line 2229
    .line 2230
    return-void

    .line 2231
    :cond_43
    :try_start_26
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 2232
    .line 2233
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 2234
    .line 2235
    .line 2236
    move-result v6

    .line 2237
    if-eqz v6, :cond_44

    .line 2238
    .line 2239
    iget-object v6, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 2240
    .line 2241
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 2242
    .line 2243
    .line 2244
    move-result-wide v8

    .line 2245
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 2246
    .line 2247
    cmp-long v6, v8, v10

    .line 2248
    .line 2249
    if-eqz v6, :cond_46

    .line 2250
    .line 2251
    :cond_44
    add-int/lit8 v6, v16, -0x1

    .line 2252
    .line 2253
    if-lez v6, :cond_45

    .line 2254
    .line 2255
    :try_start_27
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->r:Ljava/io/File;

    .line 2256
    .line 2257
    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 2258
    .line 2259
    .line 2260
    const-wide/16 v8, 0x0

    .line 2261
    .line 2262
    iput-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2263
    .line 2264
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2265
    .line 2266
    invoke-virtual {v10, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 2267
    .line 2268
    .line 2269
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2270
    .line 2271
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2272
    .line 2273
    invoke-virtual {v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 2274
    .line 2275
    .line 2276
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2277
    .line 2278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2279
    .line 2280
    .line 2281
    move-result-wide v9

    .line 2282
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->b:J

    .line 2283
    .line 2284
    sub-long/2addr v9, v11

    .line 2285
    invoke-direct {v1, v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 2286
    .line 2287
    .line 2288
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v8

    .line 2292
    new-instance v9, Lcom/join/mgps/event/p;

    .line 2293
    .line 2294
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2295
    .line 2296
    const/16 v11, 0x14

    .line 2297
    .line 2298
    invoke-direct {v9, v10, v11}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 2299
    .line 2300
    .line 2301
    invoke-virtual {v8, v9}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 2302
    .line 2303
    .line 2304
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 2305
    .line 2306
    .line 2307
    add-int/lit8 v6, v6, -0x1

    .line 2308
    .line 2309
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2310
    .line 2311
    .line 2312
    goto/16 :goto_24

    .line 2313
    .line 2314
    :catch_5
    move-exception v0

    .line 2315
    move/from16 v16, v6

    .line 2316
    .line 2317
    goto :goto_22

    .line 2318
    :cond_45
    move/from16 v16, v6

    .line 2319
    .line 2320
    :cond_46
    :try_start_28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2321
    .line 2322
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2323
    .line 2324
    .line 2325
    const-string v8, "[008]:gid="

    .line 2326
    .line 2327
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    .line 2329
    .line 2330
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2331
    .line 2332
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v8

    .line 2336
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    .line 2338
    .line 2339
    const-string v8, ",err:range: "

    .line 2340
    .line 2341
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    .line 2343
    .line 2344
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 2345
    .line 2346
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    const-string v8, " size: "

    .line 2350
    .line 2351
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    .line 2353
    .line 2354
    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 2355
    .line 2356
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2357
    .line 2358
    .line 2359
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v6

    .line 2363
    invoke-direct {v1, v6}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 2364
    .line 2365
    .line 2366
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 2367
    .line 2368
    .line 2369
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2370
    .line 2371
    .line 2372
    return-void

    .line 2373
    :cond_47
    :goto_1e
    const/4 v7, 0x3

    .line 2374
    :try_start_29
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_6
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 2375
    .line 2376
    .line 2377
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2378
    .line 2379
    .line 2380
    return-void

    .line 2381
    :catch_6
    move-exception v0

    .line 2382
    goto :goto_22

    .line 2383
    :cond_48
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2384
    .line 2385
    .line 2386
    return-void

    .line 2387
    :catch_7
    move-exception v0

    .line 2388
    goto :goto_21

    .line 2389
    :cond_49
    :goto_20
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2390
    .line 2391
    .line 2392
    return-void

    .line 2393
    :catchall_0
    move-exception v0

    .line 2394
    move-object v2, v0

    .line 2395
    goto :goto_25

    .line 2396
    :catch_8
    move-exception v0

    .line 2397
    move/from16 v16, v7

    .line 2398
    .line 2399
    :goto_21
    const/4 v7, 0x3

    .line 2400
    :goto_22
    move-object v6, v0

    .line 2401
    :goto_23
    :try_start_2a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2402
    .line 2403
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2404
    .line 2405
    .line 2406
    const-string v9, "[009]:gid="

    .line 2407
    .line 2408
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    .line 2410
    .line 2411
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2412
    .line 2413
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v9

    .line 2417
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    .line 2419
    .line 2420
    const-string v9, ",err:"

    .line 2421
    .line 2422
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    .line 2425
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v9

    .line 2429
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    .line 2431
    .line 2432
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v8

    .line 2436
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 2440
    .line 2441
    .line 2442
    add-int/lit8 v6, v16, -0x1

    .line 2443
    .line 2444
    goto/16 :goto_1d

    .line 2445
    .line 2446
    :goto_24
    move v7, v6

    .line 2447
    goto/16 :goto_0

    .line 2448
    .line 2449
    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2450
    .line 2451
    .line 2452
    throw v2

    .line 2453
    :cond_4a
    :goto_26
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 2454
    .line 2455
    .line 2456
    :cond_4b
    :goto_27
    return-void

    .line 2457
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x13

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/z;->e:Ljava/lang/String;

    .line 16
    .line 17
    sput-object v0, Lcom/github/snowdream/android/app/downloader/a;->C:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/android/app/common/utils/r;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isValid()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/join/mgps/event/p;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Ljava/lang/String;

    .line 47
    .line 48
    const/16 v3, 0x14

    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/a;->n(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/a;->o()V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    return-void

    .line 77
    :cond_5
    :goto_1
    const-string v0, "[001]:\u4e0b\u8f7d\u4efb\u52a1\u65e0\u6548"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/a;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
