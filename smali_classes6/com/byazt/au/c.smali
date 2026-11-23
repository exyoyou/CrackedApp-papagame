.class public Lcom/byazt/au/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x171,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:I

.field public static n:Ljava/lang/Object;

.field public static volatile tt:I

.field public static volatile uj:I

.field public static volatile ve:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/au/c;->n:Ljava/lang/Object;

    .line 7
    .line 8
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

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/au/c;->n:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public execVideoPreload(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->isPreloadAll()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-wide/32 v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-wide v1, v4

    .line 18
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getPitayaCacheSize()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    int-to-long v1, v3

    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getVideoSize()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    cmp-long v3, v1, v6

    .line 30
    .line 31
    if-ltz v3, :cond_1

    .line 32
    .line 33
    move-wide v9, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-wide v9, v1

    .line 36
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getCacheParentDir()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getCacheInfoByFilePath(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "TTVideoPreloadImp"

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    new-array v6, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v7, "TTMediaPlayer execVideoPreload: sourceType = "

    .line 54
    .line 55
    const/4 v13, 0x0

    .line 56
    aput-object v7, v6, v13

    .line 57
    .line 58
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v14, 0x1

    .line 63
    aput-object v7, v6, v14

    .line 64
    .line 65
    const-string v7, " preloadSize = "

    .line 66
    .line 67
    const/4 v15, 0x2

    .line 68
    aput-object v7, v6, v15

    .line 69
    .line 70
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const/16 v16, 0x3

    .line 75
    .line 76
    aput-object v7, v6, v16

    .line 77
    .line 78
    invoke-static {v2, v6}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x6

    .line 82
    const/16 v17, 0x5

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    cmp-long v6, v9, v4

    .line 87
    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 91
    .line 92
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getVideoSize()J

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    cmp-long v8, v4, v6

    .line 97
    .line 98
    if-gez v8, :cond_3

    .line 99
    .line 100
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 101
    .line 102
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 103
    .line 104
    cmp-long v8, v4, v6

    .line 105
    .line 106
    if-ltz v8, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 110
    .line 111
    cmp-long v6, v4, v9

    .line 112
    .line 113
    if-ltz v6, :cond_4

    .line 114
    .line 115
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v4, 0x0

    .line 118
    :goto_2
    const-string v5, "TTVideoPreloadImp"

    .line 119
    .line 120
    new-array v6, v2, [Ljava/lang/Object;

    .line 121
    .line 122
    const-string v7, "TTMediaPlayer execVideoPreload: cacheInfo.mCacheSizeFromZero = "

    .line 123
    .line 124
    aput-object v7, v6, v13

    .line 125
    .line 126
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 127
    .line 128
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    aput-object v7, v6, v14

    .line 133
    .line 134
    const-string v7, " cacheInfo.mMediaSize = "

    .line 135
    .line 136
    aput-object v7, v6, v15

    .line 137
    .line 138
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 139
    .line 140
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aput-object v1, v6, v16

    .line 145
    .line 146
    const-string v1, " sourceType = "

    .line 147
    .line 148
    aput-object v1, v6, v3

    .line 149
    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    aput-object v1, v6, v17

    .line 155
    .line 156
    invoke-static {v5, v6}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    const/4 v4, 0x0

    .line 161
    :goto_3
    invoke-interface {v0, v4}, Lcom/byazt/fk/u;->setSourceType(I)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;

    .line 165
    .line 166
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const/4 v8, 0x0

    .line 171
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    filled-new-array {v4}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getCacheParentDir()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    move-object v6, v1

    .line 184
    invoke-direct/range {v6 .. v12}, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;-><init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lcom/byazt/au/c$1;

    .line 188
    .line 189
    move-object/from16 v5, p0

    .line 190
    .line 191
    move-object/from16 v6, p3

    .line 192
    .line 193
    invoke-direct {v4, v5, v0, v6}, Lcom/byazt/au/c$1;-><init>(Lcom/byazt/au/c;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v4}, Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;->setCallBackListener(Lcom/bykv/vk/component/ttvideo/IPreLoaderItemCallBackListener;)V

    .line 197
    .line 198
    .line 199
    const-string v4, "TTVideoPreloadImp"

    .line 200
    .line 201
    const/16 v6, 0xa

    .line 202
    .line 203
    new-array v6, v6, [Ljava/lang/Object;

    .line 204
    .line 205
    const-string v7, "TTMediaPlayer execVideoPreload start: fileName = "

    .line 206
    .line 207
    aput-object v7, v6, v13

    .line 208
    .line 209
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    aput-object v7, v6, v14

    .line 214
    .line 215
    const-string v7, " url ="

    .line 216
    .line 217
    aput-object v7, v6, v15

    .line 218
    .line 219
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    aput-object v7, v6, v16

    .line 224
    .line 225
    const-string v7, " isH265="

    .line 226
    .line 227
    aput-object v7, v6, v3

    .line 228
    .line 229
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->isH265()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    aput-object v3, v6, v17

    .line 238
    .line 239
    const-string v3, " presize="

    .line 240
    .line 241
    aput-object v3, v6, v2

    .line 242
    .line 243
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const/4 v3, 0x7

    .line 252
    aput-object v2, v6, v3

    .line 253
    .line 254
    const/16 v2, 0x8

    .line 255
    .line 256
    const-string v3, " path="

    .line 257
    .line 258
    aput-object v3, v6, v2

    .line 259
    .line 260
    const/16 v2, 0x9

    .line 261
    .line 262
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getCacheParentDir()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    aput-object v3, v6, v2

    .line 267
    .line 268
    invoke-static {v4, v6}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    sget-object v2, Lcom/byazt/au/c;->n:Ljava/lang/Object;

    .line 272
    .line 273
    monitor-enter v2

    .line 274
    :try_start_0
    sget v3, Lcom/byazt/au/c;->c:I

    .line 275
    .line 276
    add-int/2addr v3, v14

    .line 277
    sput v3, Lcom/byazt/au/c;->c:I

    .line 278
    .line 279
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->addTask(Lcom/bykv/vk/component/ttvideo/PreloaderURLItem;)V

    .line 281
    .line 282
    .line 283
    const-string v1, "TTVideoPreloadImp"

    .line 284
    .line 285
    new-array v2, v15, [Ljava/lang/Object;

    .line 286
    .line 287
    const-string v3, "TTMediaPlayer execVideoPreload end: fileName = "

    .line 288
    .line 289
    aput-object v3, v2, v13

    .line 290
    .line 291
    invoke-interface/range {p2 .. p2}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    aput-object v0, v2, v14

    .line 296
    .line 297
    invoke-static {v1, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :catchall_0
    move-exception v0

    .line 302
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    throw v0
.end method
