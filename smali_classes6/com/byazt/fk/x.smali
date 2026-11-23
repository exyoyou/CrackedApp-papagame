.class public Lcom/byazt/fk/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp$c;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a0,
        0x47
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/fk/sp$c;


# direct methods
.method public constructor <init>(Lcom/byazt/fk/sp$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

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
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/byazt/fk/i;

    .line 29
    .line 30
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 39
    .line 40
    check-cast p1, Lcom/byazt/fk/sp;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/fk/i;

    .line 54
    .line 55
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    move-object p1, v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 64
    .line 65
    check-cast p1, Lcom/byazt/fk/sp;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onResume(Lcom/byazt/fk/sp;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    new-instance v0, Lcom/byazt/fk/i;

    .line 79
    .line 80
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 89
    .line 90
    check-cast p1, Lcom/byazt/fk/sp;

    .line 91
    .line 92
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onPause(Lcom/byazt/fk/sp;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    new-instance v1, Lcom/byazt/fk/i;

    .line 112
    .line 113
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 118
    .line 119
    .line 120
    move-object v0, v1

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 122
    .line 123
    check-cast v0, Lcom/byazt/fk/sp;

    .line 124
    .line 125
    check-cast v2, Lorg/json/JSONObject;

    .line 126
    .line 127
    check-cast p1, Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v1, v0, v2, p1}, Lcom/byazt/fk/sp$c;->onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    new-instance v1, Lcom/byazt/fk/i;

    .line 149
    .line 150
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 155
    .line 156
    .line 157
    move-object v0, v1

    .line 158
    :cond_4
    iget-object v3, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 159
    .line 160
    move-object v4, v0

    .line 161
    check-cast v4, Lcom/byazt/fk/sp;

    .line 162
    .line 163
    check-cast v2, Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    check-cast p1, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v7

    .line 175
    invoke-interface/range {v3 .. v8}, Lcom/byazt/fk/sp$c;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_5
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    new-instance v1, Lcom/byazt/fk/i;

    .line 191
    .line 192
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 197
    .line 198
    .line 199
    move-object v0, v1

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 201
    .line 202
    check-cast v0, Lcom/byazt/fk/sp;

    .line 203
    .line 204
    check-cast p1, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/sp$c;->onBufferingUpdate(Lcom/byazt/fk/sp;I)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_6
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    new-instance v1, Lcom/byazt/fk/i;

    .line 226
    .line 227
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 232
    .line 233
    .line 234
    move-object v0, v1

    .line 235
    :cond_6
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 236
    .line 237
    check-cast v0, Lcom/byazt/fk/sp;

    .line 238
    .line 239
    check-cast p1, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_7
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/4 v3, 0x4

    .line 263
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz v0, :cond_7

    .line 268
    .line 269
    new-instance v3, Lcom/byazt/fk/i;

    .line 270
    .line 271
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {v3, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 276
    .line 277
    .line 278
    move-object v0, v3

    .line 279
    :cond_7
    iget-object v3, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 280
    .line 281
    check-cast v0, Lcom/byazt/fk/sp;

    .line 282
    .line 283
    check-cast v2, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    check-cast v1, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    check-cast p1, Ljava/lang/Integer;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    invoke-interface {v3, v0, v2, v1, p1}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :pswitch_8
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    if-eqz v0, :cond_8

    .line 319
    .line 320
    new-instance v1, Lcom/byazt/fk/i;

    .line 321
    .line 322
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 327
    .line 328
    .line 329
    move-object v0, v1

    .line 330
    :cond_8
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 331
    .line 332
    check-cast v0, Lcom/byazt/fk/sp;

    .line 333
    .line 334
    check-cast v2, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    check-cast p1, Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    invoke-interface {v1, v0, v2, p1}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :pswitch_9
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-eqz p1, :cond_9

    .line 356
    .line 357
    new-instance v0, Lcom/byazt/fk/i;

    .line 358
    .line 359
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 364
    .line 365
    .line 366
    move-object p1, v0

    .line 367
    :cond_9
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 368
    .line 369
    check-cast p1, Lcom/byazt/fk/sp;

    .line 370
    .line 371
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onRelease(Lcom/byazt/fk/sp;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :pswitch_a
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    if-eqz v0, :cond_a

    .line 385
    .line 386
    new-instance v1, Lcom/byazt/fk/i;

    .line 387
    .line 388
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 393
    .line 394
    .line 395
    move-object v0, v1

    .line 396
    :cond_a
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 397
    .line 398
    check-cast v0, Lcom/byazt/fk/sp;

    .line 399
    .line 400
    check-cast p1, Ljava/lang/Boolean;

    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/sp$c;->onSeekCompletion(Lcom/byazt/fk/sp;Z)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :pswitch_b
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    if-eqz v0, :cond_b

    .line 420
    .line 421
    new-instance v1, Lcom/byazt/fk/i;

    .line 422
    .line 423
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 428
    .line 429
    .line 430
    move-object v0, v1

    .line 431
    :cond_b
    if-eqz p1, :cond_c

    .line 432
    .line 433
    new-instance v1, Lcom/byazt/fk/uj;

    .line 434
    .line 435
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-direct {v1, p1}, Lcom/byazt/fk/uj;-><init>(Ljava/util/function/Function;)V

    .line 440
    .line 441
    .line 442
    move-object p1, v1

    .line 443
    :cond_c
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 444
    .line 445
    check-cast v0, Lcom/byazt/fk/sp;

    .line 446
    .line 447
    check-cast p1, Lcom/byazt/fk/ve;

    .line 448
    .line 449
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 450
    .line 451
    .line 452
    goto :goto_0

    .line 453
    :pswitch_c
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    if-eqz p1, :cond_d

    .line 458
    .line 459
    new-instance v0, Lcom/byazt/fk/i;

    .line 460
    .line 461
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 466
    .line 467
    .line 468
    move-object p1, v0

    .line 469
    :cond_d
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 470
    .line 471
    check-cast p1, Lcom/byazt/fk/sp;

    .line 472
    .line 473
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    .line 474
    .line 475
    .line 476
    goto :goto_0

    .line 477
    :pswitch_d
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    if-eqz v0, :cond_e

    .line 486
    .line 487
    new-instance v1, Lcom/byazt/fk/i;

    .line 488
    .line 489
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-direct {v1, v0}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 494
    .line 495
    .line 496
    move-object v0, v1

    .line 497
    :cond_e
    iget-object v1, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 498
    .line 499
    check-cast v0, Lcom/byazt/fk/sp;

    .line 500
    .line 501
    check-cast p1, Ljava/lang/Long;

    .line 502
    .line 503
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    invoke-interface {v1, v0, v2, v3}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    .line 508
    .line 509
    .line 510
    goto :goto_0

    .line 511
    :pswitch_e
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    if-eqz p1, :cond_f

    .line 516
    .line 517
    new-instance v0, Lcom/byazt/fk/i;

    .line 518
    .line 519
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Ljava/util/function/Function;)V

    .line 524
    .line 525
    .line 526
    move-object p1, v0

    .line 527
    :cond_f
    iget-object v0, p0, Lcom/byazt/fk/x;->tt:Lcom/byazt/fk/sp$c;

    .line 528
    .line 529
    check-cast p1, Lcom/byazt/fk/sp;

    .line 530
    .line 531
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp$c;->onCompletion(Lcom/byazt/fk/sp;)V

    .line 532
    .line 533
    .line 534
    :goto_0
    const/4 p1, 0x0

    .line 535
    return-object p1

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBufferEnd(Lcom/byazt/fk/sp;I)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBufferStart(Lcom/byazt/fk/sp;III)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBufferingUpdate(Lcom/byazt/fk/sp;I)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCompletion(Lcom/byazt/fk/sp;)V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v2, Lcom/byazt/fk/i;

    invoke-direct {v2, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    new-instance p1, Lcom/byazt/fk/uj;

    invoke-direct {p1, p2}, Lcom/byazt/fk/uj;-><init>(Lcom/byazt/fk/ve;)V

    move-object p2, p1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPause(Lcom/byazt/fk/sp;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepared(Lcom/byazt/fk/sp;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRelease(Lcom/byazt/fk/sp;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRenderStart(Lcom/byazt/fk/sp;J)V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v2, Lcom/byazt/fk/i;

    invoke-direct {v2, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResume(Lcom/byazt/fk/sp;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSeekCompletion(Lcom/byazt/fk/sp;Z)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStart(Lcom/byazt/fk/sp;)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/i;

    invoke-direct {v1, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/x;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
