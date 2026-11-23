.class public final Lcom/beizi/ad/internal/e/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/e/b$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/internal/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/beizi/ad/internal/e/b$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lcom/beizi/ad/internal/e/b$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->d:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroid/os/HandlerThread;

    .line 16
    .line 17
    const-string v1, "download"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->a:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/ad/internal/e/b$c;->a:Landroid/os/HandlerThread;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->c:Landroid/os/Handler;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/e/b$c;)Lcom/beizi/ad/internal/e/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/e/b$c;->b:Lcom/beizi/ad/internal/e/b$b;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/beizi/ad/internal/e/b$c$3;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/internal/e/b$c$3;-><init>(Lcom/beizi/ad/internal/e/b$c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(JJ)V
    .locals 8

    .line 13
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->d:Landroid/os/Handler;

    new-instance v7, Lcom/beizi/ad/internal/e/b$c$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/beizi/ad/internal/e/b$c$1;-><init>(Lcom/beizi/ad/internal/e/b$c;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->b:Lcom/beizi/ad/internal/e/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/beizi/ad/internal/e/b$b;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->d:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/beizi/ad/internal/e/b$c$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/internal/e/b$c$2;-><init>(Lcom/beizi/ad/internal/e/b$c;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->c:Landroid/os/Handler;

    .line 12
    iput-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->a:Landroid/os/HandlerThread;

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/e/b$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/internal/e/b$c;->b:Lcom/beizi/ad/internal/e/b$b;

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/e/b$d;)V
    .locals 2

    .line 3
    iget-boolean v0, p1, Lcom/beizi/ad/internal/e/b$d;->a:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->e:Lcom/beizi/ad/internal/e/b$d;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->e:Lcom/beizi/ad/internal/e/b$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/beizi/ad/internal/e/b$d;->b:Z

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/beizi/ad/internal/e/b$c;->e:Lcom/beizi/ad/internal/e/b$d;

    .line 7
    invoke-virtual {p1}, Lcom/beizi/ad/internal/e/b$d;->a()V

    .line 8
    iget-object p1, p0, Lcom/beizi/ad/internal/e/b$c;->c:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid request,it\'s downloading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c;->e:Lcom/beizi/ad/internal/e/b$d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 5
    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->a(Lcom/beizi/ad/internal/e/b$d;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-direct {p0, v0}, Lcom/beizi/ad/internal/e/b$c;->a(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->a(Lcom/beizi/ad/internal/e/b$d;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->b(Lcom/beizi/ad/internal/e/b$d;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    :try_start_0
    new-instance v6, Ljava/net/URL;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->c(Lcom/beizi/ad/internal/e/b$d;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    .line 82
    :try_start_1
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->d(Lcom/beizi/ad/internal/e/b$d;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    const-wide/16 v9, 0x0

    .line 87
    .line 88
    cmp-long v11, v7, v9

    .line 89
    .line 90
    if-eqz v11, :cond_1

    .line 91
    .line 92
    const-string v7, "Range"

    .line 93
    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v11, "bytes="

    .line 100
    .line 101
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->d(Lcom/beizi/ad/internal/e/b$d;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v11, "-"

    .line 112
    .line 113
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    const-string v7, "Connection"

    .line 124
    .line 125
    const-string v8, "Keep-Alive"

    .line 126
    .line 127
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    const/16 v8, 0xc8

    .line 135
    .line 136
    if-eq v7, v8, :cond_2

    .line 137
    .line 138
    const/16 v11, 0xce

    .line 139
    .line 140
    if-eq v7, v11, :cond_2

    .line 141
    .line 142
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    invoke-direct {p0, v1}, Lcom/beizi/ad/internal/e/b$c;->a(I)V

    .line 146
    .line 147
    .line 148
    move-object v7, v4

    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :cond_2
    const-string v11, "Content-Disposition"

    .line 152
    .line 153
    invoke-virtual {v6, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v14, 0x18

    .line 164
    .line 165
    if-lt v13, v14, :cond_3

    .line 166
    .line 167
    invoke-static {v6}, Lcom/beizi/ad/internal/e/v;->a(Ljava/net/HttpURLConnection;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v13

    .line 171
    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    int-to-long v13, v13

    .line 177
    :goto_0
    if-ne v7, v8, :cond_4

    .line 178
    .line 179
    invoke-static {v0, v9, v10}, Lcom/beizi/ad/internal/e/b$d;->a(Lcom/beizi/ad/internal/e/b$d;J)J

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v13, v14}, Lcom/beizi/ad/internal/e/b$d;->b(Lcom/beizi/ad/internal/e/b$d;J)J

    .line 183
    .line 184
    .line 185
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 197
    .line 198
    .line 199
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    const/16 v8, 0x2000

    .line 201
    .line 202
    :try_start_2
    new-array v8, v8, [B

    .line 203
    .line 204
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 205
    .line 206
    const-string v10, "rw"

    .line 207
    .line 208
    invoke-direct {v9, v2, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 209
    .line 210
    .line 211
    :try_start_3
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->d(Lcom/beizi/ad/internal/e/b$d;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v10

    .line 215
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 216
    .line 217
    .line 218
    const/4 v2, 0x0

    .line 219
    :cond_5
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    const/4 v10, -0x1

    .line 224
    if-eq v4, v10, :cond_8

    .line 225
    .line 226
    add-int/2addr v2, v1

    .line 227
    invoke-virtual {v9, v8, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 228
    .line 229
    .line 230
    int-to-long v10, v4

    .line 231
    invoke-static {v0, v10, v11}, Lcom/beizi/ad/internal/e/b$d;->c(Lcom/beizi/ad/internal/e/b$d;J)J

    .line 232
    .line 233
    .line 234
    rem-int/lit8 v4, v2, 0x40

    .line 235
    .line 236
    if-nez v4, :cond_5

    .line 237
    .line 238
    iget-boolean v4, v0, Lcom/beizi/ad/internal/e/b$d;->b:Z

    .line 239
    .line 240
    if-eqz v4, :cond_6

    .line 241
    .line 242
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 243
    .line 244
    invoke-direct {p0, v1}, Lcom/beizi/ad/internal/e/b$c;->a(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    .line 246
    .line 247
    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    .line 253
    .line 254
    :catch_0
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 255
    .line 256
    .line 257
    :catch_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 258
    .line 259
    .line 260
    :catch_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_6
    :try_start_7
    iget-boolean v4, v0, Lcom/beizi/ad/internal/e/b$d;->c:Z

    .line 265
    .line 266
    if-eqz v4, :cond_7

    .line 267
    .line 268
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 269
    .line 270
    const/4 v1, 0x6

    .line 271
    invoke-direct {p0, v1}, Lcom/beizi/ad/internal/e/b$c;->a(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 272
    .line 273
    .line 274
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 279
    .line 280
    .line 281
    :catch_3
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 282
    .line 283
    .line 284
    :catch_4
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 285
    .line 286
    .line 287
    :catch_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_7
    :try_start_b
    rem-int/lit8 v4, v2, 0x10

    .line 292
    .line 293
    if-nez v4, :cond_5

    .line 294
    .line 295
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->d(Lcom/beizi/ad/internal/e/b$d;)J

    .line 296
    .line 297
    .line 298
    move-result-wide v10

    .line 299
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$d;->e(Lcom/beizi/ad/internal/e/b$d;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v12

    .line 303
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/beizi/ad/internal/e/b$c;->a(JJ)V

    .line 304
    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 312
    .line 313
    .line 314
    invoke-direct {p0, v3}, Lcom/beizi/ad/internal/e/b$c;->a(Ljava/io/File;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_9

    .line 319
    .line 320
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 321
    .line 322
    const/4 v1, 0x4

    .line 323
    invoke-direct {p0, v1}, Lcom/beizi/ad/internal/e/b$c;->a(I)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_9
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 328
    .line 329
    invoke-direct {p0, v3}, Lcom/beizi/ad/internal/e/b$c;->b(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 330
    .line 331
    .line 332
    :goto_2
    move-object v4, v9

    .line 333
    :goto_3
    if-eqz v4, :cond_a

    .line 334
    .line 335
    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :catch_6
    nop

    .line 344
    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    .line 345
    .line 346
    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :catch_7
    nop

    .line 351
    :cond_b
    :goto_5
    if-eqz v7, :cond_f

    .line 352
    .line 353
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 354
    .line 355
    .line 356
    goto :goto_a

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    move-object v4, v9

    .line 359
    goto :goto_b

    .line 360
    :catch_8
    move-exception v1

    .line 361
    move-object v4, v9

    .line 362
    goto :goto_6

    .line 363
    :catch_9
    move-exception v1

    .line 364
    goto :goto_6

    .line 365
    :catchall_1
    move-exception v0

    .line 366
    move-object v7, v4

    .line 367
    goto :goto_b

    .line 368
    :catch_a
    move-exception v1

    .line 369
    move-object v7, v4

    .line 370
    goto :goto_6

    .line 371
    :catchall_2
    move-exception v0

    .line 372
    move-object v6, v4

    .line 373
    move-object v7, v6

    .line 374
    goto :goto_b

    .line 375
    :catch_b
    move-exception v1

    .line 376
    move-object v6, v4

    .line 377
    move-object v7, v6

    .line 378
    :goto_6
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    iput-boolean v5, v0, Lcom/beizi/ad/internal/e/b$d;->a:Z

    .line 382
    .line 383
    const/4 v0, 0x5

    .line 384
    invoke-direct {p0, v0}, Lcom/beizi/ad/internal/e/b$c;->a(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 385
    .line 386
    .line 387
    if-eqz v4, :cond_c

    .line 388
    .line 389
    :try_start_10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :catch_c
    nop

    .line 398
    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    .line 399
    .line 400
    :try_start_11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 401
    .line 402
    .line 403
    goto :goto_8

    .line 404
    :catch_d
    nop

    .line 405
    :cond_d
    :goto_8
    if-eqz v7, :cond_e

    .line 406
    .line 407
    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :catch_e
    nop

    .line 412
    :cond_e
    :goto_9
    if-eqz v6, :cond_10

    .line 413
    .line 414
    :catch_f
    :cond_f
    :goto_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 415
    .line 416
    .line 417
    :cond_10
    return-void

    .line 418
    :catchall_3
    move-exception v0

    .line 419
    :goto_b
    if-eqz v4, :cond_11

    .line 420
    .line 421
    :try_start_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 426
    .line 427
    .line 428
    goto :goto_c

    .line 429
    :catch_10
    nop

    .line 430
    :cond_11
    :goto_c
    if-eqz v4, :cond_12

    .line 431
    .line 432
    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 433
    .line 434
    .line 435
    goto :goto_d

    .line 436
    :catch_11
    nop

    .line 437
    :cond_12
    :goto_d
    if-eqz v7, :cond_13

    .line 438
    .line 439
    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 440
    .line 441
    .line 442
    goto :goto_e

    .line 443
    :catch_12
    nop

    .line 444
    :cond_13
    :goto_e
    if-eqz v6, :cond_14

    .line 445
    .line 446
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 447
    .line 448
    .line 449
    :cond_14
    throw v0
.end method
