.class public final Lcom/byazt/ddx/uj$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ya/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x337
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Double;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:F

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;FLjava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ddx/uj$38;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ddx/uj$38;->ve:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ddx/uj$38;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ddx/uj$38;->n:F

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ddx/uj$38;->a:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;Ljava/lang/Double;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const-string v1, "sdk_bidding_type"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v1, "ttdsp_price"

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->nq()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    const-string p1, "price"

    .line 44
    .line 45
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    invoke-virtual {p3, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :catchall_0
    :cond_4
    return-void
.end method

.method public onSend(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "ttdsp_price"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/byazt/ddx/uj$38;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/byazt/ouz/i;->c(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v2, v3}, Lcom/byazt/by/c;->c(Landroid/content/Context;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "device"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->up()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v3, "is_cache"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->up()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/byazt/ete/ic;->sl(Z)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const-string v3, "cache_type"

    .line 53
    .line 54
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-static {v2, v1, v3}, Lcom/byazt/dbo/ve;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Z)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->ve:Ljava/util/Map;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const-string v5, "show_send_type"

    .line 69
    .line 70
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->ve:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->ve:Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Ljava/util/Map$Entry;

    .line 106
    .line 107
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    sget-wide v7, Lcom/byazt/omf/rh;->n:J

    .line 126
    .line 127
    sub-long/2addr v5, v7

    .line 128
    const-string v2, "start2req_time"

    .line 129
    .line 130
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    sget-object v2, Lcom/byazt/omf/rh;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    xor-int/2addr v2, v3

    .line 140
    const-string v5, "start_type"

    .line 141
    .line 142
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    const-string v2, "show_count"

    .line 146
    .line 147
    sget v5, Lcom/byazt/ddx/uj;->c:I

    .line 148
    .line 149
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/byazt/omf/x;->n()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-nez v5, :cond_2

    .line 165
    .line 166
    const-string v5, "can_use_sensor"

    .line 167
    .line 168
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->bx()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const-string v5, "0"

    .line 180
    .line 181
    const-string v6, "mcod"

    .line 182
    .line 183
    if-eqz v2, :cond_3

    .line 184
    .line 185
    const-string v2, "-1"

    .line 186
    .line 187
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/byazt/omf/x;->da()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_4

    .line 200
    .line 201
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/byazt/omf/x;->sp()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_5

    .line 213
    .line 214
    const-string v2, "od"

    .line 215
    .line 216
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    :cond_5
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/byazt/omf/x;->rh()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const-string v5, "is_shake_ads"

    .line 228
    .line 229
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/byazt/pf/c;->a()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    const-string v5, "direction"

    .line 241
    .line 242
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 246
    .line 247
    iget-object v5, p0, Lcom/byazt/ddx/uj$38;->c:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v2, v5, v1}, Lcom/byazt/ddx/uj;->n(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 250
    .line 251
    .line 252
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->uj:Ljava/lang/String;

    .line 253
    .line 254
    if-eqz v2, :cond_6

    .line 255
    .line 256
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2}, Lcom/byazt/apd/tt;->ve()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    const-string v5, "live_sdk_status"

    .line 268
    .line 269
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 273
    .line 274
    invoke-static {v1, v2}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v2}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v2}, Lcom/byazt/nr/n;->c()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    const-string v5, "shakeLiSize"

    .line 290
    .line 291
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->hs()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_7

    .line 301
    .line 302
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ne()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    const-string v5, "reward_show_type"

    .line 309
    .line 310
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->lz()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    const-string v5, "browse_time"

    .line 320
    .line 321
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    :cond_7
    invoke-static {v1}, Lcom/byazt/ddx/uj;->c(Lorg/json/JSONObject;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 328
    .line 329
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v2, v1, v3}, Lcom/byazt/ete/hd;->c(Lorg/json/JSONObject;Z)V

    .line 334
    .line 335
    .line 336
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ur()Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    if-eqz v2, :cond_8

    .line 343
    .line 344
    iget-object v3, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 345
    .line 346
    invoke-static {v3, v2}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    .line 347
    .line 348
    .line 349
    const-string v3, "applist_info"

    .line 350
    .line 351
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    .line 353
    .line 354
    :cond_8
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 355
    .line 356
    invoke-static {v2}, Lcom/byazt/whk/sl;->c(Lcom/byazt/ete/ic;)V

    .line 357
    .line 358
    .line 359
    const-string v2, "ad_extra_data"

    .line 360
    .line 361
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    .line 367
    .line 368
    iget v1, p0, Lcom/byazt/ddx/uj$38;->n:F

    .line 369
    .line 370
    const/4 v2, 0x0

    .line 371
    cmpl-float v3, v1, v2

    .line 372
    .line 373
    if-lez v3, :cond_9

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_9
    const/4 v1, 0x0

    .line 377
    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const-string v2, "show_time"

    .line 382
    .line 383
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 391
    .line 392
    iget v3, p0, Lcom/byazt/ddx/uj$38;->n:F

    .line 393
    .line 394
    invoke-virtual {v1, v2, v3}, Lcom/byazt/qw/ve;->c(Lcom/byazt/ete/ic;F)V

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->em()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_b

    .line 408
    .line 409
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 410
    .line 411
    .line 412
    move-result-wide v1

    .line 413
    const-wide/16 v5, 0x0

    .line 414
    .line 415
    cmpg-double v3, v1, v5

    .line 416
    .line 417
    if-gtz v3, :cond_a

    .line 418
    .line 419
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :cond_a
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .line 425
    .line 426
    goto :goto_3

    .line 427
    :catchall_0
    move-exception v1

    .line 428
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 429
    .line 430
    .line 431
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/byazt/ddx/uj$38;->tt:Lcom/byazt/ete/ic;

    .line 435
    .line 436
    iget-object v1, p0, Lcom/byazt/ddx/uj$38;->a:Ljava/lang/Double;

    .line 437
    .line 438
    invoke-virtual {p0, v0, v1, p1}, Lcom/byazt/ddx/uj$38;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Lorg/json/JSONObject;)V

    .line 439
    .line 440
    .line 441
    return-void
.end method
