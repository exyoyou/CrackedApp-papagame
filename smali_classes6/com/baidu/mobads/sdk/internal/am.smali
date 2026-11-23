.class public Lcom/baidu/mobads/sdk/internal/am;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/x;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final i:I = 0x2800

.field protected static final j:I = 0x2800

.field public static final k:Ljava/lang/String; = ".tmp"

.field private static final m:Ljava/lang/String; = "FileDownloader"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/net/URL;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Lcom/baidu/mobads/sdk/internal/x$a;

.field protected g:I

.field protected h:I

.field protected l:[B

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/baidu/mobads/sdk/internal/am;->n:Z

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    iput-object p4, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 p2, 0x2f

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 47
    .line 48
    sget-object p1, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 54
    .line 55
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/am;->h:I

    .line 56
    .line 57
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Location"

    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 11
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0x2710

    .line 12
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string p1, "Range"

    const-string v1, "bytes=0-"

    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :catch_1
    :cond_1
    return-object p1
.end method

.method private s()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/mobads/sdk/internal/x$a;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->p()V

    return-void
.end method

.method protected a(IF)V
    .locals 0

    .line 6
    iget p2, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 7
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->q()V

    return-void
.end method

.method protected a(Lcom/baidu/mobads/sdk/internal/x$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 5
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->q()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public c()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public k()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/am;->g:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    .line 10
    mul-float v0, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public l()Lcom/baidu/mobads/sdk/internal/x$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/am;->l:[B

    .line 2
    .line 3
    return-object v0
.end method

.method protected p()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/be;->a()Lcom/baidu/mobads/sdk/internal/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/baidu/mobads/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected r()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ".tmp"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/am;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/baidu/mobads/sdk/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    const-string v0, "FileDownloader"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    iget-object v5, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 8
    .line 9
    if-eqz v5, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v5, v6}, Lcom/baidu/mobads/sdk/internal/cs;->f(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v4}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, p0, Lcom/baidu/mobads/sdk/internal/am;->b:Ljava/net/URL;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 45
    const/16 v6, 0x2710

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/16 v7, 0x12e

    .line 61
    .line 62
    if-eq v6, v7, :cond_1

    .line 63
    .line 64
    const/16 v7, 0x12d

    .line 65
    .line 66
    if-ne v6, v7, :cond_2

    .line 67
    .line 68
    :cond_1
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v5}, Lcom/baidu/mobads/sdk/internal/am;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    :cond_2
    div-int/lit8 v6, v6, 0x64

    .line 80
    .line 81
    if-eq v6, v2, :cond_3

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/am;->s()V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-lez v6, :cond_4

    .line 91
    .line 92
    iput v6, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 93
    .line 94
    :cond_4
    new-instance v6, Ljava/io/File;

    .line 95
    .line 96
    iget-object v7, p0, Lcom/baidu/mobads/sdk/internal/am;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_5

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 108
    .line 109
    .line 110
    :cond_5
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 120
    .line 121
    new-instance v8, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v10, ".tmp"

    .line 136
    .line 137
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .line 149
    .line 150
    const/16 v8, 0x2800

    .line 151
    .line 152
    :try_start_4
    new-array v9, v8, [B

    .line 153
    .line 154
    iget-boolean v10, p0, Lcom/baidu/mobads/sdk/internal/am;->n:Z

    .line 155
    .line 156
    if-eqz v10, :cond_6

    .line 157
    .line 158
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 159
    .line 160
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .line 162
    .line 163
    move-object v4, v10

    .line 164
    :cond_6
    const/4 v10, 0x0

    .line 165
    :goto_0
    iget-object v11, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 166
    .line 167
    sget-object v12, Lcom/baidu/mobads/sdk/internal/x$a;->c:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 168
    .line 169
    if-ne v11, v12, :cond_8

    .line 170
    .line 171
    invoke-virtual {v6, v9, v3, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    const/4 v13, -0x1

    .line 176
    if-eq v11, v13, :cond_8

    .line 177
    .line 178
    invoke-virtual {v7, v9, v3, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 179
    .line 180
    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    invoke-virtual {v4, v9, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 184
    .line 185
    .line 186
    :cond_7
    add-int/2addr v10, v11

    .line 187
    int-to-float v12, v10

    .line 188
    iget v13, p0, Lcom/baidu/mobads/sdk/internal/am;->e:I

    .line 189
    .line 190
    int-to-float v13, v13

    .line 191
    div-float/2addr v12, v13

    .line 192
    invoke-virtual {p0, v11, v12}, Lcom/baidu/mobads/sdk/internal/am;->a(IF)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 197
    .line 198
    .line 199
    if-eqz v4, :cond_9

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 202
    .line 203
    .line 204
    :cond_9
    iget-object v8, p0, Lcom/baidu/mobads/sdk/internal/am;->f:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 205
    .line 206
    if-ne v8, v12, :cond_a

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/am;->r()V

    .line 209
    .line 210
    .line 211
    sget-object v8, Lcom/baidu/mobads/sdk/internal/x$a;->e:Lcom/baidu/mobads/sdk/internal/x$a;

    .line 212
    .line 213
    invoke-virtual {p0, v8}, Lcom/baidu/mobads/sdk/internal/am;->a(Lcom/baidu/mobads/sdk/internal/x$a;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_a
    sget-object v8, Lcom/baidu/mobads/sdk/internal/x$a;->f:Lcom/baidu/mobads/sdk/internal/x$a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    .line 219
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :catch_0
    move-exception v7

    .line 224
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    new-array v9, v2, [Ljava/lang/Object;

    .line 229
    .line 230
    aput-object v0, v9, v3

    .line 231
    .line 232
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    aput-object v7, v9, v1

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :goto_2
    if-eqz v4, :cond_b

    .line 242
    .line 243
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catch_1
    move-exception v4

    .line 248
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    new-array v8, v2, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object v0, v8, v3

    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    aput-object v4, v8, v1

    .line 261
    .line 262
    invoke-virtual {v7, v8}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_b
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catch_2
    move-exception v4

    .line 270
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    new-array v2, v2, [Ljava/lang/Object;

    .line 275
    .line 276
    aput-object v0, v2, v3

    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    aput-object v0, v2, v1

    .line 283
    .line 284
    invoke-virtual {v6, v2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :goto_4
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0, v5}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_9

    .line 295
    .line 296
    :catchall_0
    move-exception v8

    .line 297
    move-object v14, v5

    .line 298
    move-object v5, v4

    .line 299
    move-object v4, v7

    .line 300
    move-object v7, v14

    .line 301
    goto/16 :goto_a

    .line 302
    .line 303
    :catch_3
    move-exception v8

    .line 304
    move-object v14, v5

    .line 305
    move-object v5, v4

    .line 306
    move-object v4, v7

    .line 307
    move-object v7, v14

    .line 308
    goto :goto_5

    .line 309
    :catchall_1
    move-exception v7

    .line 310
    move-object v8, v7

    .line 311
    move-object v7, v5

    .line 312
    move-object v5, v4

    .line 313
    goto/16 :goto_a

    .line 314
    .line 315
    :catch_4
    move-exception v7

    .line 316
    move-object v8, v7

    .line 317
    move-object v7, v5

    .line 318
    move-object v5, v4

    .line 319
    goto :goto_5

    .line 320
    :catchall_2
    move-exception v6

    .line 321
    move-object v7, v5

    .line 322
    move-object v8, v6

    .line 323
    move-object v5, v4

    .line 324
    move-object v6, v5

    .line 325
    goto/16 :goto_a

    .line 326
    .line 327
    :catch_5
    move-exception v6

    .line 328
    move-object v7, v5

    .line 329
    move-object v8, v6

    .line 330
    move-object v5, v4

    .line 331
    move-object v6, v5

    .line 332
    goto :goto_5

    .line 333
    :catchall_3
    move-exception v5

    .line 334
    move-object v6, v4

    .line 335
    move-object v7, v6

    .line 336
    move-object v8, v5

    .line 337
    move-object v5, v7

    .line 338
    goto :goto_a

    .line 339
    :catch_6
    move-exception v5

    .line 340
    move-object v6, v4

    .line 341
    move-object v7, v6

    .line 342
    move-object v8, v5

    .line 343
    move-object v5, v7

    .line 344
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    new-array v10, v2, [Ljava/lang/Object;

    .line 349
    .line 350
    aput-object v0, v10, v3

    .line 351
    .line 352
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    aput-object v8, v10, v1

    .line 357
    .line 358
    invoke-virtual {v9, v10}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/am;->s()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 362
    .line 363
    .line 364
    if-eqz v4, :cond_c

    .line 365
    .line 366
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catch_7
    move-exception v4

    .line 371
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    new-array v9, v2, [Ljava/lang/Object;

    .line 376
    .line 377
    aput-object v0, v9, v3

    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    aput-object v4, v9, v1

    .line 384
    .line 385
    invoke-virtual {v8, v9}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    .line 389
    .line 390
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 391
    .line 392
    .line 393
    goto :goto_7

    .line 394
    :catch_8
    move-exception v4

    .line 395
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    new-array v8, v2, [Ljava/lang/Object;

    .line 400
    .line 401
    aput-object v0, v8, v3

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    aput-object v4, v8, v1

    .line 408
    .line 409
    invoke-virtual {v5, v8}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    .line 413
    .line 414
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :catch_9
    move-exception v4

    .line 419
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    new-array v2, v2, [Ljava/lang/Object;

    .line 424
    .line 425
    aput-object v0, v2, v3

    .line 426
    .line 427
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    aput-object v0, v2, v1

    .line 432
    .line 433
    invoke-virtual {v5, v2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_e
    :goto_8
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0, v7}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 441
    .line 442
    .line 443
    :goto_9
    return-void

    .line 444
    :catchall_4
    move-exception v8

    .line 445
    :goto_a
    if-eqz v4, :cond_f

    .line 446
    .line 447
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 448
    .line 449
    .line 450
    goto :goto_b

    .line 451
    :catch_a
    move-exception v4

    .line 452
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    new-array v10, v2, [Ljava/lang/Object;

    .line 457
    .line 458
    aput-object v0, v10, v3

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    aput-object v4, v10, v1

    .line 465
    .line 466
    invoke-virtual {v9, v10}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    :cond_f
    :goto_b
    if-eqz v5, :cond_10

    .line 470
    .line 471
    :try_start_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :catch_b
    move-exception v4

    .line 476
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    new-array v9, v2, [Ljava/lang/Object;

    .line 481
    .line 482
    aput-object v0, v9, v3

    .line 483
    .line 484
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    aput-object v4, v9, v1

    .line 489
    .line 490
    invoke-virtual {v5, v9}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :cond_10
    :goto_c
    if-eqz v6, :cond_11

    .line 494
    .line 495
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 496
    .line 497
    .line 498
    goto :goto_d

    .line 499
    :catch_c
    move-exception v4

    .line 500
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    new-array v2, v2, [Ljava/lang/Object;

    .line 505
    .line 506
    aput-object v0, v2, v3

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    aput-object v0, v2, v1

    .line 513
    .line 514
    invoke-virtual {v5, v2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :cond_11
    :goto_d
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0, v7}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/HttpURLConnection;)V

    .line 522
    .line 523
    .line 524
    throw v8
.end method
