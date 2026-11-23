.class final Lcom/kwad/components/ad/reward/retryReward/d$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/retryReward/d;->kG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BD:Lcom/kwad/components/ad/reward/retryReward/d;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/reward/retryReward/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/retryReward/d;->a(Lcom/kwad/components/ad/reward/retryReward/d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-string v3, "ksadsdk_reward_task_cache"

    .line 13
    .line 14
    invoke-static {v3}, Lcom/kwad/sdk/utils/ai;->hO(Ljava/lang/String;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "RewardRetryTaskCacheManager"

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v6, "initRewardTaskAsync map cost time: "

    .line 23
    .line 24
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    sub-long/2addr v6, v1

    .line 32
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v4, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "ksadsdk_reward_task_cache"

    .line 43
    .line 44
    invoke-static {v4}, Lcom/kwad/sdk/utils/ah;->hN(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_6

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    .line 76
    if-eqz v5, :cond_0

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    instance-of v7, v6, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    check-cast v6, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v6}, Lcom/kwad/sdk/core/a/c;->isEncodeKsSdk(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    invoke-static {v6}, Lcom/kwad/sdk/core/a/c;->decodeKsSdk(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_0

    .line 107
    .line 108
    new-instance v7, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v6, Lcom/kwad/components/ad/reward/retryReward/f;

    .line 114
    .line 115
    invoke-direct {v6}, Lcom/kwad/components/ad/reward/retryReward/f;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v7}, Lcom/kwad/components/ad/reward/retryReward/f;->parseJson(Lorg/json/JSONObject;)V

    .line 119
    .line 120
    .line 121
    const-string v7, "RewardRetryTaskCacheManager"

    .line 122
    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v9, "json parse "

    .line 126
    .line 127
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v9, v6, Lcom/kwad/components/ad/reward/retryReward/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 140
    .line 141
    invoke-static {v9}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v9}, Lcom/kwad/sdk/core/response/helper/a;->aD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v9, " cost time: "

    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v9

    .line 161
    sub-long/2addr v9, v1

    .line 162
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v7, v8}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-wide v7, v6, Lcom/kwad/components/ad/reward/retryReward/f;->BO:J

    .line 173
    .line 174
    const-wide/16 v9, 0x3e8

    .line 175
    .line 176
    mul-long v7, v7, v9

    .line 177
    .line 178
    iget-wide v11, v6, Lcom/kwad/components/ad/reward/retryReward/f;->BP:J

    .line 179
    .line 180
    sub-long v11, v1, v11

    .line 181
    .line 182
    cmp-long v13, v7, v11

    .line 183
    .line 184
    if-gtz v13, :cond_3

    .line 185
    .line 186
    if-eqz v4, :cond_2

    .line 187
    .line 188
    iget-object v7, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 189
    .line 190
    invoke-static {v7}, Lcom/kwad/components/ad/reward/retryReward/d;->b(Lcom/kwad/components/ad/reward/retryReward/d;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_2
    const-string v7, "ksadsdk_reward_task_cache"

    .line 203
    .line 204
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v7, v8}, Lcom/kwad/sdk/utils/ai;->az(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_1
    const-string v7, "RewardRetryTaskCacheManager"

    .line 214
    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v11, "remove task: "

    .line 218
    .line 219
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    check-cast v5, Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v5, v6, Lcom/kwad/components/ad/reward/retryReward/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 232
    .line 233
    invoke-static {v5}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v5}, Lcom/kwad/sdk/core/response/helper/a;->aD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v5, " out time: "

    .line 245
    .line 246
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-wide v11, v6, Lcom/kwad/components/ad/reward/retryReward/f;->BP:J

    .line 250
    .line 251
    sub-long v11, v1, v11

    .line 252
    .line 253
    iget-wide v5, v6, Lcom/kwad/components/ad/reward/retryReward/f;->BO:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .line 255
    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    .line 256
    .line 257
    .line 258
    mul-long v5, v5, v9

    .line 259
    .line 260
    sub-long/2addr v11, v5

    .line 261
    :try_start_2
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-static {v7, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_3
    iget-object v7, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 274
    .line 275
    invoke-static {v7}, Lcom/kwad/components/ad/reward/retryReward/d;->c(Lcom/kwad/components/ad/reward/retryReward/d;)Ljava/util/Map;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_4
    if-eqz v4, :cond_6

    .line 289
    .line 290
    const-string v3, "ksadsdk_reward_task_cache"

    .line 291
    .line 292
    invoke-static {v3}, Lcom/kwad/sdk/utils/bq;->if(Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-eqz v3, :cond_6

    .line 297
    .line 298
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iget-object v4, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 303
    .line 304
    invoke-static {v4}, Lcom/kwad/components/ad/reward/retryReward/d;->b(Lcom/kwad/components/ad/reward/retryReward/d;)Ljava/util/ArrayList;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_5

    .line 317
    .line 318
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    check-cast v5, Ljava/lang/String;

    .line 323
    .line 324
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    .line 330
    .line 331
    :cond_6
    const-string v3, "RewardRetryTaskCacheManager"

    .line 332
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v5, " all items: "

    .line 336
    .line 337
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v5, p0, Lcom/kwad/components/ad/reward/retryReward/d$1;->BD:Lcom/kwad/components/ad/reward/retryReward/d;

    .line 341
    .line 342
    invoke-static {v5}, Lcom/kwad/components/ad/reward/retryReward/d;->c(Lcom/kwad/components/ad/reward/retryReward/d;)Ljava/util/Map;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v5, " cost time: "

    .line 354
    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v5

    .line 362
    sub-long/2addr v5, v1

    .line 363
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v3, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    monitor-exit v0

    .line 374
    goto :goto_3

    .line 375
    :catchall_0
    move-exception v1

    .line 376
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    :catchall_1
    move-exception v0

    .line 379
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    :goto_3
    return-void
.end method
