.class public Lcom/byazt/ut/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/n;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->encryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->decryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->encryptBody(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->enableSetHARSensorCallBack(I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :pswitch_5
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->initPglCryptUtils()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->updateHARSettings(Lorg/json/JSONObject;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_7
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->getSpecificArmorLoadStatus()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :pswitch_8
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->updateNetworkStatus(I)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->updateScreenStatus(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    .line 130
    new-instance v0, Lcom/byazt/dna/sp;

    .line 131
    .line 132
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1}, Lcom/byazt/dna/sp;-><init>(Ljava/util/function/Function;)V

    .line 137
    .line 138
    .line 139
    move-object p1, v0

    .line 140
    :cond_0
    check-cast p1, Lcom/byazt/dna/n$tt;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->initPglArmorCallApi(Lcom/byazt/dna/n$tt;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :pswitch_b
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->registerHarSensors()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :pswitch_c
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_1

    .line 161
    .line 162
    new-instance v0, Lcom/byazt/dna/a;

    .line 163
    .line 164
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {v0, p1}, Lcom/byazt/dna/a;-><init>(Ljava/util/function/Function;)V

    .line 169
    .line 170
    .line 171
    move-object p1, v0

    .line 172
    :cond_1
    check-cast p1, Lcom/byazt/dna/n$c;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->setHARSensorCallBack(Lcom/byazt/dna/n$c;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :pswitch_d
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast v0, Ljava/lang/Double;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    check-cast p1, Ljava/lang/Long;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/byazt/ut/ve;->softDecTool2ua(DJ)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_e
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->getArchEnv()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :pswitch_f
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->getArmorContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :pswitch_10
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast v0, Ljava/lang/String;

    .line 223
    .line 224
    check-cast p1, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ut/ve;->pglArmorCallApi2getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :pswitch_11
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast v0, Ljava/lang/Long;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    check-cast p1, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    invoke-virtual {p0, v0, v1, p1}, Lcom/byazt/ut/ve;->pglArmorCallApi2src(JI)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_12
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const/4 v2, 0x3

    .line 265
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    const/4 v3, 0x4

    .line 270
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    move-object v4, v0

    .line 275
    check-cast v4, Ljava/lang/String;

    .line 276
    .line 277
    check-cast v1, Ljava/lang/Long;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 280
    .line 281
    .line 282
    move-result-wide v5

    .line 283
    check-cast v2, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    check-cast p1, Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    move-object v3, p0

    .line 296
    invoke-virtual/range {v3 .. v8}, Lcom/byazt/ut/ve;->pglArmorCallApi2ccc(Ljava/lang/String;JIZ)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    return-object p1

    .line 301
    :pswitch_13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Landroid/view/MotionEvent;

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->pglArmorCallApi2c(Landroid/view/MotionEvent;)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :pswitch_14
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->getSoftChara()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :pswitch_15
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->detectHostLocalIp(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    return-object p1

    .line 331
    :pswitch_16
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    check-cast v0, Ljava/lang/String;

    .line 340
    .line 341
    check-cast p1, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ut/ve;->signVerifyMD5withRSA(Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    return-object p1

    .line 352
    :pswitch_17
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, [B

    .line 357
    .line 358
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->decrypt([B)[B

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    return-object p1

    .line 363
    :pswitch_18
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    check-cast p1, Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->decryptWithCBC(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    return-object p1

    .line 374
    :pswitch_19
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->getArmorLoadStatus()Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    return-object p1

    .line 383
    :pswitch_1a
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, [B

    .line 388
    .line 389
    invoke-virtual {p0, p1}, Lcom/byazt/ut/ve;->encrypt([B)[B

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    return-object p1

    .line 394
    :pswitch_1b
    invoke-virtual {p0}, Lcom/byazt/ut/ve;->pglArmorCallApiCancelListener()V

    .line 395
    .line 396
    .line 397
    :goto_0
    const/4 p1, 0x0

    .line 398
    return-object p1

    .line 399
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public decrypt([B)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->c()Lcom/byazt/qi/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/qi/i;->tt([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public decryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public decryptWithCBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->c()Lcom/byazt/qi/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/qi/i;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public detectHostLocalIp(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/qi/uj;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public enableSetHARSensorCallBack(I)Z
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/byazt/gf/n;->tt()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/byazt/gf/n;->n()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const/4 v5, 0x1

    .line 22
    sub-int/2addr p1, v5

    .line 23
    int-to-long v6, p1

    .line 24
    rem-long/2addr v6, v3

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    cmp-long v8, v6, v3

    .line 29
    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-static {}, Lcom/byazt/gf/uj;->c()Lcom/byazt/gf/uj;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/byazt/gf/uj;->uj()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    sub-long/2addr v0, v6

    .line 44
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/byazt/gf/n;->uj()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    cmp-long v4, v0, v6

    .line 53
    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_1
    invoke-static {}, Lcom/byazt/gf/uj;->c()Lcom/byazt/gf/uj;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/byazt/gf/uj;->ve()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 77
    .line 78
    .line 79
    sget-wide v6, Lcom/byakv/z/SoftDecTool;->acs:D

    .line 80
    .line 81
    sget-wide v6, Lcom/byakv/z/SoftDecTool;->act:J

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    return v5

    .line 92
    :cond_2
    return p1
.end method

.method public encrypt([B)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->c()Lcom/byazt/qi/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/qi/i;->c([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public encryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public encryptBody(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->c()Lcom/byazt/qi/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/qi/i;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    return-object p1
.end method

.method public getArchEnv()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/a;->tt()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getArmorContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getArmorLoadStatus()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getSoftChara()Ljava/lang/String;
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/byazt/qi/a;->c(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSpecificArmorLoadStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->ve()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public initPglArmorCallApi(Lcom/byazt/dna/n$tt;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/qi/sp$c;

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/omf/p;->sp()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "7611"

    .line 12
    .line 13
    invoke-direct {v1, v0, v2, v3}, Lcom/byazt/qi/sp$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {v1, v0}, Lcom/byazt/qi/sp$c;->c(Z)Lcom/byazt/qi/sp$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/byazt/ut/ve$2;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lcom/byazt/ut/ve$2;-><init>(Lcom/byazt/ut/ve;Lcom/byazt/dna/n$tt;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/qi/sp$c;->c(Lcom/byazt/qi/x;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/qi/sp$c;->c()Lcom/byazt/qi/sp;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/byazt/qi/a;->c(Lcom/byazt/qi/sp;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public initPglCryptUtils()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->c()Lcom/byazt/qi/i;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pglArmorCallApi2c(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/qi/a;->c(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pglArmorCallApi2ccc(Ljava/lang/String;JIZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/byazt/qi/a;->c(Ljava/lang/String;JIZ)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public pglArmorCallApi2getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/byazt/qi/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public pglArmorCallApi2src(JI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/byazt/qi/a;->c(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pglArmorCallApiCancelListener()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/qi/a;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public registerHarSensors()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/gf/uj;->c()Lcom/byazt/gf/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/gf/uj;->tt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setHARSensorCallBack(Lcom/byazt/dna/n$c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/gf/uj;->c()Lcom/byazt/gf/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ut/ve$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/ut/ve$1;-><init>(Lcom/byazt/ut/ve;Lcom/byazt/dna/n$c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/gf/uj;->c(Lcom/byazt/gf/uj$c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public signVerifyMD5withRSA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/byazt/qi/uj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public softDecTool2ua(DJ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/byakv/z/SoftDecTool;->ua(DJ)V

    .line 2
    .line 3
    .line 4
    sget-wide p1, Lcom/byakv/z/SoftDecTool;->acs:D

    .line 5
    .line 6
    return-void
.end method

.method public updateHARSettings(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/gf/n;->c(Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateNetworkStatus(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/gf/tt;->c(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateScreenStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/gf/tt;->tt(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
