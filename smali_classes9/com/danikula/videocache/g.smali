.class Lcom/danikula/videocache/g;
.super Lcom/danikula/videocache/o;
.source "SourceFile"


# static fields
.field private static final m:F = 0.2f


# instance fields
.field private final j:Lcom/danikula/videocache/k;

.field private final k:Lcom/danikula/videocache/file/b;

.field private l:Lcom/danikula/videocache/d;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/k;Lcom/danikula/videocache/file/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/danikula/videocache/o;-><init>(Lcom/danikula/videocache/q;Lcom/danikula/videocache/c;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/danikula/videocache/g;->k:Lcom/danikula/videocache/file/b;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 7
    .line 8
    return-void
.end method

.method private varargs p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private q(Lcom/danikula/videocache/f;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/danikula/videocache/k;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    cmp-long v6, v0, v2

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/danikula/videocache/g;->k:Lcom/danikula/videocache/file/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/danikula/videocache/file/b;->available()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-boolean v2, p1, Lcom/danikula/videocache/f;->c:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-wide v2, p1, Lcom/danikula/videocache/f;->b:J

    .line 31
    .line 32
    long-to-float p1, v2

    .line 33
    long-to-float v2, v6

    .line 34
    long-to-float v0, v0

    .line 35
    const v1, 0x3e4ccccd    # 0.2f

    .line 36
    .line 37
    .line 38
    mul-float v0, v0, v1

    .line 39
    .line 40
    add-float/2addr v2, v0

    .line 41
    cmpg-float p1, p1, v2

    .line 42
    .line 43
    if-gtz p1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    :cond_2
    :goto_1
    return v4
.end method

.method private r(Lcom/danikula/videocache/f;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/danikula/videocache/k;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    xor-int/2addr v1, v2

    .line 13
    iget-object v3, p0, Lcom/danikula/videocache/g;->k:Lcom/danikula/videocache/file/b;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/danikula/videocache/file/b;->isCompleted()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/danikula/videocache/g;->k:Lcom/danikula/videocache/file/b;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/danikula/videocache/file/b;->available()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/danikula/videocache/k;->length()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    :goto_0
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    cmp-long v8, v3, v5

    .line 38
    .line 39
    if-ltz v8, :cond_1

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v5, 0x0

    .line 44
    :goto_1
    iget-boolean v6, p1, Lcom/danikula/videocache/f;->c:Z

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    iget-wide v8, p1, Lcom/danikula/videocache/f;->b:J

    .line 49
    .line 50
    sub-long v8, v3, v8

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-wide v8, v3

    .line 54
    :goto_2
    if-eqz v5, :cond_3

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/4 v6, 0x0

    .line 61
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-boolean v11, p1, Lcom/danikula/videocache/f;->c:Z

    .line 67
    .line 68
    if-eqz v11, :cond_4

    .line 69
    .line 70
    const-string v11, "HTTP/1.1 206 PARTIAL CONTENT\n"

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    const-string v11, "HTTP/1.1 200 OK\n"

    .line 74
    .line 75
    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v11, "Accept-Ranges: bytes\n"

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v11, ""

    .line 84
    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    new-array v5, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    aput-object v8, v5, v7

    .line 94
    .line 95
    const-string v8, "Content-Length: %d\n"

    .line 96
    .line 97
    invoke-direct {p0, v8, v5}, Lcom/danikula/videocache/g;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move-object v5, v11

    .line 103
    :goto_5
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    const/4 v5, 0x3

    .line 109
    new-array v5, v5, [Ljava/lang/Object;

    .line 110
    .line 111
    iget-wide v8, p1, Lcom/danikula/videocache/f;->b:J

    .line 112
    .line 113
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    aput-object p1, v5, v7

    .line 118
    .line 119
    const-wide/16 v8, 0x1

    .line 120
    .line 121
    sub-long v8, v3, v8

    .line 122
    .line 123
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    aput-object p1, v5, v2

    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v5, p1

    .line 135
    .line 136
    const-string p1, "Content-Range: bytes %d-%d/%d\n"

    .line 137
    .line 138
    invoke-direct {p0, p1, v5}, Lcom/danikula/videocache/g;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_6

    .line 143
    :cond_6
    move-object p1, v11

    .line 144
    :goto_6
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    new-array p1, v2, [Ljava/lang/Object;

    .line 150
    .line 151
    aput-object v0, p1, v7

    .line 152
    .line 153
    const-string v0, "Content-Type: %s\n"

    .line 154
    .line 155
    invoke-direct {p0, v0, p1}, Lcom/danikula/videocache/g;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    :cond_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, "\n"

    .line 163
    .line 164
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1
.end method

.method private u(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/danikula/videocache/o;->j([BJI)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    add-long/2addr p2, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private v(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/danikula/videocache/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/danikula/videocache/k;-><init>(Lcom/danikula/videocache/k;)V

    .line 6
    .line 7
    .line 8
    long-to-int p3, p2

    .line 9
    int-to-long p2, p3

    .line 10
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/danikula/videocache/k;->a(J)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x2000

    .line 14
    .line 15
    new-array p2, p2, [B

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/k;->read([B)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq p3, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/danikula/videocache/k;->close()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {v0}, Lcom/danikula/videocache/k;->close()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method protected g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->l:Lcom/danikula/videocache/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/danikula/videocache/g;->k:Lcom/danikula/videocache/file/b;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/danikula/videocache/file/b;->b:Ljava/io/File;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/danikula/videocache/g;->j:Lcom/danikula/videocache/k;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/danikula/videocache/k;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2, p1}, Lcom/danikula/videocache/d;->h(Ljava/io/File;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public s(Lcom/danikula/videocache/f;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->r(Lcom/danikula/videocache/f;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v1, "UTF-8"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p1, Lcom/danikula/videocache/f;->b:J

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/danikula/videocache/g;->q(Lcom/danikula/videocache/f;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/g;->u(Ljava/io/OutputStream;J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/g;->v(Ljava/io/OutputStream;J)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public t(Lcom/danikula/videocache/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/g;->l:Lcom/danikula/videocache/d;

    .line 2
    .line 3
    return-void
.end method
