.class public Lcom/sdk/d/c$a;
.super Lcom/sdk/d/c$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/d/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/d/c$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/sdk/d/c;


# direct methods
.method public constructor <init>(Lcom/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sdk/d/c$e;-><init>(Lcom/sdk/d/c$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "\u7f51\u7edc\u8bbf\u95ee\u5df2\u53d6\u6d88"

    .line 4
    .line 5
    const-string v2, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    .line 6
    .line 7
    iget-object v3, v1, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/sdk/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    .line 21
    .line 22
    iget-object v5, v1, Lcom/sdk/d/c$e;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Lcom/sdk/a/c;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v7, "PriorityAsyncTask"

    .line 31
    .line 32
    const-string v8, "HttpHandler doInBackground"

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-static {v7, v8, v9}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    iget-object v8, v6, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 39
    .line 40
    sget-object v10, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    .line 41
    .line 42
    if-eq v8, v10, :cond_7

    .line 43
    .line 44
    if-eqz v5, :cond_7

    .line 45
    .line 46
    array-length v8, v5

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    array-length v8, v5

    .line 52
    const/4 v10, 0x4

    .line 53
    const/4 v11, 0x3

    .line 54
    const/4 v12, 0x2

    .line 55
    if-ne v8, v10, :cond_1

    .line 56
    .line 57
    aget-object v8, v5, v4

    .line 58
    .line 59
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iput-object v8, v6, Lcom/sdk/a/c;->q:Ljava/lang/String;

    .line 64
    .line 65
    iput-boolean v4, v6, Lcom/sdk/a/c;->r:Z

    .line 66
    .line 67
    aget-object v8, v5, v12

    .line 68
    .line 69
    check-cast v8, Ljava/lang/Boolean;

    .line 70
    .line 71
    iput-object v8, v6, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    .line 72
    .line 73
    aget-object v8, v5, v11

    .line 74
    .line 75
    check-cast v8, Ljava/lang/Boolean;

    .line 76
    .line 77
    iput-object v8, v6, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    .line 78
    .line 79
    :cond_1
    array-length v8, v5

    .line 80
    if-ne v8, v12, :cond_2

    .line 81
    .line 82
    aget-object v8, v5, v4

    .line 83
    .line 84
    check-cast v8, Ljava/lang/Boolean;

    .line 85
    .line 86
    iput-object v8, v6, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    .line 87
    .line 88
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v13

    .line 92
    iput-wide v13, v6, Lcom/sdk/a/c;->p:J

    .line 93
    .line 94
    new-array v8, v4, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    aput-object v13, v8, v9

    .line 101
    .line 102
    invoke-virtual {v6, v8}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    aget-object v5, v5, v9

    .line 106
    .line 107
    check-cast v5, Lcom/sdk/a/d;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/sdk/a/d;->b()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    iput-object v8, v6, Lcom/sdk/a/c;->l:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v13

    .line 119
    sget-object v8, Lcom/sdk/n/a$c;->a:Lcom/sdk/n/a$c;

    .line 120
    .line 121
    iget-object v15, v5, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    .line 122
    .line 123
    iget-object v15, v15, Lcom/sdk/a/e;->h:Lcom/sdk/n/a$c;

    .line 124
    .line 125
    if-ne v8, v15, :cond_3

    .line 126
    .line 127
    const/4 v8, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const/4 v8, 0x0

    .line 130
    :goto_0
    iget-object v15, v6, Lcom/sdk/a/c;->l:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v5, v15, v8}, Lcom/sdk/a/d;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v15

    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v9, "request.client\u5f3a\u5f00\u8017\u65f6\u65f6\u95f4: "

    .line 146
    .line 147
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    sub-long v13, v15, v13

    .line 151
    .line 152
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v9, "\ndoInBackground forcedTime: "

    .line 156
    .line 157
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    sget-wide v15, Lcom/sdk/x/a;->k:J

    .line 161
    .line 162
    move-object/from16 v17, v5

    .line 163
    .line 164
    add-long v4, v13, v15

    .line 165
    .line 166
    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const/4 v5, 0x1

    .line 174
    invoke-static {v7, v4, v5}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    sget-object v4, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    const-string v5, "forcedTime"

    .line 180
    .line 181
    :try_start_1
    sget-wide v15, Lcom/sdk/x/a;->k:J

    .line 182
    .line 183
    add-long/2addr v13, v15

    .line 184
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {v4, v5, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    if-nez v8, :cond_4

    .line 192
    .line 193
    new-array v0, v12, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const/4 v5, 0x0

    .line 200
    aput-object v4, v0, v5

    .line 201
    .line 202
    new-instance v4, Lcom/sdk/a/f;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/sdk/a/c;->b()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-direct {v4, v5, v8, v5}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    .line 209
    .line 210
    .line 211
    const/4 v8, 0x1

    .line 212
    aput-object v4, v0, v8

    .line 213
    .line 214
    invoke-virtual {v6, v0}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const-string v0, "client = null"

    .line 218
    .line 219
    invoke-static {v7, v0, v5}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_4
    move-object/from16 v5, v17

    .line 225
    .line 226
    invoke-virtual {v6, v5, v8}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    iget-object v5, v4, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_5

    .line 237
    .line 238
    iget-object v5, v6, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .line 240
    const-string v8, "endTime"

    .line 241
    .line 242
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v13

    .line 246
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-virtual {v5, v8, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    :cond_5
    iget v5, v4, Lcom/sdk/a/f;->a:I

    .line 254
    .line 255
    if-nez v5, :cond_6

    .line 256
    .line 257
    new-array v0, v12, [Ljava/lang/Object;

    .line 258
    .line 259
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const/4 v8, 0x0

    .line 264
    aput-object v5, v0, v8

    .line 265
    .line 266
    const/4 v5, 0x1

    .line 267
    aput-object v4, v0, v5

    .line 268
    .line 269
    invoke-virtual {v6, v0}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_6
    const/4 v5, 0x3

    .line 274
    new-array v8, v5, [Ljava/lang/Object;

    .line 275
    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    const/4 v5, 0x0

    .line 281
    aput-object v10, v8, v5

    .line 282
    .line 283
    iget v5, v4, Lcom/sdk/a/f;->a:I

    .line 284
    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    const/4 v9, 0x1

    .line 290
    aput-object v5, v8, v9

    .line 291
    .line 292
    iget-object v5, v4, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    .line 293
    .line 294
    aput-object v5, v8, v12

    .line 295
    .line 296
    invoke-virtual {v6, v8}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v4, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    .line 300
    .line 301
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    iget-object v4, v4, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    .line 305
    .line 306
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302002(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string v0, "HttpHandler\uff1adoInBackground"

    .line 319
    .line 320
    const/4 v4, 0x0

    .line 321
    invoke-static {v7, v0, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 322
    .line 323
    .line 324
    const/4 v5, 0x3

    .line 325
    new-array v0, v5, [Ljava/lang/Object;

    .line 326
    .line 327
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    aput-object v5, v0, v4

    .line 332
    .line 333
    const v4, 0x49bb2

    .line 334
    .line 335
    .line 336
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const/4 v5, 0x1

    .line 341
    aput-object v4, v0, v5

    .line 342
    .line 343
    aput-object v2, v0, v12

    .line 344
    .line 345
    invoke-virtual {v6, v0}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 349
    invoke-virtual {v3, v0}, Lcom/sdk/d/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    return-object v0
.end method
