.class public Lcom/join/mgps/adapter/p3;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d0459

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f08108d

    .line 8
    .line 9
    .line 10
    const v1, 0x7f08108e

    .line 11
    .line 12
    .line 13
    const v2, 0x7f08108c

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/adapter/p3;->f:[I

    .line 21
    .line 22
    const-string v0, "#E8E351"

    .line 23
    .line 24
    const-string v1, "#D1AFF4"

    .line 25
    .line 26
    const-string v2, "#EACBC3"

    .line 27
    .line 28
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/adapter/p3;->g:[Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/adapter/p3;->e:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/p3;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1889

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a1415

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->isSelected()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const v1, 0x7f081095

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/p3;->e:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const v0, 0x7f0a0ec7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/join/mgps/adapter/p3;->f:[I

    .line 93
    .line 94
    const/4 v5, 0x3

    .line 95
    rem-int/2addr v1, v5

    .line 96
    aget v4, v4, v1

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    const v3, 0x7f0a18ee

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v6, p0, Lcom/join/mgps/adapter/p3;->g:[Ljava/lang/String;

    .line 111
    .line 112
    aget-object v1, v6, v1

    .line 113
    .line 114
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    xor-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, ""

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_3

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 170
    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, " "

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    goto :goto_2

    .line 196
    :cond_3
    const v0, 0x7f0a18ef

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    const v0, 0x7f0a09cb

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_4

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_5

    .line 240
    .line 241
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_7

    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-lez v0, :cond_7

    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_7

    .line 286
    .line 287
    const v0, 0x7f0a09cd

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    if-eqz v1, :cond_6

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_7

    .line 333
    .line 334
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Lcom/facebook/drawee/generic/a;

    .line 360
    .line 361
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_7
    const v0, 0x7f0a129d

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, Landroid/widget/ProgressBar;

    .line 395
    .line 396
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    if-eqz v1, :cond_8

    .line 401
    .line 402
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getModGameId()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    invoke-virtual {v1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    goto :goto_3

    .line 415
    :cond_8
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGameId()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    invoke-virtual {v1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    :goto_3
    const-string v1, "\u83b7\u53d6"

    .line 428
    .line 429
    if-eqz p2, :cond_f

    .line 430
    .line 431
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    const/16 v4, 0x8

    .line 436
    .line 437
    if-eqz v3, :cond_e

    .line 438
    .line 439
    const/16 v6, 0x1b

    .line 440
    .line 441
    const-string v7, "\u6682\u505c"

    .line 442
    .line 443
    if-eq v3, v6, :cond_d

    .line 444
    .line 445
    const/16 v6, 0x30

    .line 446
    .line 447
    if-eq v3, v6, :cond_c

    .line 448
    .line 449
    const/4 v6, 0x2

    .line 450
    if-eq v3, v6, :cond_b

    .line 451
    .line 452
    if-eq v3, v5, :cond_a

    .line 453
    .line 454
    const/4 v5, 0x5

    .line 455
    if-eq v3, v5, :cond_9

    .line 456
    .line 457
    const/4 v5, 0x6

    .line 458
    if-eq v3, v5, :cond_a

    .line 459
    .line 460
    const/4 p2, 0x7

    .line 461
    if-eq v3, p2, :cond_e

    .line 462
    .line 463
    const/16 p2, 0x2a

    .line 464
    .line 465
    if-eq v3, p2, :cond_9

    .line 466
    .line 467
    const/16 p2, 0x2b

    .line 468
    .line 469
    if-eq v3, p2, :cond_e

    .line 470
    .line 471
    packed-switch v3, :pswitch_data_0

    .line 472
    .line 473
    .line 474
    goto :goto_5

    .line 475
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    .line 477
    .line 478
    const-string v1, "\u89e3\u538b"

    .line 479
    .line 480
    goto :goto_5

    .line 481
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 482
    .line 483
    .line 484
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 485
    .line 486
    goto :goto_5

    .line 487
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    const-string v1, "\u5b89\u88c5"

    .line 491
    .line 492
    goto :goto_5

    .line 493
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    const-string v1, "\u7b49\u5f85"

    .line 497
    .line 498
    goto :goto_5

    .line 499
    :cond_9
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    const-string v1, "\u542f\u52a8"

    .line 503
    .line 504
    goto :goto_5

    .line 505
    :cond_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 509
    .line 510
    .line 511
    move-result-wide v1

    .line 512
    long-to-int p2, v1

    .line 513
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 514
    .line 515
    .line 516
    const-string v1, "\u7ee7\u7eed"

    .line 517
    .line 518
    goto :goto_5

    .line 519
    :cond_b
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 523
    .line 524
    .line 525
    move-result-wide v1

    .line 526
    long-to-int p2, v1

    .line 527
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 528
    .line 529
    .line 530
    :goto_4
    move-object v1, v7

    .line 531
    goto :goto_5

    .line 532
    :cond_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    .line 534
    .line 535
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 542
    .line 543
    .line 544
    move-result-wide v1

    .line 545
    long-to-int p2, v1

    .line 546
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 547
    .line 548
    .line 549
    goto :goto_4

    .line 550
    :cond_e
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    :cond_f
    :goto_5
    const p2, 0x7f0a18b4

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Landroid/widget/TextView;

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    filled-new-array {p2}, [I

    .line 566
    .line 567
    .line 568
    move-result-object p2

    .line 569
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->addOnClickListener([I)Lcom/join/mgps/base/b;

    .line 570
    .line 571
    .line 572
    return-void

    .line 573
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/p3;->e:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method
