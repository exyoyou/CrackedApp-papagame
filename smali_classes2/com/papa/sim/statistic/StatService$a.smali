.class Lcom/papa/sim/statistic/StatService$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/StatService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/sim/statistic/StatService;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :cond_0
    :goto_0
    const-wide/16 v1, 0x7530

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "["

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "]method statService is running..."

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->b:Ly7/a;

    .line 38
    .line 39
    invoke-virtual {v1}, Ly7/a;->g()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/papa/sim/statistic/StatService;->b:Ly7/a;

    .line 45
    .line 46
    invoke-virtual {v2}, Ly7/a;->k()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v1, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->a(Lcom/papa/sim/statistic/StatService;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->b(Lcom/papa/sim/statistic/StatService;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->c(Lcom/papa/sim/statistic/StatService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->d(Lcom/papa/sim/statistic/StatService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 88
    .line 89
    iget-object v4, v4, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    .line 90
    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/16 v5, 0xb

    .line 98
    .line 99
    if-lt v4, v5, :cond_0

    .line 100
    .line 101
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 102
    .line 103
    iget-object v4, v4, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_8

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 120
    .line 121
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 122
    .line 123
    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->e(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/StatisticTable;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_1

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    const/4 v7, 0x1

    .line 134
    if-eq v6, v7, :cond_2

    .line 135
    .line 136
    const/4 v6, 0x2

    .line 137
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/db/StatisticTable;->setIsdirect(I)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 141
    .line 142
    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->f:Lcom/papa/sim/statistic/s;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/papa/sim/statistic/s;->r()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_3

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    sget-object v7, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    if-eqz v6, :cond_3

    .line 165
    .line 166
    :try_start_3
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 167
    .line 168
    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->f(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception v5

    .line 173
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 177
    .line 178
    invoke-static {v6, v0, v5}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 183
    .line 184
    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->f:Lcom/papa/sim/statistic/s;

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/papa/sim/statistic/s;->s()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_4

    .line 191
    .line 192
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    sget-object v7, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    if-eqz v6, :cond_4

    .line 207
    .line 208
    :try_start_5
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 209
    .line 210
    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->h(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catch_2
    move-exception v5

    .line 215
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 219
    .line 220
    invoke-static {v6, v0, v5}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    sget-object v7, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_5

    .line 239
    .line 240
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :cond_5
    const-wide/16 v6, 0x1f4

    .line 246
    .line 247
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    if-eqz v6, :cond_7

    .line 255
    .line 256
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    sget-object v7, Lcom/papa/sim/statistic/Event;->click_vs_hall:Lcom/papa/sim/statistic/Event;

    .line 261
    .line 262
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-nez v6, :cond_6

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    sget-object v7, Lcom/papa/sim/statistic/Event;->click_vs_create_room:Lcom/papa/sim/statistic/Event;

    .line 277
    .line 278
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-nez v6, :cond_6

    .line 287
    .line 288
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    sget-object v7, Lcom/papa/sim/statistic/Event;->user_filters_refresh:Lcom/papa/sim/statistic/Event;

    .line 293
    .line 294
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-nez v6, :cond_6

    .line 303
    .line 304
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickSetting:Lcom/papa/sim/statistic/Event;

    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-nez v6, :cond_6

    .line 319
    .line 320
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    .line 325
    .line 326
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-nez v6, :cond_6

    .line 335
    .line 336
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickConfigChanged:Lcom/papa/sim/statistic/Event;

    .line 341
    .line 342
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-nez v6, :cond_6

    .line 351
    .line 352
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    .line 357
    .line 358
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-nez v6, :cond_6

    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-nez v6, :cond_6

    .line 383
    .line 384
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    sget-object v7, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    .line 389
    .line 390
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-nez v6, :cond_6

    .line 399
    .line 400
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    sget-object v7, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    if-nez v6, :cond_6

    .line 415
    .line 416
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    .line 421
    .line 422
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    if-nez v6, :cond_6

    .line 431
    .line 432
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    .line 437
    .line 438
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-nez v6, :cond_6

    .line 447
    .line 448
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    .line 453
    .line 454
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-nez v6, :cond_6

    .line 463
    .line 464
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    .line 469
    .line 470
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-nez v6, :cond_6

    .line 479
    .line 480
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    .line 485
    .line 486
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-nez v6, :cond_6

    .line 495
    .line 496
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    .line 501
    .line 502
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    if-nez v6, :cond_6

    .line 511
    .line 512
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    .line 517
    .line 518
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-nez v6, :cond_6

    .line 527
    .line 528
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    .line 533
    .line 534
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-nez v6, :cond_6

    .line 543
    .line 544
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    .line 549
    .line 550
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    if-nez v6, :cond_6

    .line 559
    .line 560
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    sget-object v7, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    if-nez v6, :cond_6

    .line 575
    .line 576
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    .line 581
    .line 582
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v7

    .line 586
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-nez v6, :cond_6

    .line 591
    .line 592
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVslLocalCreateRoom:Lcom/papa/sim/statistic/Event;

    .line 597
    .line 598
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    if-nez v6, :cond_6

    .line 607
    .line 608
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsJoinRoom:Lcom/papa/sim/statistic/Event;

    .line 613
    .line 614
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    if-nez v6, :cond_6

    .line 623
    .line 624
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    .line 629
    .line 630
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v7

    .line 634
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 638
    if-eqz v6, :cond_7

    .line 639
    .line 640
    :cond_6
    :try_start_7
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 641
    .line 642
    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->f:Lcom/papa/sim/statistic/s;

    .line 643
    .line 644
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    const-class v9, Lcom/papa/sim/statistic/StatDataCenterReq;

    .line 653
    .line 654
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    check-cast v7, Lcom/papa/sim/statistic/StatDataCenterReq;

    .line 659
    .line 660
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/s;->b0(Lcom/papa/sim/statistic/StatDataCenterReq;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 661
    .line 662
    .line 663
    goto/16 :goto_2

    .line 664
    .line 665
    :catch_3
    move-exception v6

    .line 666
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 667
    .line 668
    .line 669
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    goto/16 :goto_2

    .line 673
    .line 674
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    if-lez v4, :cond_9

    .line 679
    .line 680
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 681
    .line 682
    iget-object v5, v4, Lcom/papa/sim/statistic/StatService;->f:Lcom/papa/sim/statistic/s;

    .line 683
    .line 684
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    invoke-virtual {v5, v4, v2}, Lcom/papa/sim/statistic/s;->a0(Landroid/content/Context;Ljava/util/List;)V

    .line 689
    .line 690
    .line 691
    :cond_9
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 692
    .line 693
    iget-object v4, v2, Lcom/papa/sim/statistic/StatService;->f:Lcom/papa/sim/statistic/s;

    .line 694
    .line 695
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-virtual {v4, v2, v1}, Lcom/papa/sim/statistic/s;->u(Landroid/content/Context;Ljava/util/List;)V

    .line 700
    .line 701
    .line 702
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 703
    .line 704
    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->c:Ljava/util/List;

    .line 705
    .line 706
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 707
    .line 708
    .line 709
    goto/16 :goto_0

    .line 710
    .line 711
    :catchall_0
    move-exception v0

    .line 712
    goto :goto_3

    .line 713
    :catch_4
    move-exception v1

    .line 714
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 715
    .line 716
    .line 717
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 718
    .line 719
    invoke-static {v2, v0, v1}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 720
    .line 721
    .line 722
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 723
    .line 724
    iget-object v0, v0, Lcom/papa/sim/statistic/StatService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 725
    .line 726
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 727
    .line 728
    .line 729
    return-void

    .line 730
    :goto_3
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->b:Lcom/papa/sim/statistic/StatService;

    .line 731
    .line 732
    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 733
    .line 734
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 735
    .line 736
    .line 737
    throw v0
.end method
