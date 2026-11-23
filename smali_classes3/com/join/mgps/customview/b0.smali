.class public Lcom/join/mgps/customview/b0;
.super Lcom/join/mgps/customview/v;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/b0$a;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field private m:Ljava/lang/String;

.field n:Lcom/join/mgps/customview/b0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/v;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/b0;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Lcom/join/mgps/customview/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/join/mgps/customview/b0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameOperateListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 2
    .line 3
    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/join/mgps/customview/b0;->f(Landroid/view/View;Ljava/lang/String;ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f(Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gameId",
            "isArchieve",
            "isFav"
        }
    .end annotation

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/v;->showAtLocation(Landroid/view/View;III)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Lcom/join/mgps/customview/b0;->d:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/join/mgps/customview/b0;->l:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/customview/b0;->d:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Lcom/join/mgps/customview/b0;->l:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3, p2}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    :cond_1
    if-nez p3, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->c:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->k:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const/4 v0, 0x5

    .line 70
    if-eq p2, v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/16 v0, 0x9

    .line 77
    .line 78
    if-ne p2, v0, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->b:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->b:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string v0, ".apk"

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    const/4 v2, 0x1

    .line 114
    if-nez p2, :cond_7

    .line 115
    .line 116
    const-string p2, "androidobb"

    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-nez p2, :cond_7

    .line 127
    .line 128
    const-string p2, "46"

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :cond_7
    :goto_3
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string v3, "/"

    .line 158
    .line 159
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    add-int/2addr v3, v2

    .line 164
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string v3, ""

    .line 169
    .line 170
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_8

    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v0, p2}, Lcom/join/mgps/Util/l;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_8

    .line 194
    .line 195
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_8

    .line 204
    .line 205
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const-string v0, "\u7f51\u6e38"

    .line 210
    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_8

    .line 216
    .line 217
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    invoke-static {p3}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_9

    .line 233
    .line 234
    iget-object p2, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {p2, v0}, Lcom/join/mgps/Util/j2;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_a

    .line 245
    .line 246
    :cond_9
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMiniGame()Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_b

    .line 251
    .line 252
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 258
    .line 259
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 269
    .line 270
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :goto_4
    if-eqz p4, :cond_c

    .line 274
    .line 275
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-nez p2, :cond_c

    .line 282
    .line 283
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    :cond_c
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudTask()Z

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-nez p2, :cond_d

    .line 298
    .line 299
    sget-object p2, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 300
    .line 301
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p4

    .line 309
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-eqz p2, :cond_e

    .line 314
    .line 315
    :cond_d
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 316
    .line 317
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    :cond_e
    invoke-static {p3}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    if-eqz p2, :cond_15

    .line 330
    .line 331
    iget-object p2, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {p2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    iget-object p4, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 338
    .line 339
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    sget-object v3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 344
    .line 345
    invoke-virtual {p2, p4, v0, v3}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    if-nez p2, :cond_14

    .line 350
    .line 351
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCost_type()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-ne p2, v2, :cond_f

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_f
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    sget-object p4, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 363
    .line 364
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p4

    .line 368
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    if-nez p2, :cond_11

    .line 373
    .line 374
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    sget-object p4, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 379
    .line 380
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p4

    .line 384
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    if-nez p2, :cond_11

    .line 389
    .line 390
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    sget-object p3, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 395
    .line 396
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p3

    .line 400
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    if-eqz p2, :cond_10

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_10
    const/4 v2, 0x0

    .line 408
    :cond_11
    :goto_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .line 410
    const/16 p3, 0x1e

    .line 411
    .line 412
    if-lt p2, p3, :cond_13

    .line 413
    .line 414
    if-nez v2, :cond_12

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_12
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->i:Landroid/view/View;

    .line 418
    .line 419
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->h:Landroid/view/View;

    .line 423
    .line 424
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->i:Landroid/view/View;

    .line 429
    .line 430
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->h:Landroid/view/View;

    .line 434
    .line 435
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    goto :goto_8

    .line 439
    :cond_14
    :goto_7
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->i:Landroid/view/View;

    .line 440
    .line 441
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .line 443
    .line 444
    iget-object p2, p0, Lcom/join/mgps/customview/b0;->h:Landroid/view/View;

    .line 445
    .line 446
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    :goto_8
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->h:Landroid/view/View;

    .line 450
    .line 451
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .line 453
    .line 454
    :cond_15
    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07ef

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a0496

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->b:Landroid/view/View;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f0a0483

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->c:Landroid/view/View;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a0485

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->d:Landroid/view/View;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 62
    .line 63
    const v1, 0x7f0a02f5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->e:Landroid/view/View;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 73
    .line 74
    const v1, 0x7f0a00a7

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 84
    .line 85
    const v1, 0x7f0a0e61

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->f:Landroid/view/View;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 95
    .line 96
    const v1, 0x7f0a1a28

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->h:Landroid/view/View;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 106
    .line 107
    const v1, 0x7f0a1b3f

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->i:Landroid/view/View;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 117
    .line 118
    const v1, 0x7f0a0e68

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->j:Landroid/view/View;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 128
    .line 129
    const v1, 0x7f0a0e67

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->k:Landroid/view/View;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 139
    .line 140
    const v1, 0x7f0a0e66

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/join/mgps/customview/b0;->l:Landroid/view/View;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->b:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->c:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->d:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->e:Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->g:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0496

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/b0$a;->onGameDetail(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const v0, 0x7f0a0483

    .line 24
    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/b0$a;->onDeleteGame(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const v0, 0x7f0a0485

    .line 42
    .line 43
    .line 44
    if-ne p1, v0, :cond_5

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/b0$a;->onDeleteArchieve(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    const v0, 0x7f0a02f5

    .line 60
    .line 61
    .line 62
    if-ne p1, v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    const v0, 0x7f0a00a7

    .line 69
    .line 70
    .line 71
    if-ne p1, v0, :cond_8

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/b0$a;->onAddShortCut(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_8
    const v0, 0x7f0a1a28

    .line 87
    .line 88
    .line 89
    if-ne p1, v0, :cond_9

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/customview/b0;->n:Lcom/join/mgps/customview/b0$a;

    .line 95
    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/b0;->m:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/b0$a;->onStandMode(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_9
    :goto_0
    return-void
.end method
