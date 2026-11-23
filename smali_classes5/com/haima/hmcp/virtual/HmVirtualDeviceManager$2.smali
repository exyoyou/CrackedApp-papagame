.class Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToLocalStorage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->val$context:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "savePicsToLocalStorage createPicsCacheDir failed:context is null "

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->val$context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "HmVirPicsCache"

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sget-object v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "savePicsToLocalStorage createPicsCacheDir "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const-string v2, "succeed"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "failed"

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->access$000(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    move-object v3, v0

    .line 81
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_7

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_3

    .line 110
    .line 111
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    new-instance v6, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_5

    .line 128
    .line 129
    sget-object v4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v7, "savePicsToLocalStorage ignored:"

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v7, " is existed"

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 157
    .line 158
    invoke-static {v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->access$000(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    new-instance v7, Ljava/io/File;

    .line 167
    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v9, ".temp"

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 186
    .line 187
    .line 188
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    .line 189
    .line 190
    new-instance v8, Ljava/io/FileWriter;

    .line 191
    .line 192
    invoke-direct {v8, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_6

    .line 209
    .line 210
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v6, "savePicsToLocalStorage save succeed "

    .line 218
    .line 219
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;->this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->access$000(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)Ljava/util/Map;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_6
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v6, "savePicsToLocalStorage save failed "

    .line 250
    .line 251
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    .line 263
    .line 264
    :goto_2
    move-object v0, v3

    .line 265
    move-object v3, v7

    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :catchall_0
    move-exception v1

    .line 269
    move-object v0, v3

    .line 270
    goto :goto_3

    .line 271
    :catch_0
    move-exception v1

    .line 272
    move-object v0, v3

    .line 273
    goto :goto_4

    .line 274
    :catch_1
    move-exception v1

    .line 275
    move-object v0, v3

    .line 276
    goto :goto_5

    .line 277
    :catchall_1
    move-exception v1

    .line 278
    :goto_3
    move-object v3, v7

    .line 279
    goto/16 :goto_9

    .line 280
    .line 281
    :catch_2
    move-exception v1

    .line 282
    :goto_4
    move-object v3, v7

    .line 283
    goto :goto_6

    .line 284
    :catch_3
    move-exception v1

    .line 285
    :goto_5
    move-object v3, v7

    .line 286
    goto :goto_7

    .line 287
    :cond_7
    if-eqz v0, :cond_8

    .line 288
    .line 289
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 290
    .line 291
    .line 292
    if-eqz v3, :cond_8

    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_8

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 301
    .line 302
    .line 303
    goto/16 :goto_8

    .line 304
    .line 305
    :catch_4
    move-exception v1

    .line 306
    goto :goto_6

    .line 307
    :catch_5
    move-exception v1

    .line 308
    goto :goto_7

    .line 309
    :catchall_2
    move-exception v1

    .line 310
    move-object v3, v0

    .line 311
    goto :goto_9

    .line 312
    :catch_6
    move-exception v1

    .line 313
    move-object v3, v0

    .line 314
    :goto_6
    :try_start_5
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 315
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v5, "savePicsToLocalStorage Caught Exception:"

    .line 322
    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 338
    .line 339
    .line 340
    if-eqz v0, :cond_8

    .line 341
    .line 342
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 343
    .line 344
    .line 345
    if-eqz v3, :cond_8

    .line 346
    .line 347
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_8

    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :catch_7
    move-exception v1

    .line 358
    move-object v3, v0

    .line 359
    :goto_7
    :try_start_7
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 360
    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v5, "savePicsToLocalStorage Caught IOException:"

    .line 367
    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 383
    .line 384
    .line 385
    if-eqz v0, :cond_8

    .line 386
    .line 387
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 388
    .line 389
    .line 390
    if-eqz v3, :cond_8

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_8

    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :catch_8
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :catch_9
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    .line 410
    .line 411
    :cond_8
    :goto_8
    return-void

    .line 412
    :catchall_3
    move-exception v1

    .line 413
    :goto_9
    if-eqz v0, :cond_9

    .line 414
    .line 415
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 416
    .line 417
    .line 418
    if-eqz v3, :cond_9

    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_9

    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 427
    .line 428
    .line 429
    goto :goto_a

    .line 430
    :catch_a
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    .line 433
    .line 434
    goto :goto_a

    .line 435
    :catch_b
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    .line 438
    .line 439
    :cond_9
    :goto_a
    throw v1
.end method
