.class public Lcom/byazt/yqr/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d6,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yqr/tt;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/yqr/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/yqr/tt;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/yqr/tt$1;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x259

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, v0, v1, p2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/byazt/yqr/ve;->c(Lcom/byazt/fk/u;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-wide v3, v1, Lcom/byazt/yqr/tt$1;->c:J

    .line 6
    .line 7
    const/4 v6, 0x3

    .line 8
    const-string v7, " Preload size="

    .line 9
    .line 10
    const/4 v8, 0x2

    .line 11
    const-string v9, "Pre finally "

    .line 12
    .line 13
    const/4 v10, 0x4

    .line 14
    const-string v11, "VideoPreload"

    .line 15
    .line 16
    const/4 v12, 0x1

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    if-eqz v2, :cond_9

    .line 20
    .line 21
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    :try_start_1
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    invoke-static {v0, v3, v4, v15}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 45
    .line 46
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 50
    .line 51
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 55
    .line 56
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 62
    .line 63
    .line 64
    new-array v0, v10, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v9, v0, v13

    .line 67
    .line 68
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    aput-object v2, v0, v12

    .line 79
    .line 80
    aput-object v7, v0, v8

    .line 81
    .line 82
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    aput-object v2, v0, v6

    .line 97
    .line 98
    invoke-static {v11, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/byazt/yqr/ve;->c(Lcom/byazt/fk/u;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v3, v11

    .line 113
    move-object v4, v14

    .line 114
    move-object v6, v4

    .line 115
    :goto_1
    const/16 v5, 0x259

    .line 116
    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 120
    .line 121
    .line 122
    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 123
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 124
    .line 125
    .line 126
    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 127
    const-wide/16 v16, 0x0

    .line 128
    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    if-eqz v15, :cond_1

    .line 132
    .line 133
    :try_start_4
    iget-wide v5, v1, Lcom/byazt/yqr/tt$1;->c:J

    .line 134
    .line 135
    invoke-virtual {v15}, Lcom/byazt/gqp/nu;->c()J

    .line 136
    .line 137
    .line 138
    move-result-wide v18

    .line 139
    add-long v5, v5, v18

    .line 140
    .line 141
    invoke-virtual {v15}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    .line 142
    .line 143
    .line 144
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    move-wide/from16 v18, v5

    .line 146
    .line 147
    move-object v5, v0

    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    move-object v3, v11

    .line 151
    move-object v4, v14

    .line 152
    move-object v6, v4

    .line 153
    goto :goto_3

    .line 154
    :cond_1
    move-object v5, v14

    .line 155
    move-wide/from16 v18, v16

    .line 156
    .line 157
    :goto_2
    if-nez v5, :cond_2

    .line 158
    .line 159
    :try_start_5
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v0, v3, v4, v6}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 174
    .line 175
    .line 176
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 177
    .line 178
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 182
    .line 183
    invoke-static {v0, v5}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 187
    .line 188
    invoke-static {v0, v15}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 192
    .line 193
    invoke-static {v0, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 194
    .line 195
    .line 196
    new-array v0, v10, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v9, v0, v13

    .line 199
    .line 200
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 201
    .line 202
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-interface {v2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    aput-object v2, v0, v12

    .line 211
    .line 212
    aput-object v7, v0, v8

    .line 213
    .line 214
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 215
    .line 216
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {v2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const/4 v3, 0x3

    .line 229
    aput-object v2, v0, v3

    .line 230
    .line 231
    invoke-static {v11, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :catchall_2
    move-exception v0

    .line 237
    move-object v4, v5

    .line 238
    move-object v3, v11

    .line 239
    move-object v6, v14

    .line 240
    :goto_3
    move-object v14, v15

    .line 241
    goto :goto_1

    .line 242
    :cond_2
    :try_start_6
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 243
    .line 244
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/byazt/yqr/tt;->tt(Lcom/byazt/yqr/tt;)Ljava/io/File;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v14, "rw"

    .line 251
    .line 252
    invoke-direct {v6, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 253
    .line 254
    .line 255
    const/16 v0, 0x2000

    .line 256
    .line 257
    :try_start_7
    new-array v0, v0, [B

    .line 258
    .line 259
    move-wide/from16 v20, v16

    .line 260
    .line 261
    const/4 v14, 0x0

    .line 262
    :goto_4
    rsub-int v8, v14, 0x2000

    .line 263
    .line 264
    invoke-virtual {v5, v0, v14, v8}, Ljava/io/InputStream;->read([BII)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    const/4 v12, -0x1

    .line 269
    if-eq v8, v12, :cond_7

    .line 270
    .line 271
    iget-object v12, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 272
    .line 273
    invoke-static {v12}, Lcom/byazt/yqr/tt;->ve(Lcom/byazt/yqr/tt;)Z

    .line 274
    .line 275
    .line 276
    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 277
    if-eqz v12, :cond_3

    .line 278
    .line 279
    :try_start_8
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v0, v3, v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 290
    .line 291
    .line 292
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 293
    .line 294
    invoke-static {v0, v6}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 298
    .line 299
    invoke-static {v0, v5}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 303
    .line 304
    invoke-static {v0, v15}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 310
    .line 311
    .line 312
    new-array v0, v10, [Ljava/lang/Object;

    .line 313
    .line 314
    aput-object v9, v0, v13

    .line 315
    .line 316
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 317
    .line 318
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-interface {v2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const/4 v3, 0x1

    .line 327
    aput-object v2, v0, v3

    .line 328
    .line 329
    const/4 v2, 0x2

    .line 330
    aput-object v7, v0, v2

    .line 331
    .line 332
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 333
    .line 334
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-interface {v2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    const/4 v3, 0x3

    .line 347
    aput-object v2, v0, v3

    .line 348
    .line 349
    invoke-static {v11, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :catchall_3
    move-exception v0

    .line 355
    move-object v4, v5

    .line 356
    move-object v3, v11

    .line 357
    goto :goto_3

    .line 358
    :cond_3
    add-int/2addr v14, v8

    .line 359
    move-object/from16 v22, v11

    .line 360
    .line 361
    int-to-long v10, v8

    .line 362
    add-long v20, v20, v10

    .line 363
    .line 364
    const-wide/16 v10, 0x2000

    .line 365
    .line 366
    :try_start_9
    rem-long v10, v20, v10

    .line 367
    .line 368
    cmp-long v8, v10, v16

    .line 369
    .line 370
    if-eqz v8, :cond_5

    .line 371
    .line 372
    iget-wide v10, v1, Lcom/byazt/yqr/tt$1;->c:J

    .line 373
    .line 374
    sub-long v10, v18, v10

    .line 375
    .line 376
    cmp-long v8, v20, v10

    .line 377
    .line 378
    if-nez v8, :cond_4

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_4
    const/4 v8, 0x0

    .line 382
    goto :goto_6

    .line 383
    :cond_5
    :goto_5
    const/4 v8, 0x1

    .line 384
    :goto_6
    if-eqz v8, :cond_6

    .line 385
    .line 386
    invoke-static {v6, v0, v3, v4, v14}, Lcom/byazt/vv/ve;->c(Ljava/io/RandomAccessFile;[BJI)Z

    .line 387
    .line 388
    .line 389
    int-to-long v10, v14

    .line 390
    add-long/2addr v3, v10

    .line 391
    const/4 v14, 0x0

    .line 392
    :cond_6
    move-object/from16 v11, v22

    .line 393
    .line 394
    const/4 v8, 0x2

    .line 395
    const/4 v10, 0x4

    .line 396
    const/4 v12, 0x1

    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_7
    move-object/from16 v22, v11

    .line 400
    .line 401
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-interface {v0}, Lcom/byazt/fk/u;->isPreloadAll()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_8

    .line 412
    .line 413
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 414
    .line 415
    invoke-static {v0}, Lcom/byazt/yqr/tt;->tt(Lcom/byazt/yqr/tt;)Ljava/io/File;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 420
    .line 421
    .line 422
    move-result-wide v3

    .line 423
    cmp-long v0, v18, v3

    .line 424
    .line 425
    if-nez v0, :cond_8

    .line 426
    .line 427
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 428
    .line 429
    invoke-static {v0}, Lcom/byazt/yqr/tt;->uj(Lcom/byazt/yqr/tt;)V

    .line 430
    .line 431
    .line 432
    :cond_8
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 433
    .line 434
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-static {v0, v3, v4}, Lcom/byazt/yqr/tt;->tt(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 443
    .line 444
    .line 445
    move-object v14, v6

    .line 446
    goto :goto_9

    .line 447
    :catchall_4
    move-exception v0

    .line 448
    goto :goto_7

    .line 449
    :catchall_5
    move-exception v0

    .line 450
    move-object/from16 v22, v11

    .line 451
    .line 452
    :goto_7
    move-object v4, v5

    .line 453
    move-object v14, v15

    .line 454
    move-object/from16 v3, v22

    .line 455
    .line 456
    goto/16 :goto_1

    .line 457
    .line 458
    :catchall_6
    move-exception v0

    .line 459
    move-object/from16 v22, v11

    .line 460
    .line 461
    move-object v4, v5

    .line 462
    move-object v14, v15

    .line 463
    move-object/from16 v3, v22

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :catchall_7
    move-exception v0

    .line 467
    move-object/from16 v22, v11

    .line 468
    .line 469
    move-object v14, v15

    .line 470
    move-object/from16 v3, v22

    .line 471
    .line 472
    const/4 v4, 0x0

    .line 473
    :goto_8
    const/16 v5, 0x259

    .line 474
    .line 475
    const/4 v6, 0x0

    .line 476
    goto :goto_c

    .line 477
    :catchall_8
    move-exception v0

    .line 478
    move-object/from16 v22, v11

    .line 479
    .line 480
    move-object/from16 v3, v22

    .line 481
    .line 482
    const/4 v4, 0x0

    .line 483
    const/16 v5, 0x259

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_9
    move-object/from16 v22, v11

    .line 487
    .line 488
    :try_start_a
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 489
    .line 490
    invoke-static {v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    const-string v4, "Network link failed."
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 495
    .line 496
    const/16 v5, 0x259

    .line 497
    .line 498
    :try_start_b
    invoke-static {v0, v3, v5, v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 499
    .line 500
    .line 501
    const/4 v5, 0x0

    .line 502
    const/4 v14, 0x0

    .line 503
    const/4 v15, 0x0

    .line 504
    :goto_9
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 505
    .line 506
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 510
    .line 511
    invoke-static {v0, v5}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 512
    .line 513
    .line 514
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 515
    .line 516
    invoke-static {v0, v15}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 520
    .line 521
    invoke-static {v0, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 522
    .line 523
    .line 524
    const/4 v2, 0x4

    .line 525
    new-array v0, v2, [Ljava/lang/Object;

    .line 526
    .line 527
    aput-object v9, v0, v13

    .line 528
    .line 529
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 530
    .line 531
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-interface {v2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    const/4 v3, 0x1

    .line 540
    aput-object v2, v0, v3

    .line 541
    .line 542
    const/4 v2, 0x2

    .line 543
    aput-object v7, v0, v2

    .line 544
    .line 545
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 546
    .line 547
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-interface {v2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    const/4 v3, 0x3

    .line 560
    aput-object v2, v0, v3

    .line 561
    .line 562
    move-object/from16 v3, v22

    .line 563
    .line 564
    invoke-static {v3, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :catchall_9
    move-exception v0

    .line 570
    move-object/from16 v3, v22

    .line 571
    .line 572
    goto :goto_a

    .line 573
    :catchall_a
    move-exception v0

    .line 574
    move-object/from16 v3, v22

    .line 575
    .line 576
    const/16 v5, 0x259

    .line 577
    .line 578
    :goto_a
    const/4 v4, 0x0

    .line 579
    :goto_b
    const/4 v6, 0x0

    .line 580
    const/4 v14, 0x0

    .line 581
    :goto_c
    :try_start_c
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 582
    .line 583
    .line 584
    iget-object v8, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 585
    .line 586
    invoke-static {v8}, Lcom/byazt/yqr/tt;->n(Lcom/byazt/yqr/tt;)V

    .line 587
    .line 588
    .line 589
    iget-object v8, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 590
    .line 591
    invoke-static {v8}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 592
    .line 593
    .line 594
    move-result-object v10

    .line 595
    if-eqz v2, :cond_a

    .line 596
    .line 597
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->ve()I

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-static {v8, v10, v5, v0}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Lcom/byazt/fk/u;ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 606
    .line 607
    .line 608
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 609
    .line 610
    invoke-static {v0, v6}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 611
    .line 612
    .line 613
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 614
    .line 615
    invoke-static {v0, v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 616
    .line 617
    .line 618
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 619
    .line 620
    invoke-static {v0, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 621
    .line 622
    .line 623
    iget-object v0, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 624
    .line 625
    invoke-static {v0, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 626
    .line 627
    .line 628
    const/4 v2, 0x4

    .line 629
    new-array v0, v2, [Ljava/lang/Object;

    .line 630
    .line 631
    aput-object v9, v0, v13

    .line 632
    .line 633
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 634
    .line 635
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-interface {v2}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    const/4 v4, 0x1

    .line 644
    aput-object v2, v0, v4

    .line 645
    .line 646
    const/4 v2, 0x2

    .line 647
    aput-object v7, v0, v2

    .line 648
    .line 649
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 650
    .line 651
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-interface {v2}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    const/4 v4, 0x3

    .line 664
    aput-object v2, v0, v4

    .line 665
    .line 666
    invoke-static {v3, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_0

    .line 670
    .line 671
    :catchall_b
    move-exception v0

    .line 672
    iget-object v5, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 673
    .line 674
    invoke-static {v5, v6}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 675
    .line 676
    .line 677
    iget-object v5, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 678
    .line 679
    invoke-static {v5, v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 680
    .line 681
    .line 682
    iget-object v4, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 683
    .line 684
    invoke-static {v4, v14}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 685
    .line 686
    .line 687
    iget-object v4, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 688
    .line 689
    invoke-static {v4, v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;Ljava/io/Closeable;)V

    .line 690
    .line 691
    .line 692
    const/4 v2, 0x4

    .line 693
    new-array v2, v2, [Ljava/lang/Object;

    .line 694
    .line 695
    aput-object v9, v2, v13

    .line 696
    .line 697
    iget-object v4, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 698
    .line 699
    invoke-static {v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-interface {v4}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    const/4 v5, 0x1

    .line 708
    aput-object v4, v2, v5

    .line 709
    .line 710
    const/4 v4, 0x2

    .line 711
    aput-object v7, v2, v4

    .line 712
    .line 713
    iget-object v4, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 714
    .line 715
    invoke-static {v4}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    invoke-interface {v4}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    const/4 v5, 0x3

    .line 728
    aput-object v4, v2, v5

    .line 729
    .line 730
    invoke-static {v3, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    iget-object v2, v1, Lcom/byazt/yqr/tt$1;->tt:Lcom/byazt/yqr/tt;

    .line 734
    .line 735
    invoke-static {v2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/yqr/tt;)Lcom/byazt/fk/u;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-static {v2}, Lcom/byazt/yqr/ve;->c(Lcom/byazt/fk/u;)V

    .line 740
    .line 741
    .line 742
    throw v0
.end method
