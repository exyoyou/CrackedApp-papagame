.class public Lcom/byazt/xy/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x832,
        0x47
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/xy/sp;

.field public final tt:Lcom/byazt/xy/a;


# direct methods
.method public constructor <init>(Lcom/byazt/xy/sp;Lcom/byazt/xy/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/xy/x;->c:Lcom/byazt/xy/sp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/xy/x;->tt:Lcom/byazt/xy/a;

    .line 7
    .line 8
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 17
    iget-object v0, p0, Lcom/byazt/xy/x;->c:Lcom/byazt/xy/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/byazt/xy/ve;->tt:Lcom/byazt/xy/ve;

    invoke-virtual {v0, p4, p3, v1}, Lcom/byazt/xy/sp;->c(Ljava/lang/String;Ljava/io/InputStream;Lcom/byazt/xy/ve;)Ljava/io/File;

    move-result-object p3

    .line 19
    new-instance p4, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, p4, p2}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/zip/ZipInputStream;

    invoke-direct {p2, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string p4, "application/json"

    :cond_0
    const-string v0, "application/zip"

    .line 5
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip"

    .line 6
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip-compressed"

    .line 7
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "\\?"

    .line 8
    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aget-object p4, p4, v0

    const-string v0, ".lottie"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Received json response."

    .line 9
    invoke-static {p1}, Lcom/byazt/kk/a;->c(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/byazt/xy/ve;->c:Lcom/byazt/xy/ve;

    .line 11
    invoke-direct {p0, p2, p3, p5}, Lcom/byazt/xy/x;->c(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const-string p4, "Handling zip response."

    .line 12
    invoke-static {p4}, Lcom/byazt/kk/a;->c(Ljava/lang/String;)V

    .line 13
    sget-object p4, Lcom/byazt/xy/ve;->tt:Lcom/byazt/xy/ve;

    .line 14
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/byazt/xy/x;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p2

    move-object p1, p4

    :goto_1
    if-eqz p5, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/byazt/xy/x;->c:Lcom/byazt/xy/sp;

    if-eqz p3, :cond_3

    .line 16
    invoke-virtual {p3, p5, p1}, Lcom/byazt/xy/sp;->c(Ljava/lang/String;Lcom/byazt/xy/ve;)V

    :cond_3
    return-object p2
.end method

.method private c(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 21
    iget-object v0, p0, Lcom/byazt/xy/x;->c:Lcom/byazt/xy/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lcom/byazt/xy/ve;->c:Lcom/byazt/xy/ve;

    invoke-virtual {v0, p3, p2, v1}, Lcom/byazt/xy/sp;->c(Ljava/lang/String;Ljava/io/InputStream;Lcom/byazt/xy/ve;)Ljava/io/File;

    move-result-object p2

    .line 23
    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/byazt/ga/sp;->tt(Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    invoke-static {p2, p1}, Lcom/byazt/ga/sp;->tt(Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p1

    return-object p1
.end method

.method private tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/a;
    .locals 3
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/xy/x;->c:Lcom/byazt/xy/sp;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p3}, Lcom/byazt/xy/sp;->c(Ljava/lang/String;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/byazt/xy/ve;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/io/InputStream;

    .line 23
    .line 24
    sget-object v2, Lcom/byazt/xy/ve;->tt:Lcom/byazt/xy/ve;

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1, p3}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v0, p3}, Lcom/byazt/ga/sp;->tt(Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/t;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/byazt/ga/a;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    :goto_1
    return-object p2
.end method

.method private ve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;
    .locals 9
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "LottieFetchResult close failed "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Fetching "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/byazt/kk/a;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/byazt/xy/x;->tt:Lcom/byazt/xy/a;

    .line 22
    .line 23
    invoke-interface {v2, p2}, Lcom/byazt/xy/a;->c(Ljava/lang/String;)Lcom/byazt/xy/uj;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/byazt/xy/uj;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/byazt/xy/uj;->tt()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v1}, Lcom/byazt/xy/uj;->ve()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    move-object v3, p0

    .line 42
    move-object v4, p1

    .line 43
    move-object v5, p2

    .line 44
    move-object v8, p3

    .line 45
    invoke-direct/range {v3 .. v8}, Lcom/byazt/xy/x;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p3, "Completed fetch from network. Success: "

    .line 52
    .line 53
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/byazt/ga/t;->c()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    const/4 p3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p3, 0x0

    .line 65
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Lcom/byazt/kk/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p2

    .line 80
    invoke-static {v0, p2}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object p1

    .line 84
    :cond_1
    :try_start_2
    new-instance p1, Lcom/byazt/ga/t;

    .line 85
    .line 86
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    invoke-interface {v1}, Lcom/byazt/xy/uj;->uj()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Lcom/byazt/ga/t;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-exception p2

    .line 103
    invoke-static {v0, p2}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-object p1

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_4

    .line 109
    :catch_2
    move-exception p1

    .line 110
    :try_start_4
    new-instance p2, Lcom/byazt/ga/t;

    .line 111
    .line 112
    invoke-direct {p2, p1}, Lcom/byazt/ga/t;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    :try_start_5
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catch_3
    move-exception p1

    .line 122
    invoke-static {v0, p1}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_3
    return-object p2

    .line 126
    :goto_4
    if-eqz v1, :cond_3

    .line 127
    .line 128
    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catch_4
    move-exception p2

    .line 133
    invoke-static {v0, p2}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_5
    throw p1
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/xy/x;->tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/byazt/ga/t;

    invoke-direct {p1, v0}, Lcom/byazt/ga/t;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/kk/a;->c(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/xy/x;->ve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/t;

    move-result-object p1

    return-object p1
.end method
