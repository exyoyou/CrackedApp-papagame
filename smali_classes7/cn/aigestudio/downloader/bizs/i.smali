.class Lcn/aigestudio/downloader/bizs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:Ljava/lang/String; = "i"


# instance fields
.field private b:Lcn/aigestudio/downloader/bizs/j;

.field private c:Lcn/aigestudio/downloader/bizs/f;

.field private d:Lcn/aigestudio/downloader/bizs/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dlThreadInfo",
            "dlInfo",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 5
    .line 6
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 7
    .line 8
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 9
    .line 10
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
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
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "bytes="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 40
    .line 41
    iget-wide v1, v1, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "-"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 52
    .line 53
    iget-wide v1, v1, Lcn/aigestudio/downloader/bizs/j;->d:J

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "Range"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public b()Lcn/aigestudio/downloader/bizs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcn/aigestudio/downloader/bizs/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dlInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dlThreadInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method run() called.url="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 12
    .line 13
    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 26
    .line 27
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 28
    .line 29
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    const/16 v3, 0x2710

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2}, Lcn/aigestudio/downloader/bizs/i;->a(Ljava/net/HttpURLConnection;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 52
    .line 53
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 62
    .line 63
    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    :cond_0
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 72
    .line 73
    iput-boolean v0, v3, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 74
    .line 75
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v4, "dlThreadInfo.start="

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 86
    .line 87
    iget-wide v4, v4, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, ";dlInfo.totalBytes.get()="

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 98
    .line 99
    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 109
    .line 110
    iget-wide v3, v3, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 111
    .line 112
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 113
    .line 114
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    cmp-long v7, v3, v5

    .line 121
    .line 122
    if-nez v7, :cond_2

    .line 123
    .line 124
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 125
    .line 126
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 127
    .line 128
    invoke-interface {v3, v4}, Lcn/aigestudio/downloader/bizs/l;->a(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 136
    .line 137
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 138
    .line 139
    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 140
    .line 141
    const-string v5, "rwd"

    .line 142
    .line 143
    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_3
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 147
    .line 148
    iget-wide v4, v4, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 149
    .line 150
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v5, "open connection.url="

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 168
    .line 169
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v5, ";start="

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 180
    .line 181
    iget-wide v5, v5, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 182
    .line 183
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const/16 v4, 0x2000

    .line 187
    .line 188
    new-array v4, v4, [B

    .line 189
    .line 190
    :goto_0
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 191
    .line 192
    iget-boolean v6, v5, Lcn/aigestudio/downloader/bizs/f;->t:Z

    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    if-nez v6, :cond_3

    .line 196
    .line 197
    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/f;->s:Z

    .line 198
    .line 199
    if-nez v5, :cond_3

    .line 200
    .line 201
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 202
    .line 203
    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 204
    .line 205
    if-nez v5, :cond_3

    .line 206
    .line 207
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 208
    .line 209
    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 210
    .line 211
    if-nez v5, :cond_3

    .line 212
    .line 213
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    const/4 v6, -0x1

    .line 218
    if-eq v5, v6, :cond_3

    .line 219
    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v8, "Thread running.id="

    .line 226
    .line 227
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    .line 235
    .line 236
    .line 237
    move-result-wide v8

    .line 238
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v8, ";threadCount="

    .line 242
    .line 243
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/f;

    .line 247
    .line 248
    iget-object v8, v8, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 258
    .line 259
    .line 260
    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 261
    .line 262
    iget-wide v7, v6, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 263
    .line 264
    int-to-long v9, v5

    .line 265
    add-long/2addr v7, v9

    .line 266
    iput-wide v7, v6, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 267
    .line 268
    iget-object v7, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 269
    .line 270
    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    .line 271
    .line 272
    invoke-interface {v7, v6, v5}, Lcn/aigestudio/downloader/bizs/l;->c(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_3
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 277
    .line 278
    iget-boolean v4, v4, Lcn/aigestudio/downloader/bizs/j;->e:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 279
    .line 280
    const-string v5, " will be stopped."

    .line 281
    .line 282
    const-string v6, "Thread "

    .line 283
    .line 284
    if-eqz v4, :cond_4

    .line 285
    .line 286
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 295
    .line 296
    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 305
    .line 306
    iput-boolean v7, v4, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 307
    .line 308
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 309
    .line 310
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 311
    .line 312
    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 313
    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_4
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 317
    .line 318
    iget-boolean v4, v4, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 319
    .line 320
    if-eqz v4, :cond_5

    .line 321
    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 331
    .line 332
    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 341
    .line 342
    iput-boolean v7, v4, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 343
    .line 344
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 345
    .line 346
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 347
    .line 348
    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->b(Lcn/aigestudio/downloader/bizs/j;)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 361
    .line 362
    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v5, " will be finished."

    .line 368
    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 373
    .line 374
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 375
    .line 376
    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->a(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 377
    .line 378
    .line 379
    :goto_1
    if-eqz v1, :cond_6

    .line 380
    .line 381
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    goto :goto_3

    .line 387
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 388
    .line 389
    .line 390
    goto/16 :goto_10

    .line 391
    .line 392
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_10

    .line 396
    .line 397
    :catch_1
    move-exception v4

    .line 398
    goto :goto_4

    .line 399
    :catch_2
    move-exception v4

    .line 400
    goto :goto_8

    .line 401
    :catch_3
    move-exception v4

    .line 402
    goto/16 :goto_c

    .line 403
    .line 404
    :catchall_0
    move-exception v0

    .line 405
    move-object v3, v1

    .line 406
    goto/16 :goto_11

    .line 407
    .line 408
    :catch_4
    move-exception v3

    .line 409
    move-object v4, v3

    .line 410
    move-object v3, v1

    .line 411
    goto :goto_4

    .line 412
    :catch_5
    move-exception v3

    .line 413
    move-object v4, v3

    .line 414
    move-object v3, v1

    .line 415
    goto :goto_8

    .line 416
    :catch_6
    move-exception v3

    .line 417
    move-object v4, v3

    .line 418
    move-object v3, v1

    .line 419
    goto/16 :goto_c

    .line 420
    .line 421
    :catchall_1
    move-exception v0

    .line 422
    move-object v2, v1

    .line 423
    move-object v3, v2

    .line 424
    goto/16 :goto_11

    .line 425
    .line 426
    :catch_7
    move-exception v3

    .line 427
    move-object v2, v1

    .line 428
    move-object v4, v3

    .line 429
    move-object v3, v2

    .line 430
    :goto_4
    :try_start_6
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 431
    .line 432
    iput-boolean v0, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 433
    .line 434
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 435
    .line 436
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 437
    .line 438
    invoke-interface {v0, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 442
    .line 443
    .line 444
    if-eqz v1, :cond_7

    .line 445
    .line 446
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :catch_8
    move-exception v0

    .line 451
    goto :goto_6

    .line 452
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 453
    .line 454
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 459
    .line 460
    .line 461
    :cond_8
    :goto_7
    if-eqz v2, :cond_d

    .line 462
    .line 463
    goto :goto_10

    .line 464
    :catch_9
    move-exception v3

    .line 465
    move-object v2, v1

    .line 466
    move-object v4, v3

    .line 467
    move-object v3, v2

    .line 468
    :goto_8
    :try_start_8
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 469
    .line 470
    iput-boolean v0, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 471
    .line 472
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 473
    .line 474
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 475
    .line 476
    invoke-interface {v0, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 480
    .line 481
    .line 482
    if-eqz v1, :cond_9

    .line 483
    .line 484
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 485
    .line 486
    .line 487
    goto :goto_9

    .line 488
    :catch_a
    move-exception v0

    .line 489
    goto :goto_a

    .line 490
    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    .line 491
    .line 492
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 493
    .line 494
    .line 495
    goto :goto_b

    .line 496
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 497
    .line 498
    .line 499
    :cond_a
    :goto_b
    if-eqz v2, :cond_d

    .line 500
    .line 501
    goto :goto_10

    .line 502
    :catch_b
    move-exception v3

    .line 503
    move-object v2, v1

    .line 504
    move-object v4, v3

    .line 505
    move-object v3, v2

    .line 506
    :goto_c
    :try_start_a
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 507
    .line 508
    iput-boolean v0, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 509
    .line 510
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->d:Lcn/aigestudio/downloader/bizs/l;

    .line 511
    .line 512
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/j;

    .line 513
    .line 514
    invoke-interface {v0, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 518
    .line 519
    .line 520
    if-eqz v1, :cond_b

    .line 521
    .line 522
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 523
    .line 524
    .line 525
    goto :goto_d

    .line 526
    :catch_c
    move-exception v0

    .line 527
    goto :goto_e

    .line 528
    :cond_b
    :goto_d
    if-eqz v3, :cond_c

    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 531
    .line 532
    .line 533
    goto :goto_f

    .line 534
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    .line 536
    .line 537
    :cond_c
    :goto_f
    if-eqz v2, :cond_d

    .line 538
    .line 539
    :goto_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 540
    .line 541
    .line 542
    :cond_d
    return-void

    .line 543
    :catchall_2
    move-exception v0

    .line 544
    :goto_11
    if-eqz v1, :cond_e

    .line 545
    .line 546
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 547
    .line 548
    .line 549
    goto :goto_12

    .line 550
    :catch_d
    move-exception v1

    .line 551
    goto :goto_13

    .line 552
    :cond_e
    :goto_12
    if-eqz v3, :cond_f

    .line 553
    .line 554
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 555
    .line 556
    .line 557
    goto :goto_14

    .line 558
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 559
    .line 560
    .line 561
    :cond_f
    :goto_14
    if-eqz v2, :cond_10

    .line 562
    .line 563
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 564
    .line 565
    .line 566
    :cond_10
    throw v0
.end method
