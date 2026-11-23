.class Lcn/sharesdk/wechat/utils/h$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/wechat/utils/h;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/h;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

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
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "unionid"

    .line 4
    .line 5
    const-string v3, "country"

    .line 6
    .line 7
    const-string v4, "city"

    .line 8
    .line 9
    const-string v5, "province"

    .line 10
    .line 11
    const-string v6, "nickname"

    .line 12
    .line 13
    const-string v0, "errcode"

    .line 14
    .line 15
    const-string v7, "userTags"

    .line 16
    .line 17
    const-string v8, "openid"

    .line 18
    .line 19
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v10, Lcom/mob/tools/network/KVPair;

    .line 25
    .line 26
    const-string v11, "access_token"

    .line 27
    .line 28
    iget-object v12, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 29
    .line 30
    invoke-static {v12}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    invoke-virtual {v12}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    invoke-virtual {v12}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    invoke-direct {v10, v11, v12}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v10, Lcom/mob/tools/network/KVPair;

    .line 49
    .line 50
    iget-object v11, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 51
    .line 52
    invoke-static {v11}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-virtual {v11}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v11, v8}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-direct {v10, v8, v11}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v10, Lcom/mob/tools/network/KVPair;

    .line 71
    .line 72
    const-string v11, "lang"

    .line 73
    .line 74
    const-string v12, "zh_CN"

    .line 75
    .line 76
    invoke-direct {v10, v11, v12}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const-string v10, "https://api.weixin.qq.com/sns/userinfo"

    .line 83
    .line 84
    iget-object v11, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 85
    .line 86
    invoke-static {v11}, Lcn/sharesdk/wechat/utils/h;->c(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    const-string v12, "/sns/userinfo"

    .line 91
    .line 92
    iget-object v13, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 93
    .line 94
    invoke-static {v13}, Lcn/sharesdk/wechat/utils/h;->b(Lcn/sharesdk/wechat/utils/h;)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-virtual {v11, v10, v9, v12, v13}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    const/16 v11, 0x8

    .line 107
    .line 108
    if-eqz v10, :cond_1

    .line 109
    .line 110
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 111
    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 115
    .line 116
    invoke-static {v2}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/Throwable;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v2, v11, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    new-instance v12, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v13, "getUserInfo ==>>"

    .line 139
    .line 140
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    const/4 v13, 0x0

    .line 151
    new-array v13, v13, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {v10, v12, v13}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    new-instance v10, Lcom/mob/tools/utils/Hashon;

    .line 157
    .line 158
    invoke-direct {v10}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v9}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_3

    .line 170
    .line 171
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_3

    .line 182
    .line 183
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 184
    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    .line 188
    .line 189
    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v9}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 197
    .line 198
    iget-object v3, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 199
    .line 200
    invoke-static {v3}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    new-instance v4, Ljava/lang/Throwable;

    .line 205
    .line 206
    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v2, v3, v11, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    return-void

    .line 213
    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    const-string v0, "sex"

    .line 230
    .line 231
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    invoke-virtual {v14, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    const/4 v0, 0x2

    .line 253
    :goto_0
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v14

    .line 257
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    const-string v13, "headimgurl"

    .line 278
    .line 279
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v17

    .line 291
    move-object/from16 v18, v9

    .line 292
    .line 293
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    move-object/from16 v17, v7

    .line 298
    .line 299
    iget-object v7, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 300
    .line 301
    invoke-static {v7}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v7, v6, v12}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    const-string v7, "gender"

    .line 314
    .line 315
    if-ne v0, v6, :cond_4

    .line 316
    .line 317
    :try_start_3
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 318
    .line 319
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v6, "0"

    .line 328
    .line 329
    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_4
    const/4 v6, 0x2

    .line 334
    if-ne v0, v6, :cond_5

    .line 335
    .line 336
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 337
    .line 338
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v6, "1"

    .line 347
    .line 348
    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_5
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 353
    .line 354
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    const-string v6, "2"

    .line 363
    .line 364
    invoke-virtual {v0, v7, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :goto_1
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 368
    .line 369
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0, v10}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 381
    .line 382
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const-string v6, "icon"

    .line 391
    .line 392
    invoke-virtual {v0, v6, v13}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 396
    .line 397
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0, v5, v14}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 409
    .line 410
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0, v4, v15}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 422
    .line 423
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, v3, v11}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 435
    .line 436
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0, v8, v10}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 448
    .line 449
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0, v2, v9}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 461
    .line 462
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    move-object/from16 v2, v17

    .line 471
    .line 472
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-eqz v0, :cond_6

    .line 477
    .line 478
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 479
    .line 480
    invoke-static {v0}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    move-object/from16 v3, v18

    .line 493
    .line 494
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_6
    move-object/from16 v3, v18

    .line 499
    .line 500
    :goto_2
    iget-object v0, v1, Lcn/sharesdk/wechat/utils/h$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    .line 501
    .line 502
    iget-object v2, v1, Lcn/sharesdk/wechat/utils/h$2;->b:Lcn/sharesdk/wechat/utils/h;

    .line 503
    .line 504
    invoke-static {v2}, Lcn/sharesdk/wechat/utils/h;->a(Lcn/sharesdk/wechat/utils/h;)Lcn/sharesdk/framework/Platform;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    const/16 v4, 0x8

    .line 509
    .line 510
    invoke-interface {v0, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 511
    .line 512
    .line 513
    goto :goto_3

    .line 514
    :catchall_1
    move-exception v0

    .line 515
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 520
    .line 521
    .line 522
    :goto_3
    return-void
.end method
