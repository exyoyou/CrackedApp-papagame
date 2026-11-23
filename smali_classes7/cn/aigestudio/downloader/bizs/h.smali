.class Lcn/aigestudio/downloader/bizs/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/aigestudio/downloader/bizs/l;


# static fields
.field private static final g:Ljava/lang/String; = "h"


# instance fields
.field private b:Lcn/aigestudio/downloader/bizs/f;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/atomic/AtomicLong;

.field private e:I

.field private f:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "info"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 26
    .line 27
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    iget-object v1, p2, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p2, Lcn/aigestudio/downloader/bizs/f;->j:Z

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)V
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
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->o:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcn/aigestudio/downloader/bizs/e;

    .line 20
    .line 21
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/e;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/e;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private g(Ljava/net/HttpURLConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 7
    .line 8
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 9
    .line 10
    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x1000

    .line 16
    .line 17
    :try_start_2
    new-array v2, v2, [B

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 20
    .line 21
    iget-boolean v3, v3, Lcn/aigestudio/downloader/bizs/f;->s:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "downloading...len="

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ";url="

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 51
    .line 52
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 65
    .line 66
    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v4, v3}, Lcn/aigestudio/downloader/bizs/h;->c(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 73
    .line 74
    iget-boolean v2, v2, Lcn/aigestudio/downloader/bizs/f;->s:Z

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "wap thread stop now.url="

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 89
    .line 90
    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcn/aigestudio/downloader/bizs/h;->j(Lcn/aigestudio/downloader/bizs/f;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0, v0}, Lcn/aigestudio/downloader/bizs/h;->a(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    move-object v6, v1

    .line 115
    move-object v1, v0

    .line 116
    move-object v0, v6

    .line 117
    goto :goto_3

    .line 118
    :catch_1
    move-exception v1

    .line 119
    move-object v6, v1

    .line 120
    move-object v1, v0

    .line 121
    move-object v0, v6

    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    move-object v1, v0

    .line 125
    move-object v0, p1

    .line 126
    move-object p1, v1

    .line 127
    goto :goto_3

    .line 128
    :catch_2
    move-exception p1

    .line 129
    move-object v1, v0

    .line 130
    move-object v0, p1

    .line 131
    move-object p1, v1

    .line 132
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    new-instance v0, Ljava/io/IOException;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 138
    .line 139
    .line 140
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    :catchall_2
    move-exception v0

    .line 142
    :goto_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 146
    .line 147
    .line 148
    throw v0
.end method

.method private h()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 8
    .line 9
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->g(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcn/aigestudio/downloader/bizs/j;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v1, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 50
    .line 51
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 57
    .line 58
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 67
    .line 68
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 77
    .line 78
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-wide/16 v0, 0x0

    .line 86
    .line 87
    :goto_1
    move-wide v5, v0

    .line 88
    new-instance v0, Lcn/aigestudio/downloader/bizs/j;

    .line 89
    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 99
    .line 100
    iget-object v4, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    move-object v2, v0

    .line 109
    invoke-direct/range {v2 .. v8}, Lcn/aigestudio/downloader/bizs/j;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/f;->a(Lcn/aigestudio/downloader/bizs/j;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/c;->i(Lcn/aigestudio/downloader/bizs/j;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v2, Lcn/aigestudio/downloader/bizs/i;

    .line 133
    .line 134
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 135
    .line 136
    invoke-direct {v2, v0, v3, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method private i(Ljava/net/HttpURLConnection;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conn",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method dlInit() called.code= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ";url="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 20
    .line 21
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->k(Ljava/net/HttpURLConnection;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->c(Lcn/aigestudio/downloader/bizs/f;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 41
    .line 42
    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 47
    .line 48
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 49
    .line 50
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v4, v0, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-interface/range {v1 .. v6}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 66
    .line 67
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/join/mgps/Util/o3;->i(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_a

    .line 74
    .line 75
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 76
    .line 77
    new-instance v1, Ljava/io/File;

    .line 78
    .line 79
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 80
    .line 81
    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 87
    .line 88
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 89
    .line 90
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 99
    .line 100
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 107
    .line 108
    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    cmp-long v4, v0, v2

    .line 115
    .line 116
    if-nez v4, :cond_2

    .line 117
    .line 118
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 119
    .line 120
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 121
    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 131
    .line 132
    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 133
    .line 134
    const/4 v0, 0x7

    .line 135
    invoke-virtual {p1, p2, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 139
    .line 140
    iget-object p2, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 141
    .line 142
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 145
    .line 146
    invoke-interface {p2, v0, p1}, Lg/b;->f(Ljava/lang/String;Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    return-void

    .line 150
    :cond_2
    const-wide/16 v0, 0x0

    .line 151
    .line 152
    const/16 v2, 0xc8

    .line 153
    .line 154
    if-ne p2, v2, :cond_4

    .line 155
    .line 156
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 157
    .line 158
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_4

    .line 165
    .line 166
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 167
    .line 168
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    cmp-long v5, v3, v0

    .line 175
    .line 176
    if-gtz v5, :cond_3

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    .line 181
    .line 182
    new-instance p1, Ljava/lang/Exception;

    .line 183
    .line 184
    const-string p2, "wap mode."

    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    :cond_4
    :goto_0
    if-eq p2, v2, :cond_8

    .line 191
    .line 192
    const/16 v2, 0xce

    .line 193
    .line 194
    if-eq p2, v2, :cond_5

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 198
    .line 199
    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    cmp-long p2, v2, v0

    .line 206
    .line 207
    if-gtz p2, :cond_6

    .line 208
    .line 209
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->g(Ljava/net/HttpURLConnection;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 214
    .line 215
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->j:Z

    .line 216
    .line 217
    if-eqz p1, :cond_7

    .line 218
    .line 219
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 220
    .line 221
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 222
    .line 223
    if-eqz p1, :cond_7

    .line 224
    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    const/4 p2, 0x1

    .line 230
    if-ne p1, p2, :cond_7

    .line 231
    .line 232
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 233
    .line 234
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_9

    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    check-cast p2, Lcn/aigestudio/downloader/bizs/j;

    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->h:Z

    .line 254
    .line 255
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 256
    .line 257
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 258
    .line 259
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    iput-wide v0, p2, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 266
    .line 267
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 268
    .line 269
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v1, Lcn/aigestudio/downloader/bizs/i;

    .line 274
    .line 275
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 276
    .line 277
    invoke-direct {v1, p2, v2, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_7
    invoke-direct {p0}, Lcn/aigestudio/downloader/bizs/h;->h()V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_8
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->g(Ljava/net/HttpURLConnection;)V

    .line 289
    .line 290
    .line 291
    :cond_9
    :goto_2
    return-void

    .line 292
    :cond_a
    new-instance p1, Lcn/aigestudio/downloader/bizs/DLException;

    .line 293
    .line 294
    const-string p2, "Can not create file"

    .line 295
    .line 296
    invoke-direct {p1, p2}, Lcn/aigestudio/downloader/bizs/DLException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1
.end method

.method private declared-synchronized j(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "method onStop() called.url="

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 34
    .line 35
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-interface {v0, v1, v2, v3}, Lg/b;->e(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method

.method private k(Ljava/net/HttpURLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 2
    .line 3
    const-string v1, "Content-Disposition"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 12
    .line 13
    const-string v1, "Content-Location"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/k;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Transfer-Encoding"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    :try_start_0
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 48
    .line 49
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    const-string v4, "Content-Length"

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-long v4, p1

    .line 62
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 67
    .line 68
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    .line 70
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 75
    .line 76
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    .line 78
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 82
    .line 83
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    cmp-long p1, v4, v2

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_1

    .line 98
    .line 99
    const-string p1, "chunked"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    const-string v0, "Can not obtain size of download file."

    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 117
    .line 118
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 127
    .line 128
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 139
    .line 140
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadInfo"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 6
    .line 7
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 18
    .line 19
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 25
    .line 26
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 27
    .line 28
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Lg/b;->f(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/f;->b(Lcn/aigestudio/downloader/bizs/j;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/c;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v1, p1, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 54
    .line 55
    iget-wide v3, p1, Lcn/aigestudio/downloader/bizs/j;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-gez p1, :cond_2

    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "Thread size "

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 74
    .line 75
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 85
    .line 86
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 101
    .line 102
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 114
    .line 115
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcn/aigestudio/downloader/bizs/c;->f(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 121
    .line 122
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 127
    .line 128
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 129
    .line 130
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    invoke-interface {v0, v1, v2, v3}, Lg/b;->c(Ljava/lang/String;J)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 142
    .line 143
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 144
    .line 145
    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 146
    .line 147
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 148
    .line 149
    invoke-interface {v0, v1, p1}, Lg/b;->f(Ljava/lang/String;Ljava/io/File;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 163
    .line 164
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    :goto_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 171
    .line 172
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-ge p1, v0, :cond_5

    .line 179
    .line 180
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 181
    .line 182
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    .line 189
    .line 190
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 191
    .line 192
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    new-instance v2, Lcn/aigestudio/downloader/bizs/i;

    .line 197
    .line 198
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 199
    .line 200
    invoke-direct {v2, v0, v3, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .line 205
    .line 206
    add-int/lit8 p1, p1, 0x1

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_5
    :goto_1
    monitor-exit p0

    .line 210
    return-void

    .line 211
    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    .line 213
    throw p1
.end method

.method public declared-synchronized b(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadInfo"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->e(Lcn/aigestudio/downloader/bizs/j;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 16
    .line 17
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 18
    .line 19
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lt p1, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 28
    .line 29
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcn/aigestudio/downloader/bizs/c;->c(Lcn/aigestudio/downloader/bizs/f;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 53
    .line 54
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 55
    .line 56
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 61
    .line 62
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 63
    .line 64
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-interface {v0, p1, v1, v2}, Lg/b;->d(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_0
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "progress"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    int-to-long v3, p2

    .line 9
    add-long/2addr v1, v3

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sub-long v2, v0, v2

    .line 24
    .line 25
    const-wide/16 v4, 0x3e8

    .line 26
    .line 27
    cmp-long p2, v2, v4

    .line 28
    .line 29
    if-lez p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 51
    .line 52
    iget-boolean p2, p2, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 57
    .line 58
    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 59
    .line 60
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-interface {p2, p1, v2, v3}, Lg/b;->c(Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_1
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public declared-synchronized d(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadInfo"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->e(Lcn/aigestudio/downloader/bizs/j;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 16
    .line 17
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 18
    .line 19
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_2

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "All the threads was stopped.threadInfo.isError="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p1, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 43
    .line 44
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    .line 46
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/g;->c(Lcn/aigestudio/downloader/bizs/f;)Lcn/aigestudio/downloader/bizs/g;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 68
    .line 69
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-virtual {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->c(Lcn/aigestudio/downloader/bizs/f;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->e:I

    .line 88
    .line 89
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 90
    .line 91
    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 96
    .line 97
    if-eqz p1, :cond_0

    .line 98
    .line 99
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 100
    .line 101
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 102
    .line 103
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 104
    .line 105
    const-string v1, "-1"

    .line 106
    .line 107
    const/4 v2, -0x1

    .line 108
    invoke-interface {v0, p1, v2, v1}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 113
    .line 114
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 115
    .line 116
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-interface {v0, p1, v1, v2}, Lg/b;->e(Ljava/lang/String;J)V

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_2
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    .line 140
    throw p1
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 8
    .line 9
    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 10
    .line 11
    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, v0, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-interface/range {v1 .. v6}, Lg/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/16 v0, 0xa

    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 32
    .line 33
    iget v0, v0, Lcn/aigestudio/downloader/bizs/f;->h:I

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    if-ge v0, v1, :cond_d

    .line 37
    .line 38
    const/16 v0, 0x8a

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    const/4 v3, 0x0

    .line 42
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 43
    .line 44
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 45
    .line 46
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .line 57
    :try_start_1
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 58
    .line 59
    iget-boolean v5, v3, Lcn/aigestudio/downloader/bizs/f;->s:Z

    .line 60
    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 70
    .line 71
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v5, 0x4

    .line 74
    invoke-virtual {v1, v3, v5}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void

    .line 83
    :cond_2
    :try_start_2
    iget-boolean v3, v3, Lcn/aigestudio/downloader/bizs/f;->t:Z

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 94
    .line 95
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v3, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 101
    .line 102
    iget-boolean v1, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 107
    .line 108
    iget-object v3, v1, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 109
    .line 110
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 111
    .line 112
    const-string v5, "delete..."

    .line 113
    .line 114
    invoke-interface {v3, v1, v0, v5}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_3
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    const/4 v3, 0x0

    .line 124
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 125
    .line 126
    .line 127
    const/16 v3, 0x2710

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 130
    .line 131
    .line 132
    const/16 v3, 0x7530

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v4}, Lcn/aigestudio/downloader/bizs/h;->e(Ljava/net/HttpURLConnection;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/16 v5, 0xc8

    .line 145
    .line 146
    if-eq v3, v5, :cond_9

    .line 147
    .line 148
    const/16 v5, 0xce

    .line 149
    .line 150
    if-eq v3, v5, :cond_9

    .line 151
    .line 152
    const/16 v5, 0x12d

    .line 153
    .line 154
    if-eq v3, v5, :cond_7

    .line 155
    .line 156
    const/16 v5, 0x133

    .line 157
    .line 158
    if-eq v3, v5, :cond_7

    .line 159
    .line 160
    const/16 v5, 0x12f

    .line 161
    .line 162
    if-eq v3, v5, :cond_7

    .line 163
    .line 164
    const/16 v5, 0x130

    .line 165
    .line 166
    if-eq v3, v5, :cond_7

    .line 167
    .line 168
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 169
    .line 170
    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 171
    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 175
    .line 176
    iget-object v6, v5, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 177
    .line 178
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-interface {v6, v5, v3, v7}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 194
    .line 195
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v3, v5, v1}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_7
    :try_start_4
    const-string v1, "location"

    .line 205
    .line 206
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_8

    .line 215
    .line 216
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 217
    .line 218
    iput-object v1, v3, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 219
    .line 220
    iget v1, v3, Lcn/aigestudio/downloader/bizs/f;->h:I

    .line 221
    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    iput v1, v3, Lcn/aigestudio/downloader/bizs/f;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_8
    :try_start_5
    new-instance v1, Lcn/aigestudio/downloader/bizs/DLException;

    .line 232
    .line 233
    const-string v3, "Can not obtain real url from location in header."

    .line 234
    .line 235
    invoke-direct {v1, v3}, Lcn/aigestudio/downloader/bizs/DLException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v1

    .line 239
    :cond_9
    invoke-direct {p0, v4, v3}, Lcn/aigestudio/downloader/bizs/h;->i(Ljava/net/HttpURLConnection;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    move-object v3, v4

    .line 248
    goto :goto_2

    .line 249
    :catch_0
    move-exception v1

    .line 250
    move-object v3, v4

    .line 251
    goto :goto_1

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    goto :goto_2

    .line 254
    :catch_1
    move-exception v1

    .line 255
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 259
    .line 260
    invoke-static {v4}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 265
    .line 266
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v4, v5, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 272
    .line 273
    iget-boolean v2, v2, Lcn/aigestudio/downloader/bizs/f;->i:Z

    .line 274
    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->b:Lcn/aigestudio/downloader/bizs/f;

    .line 278
    .line 279
    iget-object v4, v2, Lcn/aigestudio/downloader/bizs/f;->q:Lg/b;

    .line 280
    .line 281
    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v4, v2, v0, v1}, Lg/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_a
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Landroid/content/Context;

    .line 291
    .line 292
    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 297
    .line 298
    .line 299
    if-eqz v3, :cond_b

    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    .line 303
    .line 304
    :cond_b
    return-void

    .line 305
    :goto_2
    if-eqz v3, :cond_c

    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    .line 309
    .line 310
    :cond_c
    throw v0

    .line 311
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 312
    .line 313
    const-string v1, "Too many redirects"

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0
.end method
