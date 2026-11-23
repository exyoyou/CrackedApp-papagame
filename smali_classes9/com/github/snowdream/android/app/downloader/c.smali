.class public Lcom/github/snowdream/android/app/downloader/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final r:I = 0x1

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field public static final u:I = 0x5

.field public static final v:I = 0x2

.field public static final w:I = 0x6

.field public static final x:I = 0x7


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/os/Handler;

.field d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/io/File;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/RandomAccessFile;

.field private n:Ljava/io/InputStream;

.field private o:J

.field p:Ljava/lang/String;

.field q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileName",
            "downloadPath",
            "expectSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->n:Ljava/io/InputStream;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "/"

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 50
    .line 51
    :cond_0
    iput-wide p4, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 52
    .line 53
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->n:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_2
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_3
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    return-void
.end method

.method private j()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/github/snowdream/android/app/downloader/c;->n:Ljava/io/InputStream;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-lez v4, :cond_2

    .line 17
    .line 18
    iget-object v6, p0, Lcom/github/snowdream/android/app/downloader/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/c;->q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v6, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/RandomAccessFile;

    .line 31
    .line 32
    invoke-virtual {v6, v1, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 33
    .line 34
    .line 35
    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/c;->o:J

    .line 36
    .line 37
    int-to-long v7, v4

    .line 38
    add-long/2addr v5, v7

    .line 39
    iput-wide v5, p0, Lcom/github/snowdream/android/app/downloader/c;->o:J

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    sub-long v7, v5, v2

    .line 46
    .line 47
    const-wide/16 v9, 0xc8

    .line 48
    .line 49
    cmp-long v11, v7, v9

    .line 50
    .line 51
    if-lez v11, :cond_0

    .line 52
    .line 53
    mul-int/lit16 v4, v4, 0x3e8

    .line 54
    .line 55
    int-to-long v2, v4

    .line 56
    div-long/2addr v2, v7

    .line 57
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/github/snowdream/android/app/downloader/c;->p:Ljava/lang/String;

    .line 62
    .line 63
    iget-wide v2, p0, Lcom/github/snowdream/android/app/downloader/c;->o:J

    .line 64
    .line 65
    const-wide/16 v7, 0x64

    .line 66
    .line 67
    mul-long v2, v2, v7

    .line 68
    .line 69
    iget-wide v7, p0, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 70
    .line 71
    div-long/2addr v2, v7

    .line 72
    long-to-int v3, v2

    .line 73
    iput v3, p0, Lcom/github/snowdream/android/app/downloader/c;->q:I

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    invoke-direct {p0, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 77
    .line 78
    .line 79
    move-wide v2, v5

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    :goto_1
    return-void
.end method

.method private k(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput p1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ";"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/c;->p:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/c;->q:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    iget p1, p0, Lcom/github/snowdream/android/app/downloader/c;->q:I

    .line 50
    .line 51
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x7

    .line 55
    if-ne p1, v1, :cond_2

    .line 56
    .line 57
    iget-wide v1, p0, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 58
    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->c:Landroid/os/Handler;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/c;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x3

    .line 12
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public o(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public p(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "application/octet-stream"

    .line 4
    .line 5
    const-string v3, "Content-Type"

    .line 6
    .line 7
    const-string v4, "GET"

    .line 8
    .line 9
    const-string v5, "Keep-Alive"

    .line 10
    .line 11
    const-string v6, "Connection"

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-direct {v1, v0}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x13

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v7, 0x4

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->K(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    :try_start_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->q()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    const/4 v9, 0x0

    .line 99
    :goto_1
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 100
    .line 101
    if-lez v0, :cond_27

    .line 102
    .line 103
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const-wide/16 v10, 0x0

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-wide v12, v10

    .line 121
    :goto_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    .line 122
    .line 123
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    check-cast v15, Ljava/net/HttpURLConnection;

    .line 133
    .line 134
    iput-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 135
    .line 136
    const/16 v8, 0xbb8

    .line 137
    .line 138
    invoke-virtual {v15, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 139
    .line 140
    .line 141
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 142
    .line 143
    invoke-virtual {v15, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 144
    .line 145
    .line 146
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 147
    .line 148
    invoke-virtual {v15, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 152
    .line 153
    invoke-virtual {v15, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 157
    .line 158
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    const/16 v8, 0xc8

    .line 163
    .line 164
    if-ne v15, v8, :cond_1f

    .line 165
    .line 166
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 167
    .line 168
    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    invoke-static {v15}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    const-string v17, ""

    .line 177
    .line 178
    if-eqz v16, :cond_4

    .line 179
    .line 180
    move-object/from16 v15, v17

    .line 181
    .line 182
    :cond_4
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 187
    .line 188
    cmp-long v18, v7, v10

    .line 189
    .line 190
    if-nez v18, :cond_5

    .line 191
    .line 192
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    int-to-long v7, v7

    .line 199
    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 200
    .line 201
    :cond_5
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    const-string v8, "application/zip"

    .line 206
    .line 207
    const-string v10, "application/vnd.android.package-archive"

    .line 208
    .line 209
    if-nez v7, :cond_8

    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-nez v7, :cond_8

    .line 216
    .line 217
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-nez v7, :cond_8

    .line 222
    .line 223
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 224
    .line 225
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 226
    .line 227
    invoke-virtual {v11}, Ljava/net/URLConnection;->getContentLength()I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    move-object/from16 v20, v8

    .line 232
    .line 233
    int-to-long v7, v11

    .line 234
    cmp-long v11, v14, v7

    .line 235
    .line 236
    if-nez v11, :cond_6

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 242
    .line 243
    .line 244
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 245
    .line 246
    const/4 v7, 0x1

    .line 247
    sub-int/2addr v0, v7

    .line 248
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    .line 250
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 253
    .line 254
    .line 255
    move-result-wide v10

    .line 256
    const-wide/16 v12, 0x0

    .line 257
    .line 258
    cmp-long v0, v10, v12

    .line 259
    .line 260
    if-eqz v0, :cond_7

    .line 261
    .line 262
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 265
    .line 266
    .line 267
    move-result-wide v10

    .line 268
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 269
    .line 270
    cmp-long v0, v10, v12

    .line 271
    .line 272
    if-nez v0, :cond_7

    .line 273
    .line 274
    if-nez v9, :cond_24

    .line 275
    .line 276
    goto/16 :goto_b

    .line 277
    .line 278
    :cond_7
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 279
    .line 280
    if-nez v0, :cond_23

    .line 281
    .line 282
    goto/16 :goto_7

    .line 283
    .line 284
    :cond_8
    move-object/from16 v20, v8

    .line 285
    .line 286
    :goto_3
    :try_start_4
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 287
    .line 288
    const-wide/16 v18, 0x0

    .line 289
    .line 290
    cmp-long v8, v14, v18

    .line 291
    .line 292
    if-eqz v8, :cond_a

    .line 293
    .line 294
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    int-to-long v7, v8

    .line 301
    cmp-long v11, v14, v7

    .line 302
    .line 303
    if-eqz v11, :cond_a

    .line 304
    .line 305
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    .line 309
    .line 310
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 311
    .line 312
    const/4 v7, 0x1

    .line 313
    sub-int/2addr v0, v7

    .line 314
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 315
    .line 316
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 319
    .line 320
    .line 321
    move-result-wide v10

    .line 322
    const-wide/16 v12, 0x0

    .line 323
    .line 324
    cmp-long v0, v10, v12

    .line 325
    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 331
    .line 332
    .line 333
    move-result-wide v10

    .line 334
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 335
    .line 336
    cmp-long v0, v10, v12

    .line 337
    .line 338
    if-nez v0, :cond_9

    .line 339
    .line 340
    if-nez v9, :cond_24

    .line 341
    .line 342
    goto/16 :goto_b

    .line 343
    .line 344
    :cond_9
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 345
    .line 346
    if-nez v0, :cond_23

    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_a
    :try_start_5
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 351
    .line 352
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    int-to-long v14, v8

    .line 357
    iput-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 358
    .line 359
    const/4 v8, 0x7

    .line 360
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 361
    .line 362
    .line 363
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 364
    .line 365
    const-wide/16 v18, 0x0

    .line 366
    .line 367
    cmp-long v8, v14, v18

    .line 368
    .line 369
    if-eqz v8, :cond_d

    .line 370
    .line 371
    cmp-long v8, v12, v14

    .line 372
    .line 373
    if-nez v8, :cond_d

    .line 374
    .line 375
    const/4 v7, 0x1

    .line 376
    :try_start_6
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 377
    .line 378
    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 380
    .line 381
    .line 382
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    cmp-long v0, v2, v18

    .line 389
    .line 390
    if-eqz v0, :cond_b

    .line 391
    .line 392
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 399
    .line 400
    cmp-long v0, v2, v4

    .line 401
    .line 402
    if-nez v0, :cond_b

    .line 403
    .line 404
    goto/16 :goto_c

    .line 405
    .line 406
    :cond_b
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 407
    .line 408
    if-nez v0, :cond_c

    .line 409
    .line 410
    const/4 v2, 0x4

    .line 411
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 412
    .line 413
    .line 414
    :cond_c
    return-void

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    const/4 v9, 0x1

    .line 417
    goto/16 :goto_a

    .line 418
    .line 419
    :catch_1
    move-exception v0

    .line 420
    const/4 v9, 0x1

    .line 421
    goto/16 :goto_8

    .line 422
    .line 423
    :cond_d
    const/4 v8, 0x0

    .line 424
    :try_start_7
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 425
    .line 426
    if-eqz v11, :cond_e

    .line 427
    .line 428
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 429
    .line 430
    .line 431
    iput-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 432
    .line 433
    :catch_2
    :cond_e
    :try_start_8
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 434
    .line 435
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 436
    .line 437
    .line 438
    move-result v11

    .line 439
    if-eqz v11, :cond_11

    .line 440
    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->q()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    .line 443
    .line 444
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 447
    .line 448
    .line 449
    move-result-wide v2

    .line 450
    const-wide/16 v4, 0x0

    .line 451
    .line 452
    cmp-long v0, v2, v4

    .line 453
    .line 454
    if-eqz v0, :cond_f

    .line 455
    .line 456
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 459
    .line 460
    .line 461
    move-result-wide v2

    .line 462
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 463
    .line 464
    cmp-long v0, v2, v4

    .line 465
    .line 466
    if-nez v0, :cond_f

    .line 467
    .line 468
    if-nez v9, :cond_24

    .line 469
    .line 470
    goto/16 :goto_b

    .line 471
    .line 472
    :cond_f
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 473
    .line 474
    if-nez v0, :cond_10

    .line 475
    .line 476
    const/4 v2, 0x4

    .line 477
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 478
    .line 479
    .line 480
    :cond_10
    return-void

    .line 481
    :cond_11
    :try_start_9
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 486
    .line 487
    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 488
    .line 489
    const/16 v11, 0xbb8

    .line 490
    .line 491
    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 492
    .line 493
    .line 494
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 495
    .line 496
    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 497
    .line 498
    .line 499
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 500
    .line 501
    invoke-virtual {v0, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 505
    .line 506
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    const-wide/16 v14, 0x0

    .line 510
    .line 511
    cmp-long v0, v12, v14

    .line 512
    .line 513
    if-lez v0, :cond_12

    .line 514
    .line 515
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 516
    .line 517
    const-string v14, "Range"

    .line 518
    .line 519
    new-instance v15, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    const-string v7, "bytes="

    .line 525
    .line 526
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v7, "-"

    .line 533
    .line 534
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-virtual {v11, v14, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :cond_12
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 545
    .line 546
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 547
    .line 548
    .line 549
    move-result v7

    .line 550
    const/16 v11, 0xc8

    .line 551
    .line 552
    if-eq v7, v11, :cond_13

    .line 553
    .line 554
    const/16 v11, 0xce

    .line 555
    .line 556
    if-eq v7, v11, :cond_13

    .line 557
    .line 558
    packed-switch v7, :pswitch_data_0

    .line 559
    .line 560
    .line 561
    :pswitch_0
    const/4 v7, 0x0

    .line 562
    goto :goto_4

    .line 563
    :cond_13
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 564
    .line 565
    const-string v14, "Transfer-Encoding"

    .line 566
    .line 567
    invoke-virtual {v11, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v11

    .line 571
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 572
    .line 573
    .line 574
    move-result v14

    .line 575
    if-nez v14, :cond_14

    .line 576
    .line 577
    const-string v14, "chunked"

    .line 578
    .line 579
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    :cond_14
    const/16 v11, 0xc8

    .line 583
    .line 584
    if-ne v7, v11, :cond_15

    .line 585
    .line 586
    if-lez v0, :cond_15

    .line 587
    .line 588
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_15

    .line 595
    .line 596
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 597
    .line 598
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 599
    .line 600
    .line 601
    :cond_15
    const/4 v7, 0x1

    .line 602
    :goto_4
    if-nez v7, :cond_19

    .line 603
    .line 604
    :try_start_a
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 605
    .line 606
    if-eqz v0, :cond_16

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 609
    .line 610
    .line 611
    iput-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 612
    .line 613
    :catch_3
    :cond_16
    :try_start_b
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 614
    .line 615
    const/4 v7, 0x1

    .line 616
    sub-int/2addr v0, v7

    .line 617
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 618
    .line 619
    if-nez v0, :cond_17

    .line 620
    .line 621
    const/4 v8, 0x4

    .line 622
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 623
    .line 624
    .line 625
    :cond_17
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 628
    .line 629
    .line 630
    move-result-wide v10

    .line 631
    const-wide/16 v12, 0x0

    .line 632
    .line 633
    cmp-long v0, v10, v12

    .line 634
    .line 635
    if-eqz v0, :cond_18

    .line 636
    .line 637
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 640
    .line 641
    .line 642
    move-result-wide v10

    .line 643
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 644
    .line 645
    cmp-long v0, v10, v12

    .line 646
    .line 647
    if-nez v0, :cond_18

    .line 648
    .line 649
    if-nez v9, :cond_24

    .line 650
    .line 651
    goto/16 :goto_b

    .line 652
    .line 653
    :cond_18
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 654
    .line 655
    if-nez v0, :cond_23

    .line 656
    .line 657
    goto/16 :goto_7

    .line 658
    .line 659
    :cond_19
    :try_start_c
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 660
    .line 661
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 666
    .line 667
    .line 668
    move-result v8

    .line 669
    if-eqz v8, :cond_1a

    .line 670
    .line 671
    goto :goto_5

    .line 672
    :cond_1a
    move-object/from16 v17, v0

    .line 673
    .line 674
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v8

    .line 682
    if-nez v8, :cond_1d

    .line 683
    .line 684
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-nez v8, :cond_1d

    .line 689
    .line 690
    move-object/from16 v8, v20

    .line 691
    .line 692
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    if-nez v0, :cond_1d

    .line 697
    .line 698
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    .line 699
    .line 700
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 701
    .line 702
    cmp-long v0, v10, v14

    .line 703
    .line 704
    if-nez v0, :cond_1b

    .line 705
    .line 706
    goto :goto_6

    .line 707
    :cond_1b
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 710
    .line 711
    .line 712
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 713
    .line 714
    const/4 v7, 0x1

    .line 715
    sub-int/2addr v0, v7

    .line 716
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 717
    .line 718
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 719
    .line 720
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 721
    .line 722
    .line 723
    move-result-wide v10

    .line 724
    const-wide/16 v12, 0x0

    .line 725
    .line 726
    cmp-long v0, v10, v12

    .line 727
    .line 728
    if-eqz v0, :cond_1c

    .line 729
    .line 730
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 733
    .line 734
    .line 735
    move-result-wide v10

    .line 736
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 737
    .line 738
    cmp-long v0, v10, v12

    .line 739
    .line 740
    if-nez v0, :cond_1c

    .line 741
    .line 742
    if-nez v9, :cond_24

    .line 743
    .line 744
    goto/16 :goto_b

    .line 745
    .line 746
    :cond_1c
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 747
    .line 748
    if-nez v0, :cond_23

    .line 749
    .line 750
    goto :goto_7

    .line 751
    :cond_1d
    :goto_6
    :try_start_d
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 752
    .line 753
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 754
    .line 755
    const-string v10, "rw"

    .line 756
    .line 757
    invoke-direct {v0, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/RandomAccessFile;

    .line 761
    .line 762
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 763
    .line 764
    .line 765
    iput-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->o:J

    .line 766
    .line 767
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 768
    .line 769
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/net/HttpURLConnection;

    .line 770
    .line 771
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 772
    .line 773
    .line 774
    move-result-object v8

    .line 775
    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 776
    .line 777
    .line 778
    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->n:Ljava/io/InputStream;

    .line 779
    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->j()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 781
    .line 782
    .line 783
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 786
    .line 787
    .line 788
    move-result-wide v2

    .line 789
    const-wide/16 v4, 0x0

    .line 790
    .line 791
    cmp-long v0, v2, v4

    .line 792
    .line 793
    if-eqz v0, :cond_1e

    .line 794
    .line 795
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 798
    .line 799
    .line 800
    move-result-wide v2

    .line 801
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 802
    .line 803
    cmp-long v0, v2, v4

    .line 804
    .line 805
    if-nez v0, :cond_1e

    .line 806
    .line 807
    if-nez v9, :cond_24

    .line 808
    .line 809
    goto/16 :goto_b

    .line 810
    .line 811
    :cond_1e
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 812
    .line 813
    if-nez v0, :cond_27

    .line 814
    .line 815
    const/4 v2, 0x4

    .line 816
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_d

    .line 820
    .line 821
    :cond_1f
    :try_start_e
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 824
    .line 825
    .line 826
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 827
    .line 828
    const/4 v7, 0x1

    .line 829
    sub-int/2addr v0, v7

    .line 830
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 831
    .line 832
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 833
    .line 834
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 835
    .line 836
    .line 837
    move-result-wide v10

    .line 838
    const-wide/16 v12, 0x0

    .line 839
    .line 840
    cmp-long v0, v10, v12

    .line 841
    .line 842
    if-eqz v0, :cond_20

    .line 843
    .line 844
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 845
    .line 846
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 847
    .line 848
    .line 849
    move-result-wide v10

    .line 850
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 851
    .line 852
    cmp-long v0, v10, v12

    .line 853
    .line 854
    if-nez v0, :cond_20

    .line 855
    .line 856
    if-nez v9, :cond_24

    .line 857
    .line 858
    goto :goto_b

    .line 859
    :cond_20
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 860
    .line 861
    if-nez v0, :cond_23

    .line 862
    .line 863
    :goto_7
    goto :goto_9

    .line 864
    :catchall_1
    move-exception v0

    .line 865
    goto :goto_a

    .line 866
    :catch_4
    move-exception v0

    .line 867
    :goto_8
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 868
    .line 869
    .line 870
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 871
    .line 872
    const/4 v7, 0x1

    .line 873
    sub-int/2addr v0, v7

    .line 874
    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 875
    .line 876
    if-nez v0, :cond_21

    .line 877
    .line 878
    const/4 v8, 0x4

    .line 879
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 880
    .line 881
    .line 882
    :cond_21
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 883
    .line 884
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 885
    .line 886
    .line 887
    move-result-wide v10

    .line 888
    const-wide/16 v12, 0x0

    .line 889
    .line 890
    cmp-long v0, v10, v12

    .line 891
    .line 892
    if-eqz v0, :cond_22

    .line 893
    .line 894
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 895
    .line 896
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 897
    .line 898
    .line 899
    move-result-wide v10

    .line 900
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 901
    .line 902
    cmp-long v0, v10, v12

    .line 903
    .line 904
    if-nez v0, :cond_22

    .line 905
    .line 906
    if-nez v9, :cond_24

    .line 907
    .line 908
    goto :goto_b

    .line 909
    :cond_22
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 910
    .line 911
    if-nez v0, :cond_23

    .line 912
    .line 913
    :goto_9
    const/4 v7, 0x4

    .line 914
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 915
    .line 916
    .line 917
    :cond_23
    const/4 v7, 0x4

    .line 918
    goto/16 :goto_1

    .line 919
    .line 920
    :goto_a
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 921
    .line 922
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 923
    .line 924
    .line 925
    move-result-wide v2

    .line 926
    const-wide/16 v4, 0x0

    .line 927
    .line 928
    cmp-long v6, v2, v4

    .line 929
    .line 930
    if-eqz v6, :cond_25

    .line 931
    .line 932
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/io/File;

    .line 933
    .line 934
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 935
    .line 936
    .line 937
    move-result-wide v2

    .line 938
    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->f:J

    .line 939
    .line 940
    cmp-long v6, v2, v4

    .line 941
    .line 942
    if-nez v6, :cond_25

    .line 943
    .line 944
    if-nez v9, :cond_24

    .line 945
    .line 946
    :goto_b
    const/4 v2, 0x1

    .line 947
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 948
    .line 949
    .line 950
    :cond_24
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->b()V

    .line 951
    .line 952
    .line 953
    goto :goto_d

    .line 954
    :cond_25
    iget v2, v1, Lcom/github/snowdream/android/app/downloader/c;->d:I

    .line 955
    .line 956
    if-nez v2, :cond_26

    .line 957
    .line 958
    const/4 v2, 0x4

    .line 959
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->k(I)V

    .line 960
    .line 961
    .line 962
    :cond_26
    throw v0

    .line 963
    :cond_27
    :goto_d
    return-void

    .line 964
    nop

    .line 965
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
