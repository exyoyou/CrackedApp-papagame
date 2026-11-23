.class Lcom/papa/sim/statistic/t$i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->F0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
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

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:I

.field final synthetic j:J

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Lcom/papa/sim/statistic/Ext;

.field final synthetic n:I

.field final synthetic o:I

.field final synthetic p:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILcom/papa/sim/statistic/Ext;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->p:Lcom/papa/sim/statistic/t;

    move-object v1, p2

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->g:Ljava/lang/String;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/papa/sim/statistic/t$i2;->h:J

    move v1, p10

    iput v1, v0, Lcom/papa/sim/statistic/t$i2;->i:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/papa/sim/statistic/t$i2;->j:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->k:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/papa/sim/statistic/t$i2;->l:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/papa/sim/statistic/t$i2;->m:Lcom/papa/sim/statistic/Ext;

    move/from16 v1, p16

    iput v1, v0, Lcom/papa/sim/statistic/t$i2;->n:I

    move/from16 v1, p17

    iput v1, v0, Lcom/papa/sim/statistic/t$i2;->o:I

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
    new-instance v7, Lcom/papa/sim/statistic/StatRequest;

    .line 16
    .line 17
    invoke-direct {v7}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-nez v8, :cond_0

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_7

    .line 53
    .line 54
    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->e:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 77
    .line 78
    .line 79
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->f:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->g:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    iget-wide v9, v1, Lcom/papa/sim/statistic/t$i2;->h:J

    .line 113
    .line 114
    invoke-virtual {v8, v9, v10}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    iget v9, v1, Lcom/papa/sim/statistic/t$i2;->i:I

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iget-wide v9, v1, Lcom/papa/sim/statistic/t$i2;->j:J

    .line 131
    .line 132
    invoke-virtual {v8, v9, v10}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->k:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    iget v9, v1, Lcom/papa/sim/statistic/t$i2;->l:I

    .line 149
    .line 150
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 151
    .line 152
    .line 153
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->m:Lcom/papa/sim/statistic/Ext;

    .line 154
    .line 155
    if-eqz v8, :cond_1

    .line 156
    .line 157
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->p:Lcom/papa/sim/statistic/t;

    .line 158
    .line 159
    invoke-static {v8}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    iget-object v10, v1, Lcom/papa/sim/statistic/t$i2;->m:Lcom/papa/sim/statistic/Ext;

    .line 168
    .line 169
    invoke-virtual {v8, v9, v10}, Lcom/papa/sim/statistic/s;->v0(Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Ext;)V

    .line 170
    .line 171
    .line 172
    :cond_1
    :try_start_0
    iget-object v8, v1, Lcom/papa/sim/statistic/t$i2;->d:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_6

    .line 179
    .line 180
    new-instance v8, Lorg/json/JSONObject;

    .line 181
    .line 182
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->d:Ljava/lang/String;

    .line 183
    .line 184
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v9, "from"

    .line 188
    .line 189
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    const-string v10, "position"

    .line 194
    .line 195
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    const-string v11, "location"

    .line 200
    .line 201
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v11, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-virtual {v11, v10}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-eqz v10, :cond_4

    .line 223
    .line 224
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    if-eqz v6, :cond_4

    .line 229
    .line 230
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v10, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v9, v6}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_2

    .line 249
    .line 250
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v6, v3}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 259
    .line 260
    .line 261
    :cond_2
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_3

    .line 266
    .line 267
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 276
    .line 277
    .line 278
    :cond_3
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_4

    .line 283
    .line 284
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 293
    .line 294
    .line 295
    :cond_4
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    .line 301
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_5
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_6

    .line 317
    .line 318
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    .line 329
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    .line 333
    .line 334
    :cond_6
    :goto_0
    iget-object v0, v1, Lcom/papa/sim/statistic/t$i2;->p:Lcom/papa/sim/statistic/t;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 341
    .line 342
    invoke-virtual {v0, v2, v7}, Lcom/papa/sim/statistic/s;->B(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_7
    iget-object v0, v1, Lcom/papa/sim/statistic/t$i2;->p:Lcom/papa/sim/statistic/t;

    .line 347
    .line 348
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 353
    .line 354
    iget-object v4, v1, Lcom/papa/sim/statistic/t$i2;->e:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v5, v1, Lcom/papa/sim/statistic/t$i2;->g:Ljava/lang/String;

    .line 357
    .line 358
    iget-wide v6, v1, Lcom/papa/sim/statistic/t$i2;->h:J

    .line 359
    .line 360
    iget v8, v1, Lcom/papa/sim/statistic/t$i2;->i:I

    .line 361
    .line 362
    iget-object v9, v1, Lcom/papa/sim/statistic/t$i2;->f:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v10, v1, Lcom/papa/sim/statistic/t$i2;->k:Ljava/lang/String;

    .line 365
    .line 366
    iget-wide v11, v1, Lcom/papa/sim/statistic/t$i2;->j:J

    .line 367
    .line 368
    iget v13, v1, Lcom/papa/sim/statistic/t$i2;->n:I

    .line 369
    .line 370
    iget v14, v1, Lcom/papa/sim/statistic/t$i2;->o:I

    .line 371
    .line 372
    iget v15, v1, Lcom/papa/sim/statistic/t$i2;->l:I

    .line 373
    .line 374
    const-string v16, ""

    .line 375
    .line 376
    invoke-virtual/range {v2 .. v16}, Lcom/papa/sim/statistic/s;->N(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIIILjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :goto_1
    return-void
.end method
