.class public Lcom/join/android/app/common/servcie/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DownloadFactory"

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/join/android/app/common/servcie/j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Lcom/join/android/app/common/utils/k;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x1

    .line 13
    const-wide/16 v5, 0x1f4

    .line 14
    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 20
    .line 21
    .line 22
    move-object v2, v0

    .line 23
    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/common/utils/k;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/android/app/common/servcie/j;->i(II)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_10

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lcom/join/mgps/Util/o3;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "31"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v4, 0x1

    .line 41
    const-string v5, "_v2"

    .line 42
    .line 43
    if-eqz v2, :cond_7

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v7, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_7

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 92
    .line 93
    if-eqz v7, :cond_4

    .line 94
    .line 95
    if-nez v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-static {v8}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    if-eqz v7, :cond_2

    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-static {v9}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_6

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_f

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v3, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_9

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    .line 182
    .line 183
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_8

    .line 192
    .line 193
    const/4 v3, 0x1

    .line 194
    goto :goto_2

    .line 195
    :cond_8
    const/4 v6, 0x1

    .line 196
    goto :goto_2

    .line 197
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_f

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    .line 212
    .line 213
    if-eqz v6, :cond_c

    .line 214
    .line 215
    if-nez v3, :cond_c

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {v7}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_b

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_c
    if-eqz v6, :cond_a

    .line 233
    .line 234
    if-eqz v3, :cond_a

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-static {v8}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_d

    .line 245
    .line 246
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_a

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_d
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_e

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_f
    if-eqz v0, :cond_10

    .line 276
    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-lez p1, :cond_10

    .line 282
    .line 283
    return v4

    .line 284
    :cond_10
    return v1
.end method

.method public static f()Lcom/join/android/app/common/servcie/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->e:Lcom/join/android/app/common/servcie/j;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/join/android/app/common/servcie/j;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/join/android/app/common/servcie/j;->e:Lcom/join/android/app/common/servcie/j;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/android/app/common/servcie/j;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/android/app/common/servcie/j;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/join/android/app/common/servcie/j;->e:Lcom/join/android/app/common/servcie/j;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/android/app/common/servcie/j;->e:Lcom/join/android/app/common/servcie/j;

    .line 25
    .line 26
    return-object v0
.end method

.method private static synthetic i(II)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x6400000

    .line 6
    .line 7
    .line 8
    const/16 v4, 0xc

    .line 9
    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-ltz v5, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1, v4, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 v0, 0x64

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, p1, v4, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object p1, v0

    .line 85
    :goto_1
    invoke-virtual {p1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    const/16 v1, 0x24

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Lcom/join/mgps/event/r;

    .line 103
    .line 104
    invoke-direct {v1, p1, v4}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object p1
.end method

.method private s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "task"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/task/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/join/mgps/task/e;

    .line 22
    .line 23
    invoke-direct {v0, p2, p1}, Lcom/join/mgps/task/e;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-wide/32 v3, 0x6400000

    .line 31
    .line 32
    .line 33
    cmp-long p1, v1, v3

    .line 34
    .line 35
    if-gtz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method private x(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "task"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/task/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, ""

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x2

    .line 40
    const-string v5, "%s_%s"

    .line 41
    .line 42
    const-string v6, "onZIPMd5Failed"

    .line 43
    .line 44
    const-wide/32 v7, 0x6400000

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    if-eq v0, v1, :cond_4

    .line 49
    .line 50
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v0, v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/join/mgps/task/g;

    .line 68
    .line 69
    invoke-direct {v0, p2, p1}, Lcom/join/mgps/task/g;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 73
    .line 74
    .line 75
    move-result-wide v10

    .line 76
    cmp-long v1, v10, v7

    .line 77
    .line 78
    if-gtz v1, :cond_3

    .line 79
    .line 80
    new-instance v1, Ljava/io/File;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v7, v8}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 108
    .line 109
    .line 110
    new-array p2, v4, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v7}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    aput-object v0, p2, v3

    .line 117
    .line 118
    aput-object v2, p2, v9

    .line 119
    .line 120
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, v6, p2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_2
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_3
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_5

    .line 172
    .line 173
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0, p1, v9}, Lcom/join/mgps/Util/UtilsMy;->l3(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Ljava/io/File;

    .line 209
    .line 210
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    sget-object v10, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v10, Ljava/io/File;

    .line 235
    .line 236
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_7

    .line 244
    .line 245
    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 246
    .line 247
    invoke-static {p1, v11}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-eqz v11, :cond_6

    .line 252
    .line 253
    new-instance v0, Landroid/content/Intent;

    .line 254
    .line 255
    const-string v1, "com.wufun.unzip.failed"

    .line 256
    .line 257
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v1, "gameId"

    .line 261
    .line 262
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_6
    invoke-static {v1, v10}, Lcom/join/mgps/Util/o0;->M(Ljava/io/File;Ljava/io/File;)Z

    .line 274
    .line 275
    .line 276
    :cond_7
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_8

    .line 281
    .line 282
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    :cond_8
    :goto_1
    new-instance v1, Lcom/join/mgps/task/f;

    .line 291
    .line 292
    invoke-direct {v1, p2, p1, v0}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 296
    .line 297
    .line 298
    move-result-wide v10

    .line 299
    cmp-long v0, v10, v7

    .line 300
    .line 301
    if-gtz v0, :cond_a

    .line 302
    .line 303
    new-instance v0, Ljava/io/File;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-virtual {v7, v8}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_9

    .line 329
    .line 330
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 331
    .line 332
    .line 333
    new-array p2, v4, [Ljava/lang/Object;

    .line 334
    .line 335
    invoke-virtual {v7}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    aput-object v0, p2, v3

    .line 340
    .line 341
    aput-object v2, p2, v9

    .line 342
    .line 343
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-static {p1, v6, p2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_9
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_a
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 365
    .line 366
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 374
    .line 375
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 376
    .line 377
    .line 378
    :goto_2
    return-void
.end method

.method private y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    const/16 v4, 0x8

    .line 29
    .line 30
    new-array v4, v4, [Ljava/lang/Integer;

    .line 31
    .line 32
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    aput-object v5, v4, v3

    .line 43
    .line 44
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v6, 0x1

    .line 55
    aput-object v5, v4, v6

    .line 56
    .line 57
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v7, 0x2

    .line 68
    aput-object v5, v4, v7

    .line 69
    .line 70
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/4 v7, 0x3

    .line 81
    aput-object v5, v4, v7

    .line 82
    .line 83
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const/4 v7, 0x4

    .line 94
    aput-object v5, v4, v7

    .line 95
    .line 96
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v7, 0x5

    .line 107
    aput-object v5, v4, v7

    .line 108
    .line 109
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v8, 0x6

    .line 120
    aput-object v7, v4, v8

    .line 121
    .line 122
    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 123
    .line 124
    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const/4 v9, 0x7

    .line 133
    aput-object v8, v4, v9

    .line 134
    .line 135
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const-wide/32 v8, 0x6400000

    .line 148
    .line 149
    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/join/mgps/task/c;

    .line 159
    .line 160
    if-eqz v0, :cond_1

    .line 161
    .line 162
    invoke-interface {v0}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_3

    .line 167
    .line 168
    :cond_1
    new-instance v0, Lcom/join/mgps/task/h;

    .line 169
    .line 170
    invoke-direct {v0, p2, p1}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 174
    .line 175
    .line 176
    move-result-wide p1

    .line 177
    cmp-long v2, p1, v8

    .line 178
    .line 179
    if-gtz v2, :cond_2

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 186
    .line 187
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_1
    return-void

    .line 196
    :cond_4
    sget-object v4, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 197
    .line 198
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lcom/join/mgps/task/c;

    .line 203
    .line 204
    if-eqz v4, :cond_5

    .line 205
    .line 206
    invoke-interface {v4}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_5

    .line 211
    .line 212
    return-void

    .line 213
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-eqz v10, :cond_8

    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eq v2, v4, :cond_6

    .line 232
    .line 233
    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-ne v2, v4, :cond_7

    .line 238
    .line 239
    :cond_6
    const/4 v3, 0x1

    .line 240
    :cond_7
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    .line 241
    .line 242
    invoke-direct {v2, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v2, p1, v3}, Lcom/join/mgps/Util/UtilsMy;->l3(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    new-instance v3, Ljava/io/File;

    .line 272
    .line 273
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    sget-object v4, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v2, Ljava/io/File;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_a

    .line 303
    .line 304
    invoke-static {p1}, Lcom/join/mgps/Util/a2;->f(Landroid/content/Context;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_9

    .line 309
    .line 310
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 311
    .line 312
    .line 313
    new-instance p2, Landroid/content/Intent;

    .line 314
    .line 315
    const-string v0, "com.wufun.unzip.failed"

    .line 316
    .line 317
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v0, "gameId"

    .line 321
    .line 322
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_9
    invoke-static {v3, v2}, Lcom/join/mgps/Util/o0;->M(Ljava/io/File;Ljava/io/File;)Z

    .line 330
    .line 331
    .line 332
    :cond_a
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-nez v3, :cond_b

    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :catch_0
    move-exception v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :cond_b
    :goto_2
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-nez v2, :cond_d

    .line 361
    .line 362
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_c

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_c
    new-instance v2, Lcom/join/mgps/task/h;

    .line 380
    .line 381
    invoke-direct {v2, p2, p1, v0}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_d
    :goto_3
    new-instance v2, Lcom/join/mgps/task/f;

    .line 386
    .line 387
    invoke-direct {v2, p2, p1, v0}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :goto_4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 391
    .line 392
    .line 393
    move-result-wide p1

    .line 394
    cmp-long v0, p1, v8

    .line 395
    .line 396
    if-gtz v0, :cond_e

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_e
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 403
    .line 404
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 408
    .line 409
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 410
    .line 411
    .line 412
    :goto_5
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
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
    const-string v1, "del removeTask  "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/j;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
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
    const-string v1, "method delTask() called."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ";status="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ";runtimeStatus="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameRemove:Lcom/papa/sim/statistic/Event;

    .line 47
    .line 48
    invoke-static {p1, p2, v0}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/task/c;

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/join/mgps/task/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    nop

    .line 68
    :goto_0
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "status="

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, ";runtimestatus="

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/16 v3, 0x1d

    .line 139
    .line 140
    if-ne v2, v3, :cond_0

    .line 141
    .line 142
    invoke-static {v0}, Lcom/join/android/app/common/utils/r;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    new-instance v3, Lcom/join/mgps/event/r;

    .line 153
    .line 154
    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/16 v3, 0x9

    .line 167
    .line 168
    if-eq v2, v3, :cond_2

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const/4 v3, 0x3

    .line 175
    if-eq v2, v3, :cond_2

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const/16 v3, 0x1b

    .line 182
    .line 183
    if-eq v2, v3, :cond_2

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    const/16 v3, 0x23

    .line 194
    .line 195
    if-eq v2, v3, :cond_2

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/16 v3, 0x24

    .line 206
    .line 207
    if-eq v2, v3, :cond_2

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    const/16 v3, 0x25

    .line 218
    .line 219
    if-eq v2, v3, :cond_2

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    const/16 v3, 0x1f

    .line 230
    .line 231
    if-eq v2, v3, :cond_2

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    const/4 v3, 0x5

    .line 238
    if-eq v2, v3, :cond_2

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/16 v3, 0xd

    .line 245
    .line 246
    if-eq v2, v3, :cond_2

    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    const/16 v3, 0xb

    .line 253
    .line 254
    if-ne v2, v3, :cond_1

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    new-instance v3, Lcom/join/mgps/event/r;

    .line 265
    .line 266
    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_2
    :goto_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v2, p2}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    new-instance v3, Lcom/join/mgps/event/r;

    .line 288
    .line 289
    invoke-direct {v3, v0, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0, p2}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    new-instance v2, Lcom/join/mgps/event/r;

    .line 314
    .line 315
    invoke-direct {v2, p2, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :goto_2
    invoke-direct {p0, p2}, Lcom/join/android/app/common/servcie/j;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_4

    .line 326
    .line 327
    new-instance v0, Landroid/content/Intent;

    .line 328
    .line 329
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.deletecheckhasfile"

    .line 330
    .line 331
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v1, "plugNumber"

    .line 335
    .line 336
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    const-string v1, "gameZipPath"

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    .line 351
    .line 352
    const-string v1, "PackageName"

    .line 353
    .line 354
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    const-string v1, "romType"

    .line 362
    .line 363
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    const-string v1, "gameName"

    .line 371
    .line 372
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    .line 381
    .line 382
    :cond_4
    return-void
.end method

.method public e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/servcie/j$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/common/servcie/j$b;-><init>(Lcom/join/android/app/common/servcie/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    return-object p1
.end method

.method public h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x1d

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x1f

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/16 v1, 0x24

    .line 49
    .line 50
    if-eq p1, v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v1, 0x5

    .line 57
    if-eq p1, v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eq p1, v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/16 v0, 0x26

    .line 74
    .line 75
    if-eq p1, v0, :cond_1

    .line 76
    .line 77
    :cond_0
    return v3

    .line 78
    :cond_1
    const/4 p1, 0x0

    .line 79
    return p1
.end method

.method public j(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onFinish removeTask  "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public m()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    sget-object v1, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v3, 0x1d

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0xa

    .line 47
    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Lcom/join/mgps/event/r;

    .line 59
    .line 60
    invoke-direct {v3, v1, v4}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/join/android/app/common/utils/r;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v1, v4}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lcom/join/mgps/event/r;

    .line 85
    .line 86
    invoke-direct {v3, v1, v4}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-instance v3, Lcom/join/mgps/event/p;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const/16 v5, 0x26

    .line 103
    .line 104
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v3, "del removeAllTask  "

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    sget-object v2, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_2
    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
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
    const-string v1, "removeTask 1 "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    return-object p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized p(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask",
            "showTip"
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
    const-string v1, "method start() called."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ";"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "   downloadTaskPool .size="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    const/4 v2, 0x1

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/16 v5, 0x1d

    .line 88
    .line 89
    if-eq v4, v5, :cond_1

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/16 v5, 0x1f

    .line 100
    .line 101
    if-eq v4, v5, :cond_1

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    const/16 v5, 0x24

    .line 112
    .line 113
    if-eq v4, v5, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eq v4, v1, :cond_1

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eq v4, v2, :cond_1

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/16 v5, 0x26

    .line 136
    .line 137
    if-eq v4, v5, :cond_0

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    .line 142
    const/16 v5, 0x13

    .line 143
    .line 144
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string p3, "method start() called. return"

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p3, ";"

    .line 169
    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const/4 v5, 0x2

    .line 195
    if-nez v4, :cond_4

    .line 196
    .line 197
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, p2}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {v6, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 221
    .line 222
    .line 223
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-nez p2, :cond_3

    .line 225
    .line 226
    monitor-exit p0

    .line 227
    return-void

    .line 228
    :cond_3
    :try_start_2
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_4
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    const/16 v7, 0x9

    .line 240
    .line 241
    if-eq v6, v7, :cond_9

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-ne v6, v1, :cond_6

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    if-eqz v1, :cond_5

    .line 262
    .line 263
    monitor-exit p0

    .line 264
    return-void

    .line 265
    :cond_5
    const/4 v1, 0x0

    .line 266
    goto :goto_2

    .line 267
    :cond_6
    const/4 v1, 0x1

    .line 268
    :goto_2
    if-eqz v1, :cond_7

    .line 269
    .line 270
    :try_start_3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownLimit()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v4, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDownType()Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    invoke-virtual {v4, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 282
    .line 283
    .line 284
    move-object p2, v4

    .line 285
    :cond_7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-ne v1, v7, :cond_8

    .line 290
    .line 291
    invoke-static {p2, v3, v3}, Lcom/join/mgps/Util/UtilsMy;->P0(Lcom/github/snowdream/android/app/downloader/DownloadTask;ZZ)V

    .line 292
    .line 293
    .line 294
    const-string v1, ""

    .line 295
    .line 296
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v1, ""

    .line 300
    .line 301
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v1, ""

    .line 305
    .line 306
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTask_down_type(I)V

    .line 310
    .line 311
    .line 312
    const-wide/16 v6, 0x0

    .line 313
    .line 314
    invoke-virtual {p2, v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 315
    .line 316
    .line 317
    :cond_8
    const/4 v1, 0x1

    .line 318
    goto :goto_4

    .line 319
    :cond_9
    :goto_3
    const/4 v1, 0x0

    .line 320
    :goto_4
    invoke-virtual {p2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 321
    .line 322
    .line 323
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v3, p2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-eqz v3, :cond_a

    .line 339
    .line 340
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p1, p2}, Lq5/b;->delete(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .line 346
    .line 347
    monitor-exit p0

    .line 348
    return-void

    .line 349
    :cond_a
    :try_start_4
    invoke-virtual {p2, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    if-eqz v3, :cond_b

    .line 357
    .line 358
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_b

    .line 373
    .line 374
    if-nez v1, :cond_c

    .line 375
    .line 376
    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    .line 377
    .line 378
    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_b
    if-nez v1, :cond_c

    .line 383
    .line 384
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    .line 385
    .line 386
    invoke-static {p1, p2, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 387
    .line 388
    .line 389
    :cond_c
    :goto_5
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_d

    .line 394
    .line 395
    if-eqz p3, :cond_10

    .line 396
    .line 397
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 402
    .line 403
    invoke-virtual {p3, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_d
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_e

    .line 416
    .line 417
    invoke-static {p1, p2}, Lcom/join/mgps/Util/d2;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 418
    .line 419
    .line 420
    move-result p3

    .line 421
    if-nez p3, :cond_10

    .line 422
    .line 423
    new-instance p3, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 436
    .line 437
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p3

    .line 444
    invoke-static {p3}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_e
    sget-boolean v1, Lcom/MApplication;->b2:Z

    .line 449
    .line 450
    if-eqz v1, :cond_f

    .line 451
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v3, ""

    .line 467
    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_f

    .line 484
    .line 485
    goto :goto_6

    .line 486
    :cond_f
    if-eqz p3, :cond_10

    .line 487
    .line 488
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 489
    .line 490
    .line 491
    move-result-object p3

    .line 492
    instance-of p3, p3, Lcom/join/mgps/activity/EndGameLaunchActivity_;

    .line 493
    .line 494
    if-nez p3, :cond_10

    .line 495
    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 509
    .line 510
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p3

    .line 517
    invoke-static {p3}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 518
    .line 519
    .line 520
    :cond_10
    :goto_6
    if-nez v0, :cond_14

    .line 521
    .line 522
    sget-object p3, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 523
    .line 524
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    new-instance p3, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    const-string v0, "\u68c0\u6d4b\u4e0d\u5728\u4efb\u52a1\u6c60\u4e2d  "

    .line 537
    .line 538
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v0, ";"

    .line 549
    .line 550
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCpu_type()I

    .line 561
    .line 562
    .line 563
    move-result p3

    .line 564
    const/16 v0, 0x20

    .line 565
    .line 566
    if-eq p3, v0, :cond_11

    .line 567
    .line 568
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCpu_type()I

    .line 569
    .line 570
    .line 571
    move-result p3

    .line 572
    const/16 v0, 0x60

    .line 573
    .line 574
    if-ne p3, v0, :cond_13

    .line 575
    .line 576
    :cond_11
    invoke-static {p2}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 577
    .line 578
    .line 579
    move-result p3

    .line 580
    if-nez p3, :cond_12

    .line 581
    .line 582
    invoke-static {p2}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 583
    .line 584
    .line 585
    move-result p3

    .line 586
    if-eqz p3, :cond_13

    .line 587
    .line 588
    :cond_12
    invoke-static {p2}, Lcom/join/android/app/common/utils/APKUtils;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 589
    .line 590
    .line 591
    :cond_13
    move-object v0, p2

    .line 592
    goto :goto_7

    .line 593
    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    const-string v1, "\u68c0\u6d4b\u5df2\u7ecf\u5728\u4efb\u52a1\u6c60\u4e2d "

    .line 599
    .line 600
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v1, ";"

    .line 611
    .line 612
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 616
    .line 617
    .line 618
    move-result p2

    .line 619
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 623
    .line 624
    .line 625
    :goto_7
    invoke-static {v0}, Lcom/join/android/app/common/utils/r;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 626
    .line 627
    .line 628
    invoke-static {p1, v0, v5}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 629
    .line 630
    .line 631
    monitor-exit p0

    .line 632
    return-void

    .line 633
    :catchall_0
    move-exception p1

    .line 634
    monitor-exit p0

    .line 635
    throw p1
.end method

.method public q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskx"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/join/mgps/event/r;

    .line 20
    .line 21
    invoke-direct {v3, p1, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, 0x5

    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/16 v2, 0x1f

    .line 45
    .line 46
    if-eq p1, v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v2, 0x7

    .line 53
    if-eq p1, v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v2, 0xc

    .line 60
    .line 61
    if-eq p1, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/16 v2, 0xd

    .line 68
    .line 69
    if-eq p1, v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/16 v2, 0x23

    .line 80
    .line 81
    if-eq p1, v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ne p1, v1, :cond_1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/16 v2, 0x1d

    .line 99
    .line 100
    if-eq p1, v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/16 v2, 0xa

    .line 107
    .line 108
    if-ne p1, v2, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const/16 p1, 0x1b

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Lcom/join/mgps/event/r;

    .line 121
    .line 122
    invoke-direct {v2, v0, p1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lcom/join/android/app/common/servcie/j$a;

    .line 129
    .line 130
    invoke-direct {p1, p0, v0}, Lcom/join/android/app/common/servcie/j$a;-><init>(Lcom/join/android/app/common/servcie/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    const-wide/16 v1, 0xc8

    .line 135
    .line 136
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/r;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v0, v1}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v2, Lcom/join/mgps/event/r;

    .line 158
    .line 159
    invoke-direct {v2, v0, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v1, Lcom/join/mgps/event/p;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/16 v2, 0x26

    .line 176
    .line 177
    invoke-direct {v1, v0, v2}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_1
    return-void
.end method

.method public r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/android/app/common/servcie/j;->k(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/j;->y(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x2

    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    :try_start_0
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v0, v1, :cond_3

    .line 78
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/j;->x(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/j;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/j;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "explicit"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/32 v3, 0x6400000

    .line 20
    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-ltz v5, :cond_0

    .line 25
    .line 26
    const-wide/16 v1, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3, p1, v0, v1, v2}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v1, 0x64

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, p1, v0, v1, v2}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :goto_1
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance v1, Lcom/join/mgps/event/p;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/16 v3, 0x2e

    .line 98
    .line 99
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance v1, Lcom/join/mgps/event/r;

    .line 110
    .line 111
    invoke-direct {v1, p1, v0}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-instance v0, Lcom/join/mgps/event/p;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/16 v1, 0x26

    .line 128
    .line 129
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/j;->u(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const-wide/32 v3, 0x6400000

    .line 8
    .line 9
    .line 10
    cmp-long v5, v0, v3

    .line 11
    .line 12
    if-ltz v5, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, p2, v2, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 v0, 0x64

    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5, p2, v2, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-virtual {v0, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-object v0, p2

    .line 88
    :goto_1
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    .line 93
    const/16 v5, 0x24

    .line 94
    .line 95
    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v5, Lcom/join/mgps/event/r;

    .line 106
    .line 107
    invoke-direct {v5, v0, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/join/mgps/task/c;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-interface {v1}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_d

    .line 132
    .line 133
    :cond_2
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const-string v5, ""

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v7, 0x2

    .line 151
    const-string v8, "%s_%s"

    .line 152
    .line 153
    const-string v9, "onZIPMd5Failed"

    .line 154
    .line 155
    const/4 v10, 0x1

    .line 156
    if-eq v1, v2, :cond_6

    .line 157
    .line 158
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-ne v1, v2, :cond_3

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    new-instance v1, Lcom/join/mgps/task/g;

    .line 176
    .line 177
    invoke-direct {v1, v0, p1}, Lcom/join/mgps/task/g;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 181
    .line 182
    .line 183
    move-result-wide v11

    .line 184
    cmp-long v2, v11, v3

    .line 185
    .line 186
    if-gtz v2, :cond_5

    .line 187
    .line 188
    new-instance v2, Ljava/io/File;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v3, v4}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_4

    .line 214
    .line 215
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 216
    .line 217
    .line 218
    new-array p2, v7, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    aput-object v0, p2, v6

    .line 225
    .line 226
    aput-object v5, p2, v10

    .line 227
    .line 228
    invoke-static {v8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p1, v9, p2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_4
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_5
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_7

    .line 280
    .line 281
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 282
    .line 283
    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v1, p1, v10}, Lcom/join/mgps/Util/UtilsMy;->l3(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    new-instance v2, Ljava/io/File;

    .line 317
    .line 318
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    sget-object v11, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    new-instance v11, Ljava/io/File;

    .line 343
    .line 344
    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-eqz v12, :cond_9

    .line 352
    .line 353
    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 354
    .line 355
    invoke-static {p1, v12}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    if-eqz v12, :cond_8

    .line 360
    .line 361
    new-instance v0, Landroid/content/Intent;

    .line 362
    .line 363
    const-string v1, "com.wufun.unzip.failed"

    .line 364
    .line 365
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string v1, "gameId"

    .line 369
    .line 370
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_8
    invoke-static {v2, v11}, Lcom/join/mgps/Util/o0;->M(Ljava/io/File;Ljava/io/File;)Z

    .line 382
    .line 383
    .line 384
    :cond_9
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_a

    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :catch_0
    move-exception v2

    .line 395
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 396
    .line 397
    .line 398
    :cond_a
    :goto_3
    new-instance v2, Lcom/join/mgps/task/f;

    .line 399
    .line 400
    invoke-direct {v2, v0, p1, v1}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 404
    .line 405
    .line 406
    move-result-wide v11

    .line 407
    cmp-long v1, v11, v3

    .line 408
    .line 409
    if-gtz v1, :cond_c

    .line 410
    .line 411
    new-instance v1, Ljava/io/File;

    .line 412
    .line 413
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v3, v4}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-nez v1, :cond_b

    .line 437
    .line 438
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 439
    .line 440
    .line 441
    new-array p2, v7, [Ljava/lang/Object;

    .line 442
    .line 443
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    aput-object v0, p2, v6

    .line 448
    .line 449
    aput-object v5, p2, v10

    .line 450
    .line 451
    invoke-static {v8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-static {p1, v9, p2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_b
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 460
    .line 461
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 469
    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_c
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 482
    .line 483
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 484
    .line 485
    .line 486
    :cond_d
    :goto_4
    return-void
.end method

.method public z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask",
            "rom"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const-wide/32 v3, 0x6400000

    .line 8
    .line 9
    .line 10
    cmp-long v5, v0, v3

    .line 11
    .line 12
    if-ltz v5, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, p2, v2, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 v0, 0x64

    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5, p2, v2, v0, v1}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-virtual {v0, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    sget-object v0, Lcom/join/android/app/common/servcie/j;->b:Ljava/util/Map;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-object v0, p2

    .line 74
    :goto_1
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    const/16 v5, 0x24

    .line 80
    .line 81
    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v5, Lcom/join/mgps/event/r;

    .line 92
    .line 93
    invoke-direct {v5, v0, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "gameId"

    .line 100
    .line 101
    const-string v2, "com.wufun.unzip.failed"

    .line 102
    .line 103
    if-eqz p3, :cond_13

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    const/16 v5, 0x8

    .line 114
    .line 115
    new-array v5, v5, [I

    .line 116
    .line 117
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    const/4 v7, 0x0

    .line 124
    aput v6, v5, v7

    .line 125
    .line 126
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    const/4 v8, 0x1

    .line 133
    aput v6, v5, v8

    .line 134
    .line 135
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    const/4 v9, 0x2

    .line 142
    aput v6, v5, v9

    .line 143
    .line 144
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    const/4 v9, 0x3

    .line 151
    aput v6, v5, v9

    .line 152
    .line 153
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 154
    .line 155
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const/4 v9, 0x4

    .line 160
    aput v6, v5, v9

    .line 161
    .line 162
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    const/4 v9, 0x5

    .line 169
    aput v6, v5, v9

    .line 170
    .line 171
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    const/4 v10, 0x6

    .line 178
    aput v9, v5, v10

    .line 179
    .line 180
    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    const/4 v11, 0x7

    .line 187
    aput v10, v5, v11

    .line 188
    .line 189
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .line 191
    const/16 v11, 0x1d

    .line 192
    .line 193
    if-le v10, v11, :cond_d

    .line 194
    .line 195
    invoke-static {v5}, Lcom/join/android/app/common/servcie/g;->a([I)Ljava/util/stream/IntStream;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    new-instance v10, Lcom/join/android/app/common/servcie/i;

    .line 200
    .line 201
    invoke-direct {v10, p3}, Lcom/join/android/app/common/servcie/i;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v5, v10}, Lcom/join/android/app/common/servcie/h;->a(Ljava/util/stream/IntStream;Ljava/util/function/IntPredicate;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_d

    .line 209
    .line 210
    sget-object v5, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Lcom/join/mgps/task/c;

    .line 221
    .line 222
    if-eqz v5, :cond_2

    .line 223
    .line 224
    invoke-interface {v5}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_17

    .line 229
    .line 230
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-eqz v10, :cond_5

    .line 243
    .line 244
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eq p3, v5, :cond_3

    .line 249
    .line 250
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-ne p3, v5, :cond_4

    .line 255
    .line 256
    :cond_3
    const/4 v7, 0x1

    .line 257
    :cond_4
    new-instance p3, Lcom/join/mgps/pref/PrefDef_;

    .line 258
    .line 259
    invoke-direct {p3, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p3, p1, v7}, Lcom/join/mgps/Util/UtilsMy;->l3(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;Z)V

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 266
    .line 267
    .line 268
    move-result-object p3

    .line 269
    invoke-virtual {p3}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p3

    .line 292
    new-instance v5, Ljava/io/File;

    .line 293
    .line 294
    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance p3, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    sget-object v6, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    new-instance v6, Ljava/io/File;

    .line 319
    .line 320
    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-eqz v7, :cond_7

    .line 328
    .line 329
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 330
    .line 331
    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-eqz v7, :cond_6

    .line 336
    .line 337
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 338
    .line 339
    .line 340
    new-instance p3, Landroid/content/Intent;

    .line 341
    .line 342
    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :cond_6
    invoke-static {v5, v6}, Lcom/join/mgps/Util/o0;->M(Ljava/io/File;Ljava/io/File;)Z

    .line 357
    .line 358
    .line 359
    :cond_7
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-nez p2, :cond_8

    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    goto :goto_2

    .line 369
    :catch_0
    move-exception p2

    .line 370
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    .line 372
    .line 373
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    if-nez p2, :cond_a

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-eqz p2, :cond_9

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_9
    new-instance p2, Lcom/join/mgps/task/h;

    .line 415
    .line 416
    invoke-direct {p2, v0, p1, p3}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_a
    :goto_3
    new-instance p2, Lcom/join/mgps/task/f;

    .line 421
    .line 422
    invoke-direct {p2, v0, p1, p3}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 426
    .line 427
    .line 428
    move-result-wide v1

    .line 429
    cmp-long p1, v1, v3

    .line 430
    .line 431
    if-gtz p1, :cond_c

    .line 432
    .line 433
    instance-of p1, p2, Lcom/join/mgps/task/f;

    .line 434
    .line 435
    if-eqz p1, :cond_b

    .line 436
    .line 437
    check-cast p2, Lcom/join/mgps/task/f;

    .line 438
    .line 439
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_7

    .line 443
    .line 444
    :cond_b
    check-cast p2, Lcom/join/mgps/task/h;

    .line 445
    .line 446
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_7

    .line 450
    .line 451
    :cond_c
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p3

    .line 457
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 461
    .line 462
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_7

    .line 466
    .line 467
    :cond_d
    sget-object p2, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p3

    .line 473
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object p2

    .line 477
    check-cast p2, Lcom/join/mgps/task/c;

    .line 478
    .line 479
    new-instance p3, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    sget-object v1, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p3

    .line 500
    if-eqz p2, :cond_e

    .line 501
    .line 502
    invoke-interface {p2}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 503
    .line 504
    .line 505
    move-result p2

    .line 506
    if-nez p2, :cond_17

    .line 507
    .line 508
    :cond_e
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p2

    .line 512
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result p2

    .line 524
    if-nez p2, :cond_10

    .line 525
    .line 526
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object p2

    .line 530
    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result p2

    .line 542
    if-eqz p2, :cond_f

    .line 543
    .line 544
    goto :goto_5

    .line 545
    :cond_f
    new-instance p2, Lcom/join/mgps/task/h;

    .line 546
    .line 547
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_10
    :goto_5
    new-instance p2, Lcom/join/mgps/task/f;

    .line 552
    .line 553
    invoke-direct {p2, v0, p1, p3}, Lcom/join/mgps/task/f;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    :goto_6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 557
    .line 558
    .line 559
    move-result-wide v1

    .line 560
    cmp-long p1, v1, v3

    .line 561
    .line 562
    if-gtz p1, :cond_12

    .line 563
    .line 564
    instance-of p1, p2, Lcom/join/mgps/task/f;

    .line 565
    .line 566
    if-eqz p1, :cond_11

    .line 567
    .line 568
    check-cast p2, Lcom/join/mgps/task/f;

    .line 569
    .line 570
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :cond_11
    check-cast p2, Lcom/join/mgps/task/h;

    .line 575
    .line 576
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 577
    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_12
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p3

    .line 586
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 590
    .line 591
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 592
    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_13
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 596
    .line 597
    const/16 v5, 0x1e

    .line 598
    .line 599
    if-gt p3, v5, :cond_14

    .line 600
    .line 601
    sget-object p3, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 602
    .line 603
    invoke-virtual {p3, p1, v0}, Lcom/join/android/app/common/utils/APKUtils$b;->D(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 604
    .line 605
    .line 606
    move-result p3

    .line 607
    if-eqz p3, :cond_14

    .line 608
    .line 609
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/j;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 610
    .line 611
    .line 612
    new-instance p3, Landroid/content/Intent;

    .line 613
    .line 614
    invoke-direct {p3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 625
    .line 626
    .line 627
    goto :goto_7

    .line 628
    :cond_14
    sget-object p3, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 629
    .line 630
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object p3

    .line 638
    check-cast p3, Lcom/join/mgps/task/c;

    .line 639
    .line 640
    if-eqz p3, :cond_15

    .line 641
    .line 642
    invoke-interface {p3}, Lcom/join/mgps/task/c;->isRunning()Z

    .line 643
    .line 644
    .line 645
    move-result p3

    .line 646
    if-nez p3, :cond_17

    .line 647
    .line 648
    :cond_15
    new-instance p3, Lcom/join/mgps/task/e;

    .line 649
    .line 650
    invoke-direct {p3, v0, p1}, Lcom/join/mgps/task/e;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 654
    .line 655
    .line 656
    move-result-wide p1

    .line 657
    cmp-long v1, p1, v3

    .line 658
    .line 659
    if-gtz v1, :cond_16

    .line 660
    .line 661
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 662
    .line 663
    .line 664
    goto :goto_7

    .line 665
    :cond_16
    sget-object p1, Lcom/join/android/app/common/servcie/j;->d:Ljava/util/Map;

    .line 666
    .line 667
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p2

    .line 671
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    sget-object p1, Lcom/join/android/app/common/servcie/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 675
    .line 676
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 677
    .line 678
    .line 679
    :cond_17
    :goto_7
    return-void
.end method
