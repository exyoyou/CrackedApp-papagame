.class Lcom/papa/sim/statistic/t$h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:J

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Lcom/papa/sim/statistic/Ext;

.field final synthetic n:I

.field final synthetic o:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;IILcom/papa/sim/statistic/Ext;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    move-object v1, p2

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->f:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/papa/sim/statistic/t$h2;->g:J

    move v1, p9

    iput v1, v0, Lcom/papa/sim/statistic/t$h2;->h:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/papa/sim/statistic/t$h2;->i:J

    move-object v1, p12

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->j:Ljava/lang/String;

    move/from16 v1, p13

    iput v1, v0, Lcom/papa/sim/statistic/t$h2;->k:I

    move/from16 v1, p14

    iput v1, v0, Lcom/papa/sim/statistic/t$h2;->l:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    move/from16 v1, p16

    iput v1, v0, Lcom/papa/sim/statistic/t$h2;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "nodeId"

    .line 4
    .line 5
    const-string v2, "reMarks"

    .line 6
    .line 7
    const-string v3, "recPosition"

    .line 8
    .line 9
    const-string v4, "where"

    .line 10
    .line 11
    const-string v5, "dataFlag"

    .line 12
    .line 13
    const-string v6, "_from_type"

    .line 14
    .line 15
    const-string v7, "location"

    .line 16
    .line 17
    const-string v8, "position"

    .line 18
    .line 19
    const-string v9, "from"

    .line 20
    .line 21
    new-instance v10, Lcom/papa/sim/statistic/StatRequest;

    .line 22
    .line 23
    invoke-direct {v10}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v11, v1, Lcom/papa/sim/statistic/t$h2;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    if-nez v11, :cond_0

    .line 33
    .line 34
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    iget-object v12, v1, Lcom/papa/sim/statistic/t$h2;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v11, v12}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v12, v1, Lcom/papa/sim/statistic/t$h2;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v11, v12}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    iget-object v11, v1, Lcom/papa/sim/statistic/t$h2;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    const-string v12, "103"

    .line 59
    .line 60
    const-string v14, ""

    .line 61
    .line 62
    if-nez v11, :cond_b

    .line 63
    .line 64
    sget-object v11, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-virtual {v10, v11}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object v15, v14

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    invoke-virtual {v10, v13, v14}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    iget-object v14, v1, Lcom/papa/sim/statistic/t$h2;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v13, v14}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 88
    .line 89
    .line 90
    iget-object v13, v1, Lcom/papa/sim/statistic/t$h2;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    invoke-virtual {v10, v13}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    invoke-virtual {v13, v14}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    move-object v14, v12

    .line 115
    iget-wide v11, v1, Lcom/papa/sim/statistic/t$h2;->g:J

    .line 116
    .line 117
    invoke-virtual {v13, v11, v12}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    iget v12, v1, Lcom/papa/sim/statistic/t$h2;->h:I

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    iget-wide v12, v1, Lcom/papa/sim/statistic/t$h2;->i:J

    .line 134
    .line 135
    invoke-virtual {v11, v12, v13}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    iget-object v12, v1, Lcom/papa/sim/statistic/t$h2;->j:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v11, v12}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    iget v12, v1, Lcom/papa/sim/statistic/t$h2;->k:I

    .line 152
    .line 153
    invoke-virtual {v11, v12}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 154
    .line 155
    .line 156
    iget v11, v1, Lcom/papa/sim/statistic/t$h2;->l:I

    .line 157
    .line 158
    const/4 v12, 0x1

    .line 159
    if-ne v11, v12, :cond_1

    .line 160
    .line 161
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v2, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v14}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 179
    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_1
    :try_start_0
    iget-object v11, v1, Lcom/papa/sim/statistic/t$h2;->d:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-nez v11, :cond_9

    .line 190
    .line 191
    new-instance v11, Lorg/json/JSONObject;

    .line 192
    .line 193
    iget-object v12, v1, Lcom/papa/sim/statistic/t$h2;->d:Ljava/lang/String;

    .line 194
    .line 195
    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_2

    .line 203
    .line 204
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-nez v12, :cond_2

    .line 213
    .line 214
    const-string v12, "0"

    .line 215
    .line 216
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-nez v12, :cond_2

    .line 225
    .line 226
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    move-object v12, v15

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget v12, v1, Lcom/papa/sim/statistic/t$h2;->l:I

    .line 238
    .line 239
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-object v12, v15

    .line 243
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    :goto_0
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    invoke-virtual {v13, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-eqz v13, :cond_3

    .line 262
    .line 263
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    goto :goto_1

    .line 268
    :cond_3
    move-object v8, v12

    .line 269
    :goto_1
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    invoke-virtual {v13, v8}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_4

    .line 281
    .line 282
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    goto :goto_2

    .line 287
    :cond_4
    move-object v14, v12

    .line 288
    :goto_2
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-virtual {v7, v14}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    if-eqz v7, :cond_7

    .line 300
    .line 301
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    if-eqz v6, :cond_7

    .line 306
    .line 307
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-virtual {v7, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-eqz v6, :cond_5

    .line 326
    .line 327
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-virtual {v6, v3}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 336
    .line 337
    .line 338
    :cond_5
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_6

    .line 343
    .line 344
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 353
    .line 354
    .line 355
    :cond_6
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_7

    .line 360
    .line 361
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 370
    .line 371
    .line 372
    :cond_7
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_8

    .line 377
    .line 378
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :cond_8
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_9

    .line 394
    .line 395
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .line 405
    .line 406
    goto :goto_3

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    .line 410
    .line 411
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 412
    .line 413
    if-eqz v0, :cond_a

    .line 414
    .line 415
    iget-object v0, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 416
    .line 417
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 426
    .line 427
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 428
    .line 429
    .line 430
    :cond_a
    iget-object v0, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 431
    .line 432
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 437
    .line 438
    invoke-virtual {v0, v2, v10}, Lcom/papa/sim/statistic/s;->B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_5

    .line 442
    .line 443
    :cond_b
    move-object/from16 v16, v14

    .line 444
    .line 445
    move-object v14, v12

    .line 446
    move-object/from16 v12, v16

    .line 447
    .line 448
    iget v0, v1, Lcom/papa/sim/statistic/t$h2;->l:I

    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    if-ne v0, v2, :cond_d

    .line 452
    .line 453
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v10, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 463
    .line 464
    .line 465
    move-result-wide v2

    .line 466
    invoke-virtual {v10, v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->e:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    sget-object v3, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 489
    .line 490
    .line 491
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->f:Ljava/lang/String;

    .line 492
    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    invoke-virtual {v10, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->j:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    iget-wide v3, v1, Lcom/papa/sim/statistic/t$h2;->g:J

    .line 525
    .line 526
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    iget v3, v1, Lcom/papa/sim/statistic/t$h2;->h:I

    .line 534
    .line 535
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    iget-wide v3, v1, Lcom/papa/sim/statistic/t$h2;->i:J

    .line 543
    .line 544
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2, v14}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    iget v4, v1, Lcom/papa/sim/statistic/t$h2;->n:I

    .line 564
    .line 565
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    iget v3, v1, Lcom/papa/sim/statistic/t$h2;->k:I

    .line 583
    .line 584
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 585
    .line 586
    .line 587
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 588
    .line 589
    if-eqz v2, :cond_c

    .line 590
    .line 591
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 592
    .line 593
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    iget-object v4, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 602
    .line 603
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 604
    .line 605
    .line 606
    :cond_c
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 607
    .line 608
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v2, v0, v10}, Lcom/papa/sim/statistic/s;->B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_5

    .line 616
    .line 617
    :cond_d
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 618
    .line 619
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 620
    .line 621
    .line 622
    new-instance v2, Lcom/papa/sim/statistic/Data;

    .line 623
    .line 624
    invoke-direct {v2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 625
    .line 626
    .line 627
    :try_start_1
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->e:Ljava/lang/String;

    .line 628
    .line 629
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 630
    .line 631
    .line 632
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->f:Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    .line 640
    .line 641
    goto :goto_4

    .line 642
    :catch_1
    nop

    .line 643
    :goto_4
    iget-object v3, v1, Lcom/papa/sim/statistic/t$h2;->j:Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 646
    .line 647
    .line 648
    iget-wide v2, v1, Lcom/papa/sim/statistic/t$h2;->i:J

    .line 649
    .line 650
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 651
    .line 652
    .line 653
    iget-wide v2, v1, Lcom/papa/sim/statistic/t$h2;->g:J

    .line 654
    .line 655
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 656
    .line 657
    .line 658
    iget v2, v1, Lcom/papa/sim/statistic/t$h2;->h:I

    .line 659
    .line 660
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 661
    .line 662
    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .line 667
    .line 668
    iget v3, v1, Lcom/papa/sim/statistic/t$h2;->l:I

    .line 669
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 681
    .line 682
    .line 683
    iget v2, v1, Lcom/papa/sim/statistic/t$h2;->l:I

    .line 684
    .line 685
    const/16 v3, 0x65

    .line 686
    .line 687
    if-ne v2, v3, :cond_e

    .line 688
    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .line 693
    .line 694
    iget v3, v1, Lcom/papa/sim/statistic/t$h2;->n:I

    .line 695
    .line 696
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 707
    .line 708
    .line 709
    :cond_e
    iget v2, v1, Lcom/papa/sim/statistic/t$h2;->k:I

    .line 710
    .line 711
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 712
    .line 713
    .line 714
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 715
    .line 716
    if-eqz v2, :cond_f

    .line 717
    .line 718
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 719
    .line 720
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v10}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    iget-object v4, v1, Lcom/papa/sim/statistic/t$h2;->m:Lcom/papa/sim/statistic/Ext;

    .line 729
    .line 730
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 731
    .line 732
    .line 733
    :cond_f
    iget-object v2, v1, Lcom/papa/sim/statistic/t$h2;->o:Lcom/papa/sim/statistic/t;

    .line 734
    .line 735
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 740
    .line 741
    iget-object v4, v1, Lcom/papa/sim/statistic/t$h2;->e:Ljava/lang/String;

    .line 742
    .line 743
    iget-object v5, v1, Lcom/papa/sim/statistic/t$h2;->f:Ljava/lang/String;

    .line 744
    .line 745
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/papa/sim/statistic/s;->O(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 746
    .line 747
    .line 748
    :goto_5
    return-void
.end method
