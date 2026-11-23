.class Lcn/fly/commons/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/d;->b(Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/fly/commons/d$2;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/commons/d$2;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/fly/commons/d$2;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcn/fly/commons/d$2;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0xd

    .line 3
    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcn/fly/commons/d$2;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 5
    .line 6
    const/16 v3, 0x3a98

    .line 7
    .line 8
    const v4, 0xea60

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    :try_start_1
    iget-object v1, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcn/fly/commons/d$2;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 27
    .line 28
    invoke-static {v2}, Lcn/fly/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcn/fly/commons/d$2;->f:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v0, v2, v7, v3}, Lcn/fly/commons/d;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_9

    .line 54
    .line 55
    iget-object v1, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 63
    :try_start_2
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 v2, 0x7

    .line 77
    const-wide/16 v8, 0x0

    .line 78
    .line 79
    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    .line 80
    .line 81
    iget-object v11, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 82
    .line 83
    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_4
    new-instance v11, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;

    .line 87
    .line 88
    invoke-direct {v11}, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 89
    .line 90
    .line 91
    iput v4, v11, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 92
    .line 93
    iput v3, v11, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 94
    .line 95
    new-instance v3, Lcn/fly/tools/network/NetworkHelper;

    .line 96
    .line 97
    invoke-direct {v3}, Lcn/fly/tools/network/NetworkHelper;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lcn/fly/commons/d$2;->d:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v4, v10, v11}, Lcn/fly/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_5
    new-array v3, v6, [Ljava/io/Closeable;

    .line 106
    .line 107
    aput-object v10, v3, v5

    .line 108
    .line 109
    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    cmp-long v5, v3, v8

    .line 119
    .line 120
    if-lez v5, :cond_3

    .line 121
    .line 122
    iget-object v3, p0, Lcn/fly/commons/d$2;->c:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v4, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 125
    .line 126
    invoke-static {v4}, Lcn/fly/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 134
    if-eqz v3, :cond_3

    .line 135
    .line 136
    :try_start_6
    iget-object v1, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v4, p0, Lcn/fly/commons/d$2;->f:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v1, v2, v3, v7, v4}, Lcn/fly/commons/d;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_9

    .line 151
    .line 152
    iget-object v1, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_3
    :try_start_7
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_9

    .line 166
    .line 167
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :catchall_0
    move-exception v3

    .line 175
    goto :goto_1

    .line 176
    :catchall_1
    move-exception v3

    .line 177
    move-object v10, v7

    .line 178
    :goto_1
    new-array v4, v6, [Ljava/io/Closeable;

    .line 179
    .line 180
    aput-object v10, v4, v5

    .line 181
    .line 182
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 183
    .line 184
    .line 185
    iget-object v4, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    cmp-long v6, v4, v8

    .line 192
    .line 193
    if-lez v6, :cond_5

    .line 194
    .line 195
    iget-object v4, p0, Lcn/fly/commons/d$2;->c:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v5, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 198
    .line 199
    invoke-static {v5}, Lcn/fly/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    :try_start_8
    iget-object v1, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v4, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    iget-object v5, p0, Lcn/fly/commons/d$2;->f:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v1, v2, v4, v7, v5}, Lcn/fly/commons/d;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_4

    .line 224
    .line 225
    iget-object v1, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 228
    .line 229
    .line 230
    :cond_4
    const/4 v1, 0x7

    .line 231
    goto :goto_2

    .line 232
    :catchall_2
    move-exception v1

    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :cond_5
    :try_start_9
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_6

    .line 242
    .line 243
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 246
    .line 247
    .line 248
    :cond_6
    :goto_2
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 249
    :catchall_3
    move-exception v2

    .line 250
    move-object v12, v2

    .line 251
    move v2, v1

    .line 252
    move-object v1, v12

    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :catchall_4
    move-exception v2

    .line 256
    move-object v1, v2

    .line 257
    const/4 v2, 0x6

    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :catchall_5
    move-exception v1

    .line 261
    const/4 v2, 0x5

    .line 262
    goto :goto_4

    .line 263
    :cond_7
    :try_start_b
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_8

    .line 270
    .line 271
    iget-object v2, p0, Lcn/fly/commons/d$2;->b:Ljava/io/File;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 274
    .line 275
    .line 276
    :cond_8
    const/16 v1, 0x8

    .line 277
    .line 278
    :try_start_c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 279
    .line 280
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 281
    .line 282
    .line 283
    :try_start_d
    new-instance v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;

    .line 284
    .line 285
    invoke-direct {v8}, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 286
    .line 287
    .line 288
    iput v4, v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 289
    .line 290
    iput v3, v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 291
    .line 292
    new-instance v3, Lcn/fly/tools/network/NetworkHelper;

    .line 293
    .line 294
    invoke-direct {v3}, Lcn/fly/tools/network/NetworkHelper;-><init>()V

    .line 295
    .line 296
    .line 297
    iget-object v4, p0, Lcn/fly/commons/d$2;->d:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v3, v4, v2, v8}, Lcn/fly/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 300
    .line 301
    .line 302
    :try_start_e
    new-array v3, v6, [Ljava/io/Closeable;

    .line 303
    .line 304
    aput-object v2, v3, v5

    .line 305
    .line 306
    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    array-length v3, v2

    .line 314
    if-lez v3, :cond_9

    .line 315
    .line 316
    iget-object v3, p0, Lcn/fly/commons/d$2;->c:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v2}, Lcn/fly/tools/utils/Data;->MD5([B)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 326
    if-eqz v1, :cond_9

    .line 327
    .line 328
    const/16 v1, 0x9

    .line 329
    .line 330
    :try_start_f
    iget-object v3, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v4, p0, Lcn/fly/commons/d$2;->f:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v3, v1, v7, v2, v4}, Lcn/fly/commons/d;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :catchall_6
    move-exception v2

    .line 339
    move-object v1, v2

    .line 340
    const/16 v2, 0x9

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :catchall_7
    move-exception v3

    .line 344
    move-object v7, v2

    .line 345
    goto :goto_3

    .line 346
    :catchall_8
    move-exception v3

    .line 347
    :goto_3
    :try_start_10
    new-array v2, v6, [Ljava/io/Closeable;

    .line 348
    .line 349
    aput-object v7, v2, v5

    .line 350
    .line 351
    invoke-static {v2}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 352
    .line 353
    .line 354
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 355
    :catchall_9
    move-exception v2

    .line 356
    move-object v1, v2

    .line 357
    const/16 v2, 0x8

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :catchall_a
    move-exception v2

    .line 361
    move-object v1, v2

    .line 362
    const/16 v2, 0xd

    .line 363
    .line 364
    :goto_4
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    iget-object v4, p0, Lcn/fly/commons/d$2;->e:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v3, v0, v2, v1, v4}, Lcn/fly/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 378
    .line 379
    .line 380
    :cond_9
    :goto_5
    return-void
.end method
