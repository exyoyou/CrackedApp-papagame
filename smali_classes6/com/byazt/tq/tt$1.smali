.class public Lcom/byazt/tq/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x46e,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tq/tt;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tq/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tq/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;J)J

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p1, p2}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    if-eqz p2, :cond_1d

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const-wide/16 v5, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    invoke-static {v0, v7}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_15

    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 26
    .line 27
    .line 28
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 29
    :try_start_1
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 40
    .line 41
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->c()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-object v10, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 46
    .line 47
    invoke-static {v10}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    add-long/2addr v8, v10

    .line 52
    invoke-static {v0, v8, v9}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;J)J

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 59
    :cond_0
    if-nez v4, :cond_4

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 70
    .line 71
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 75
    .line 76
    .line 77
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    cmp-long v0, v2, v7

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    cmp-long v0, v2, v5

    .line 106
    .line 107
    if-lez v0, :cond_3

    .line 108
    .line 109
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void

    .line 119
    :goto_1
    const-string v2, "CSJ_MediaDLPlay"

    .line 120
    .line 121
    const-string v3, "close stream error"

    .line 122
    .line 123
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    const/16 v0, 0x2000

    .line 128
    .line 129
    :try_start_3
    new-array v0, v0, [B

    .line 130
    .line 131
    iget-object v8, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 132
    .line 133
    invoke-static {v8}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    iget-object v10, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 138
    .line 139
    invoke-static {v10}, Lcom/byazt/tq/tt;->ve(Lcom/byazt/tq/tt;)Ljava/io/RandomAccessFile;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iget-object v11, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 148
    .line 149
    invoke-static {v11}, Lcom/byazt/tq/tt;->ve(Lcom/byazt/tq/tt;)Ljava/io/RandomAccessFile;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-virtual {v11}, Ljava/io/FileDescriptor;->valid()Z

    .line 158
    .line 159
    .line 160
    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 161
    if-nez v12, :cond_7

    .line 162
    .line 163
    :try_start_4
    const-string v0, "CSJ_MediaDLPlay"

    .line 164
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v9, "fd not valid"

    .line 168
    .line 169
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v9, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 173
    .line 174
    invoke-static {v9}, Lcom/byazt/tq/tt;->uj(Lcom/byazt/tq/tt;)Lcom/byazt/jzl/a;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v9}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-static {v0, v8}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 190
    .line 191
    .line 192
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 193
    .line 194
    .line 195
    if-eqz v7, :cond_5

    .line 196
    .line 197
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 198
    .line 199
    .line 200
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 201
    .line 202
    .line 203
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 210
    .line 211
    .line 212
    move-result-wide v2

    .line 213
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 222
    .line 223
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v7

    .line 227
    cmp-long v0, v2, v7

    .line 228
    .line 229
    if-nez v0, :cond_6

    .line 230
    .line 231
    cmp-long v0, v2, v5

    .line 232
    .line 233
    if-lez v0, :cond_6

    .line 234
    .line 235
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v2

    .line 241
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    .line 243
    .line 244
    :cond_6
    return-void

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    const-string v2, "CSJ_MediaDLPlay"

    .line 247
    .line 248
    const-string v3, "close stream error"

    .line 249
    .line 250
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_7
    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 255
    .line 256
    .line 257
    move-result v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 258
    if-nez v12, :cond_a

    .line 259
    .line 260
    :try_start_7
    const-string v0, "CSJ_MediaDLPlay"

    .line 261
    .line 262
    const-string v8, "channel is closed"

    .line 263
    .line 264
    invoke-static {v0, v8}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 265
    .line 266
    .line 267
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 268
    .line 269
    .line 270
    if-eqz v7, :cond_8

    .line 271
    .line 272
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 273
    .line 274
    .line 275
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 276
    .line 277
    .line 278
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 279
    .line 280
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 289
    .line 290
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_9

    .line 295
    .line 296
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 297
    .line 298
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v7

    .line 302
    cmp-long v0, v2, v7

    .line 303
    .line 304
    if-nez v0, :cond_9

    .line 305
    .line 306
    cmp-long v0, v2, v5

    .line 307
    .line 308
    if-lez v0, :cond_9

    .line 309
    .line 310
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 311
    .line 312
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 313
    .line 314
    .line 315
    move-result-wide v2

    .line 316
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 317
    .line 318
    .line 319
    :cond_9
    return-void

    .line 320
    :catchall_2
    move-exception v0

    .line 321
    const-string v2, "CSJ_MediaDLPlay"

    .line 322
    .line 323
    const-string v3, "close stream error"

    .line 324
    .line 325
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_a
    move-wide v13, v5

    .line 330
    :goto_2
    const/4 v12, 0x0

    .line 331
    :goto_3
    rsub-int v15, v12, 0x2000

    .line 332
    .line 333
    :try_start_9
    invoke-virtual {v4, v0, v12, v15}, Ljava/io/InputStream;->read([BII)I

    .line 334
    .line 335
    .line 336
    move-result v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 337
    const/4 v2, -0x1

    .line 338
    if-eq v15, v2, :cond_14

    .line 339
    .line 340
    add-int/2addr v12, v15

    .line 341
    move-object/from16 v16, v4

    .line 342
    .line 343
    int-to-long v3, v15

    .line 344
    add-long/2addr v13, v3

    .line 345
    const-wide/16 v3, 0x2000

    .line 346
    .line 347
    :try_start_a
    rem-long v3, v13, v3

    .line 348
    .line 349
    cmp-long v15, v3, v5

    .line 350
    .line 351
    if-eqz v15, :cond_c

    .line 352
    .line 353
    iget-object v3, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 354
    .line 355
    invoke-static {v3}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 356
    .line 357
    .line 358
    move-result-wide v3

    .line 359
    iget-object v15, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 360
    .line 361
    invoke-static {v15}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;)J

    .line 362
    .line 363
    .line 364
    move-result-wide v17

    .line 365
    sub-long v3, v3, v17

    .line 366
    .line 367
    cmp-long v15, v13, v3

    .line 368
    .line 369
    if-nez v15, :cond_b

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_b
    const/4 v3, 0x0

    .line 373
    goto :goto_5

    .line 374
    :cond_c
    :goto_4
    const/4 v3, 0x1

    .line 375
    :goto_5
    if-eqz v3, :cond_13

    .line 376
    .line 377
    iget-object v3, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 378
    .line 379
    invoke-static {v3}, Lcom/byazt/tq/tt;->a(Lcom/byazt/tq/tt;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 384
    :try_start_b
    iget-object v4, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 385
    .line 386
    invoke-static {v4}, Lcom/byazt/tq/tt;->sp(Lcom/byazt/tq/tt;)Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-eqz v4, :cond_f

    .line 391
    .line 392
    const-string v0, "CSJ_MediaDLPlay"

    .line 393
    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v8, "close stream "

    .line 397
    .line 398
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v8, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 402
    .line 403
    invoke-static {v8}, Lcom/byazt/tq/tt;->uj(Lcom/byazt/tq/tt;)Lcom/byazt/jzl/a;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v8}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-static {v0, v4}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 422
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 423
    .line 424
    .line 425
    if-eqz v7, :cond_d

    .line 426
    .line 427
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 428
    .line 429
    .line 430
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 431
    .line 432
    .line 433
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 434
    .line 435
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 440
    .line 441
    .line 442
    move-result-wide v2

    .line 443
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 444
    .line 445
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_e

    .line 450
    .line 451
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 452
    .line 453
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 454
    .line 455
    .line 456
    move-result-wide v7

    .line 457
    cmp-long v0, v2, v7

    .line 458
    .line 459
    if-nez v0, :cond_e

    .line 460
    .line 461
    cmp-long v0, v2, v5

    .line 462
    .line 463
    if-lez v0, :cond_e

    .line 464
    .line 465
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 466
    .line 467
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 468
    .line 469
    .line 470
    move-result-wide v2

    .line 471
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 472
    .line 473
    .line 474
    :cond_e
    return-void

    .line 475
    :catchall_3
    move-exception v0

    .line 476
    const-string v2, "CSJ_MediaDLPlay"

    .line 477
    .line 478
    const-string v3, "close stream error"

    .line 479
    .line 480
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_f
    :try_start_d
    iget-object v4, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 485
    .line 486
    invoke-static {v4}, Lcom/byazt/tq/tt;->ve(Lcom/byazt/tq/tt;)Ljava/io/RandomAccessFile;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-static {v4, v0, v8, v9, v12}, Lcom/byazt/vv/ve;->c(Ljava/io/RandomAccessFile;[BJI)Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-eqz v4, :cond_10

    .line 495
    .line 496
    int-to-long v5, v12

    .line 497
    add-long/2addr v8, v5

    .line 498
    monitor-exit v3

    .line 499
    move-object/from16 v4, v16

    .line 500
    .line 501
    const-wide/16 v5, 0x0

    .line 502
    .line 503
    goto/16 :goto_2

    .line 504
    .line 505
    :cond_10
    const-string v0, "CSJ_MediaDLPlay"

    .line 506
    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string v5, "append error, try again\uff1a"

    .line 510
    .line 511
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v5, "  offset = "

    .line 518
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v5, " key= "

    .line 526
    .line 527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v5, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 531
    .line 532
    invoke-static {v5}, Lcom/byazt/tq/tt;->uj(Lcom/byazt/tq/tt;)Lcom/byazt/jzl/a;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    invoke-virtual {v5}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v5, " fb: "

    .line 544
    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v11}, Ljava/io/FileDescriptor;->valid()Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v5, " channel "

    .line 556
    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-static {v0, v4}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 575
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 576
    .line 577
    .line 578
    if-eqz v7, :cond_11

    .line 579
    .line 580
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 581
    .line 582
    .line 583
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 584
    .line 585
    .line 586
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 587
    .line 588
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 593
    .line 594
    .line 595
    move-result-wide v2

    .line 596
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 597
    .line 598
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_12

    .line 603
    .line 604
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 605
    .line 606
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 607
    .line 608
    .line 609
    move-result-wide v4

    .line 610
    cmp-long v0, v2, v4

    .line 611
    .line 612
    if-nez v0, :cond_12

    .line 613
    .line 614
    const-wide/16 v4, 0x0

    .line 615
    .line 616
    cmp-long v0, v2, v4

    .line 617
    .line 618
    if-lez v0, :cond_12

    .line 619
    .line 620
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 621
    .line 622
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 623
    .line 624
    .line 625
    move-result-wide v2

    .line 626
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 627
    .line 628
    .line 629
    :cond_12
    return-void

    .line 630
    :catchall_4
    move-exception v0

    .line 631
    const-string v2, "CSJ_MediaDLPlay"

    .line 632
    .line 633
    const-string v3, "close stream error"

    .line 634
    .line 635
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    .line 637
    .line 638
    return-void

    .line 639
    :catchall_5
    move-exception v0

    .line 640
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 641
    :try_start_10
    throw v0

    .line 642
    :cond_13
    move-object/from16 v4, v16

    .line 643
    .line 644
    goto/16 :goto_3

    .line 645
    .line 646
    :catchall_6
    move-exception v0

    .line 647
    move-object/from16 v4, v16

    .line 648
    .line 649
    goto/16 :goto_7

    .line 650
    .line 651
    :cond_14
    move-object/from16 v16, v4

    .line 652
    .line 653
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 654
    .line 655
    invoke-static {v0}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;)J

    .line 656
    .line 657
    .line 658
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 659
    .line 660
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 661
    .line 662
    .line 663
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 664
    .line 665
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 666
    .line 667
    .line 668
    move-result-wide v3

    .line 669
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 670
    .line 671
    invoke-static {v0}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;)J

    .line 672
    .line 673
    .line 674
    move-result-wide v5

    .line 675
    sub-long/2addr v3, v5

    .line 676
    cmp-long v0, v13, v3

    .line 677
    .line 678
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 679
    .line 680
    invoke-static {v0}, Lcom/byazt/tq/tt;->uj(Lcom/byazt/tq/tt;)Lcom/byazt/jzl/a;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 685
    .line 686
    .line 687
    move-object/from16 v4, v16

    .line 688
    .line 689
    goto :goto_6

    .line 690
    :catchall_7
    move-exception v0

    .line 691
    move-object/from16 v16, v4

    .line 692
    .line 693
    goto :goto_7

    .line 694
    :catchall_8
    move-exception v0

    .line 695
    goto :goto_7

    .line 696
    :cond_15
    :try_start_11
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 697
    .line 698
    const/4 v2, 0x0

    .line 699
    invoke-static {v0, v2}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;Z)Z

    .line 700
    .line 701
    .line 702
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 703
    .line 704
    invoke-static {v0}, Lcom/byazt/tq/tt;->x(Lcom/byazt/tq/tt;)J

    .line 705
    .line 706
    .line 707
    move-result-wide v5

    .line 708
    invoke-static {v0, v5, v6}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;J)J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 709
    .line 710
    .line 711
    move-object v7, v4

    .line 712
    :goto_6
    if-eqz v4, :cond_16

    .line 713
    .line 714
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 715
    .line 716
    .line 717
    :cond_16
    if-eqz v7, :cond_17

    .line 718
    .line 719
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 720
    .line 721
    .line 722
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 723
    .line 724
    .line 725
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 726
    .line 727
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 732
    .line 733
    .line 734
    move-result-wide v2

    .line 735
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 736
    .line 737
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-eqz v0, :cond_1e

    .line 742
    .line 743
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 744
    .line 745
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 746
    .line 747
    .line 748
    move-result-wide v4

    .line 749
    cmp-long v0, v2, v4

    .line 750
    .line 751
    if-nez v0, :cond_1e

    .line 752
    .line 753
    const-wide/16 v4, 0x0

    .line 754
    .line 755
    cmp-long v0, v2, v4

    .line 756
    .line 757
    if-lez v0, :cond_1e

    .line 758
    .line 759
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 760
    .line 761
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 762
    .line 763
    .line 764
    move-result-wide v2

    .line 765
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 766
    .line 767
    .line 768
    goto/16 :goto_d

    .line 769
    .line 770
    :catchall_9
    move-exception v0

    .line 771
    move-object v7, v4

    .line 772
    :goto_7
    :try_start_13
    iget-object v3, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 773
    .line 774
    const/4 v2, 0x0

    .line 775
    invoke-static {v3, v2}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;Z)Z

    .line 776
    .line 777
    .line 778
    iget-object v2, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 779
    .line 780
    invoke-static {v2}, Lcom/byazt/tq/tt;->x(Lcom/byazt/tq/tt;)J

    .line 781
    .line 782
    .line 783
    move-result-wide v5

    .line 784
    invoke-static {v2, v5, v6}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;J)J

    .line 785
    .line 786
    .line 787
    const-string v2, "CSJ_MediaDLPlay"

    .line 788
    .line 789
    const-string v3, "io error"

    .line 790
    .line 791
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 792
    .line 793
    .line 794
    if-eqz v4, :cond_18

    .line 795
    .line 796
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 797
    .line 798
    .line 799
    goto :goto_8

    .line 800
    :catchall_a
    move-exception v0

    .line 801
    goto :goto_9

    .line 802
    :cond_18
    :goto_8
    if-eqz v7, :cond_19

    .line 803
    .line 804
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 805
    .line 806
    .line 807
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 808
    .line 809
    .line 810
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 811
    .line 812
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 817
    .line 818
    .line 819
    move-result-wide v2

    .line 820
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 821
    .line 822
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    if-eqz v0, :cond_1e

    .line 827
    .line 828
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 829
    .line 830
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 831
    .line 832
    .line 833
    move-result-wide v4

    .line 834
    cmp-long v0, v2, v4

    .line 835
    .line 836
    if-nez v0, :cond_1e

    .line 837
    .line 838
    const-wide/16 v4, 0x0

    .line 839
    .line 840
    cmp-long v0, v2, v4

    .line 841
    .line 842
    if-lez v0, :cond_1e

    .line 843
    .line 844
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 845
    .line 846
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 847
    .line 848
    .line 849
    move-result-wide v2

    .line 850
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 851
    .line 852
    .line 853
    goto :goto_d

    .line 854
    :goto_9
    const-string v2, "CSJ_MediaDLPlay"

    .line 855
    .line 856
    const-string v3, "close stream error"

    .line 857
    .line 858
    invoke-static {v2, v3, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    .line 860
    .line 861
    goto :goto_d

    .line 862
    :catchall_b
    move-exception v0

    .line 863
    move-object v2, v0

    .line 864
    if-eqz v4, :cond_1a

    .line 865
    .line 866
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 867
    .line 868
    .line 869
    goto :goto_a

    .line 870
    :catchall_c
    move-exception v0

    .line 871
    goto :goto_b

    .line 872
    :cond_1a
    :goto_a
    if-eqz v7, :cond_1b

    .line 873
    .line 874
    invoke-virtual {v7}, Lcom/byazt/gqp/nu;->close()V

    .line 875
    .line 876
    .line 877
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/gqp/m;->close()V

    .line 878
    .line 879
    .line 880
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 881
    .line 882
    invoke-static {v0}, Lcom/byazt/tq/tt;->i(Lcom/byazt/tq/tt;)Ljava/io/File;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 887
    .line 888
    .line 889
    move-result-wide v3

    .line 890
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 891
    .line 892
    invoke-static {v0}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;)Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    if-eqz v0, :cond_1c

    .line 897
    .line 898
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 899
    .line 900
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 901
    .line 902
    .line 903
    move-result-wide v5

    .line 904
    cmp-long v0, v3, v5

    .line 905
    .line 906
    if-nez v0, :cond_1c

    .line 907
    .line 908
    const-wide/16 v5, 0x0

    .line 909
    .line 910
    cmp-long v0, v3, v5

    .line 911
    .line 912
    if-lez v0, :cond_1c

    .line 913
    .line 914
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 915
    .line 916
    invoke-static {v0}, Lcom/byazt/tq/tt;->n(Lcom/byazt/tq/tt;)J

    .line 917
    .line 918
    .line 919
    move-result-wide v3

    .line 920
    invoke-static {v0, v3, v4}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 921
    .line 922
    .line 923
    goto :goto_c

    .line 924
    :goto_b
    const-string v3, "CSJ_MediaDLPlay"

    .line 925
    .line 926
    const-string v4, "close stream error"

    .line 927
    .line 928
    invoke-static {v3, v4, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 929
    .line 930
    .line 931
    :cond_1c
    :goto_c
    throw v2

    .line 932
    :cond_1d
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 933
    .line 934
    const/4 v2, 0x0

    .line 935
    invoke-static {v0, v2}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;Z)Z

    .line 936
    .line 937
    .line 938
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 939
    .line 940
    invoke-static {v0}, Lcom/byazt/tq/tt;->x(Lcom/byazt/tq/tt;)J

    .line 941
    .line 942
    .line 943
    move-result-wide v2

    .line 944
    invoke-static {v0, v2, v3}, Lcom/byazt/tq/tt;->c(Lcom/byazt/tq/tt;J)J

    .line 945
    .line 946
    .line 947
    :cond_1e
    :goto_d
    iget-object v0, v1, Lcom/byazt/tq/tt$1;->c:Lcom/byazt/tq/tt;

    .line 948
    .line 949
    const/4 v2, 0x1

    .line 950
    invoke-static {v0, v2}, Lcom/byazt/tq/tt;->tt(Lcom/byazt/tq/tt;Z)V

    .line 951
    .line 952
    .line 953
    return-void
.end method
