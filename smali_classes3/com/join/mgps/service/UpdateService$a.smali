.class Lcom/join/mgps/service/UpdateService$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/UpdateService;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/UpdateService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/UpdateService$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const-string v0, " "

    .line 3
    .line 4
    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    invoke-static {v5, v6}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->o(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    int-to-long v7, v7

    .line 24
    const-string v9, "app\u66f4\u65b0\u6587\u4ef6\u5927\u5c0f"

    .line 25
    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-static {v9, v10}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v9, "app\u66f4\u65b0code "

    .line 49
    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v9, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->o(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    new-instance v5, Ljava/io/File;

    .line 81
    .line 82
    sget-object v9, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 83
    .line 84
    const-string v10, "/aia"

    .line 85
    .line 86
    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_0

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_0

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 102
    .line 103
    .line 104
    :cond_0
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 105
    .line 106
    new-instance v9, Ljava/io/File;

    .line 107
    .line 108
    sget-object v10, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v12, "/aia/"

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v12, v1, Lcom/join/mgps/service/UpdateService$a;->b:Ljava/lang/String;

    .line 121
    .line 122
    const-string v13, "/"

    .line 123
    .line 124
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    add-int/2addr v13, v6

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v5, v9}, Lcom/join/mgps/service/UpdateService;->d(Lcom/join/mgps/service/UpdateService;Ljava/io/File;)Ljava/io/File;

    .line 144
    .line 145
    .line 146
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 147
    .line 148
    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_1

    .line 157
    .line 158
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 159
    .line 160
    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 165
    .line 166
    .line 167
    :cond_1
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 168
    .line 169
    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 174
    .line 175
    .line 176
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 177
    .line 178
    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .line 180
    .line 181
    new-instance v6, Ljava/io/FileOutputStream;

    .line 182
    .line 183
    iget-object v9, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 184
    .line 185
    invoke-static {v9}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 190
    .line 191
    .line 192
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 193
    .line 194
    invoke-direct {v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .line 196
    .line 197
    const/16 v10, 0x400

    .line 198
    .line 199
    new-array v10, v10, [B

    .line 200
    .line 201
    const-wide/16 v11, 0x0

    .line 202
    .line 203
    :goto_0
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->read([B)I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    const/4 v14, -0x1

    .line 208
    if-eq v13, v14, :cond_3

    .line 209
    .line 210
    iget-object v14, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 211
    .line 212
    invoke-static {v14}, Lcom/join/mgps/service/UpdateService;->e(Lcom/join/mgps/service/UpdateService;)Z

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    if-nez v14, :cond_3

    .line 217
    .line 218
    invoke-virtual {v9, v10, v4, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 219
    .line 220
    .line 221
    int-to-long v13, v13

    .line 222
    add-long/2addr v11, v13

    .line 223
    long-to-double v13, v11

    .line 224
    long-to-double v3, v7

    .line 225
    div-double/2addr v13, v3

    .line 226
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 227
    .line 228
    mul-double v13, v13, v3

    .line 229
    .line 230
    double-to-int v3, v13

    .line 231
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 232
    .line 233
    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    sub-int v4, v3, v4

    .line 238
    .line 239
    const/4 v13, 0x5

    .line 240
    if-lt v4, v13, :cond_2

    .line 241
    .line 242
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 243
    .line 244
    invoke-static {v4, v3}, Lcom/join/mgps/service/UpdateService;->g(Lcom/join/mgps/service/UpdateService;I)I

    .line 245
    .line 246
    .line 247
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 248
    .line 249
    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const/4 v13, 0x3

    .line 258
    invoke-virtual {v4, v13, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 263
    .line 264
    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .line 270
    .line 271
    :cond_2
    const/4 v4, 0x0

    .line 272
    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 289
    .line 290
    .line 291
    :cond_4
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->e(Lcom/join/mgps/service/UpdateService;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_5

    .line 298
    .line 299
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 306
    .line 307
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const/4 v4, 0x2

    .line 312
    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 317
    .line 318
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_5
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .line 334
    .line 335
    goto :goto_1

    .line 336
    :catchall_0
    move-exception v0

    .line 337
    goto :goto_2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :try_start_1
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 340
    .line 341
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    const/4 v4, 0x4

    .line 346
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 351
    .line 352
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :catch_1
    move-exception v0

    .line 364
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 365
    .line 366
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    const/4 v4, 0x4

    .line 371
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 376
    .line 377
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 385
    .line 386
    .line 387
    goto :goto_1

    .line 388
    :catch_2
    move-exception v0

    .line 389
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 390
    .line 391
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    const/4 v4, 0x4

    .line 396
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 401
    .line 402
    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .line 411
    .line 412
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 413
    .line 414
    const/4 v2, 0x0

    .line 415
    invoke-static {v0, v2}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/service/UpdateService$a;->c:Lcom/join/mgps/service/UpdateService;

    .line 420
    .line 421
    const/4 v3, 0x0

    .line 422
    invoke-static {v2, v3}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    .line 423
    .line 424
    .line 425
    throw v0
.end method
