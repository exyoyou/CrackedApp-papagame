.class Lcom/windmill/sdk/common/j$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/j$b;Lcom/windmill/sdk/common/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    const/16 v1, 0x3e9

    .line 10
    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    .line 13
    const/16 v1, 0x3eb

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/16 v1, 0x3ec

    .line 18
    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/16 v1, 0x7d0

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 p1, 0xbb8

    .line 26
    .line 27
    if-eq v0, p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "------------mRefreshTask------------"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/windmill/sdk/common/j;->c(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/windmill/sdk/common/j;->c(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/windmill/sdk/common/j$a;->isCanRefresh()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/windmill/sdk/common/j;->b()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 83
    .line 84
    invoke-static {p1, v3}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Z)Z

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_2
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    .line 91
    instance-of v0, p1, Lcom/windmill/sdk/strategy/a;

    .line 92
    .line 93
    if-eqz v0, :cond_b

    .line 94
    .line 95
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 96
    .line 97
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 98
    .line 99
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v0, v3, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 113
    .line 114
    invoke-virtual {v1, v2, p1, v0}, Lcom/windmill/sdk/common/j;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :catchall_0
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v1, "loadAd strategy name"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 153
    .line 154
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->b(Landroid/os/Handler;I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 166
    .line 167
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8d85\u65f6\u9636\u6bb5\uff1a"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, "  thread:\uff1a"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, " loadId\uff1a"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->b(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 223
    .line 224
    iget-object v0, p1, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 234
    .line 235
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 236
    .line 237
    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 238
    .line 239
    if-ne p1, v1, :cond_b

    .line 240
    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v1, "------------loadAd-----\u603b\u8d85\u65f6------------"

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 252
    .line 253
    invoke-static {v1}, Lcom/windmill/sdk/common/j;->b(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 268
    .line 269
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/windmill/sdk/common/l;->j()Lcom/windmill/sdk/strategy/a;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-eqz p1, :cond_9

    .line 281
    .line 282
    invoke-virtual {p1, v3}, Lcom/windmill/sdk/strategy/a;->h(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-ne v1, v3, :cond_7

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-ne v1, v3, :cond_6

    .line 296
    .line 297
    iget-object v1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 298
    .line 299
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eqz p1, :cond_9

    .line 304
    .line 305
    return-void

    .line 306
    :cond_6
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_9

    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_9

    .line 317
    .line 318
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 319
    .line 320
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/j;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_7
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_8

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_9

    .line 339
    .line 340
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 345
    .line 346
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/j;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 355
    .line 356
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    if-eqz v1, :cond_9

    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_9

    .line 367
    .line 368
    iget-object v0, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 369
    .line 370
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_9
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 375
    .line 376
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 377
    .line 378
    if-eqz p1, :cond_a

    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 381
    .line 382
    .line 383
    :cond_a
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 384
    .line 385
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 386
    .line 387
    iget-object v3, p1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 388
    .line 389
    invoke-static {p1}, Lcom/windmill/sdk/common/j;->b(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {p1, v1, v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/windmill/sdk/common/j;->c()V

    .line 399
    .line 400
    .line 401
    iget-object p1, p0, Lcom/windmill/sdk/common/j$1;->a:Lcom/windmill/sdk/common/j;

    .line 402
    .line 403
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 404
    .line 405
    invoke-static {p1, v1, v2, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_b
    :goto_0
    return-void
.end method
