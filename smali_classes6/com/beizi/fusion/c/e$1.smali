.class Lcom/beizi/fusion/c/e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/c/e;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/c/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v2, :cond_12

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-eq v1, v3, :cond_8

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    if-eq v1, v6, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->d(Lcom/beizi/fusion/c/e;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->f()Lcom/beizi/fusion/events/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v7, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 33
    .line 34
    new-instance v8, Lcom/beizi/fusion/events/b;

    .line 35
    .line 36
    new-instance v15, Lcom/beizi/fusion/events/EventBean;

    .line 37
    .line 38
    sget-object v10, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 39
    .line 40
    const-string v11, ""

    .line 41
    .line 42
    const-string v12, ""

    .line 43
    .line 44
    const-string v13, ""

    .line 45
    .line 46
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v9}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    const-string v16, ""

    .line 55
    .line 56
    const-string v17, ""

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v18

    .line 62
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v18

    .line 66
    const-string v19, ""

    .line 67
    .line 68
    move-object v9, v15

    .line 69
    move-object v5, v15

    .line 70
    move-object/from16 v15, v16

    .line 71
    .line 72
    move-object/from16 v16, v17

    .line 73
    .line 74
    move-object/from16 v17, v18

    .line 75
    .line 76
    move-object/from16 v18, v19

    .line 77
    .line 78
    invoke-direct/range {v9 .. v18}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v8, v5}, Lcom/beizi/fusion/events/b;-><init>(Lcom/beizi/fusion/events/EventBean;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v7, v8}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/events/b;)Lcom/beizi/fusion/events/b;

    .line 85
    .line 86
    .line 87
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 88
    .line 89
    invoke-static {v5}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static {v5, v7}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/events/a;)Lcom/beizi/fusion/events/a;

    .line 98
    .line 99
    .line 100
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 101
    .line 102
    invoke-static {v5}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lcom/beizi/fusion/events/b;->b()Lcom/beizi/fusion/events/EventBean;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iput-object v7, v5, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 111
    .line 112
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 113
    .line 114
    invoke-static {v5}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/c/e;)V

    .line 115
    .line 116
    .line 117
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 118
    .line 119
    invoke-static {v5}, Lcom/beizi/fusion/c/e;->f(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/a;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v7, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 124
    .line 125
    iget-object v7, v7, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 126
    .line 127
    invoke-virtual {v5, v7}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/events/EventBean;)V

    .line 128
    .line 129
    .line 130
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 131
    .line 132
    invoke-static {v5}, Lcom/beizi/fusion/c/e;->g(Lcom/beizi/fusion/c/e;)V

    .line 133
    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v1, v3, :cond_7

    .line 144
    .line 145
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_7

    .line 158
    .line 159
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 160
    .line 161
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    const-string v5, "kGetLocalConfigStatusInternalError"

    .line 183
    .line 184
    const/4 v7, -0x2

    .line 185
    if-ne v1, v2, :cond_6

    .line 186
    .line 187
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 199
    .line 200
    iget-object v8, v1, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    .line 201
    .line 202
    iget-object v9, v1, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->f()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-static {v8, v9, v10}, Lcom/beizi/fusion/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-static {v1, v8}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/model/AdSpacesBean;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->h(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_5

    .line 222
    .line 223
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ne v1, v3, :cond_4

    .line 236
    .line 237
    invoke-static {}, Lcom/beizi/fusion/b/a;->a()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-ne v1, v2, :cond_1

    .line 242
    .line 243
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 244
    .line 245
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 255
    .line 256
    const/16 v2, 0x2711

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_1
    if-ne v1, v3, :cond_2

    .line 264
    .line 265
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 272
    .line 273
    const/4 v2, 0x5

    .line 274
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 278
    .line 279
    const/16 v2, 0x2774

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_2
    if-ne v1, v6, :cond_3

    .line 287
    .line 288
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 289
    .line 290
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 295
    .line 296
    const/4 v2, 0x6

    .line 297
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 301
    .line 302
    const/16 v2, 0x277e

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :cond_3
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 310
    .line 311
    const/16 v2, 0x270f

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    :cond_4
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 319
    .line 320
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 325
    .line 326
    invoke-virtual {v1, v7}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 330
    .line 331
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_5
    const/16 v2, 0x270f

    .line 337
    .line 338
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 339
    .line 340
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_6
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 346
    .line 347
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 352
    .line 353
    invoke-virtual {v1, v7}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 357
    .line 358
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :cond_7
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 364
    .line 365
    const/16 v2, 0x2710

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_2

    .line 371
    .line 372
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v5, "========update inner outTime==========:"

    .line 378
    .line 379
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 383
    .line 384
    .line 385
    move-result-wide v5

    .line 386
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 390
    .line 391
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/c/e;)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    invoke-static {v1, v5}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;I)I

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 399
    .line 400
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    if-eqz v1, :cond_9

    .line 405
    .line 406
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 407
    .line 408
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/b;->a(Z)V

    .line 413
    .line 414
    .line 415
    :cond_9
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 416
    .line 417
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    if-nez v1, :cond_a

    .line 422
    .line 423
    return-void

    .line 424
    :cond_a
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 425
    .line 426
    iget-object v5, v1, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 427
    .line 428
    const/4 v6, -0x1

    .line 429
    const-string v7, ",mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 430
    .line 431
    const-string v8, "AdRequest timeout channel = "

    .line 432
    .line 433
    const-string v9, "BeiZis"

    .line 434
    .line 435
    if-eqz v5, :cond_f

    .line 436
    .line 437
    invoke-virtual {v5}, Lcom/beizi/fusion/work/a;->q()V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 441
    .line 442
    iget-object v4, v1, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 443
    .line 444
    invoke-virtual {v4}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 449
    .line 450
    iget-object v5, v5, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 451
    .line 452
    invoke-virtual {v5}, Lcom/beizi/fusion/work/a;->o()Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    invoke-virtual {v1, v4, v5}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->f()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const-string v4, "4"

    .line 466
    .line 467
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_b

    .line 472
    .line 473
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 474
    .line 475
    iget-boolean v4, v1, Lcom/beizi/fusion/c/e;->n:Z

    .line 476
    .line 477
    if-nez v4, :cond_b

    .line 478
    .line 479
    iget-object v1, v1, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->e()V

    .line 482
    .line 483
    .line 484
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 485
    .line 486
    iput-boolean v2, v1, Lcom/beizi/fusion/c/e;->n:Z

    .line 487
    .line 488
    :cond_b
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 489
    .line 490
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    if-eqz v1, :cond_13

    .line 495
    .line 496
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    :cond_c
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_13

    .line 509
    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Lcom/beizi/fusion/work/a;

    .line 515
    .line 516
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 521
    .line 522
    iget-object v5, v5, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 523
    .line 524
    invoke-virtual {v5}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    if-eqz v4, :cond_c

    .line 529
    .line 530
    if-nez v5, :cond_d

    .line 531
    .line 532
    goto :goto_0

    .line 533
    :cond_d
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v10

    .line 537
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    if-nez v10, :cond_e

    .line 542
    .line 543
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v10

    .line 547
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v10

    .line 551
    if-nez v10, :cond_e

    .line 552
    .line 553
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v10

    .line 557
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v5

    .line 565
    if-eqz v5, :cond_e

    .line 566
    .line 567
    goto :goto_0

    .line 568
    :cond_e
    iget-object v5, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 569
    .line 570
    invoke-static {v5, v2, v3}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/work/a;I)V

    .line 571
    .line 572
    .line 573
    new-instance v5, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getId()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    iget-object v10, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 592
    .line 593
    invoke-static {v10}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    iget-object v10, v10, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 598
    .line 599
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    invoke-virtual {v10, v11}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v10

    .line 607
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    invoke-static {v9, v5}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    sget-object v5, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    .line 622
    .line 623
    if-ne v2, v5, :cond_c

    .line 624
    .line 625
    iget-object v2, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 626
    .line 627
    invoke-static {v2}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    iget-object v2, v2, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 632
    .line 633
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    invoke-virtual {v2, v4, v6}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_0

    .line 641
    .line 642
    :cond_f
    const/16 v2, 0x270f

    .line 643
    .line 644
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 645
    .line 646
    .line 647
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 648
    .line 649
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    if-eqz v1, :cond_13

    .line 654
    .line 655
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    :cond_10
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_13

    .line 668
    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, Lcom/beizi/fusion/work/a;

    .line 674
    .line 675
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    if-nez v5, :cond_11

    .line 680
    .line 681
    goto :goto_1

    .line 682
    :cond_11
    iget-object v10, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 683
    .line 684
    invoke-static {v10, v2, v3}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/work/a;I)V

    .line 685
    .line 686
    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getId()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v10

    .line 699
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    iget-object v10, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 706
    .line 707
    invoke-static {v10}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 708
    .line 709
    .line 710
    move-result-object v10

    .line 711
    iget-object v10, v10, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 712
    .line 713
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v11

    .line 717
    invoke-virtual {v10, v11}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    move-result v10

    .line 721
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-static {v9, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iget-object v2, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 732
    .line 733
    invoke-static {v2}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    iget-object v2, v2, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 738
    .line 739
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v10

    .line 743
    invoke-virtual {v2, v10}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-ge v2, v4, :cond_10

    .line 748
    .line 749
    iget-object v2, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 750
    .line 751
    invoke-static {v2}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    iget-object v2, v2, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 756
    .line 757
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v2, v5, v6}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    goto :goto_1

    .line 765
    :cond_12
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 766
    .line 767
    invoke-static {v1}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;)I

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    invoke-static {v1, v2}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/c/e;I)I

    .line 772
    .line 773
    .line 774
    iget-object v1, v0, Lcom/beizi/fusion/c/e$1;->a:Lcom/beizi/fusion/c/e;

    .line 775
    .line 776
    iget-object v2, v1, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 777
    .line 778
    if-eqz v2, :cond_13

    .line 779
    .line 780
    invoke-static {v1, v3}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/c/e;I)V

    .line 781
    .line 782
    .line 783
    :cond_13
    :goto_2
    return-void
.end method
