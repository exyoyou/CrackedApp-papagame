.class public Lcom/byazt/hz/da$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x1ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic tt:Ljava/lang/Object;

.field public final synthetic uj:Lcom/byazt/hz/da;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/da;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/da$2;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/hz/da$2;->tt:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/hz/da$2;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/hz/tt;->u:Lcom/byazt/zh/tt;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/byazt/yl/ve;->setTTAdAppDownloadListener(Lcom/byazt/zh/tt;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/byazt/hz/tt;->yp:Lcom/byazt/ocd/tt;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->uj(Lcom/byazt/yl/ve;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setHasShown(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lcom/byazt/yl/ve;->setTTAdatperCallback(Lcom/byazt/zq/a;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->canAdReuse()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 66
    .line 67
    iget-object v3, v2, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v4, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/byazt/hz/tt;->rh()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v0, v3, v2, v4}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 88
    .line 89
    iget-object v2, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v0, v3}, Lcom/byazt/qv/a;->c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 113
    .line 114
    iget-object v4, v3, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v5, v3, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/byazt/ll/tt;->n()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 123
    .line 124
    iget-object v7, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 125
    .line 126
    move-object v3, v0

    .line 127
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 138
    .line 139
    const-string v4, "show"

    .line 140
    .line 141
    invoke-static {v3, v4}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v3, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 154
    .line 155
    iget-object v3, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, ",slotId\uff1a"

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 174
    .line 175
    iget-object v3, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, ",slotType:"

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 190
    .line 191
    iget-object v3, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v3, ",isReady()\uff1a"

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 206
    .line 207
    iget-object v4, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 208
    .line 209
    iget-object v3, v3, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v4, v3}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, "\uff0c\u662f\u5426\u4e3a\u7f13\u5b58\u5e7f\u544a:"

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const-string v3, "TTMediationSDK"

    .line 239
    .line 240
    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 244
    .line 245
    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 246
    .line 247
    iget-object v3, p0, Lcom/byazt/hz/da$2;->c:Landroid/app/Activity;

    .line 248
    .line 249
    iget-object v4, p0, Lcom/byazt/hz/da$2;->tt:Ljava/lang/Object;

    .line 250
    .line 251
    iget-object v5, p0, Lcom/byazt/hz/da$2;->ve:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v2, v3, v4, v5}, Lcom/byazt/yl/ve;->showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    iget-object v4, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 266
    .line 267
    iget-object v4, v4, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 284
    .line 285
    iget-object v4, v3, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 286
    .line 287
    iget-object v3, v3, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v2, v4, v3}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 297
    .line 298
    iput-boolean v1, v2, Lcom/byazt/hz/tt;->t:Z

    .line 299
    .line 300
    iget-object v1, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 303
    .line 304
    if-eqz v1, :cond_5

    .line 305
    .line 306
    new-instance v1, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .line 310
    .line 311
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 312
    .line 313
    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 314
    .line 315
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 319
    .line 320
    iget-object v2, v2, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->my()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    const/4 v3, 0x7

    .line 327
    if-eq v2, v3, :cond_3

    .line 328
    .line 329
    iget-object v2, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 330
    .line 331
    iget-object v2, v2, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 332
    .line 333
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->my()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    const/16 v3, 0xa

    .line 338
    .line 339
    if-ne v2, v3, :cond_4

    .line 340
    .line 341
    :cond_3
    invoke-static {}, Lcom/byazt/vy/c;->c()Lcom/byazt/vy/c;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iget-object v3, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 346
    .line 347
    iget-object v3, v3, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 348
    .line 349
    invoke-static {v3, v1, v0}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v2, v3, v0}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;)V

    .line 354
    .line 355
    .line 356
    :cond_4
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Lcom/byazt/hz/tt;->c(Ljava/util/List;)V

    .line 359
    .line 360
    .line 361
    :cond_5
    iget-object v0, p0, Lcom/byazt/hz/da$2;->uj:Lcom/byazt/hz/da;

    .line 362
    .line 363
    iget-object v1, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 364
    .line 365
    iget-object v2, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 366
    .line 367
    invoke-virtual {v0}, Lcom/byazt/hz/da;->rl()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    const/4 v3, 0x0

    .line 372
    invoke-static {v1, v2, v3, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V

    .line 373
    .line 374
    .line 375
    :cond_6
    return-void
.end method
