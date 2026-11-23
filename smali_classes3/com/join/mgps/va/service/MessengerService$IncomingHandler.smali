.class Lcom/join/mgps/va/service/MessengerService$IncomingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/service/MessengerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/va/service/MessengerService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/va/service/MessengerService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const-string v2, "gameId"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v7, Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    const-string v3, "from"

    .line 32
    .line 33
    const-string v4, ""

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v7, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    .line 42
    const-string v3, "position"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v7, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    const-string v3, "imagePath"

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v6, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 58
    .line 59
    invoke-static {v6}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    const-string v6, "fromTabId"

    .line 67
    .line 68
    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    const-string v6, "articleId"

    .line 76
    .line 77
    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 82
    .line 83
    .line 84
    const-string v6, "where"

    .line 85
    .line 86
    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v8, "liveTime"

    .line 91
    .line 92
    const-wide/16 v9, 0x0

    .line 93
    .line 94
    invoke-virtual {v1, v8, v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    invoke-virtual {v7, v11, v12}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    .line 101
    iget v11, p1, Landroid/os/Message;->what:I

    .line 102
    .line 103
    packed-switch v11, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    :pswitch_0
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/join/mgps/va/service/MessengerService;->b(Lcom/join/mgps/va/service/MessengerService;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_2
    const-string v0, "sceneType"

    .line 116
    .line 117
    invoke-virtual {v1, v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v7, v0}, Lcom/papa/sim/statistic/Ext;->setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdReserveCode:Lcom/papa/sim/statistic/Event;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :pswitch_3
    const-string v0, "ext"

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-class v3, Lcom/join/mgps/dto/DomainInfoBean;

    .line 158
    .line 159
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/join/mgps/dto/DomainInfoBean;

    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sget-object v3, Lcom/papa/sim/statistic/Event;->pdModGameFeedbackClick:Lcom/papa/sim/statistic/Event;

    .line 178
    .line 179
    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v2, v4}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v2, v4}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v3, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    .line 209
    .line 210
    const-string v3, "com.tencent.mm"

    .line 211
    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v2, "mod_game_feedback"

    .line 225
    .line 226
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_2
    const-string v0, "\u65e0\u6cd5\u8c03\u8d77\u5fae\u4fe1\u5c0f\u7a0b\u5e8f"

    .line 232
    .line 233
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 239
    .line 240
    const-string v2, "first_show_mod"

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/va/service/MessengerService;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_5
    const-string v0, "expand"

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Lcom/join/mgps/va/service/MessengerService;->h(Z)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_6
    new-instance v8, Lcom/papa/sim/statistic/Data;

    .line 270
    .line 271
    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-static {v2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_3

    .line 279
    .line 280
    invoke-virtual {v8, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 281
    .line 282
    .line 283
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 294
    .line 295
    invoke-static {v6}, Lcom/papa/sim/statistic/Event;->valueOf(Ljava/lang/String;)Lcom/papa/sim/statistic/Event;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :pswitch_7
    new-instance v8, Lcom/papa/sim/statistic/Data;

    .line 315
    .line 316
    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-static {v2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_4

    .line 324
    .line 325
    invoke-virtual {v8, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 326
    .line 327
    .line 328
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    .line 339
    .line 340
    invoke-static {v6}, Lcom/papa/sim/statistic/Event;->valueOf(Ljava/lang/String;)Lcom/papa/sim/statistic/Event;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 345
    .line 346
    invoke-static {v0}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :pswitch_8
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v4, "liveTime:"

    .line 369
    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v5, " receive"

    .line 377
    .line 378
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    filled-new-array {v3}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    cmp-long v3, v1, v9

    .line 393
    .line 394
    if-nez v3, :cond_5

    .line 395
    .line 396
    return-void

    .line 397
    :cond_5
    const-wide/16 v5, 0x3e8

    .line 398
    .line 399
    div-long v5, v1, v5

    .line 400
    .line 401
    invoke-virtual {v7, v5, v6}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 402
    .line 403
    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v1, " send"

    .line 416
    .line 417
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    filled-new-array {v1}, [Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    sget-object v1, Lcom/papa/sim/statistic/Event;->gamePlayTimes:Lcom/papa/sim/statistic/Event;

    .line 436
    .line 437
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :pswitch_9
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    sget-object v1, Lcom/papa/sim/statistic/Event;->closedRealNameWindow:Lcom/papa/sim/statistic/Event;

    .line 447
    .line 448
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :pswitch_a
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameClickSubmit:Lcom/papa/sim/statistic/Event;

    .line 458
    .line 459
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :pswitch_b
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    sget-object v1, Lcom/papa/sim/statistic/Event;->nonageAstrictHint:Lcom/papa/sim/statistic/Event;

    .line 469
    .line 470
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :pswitch_c
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickClosedRealNameWindow:Lcom/papa/sim/statistic/Event;

    .line 480
    .line 481
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_0

    .line 485
    .line 486
    :pswitch_d
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    .line 491
    .line 492
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :pswitch_e
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    sget-object v1, Lcom/papa/sim/statistic/Event;->antiAddtionWindowUp:Lcom/papa/sim/statistic/Event;

    .line 502
    .line 503
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :pswitch_f
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickKnowGoRealPage:Lcom/papa/sim/statistic/Event;

    .line 513
    .line 514
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :pswitch_10
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameUpWindows:Lcom/papa/sim/statistic/Event;

    .line 524
    .line 525
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_0

    .line 529
    .line 530
    :pswitch_11
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickNav:Lcom/papa/sim/statistic/Event;

    .line 535
    .line 536
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :pswitch_12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickPiix:Lcom/papa/sim/statistic/Event;

    .line 546
    .line 547
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_0

    .line 551
    .line 552
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    .line 554
    if-nez v0, :cond_6

    .line 555
    .line 556
    goto/16 :goto_0

    .line 557
    .line 558
    :cond_6
    instance-of v2, v0, Landroid/os/Bundle;

    .line 559
    .line 560
    if-eqz v2, :cond_7

    .line 561
    .line 562
    check-cast v0, Landroid/os/Bundle;

    .line 563
    .line 564
    const-string v2, "action"

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    const-string v2, "fromCls"

    .line 571
    .line 572
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 576
    .line 577
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 581
    .line 582
    .line 583
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 584
    .line 585
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :pswitch_14
    new-instance v0, Landroid/content/Intent;

    .line 591
    .line 592
    const-string v1, "com.upload.wufun.screenshot"

    .line 593
    .line 594
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    .line 599
    .line 600
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :pswitch_15
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickAssist:Lcom/papa/sim/statistic/Event;

    .line 612
    .line 613
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 614
    .line 615
    .line 616
    goto :goto_0

    .line 617
    :pswitch_16
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    sget-object v1, Lcom/papa/sim/statistic/Event;->assistShow:Lcom/papa/sim/statistic/Event;

    .line 622
    .line 623
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 624
    .line 625
    .line 626
    goto :goto_0

    .line 627
    :pswitch_17
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    sget-object v1, Lcom/papa/sim/statistic/Event;->modgamestart:Lcom/papa/sim/statistic/Event;

    .line 632
    .line 633
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 634
    .line 635
    .line 636
    goto :goto_0

    .line 637
    :pswitch_18
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    sget-object v2, Lcom/papa/sim/statistic/Event;->exitMod:Lcom/papa/sim/statistic/Event;

    .line 642
    .line 643
    invoke-virtual {v1, v2, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 644
    .line 645
    .line 646
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    sget-object v1, Lcom/papa/sim/statistic/Event;->exitVirtualGame:Lcom/papa/sim/statistic/Event;

    .line 651
    .line 652
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 653
    .line 654
    .line 655
    new-instance v0, Landroid/content/Intent;

    .line 656
    .line 657
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    .line 659
    .line 660
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.mod.gameout"

    .line 661
    .line 662
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    .line 664
    .line 665
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    .line 666
    .line 667
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    .line 669
    .line 670
    goto :goto_0

    .line 671
    :pswitch_19
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickVippopupMod:Lcom/papa/sim/statistic/Event;

    .line 676
    .line 677
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 678
    .line 679
    .line 680
    goto :goto_0

    .line 681
    :pswitch_1a
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    sget-object v1, Lcom/papa/sim/statistic/Event;->showVippopupMod:Lcom/papa/sim/statistic/Event;

    .line 686
    .line 687
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 688
    .line 689
    .line 690
    goto :goto_0

    .line 691
    :pswitch_1b
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    sget-object v1, Lcom/papa/sim/statistic/Event;->openMod:Lcom/papa/sim/statistic/Event;

    .line 696
    .line 697
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 698
    .line 699
    .line 700
    goto :goto_0

    .line 701
    :pswitch_1c
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickMod:Lcom/papa/sim/statistic/Event;

    .line 706
    .line 707
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 708
    .line 709
    .line 710
    goto :goto_0

    .line 711
    :pswitch_1d
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    sget-object v1, Lcom/papa/sim/statistic/Event;->showMod:Lcom/papa/sim/statistic/Event;

    .line 716
    .line 717
    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 718
    .line 719
    .line 720
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 721
    .line 722
    .line 723
    return-void

    .line 724
    nop

    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
