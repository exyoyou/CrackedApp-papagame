.class public Lcom/join/mgps/adapter/t4;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t4$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "expire"

.field public static final f:Ljava/lang/String; = "un_use"

.field public static final g:Ljava/lang/String; = "used"

.field public static final h:Ljava/lang/String; = "will_expire"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lists",
            "mContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/t4;->b:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/adapter/t4;->d:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/join/mgps/adapter/t4;->d:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    const v2, 0x7f0d076e

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/join/mgps/adapter/t4$a;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lcom/join/mgps/adapter/t4$a;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Lcom/join/mgps/adapter/t4$a;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    :goto_0
    iget-object v3, v0, Lcom/join/mgps/adapter/t4;->b:Ljava/util/List;

    .line 34
    .line 35
    move/from16 v4, p1

    .line 36
    .line 37
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 42
    .line 43
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->a:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 55
    .line 56
    const v6, 0x7f120560

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v6, 0x1

    .line 64
    new-array v7, v6, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getMoney()D

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const/4 v9, 0x0

    .line 75
    aput-object v8, v7, v9

    .line 76
    .line 77
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->c:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, ""

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/4 v7, 0x2

    .line 123
    const/4 v8, -0x1

    .line 124
    sparse-switch v5, :sswitch_data_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :sswitch_0
    const-string v5, "will_expire"

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const/4 v8, 0x3

    .line 138
    goto :goto_1

    .line 139
    :sswitch_1
    const-string v5, "used"

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_2

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const/4 v8, 0x2

    .line 149
    goto :goto_1

    .line 150
    :sswitch_2
    const-string v5, "un_use"

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_3

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    const/4 v8, 0x1

    .line 160
    goto :goto_1

    .line 161
    :sswitch_3
    const-string v5, "expire"

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_4

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    const/4 v8, 0x0

    .line 171
    :goto_1
    const-string v4, "<font color=\'0xffb6b6\' >"

    .line 172
    .line 173
    const v5, 0x7f08139e

    .line 174
    .line 175
    .line 176
    const v10, 0x7f08139d

    .line 177
    .line 178
    .line 179
    const-string v11, "<font color=\'0xe1e1e1\' >"

    .line 180
    .line 181
    const v15, 0x7f080097

    .line 182
    .line 183
    .line 184
    const-string v12, "<\u000cont>"

    .line 185
    .line 186
    const v13, 0x7f12055e

    .line 187
    .line 188
    .line 189
    const/16 v14, 0x8

    .line 190
    .line 191
    packed-switch v8, :pswitch_data_0

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :pswitch_0
    iget-object v8, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object v8, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 202
    .line 203
    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v8, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 207
    .line 208
    const v11, 0x7f0813a8

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    iget-object v8, v2, Lcom/join/mgps/adapter/t4$a;->c:Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v11, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 217
    .line 218
    const v14, 0x7f120564

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    new-array v7, v7, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    aput-object v14, v7, v9

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNotice()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    aput-object v14, v7, v6

    .line 238
    .line 239
    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->g:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->i:Landroid/widget/RelativeLayout;

    .line 252
    .line 253
    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v2, Lcom/join/mgps/adapter/t4$a;->h:Landroid/widget/LinearLayout;

    .line 257
    .line 258
    invoke-virtual {v5, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    .line 260
    .line 261
    iget-object v5, v2, Lcom/join/mgps/adapter/t4$a;->b:Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {v5, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 264
    .line 265
    .line 266
    iget-object v2, v2, Lcom/join/mgps/adapter/t4$a;->d:Landroid/widget/TextView;

    .line 267
    .line 268
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    new-array v6, v6, [Ljava/lang/Object;

    .line 275
    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    aput-object v3, v6, v9

    .line 299
    .line 300
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :pswitch_1
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 314
    .line 315
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 324
    .line 325
    const v5, 0x7f0813a9

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    .line 330
    .line 331
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->c:Landroid/widget/TextView;

    .line 332
    .line 333
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 334
    .line 335
    const v7, 0x7f120563

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    new-array v7, v6, [Ljava/lang/Object;

    .line 343
    .line 344
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    aput-object v8, v7, v9

    .line 349
    .line 350
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->g:Landroid/widget/LinearLayout;

    .line 358
    .line 359
    const v5, 0x7f0813a1

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 363
    .line 364
    .line 365
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->i:Landroid/widget/RelativeLayout;

    .line 366
    .line 367
    const v5, 0x7f0813a2

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    .line 372
    .line 373
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->h:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    const v5, 0x7f080095

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    .line 380
    .line 381
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->b:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    .line 385
    .line 386
    iget-object v2, v2, Lcom/join/mgps/adapter/t4$a;->d:Landroid/widget/TextView;

    .line 387
    .line 388
    iget-object v4, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 389
    .line 390
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    new-array v5, v6, [Ljava/lang/Object;

    .line 395
    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    aput-object v3, v5, v9

    .line 419
    .line 420
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :pswitch_2
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 434
    .line 435
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 444
    .line 445
    const v8, 0x7f0813a6

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    .line 450
    .line 451
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->c:Landroid/widget/TextView;

    .line 452
    .line 453
    iget-object v8, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 454
    .line 455
    const v11, 0x7f120563

    .line 456
    .line 457
    .line 458
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    new-array v11, v6, [Ljava/lang/Object;

    .line 463
    .line 464
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v14

    .line 468
    aput-object v14, v11, v9

    .line 469
    .line 470
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    .line 476
    .line 477
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->g:Landroid/widget/LinearLayout;

    .line 478
    .line 479
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 480
    .line 481
    .line 482
    iget-object v7, v2, Lcom/join/mgps/adapter/t4$a;->i:Landroid/widget/RelativeLayout;

    .line 483
    .line 484
    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 485
    .line 486
    .line 487
    iget-object v5, v2, Lcom/join/mgps/adapter/t4$a;->h:Landroid/widget/LinearLayout;

    .line 488
    .line 489
    invoke-virtual {v5, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 490
    .line 491
    .line 492
    iget-object v5, v2, Lcom/join/mgps/adapter/t4$a;->b:Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-virtual {v5, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 495
    .line 496
    .line 497
    iget-object v2, v2, Lcom/join/mgps/adapter/t4$a;->d:Landroid/widget/TextView;

    .line 498
    .line 499
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 500
    .line 501
    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    new-array v6, v6, [Ljava/lang/Object;

    .line 506
    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    aput-object v3, v6, v9

    .line 530
    .line 531
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    .line 542
    goto :goto_2

    .line 543
    :pswitch_3
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->e:Landroid/widget/ImageView;

    .line 544
    .line 545
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    .line 547
    .line 548
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 549
    .line 550
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->f:Landroid/widget/ImageView;

    .line 554
    .line 555
    const v5, 0x7f0813a7

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    .line 560
    .line 561
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->c:Landroid/widget/TextView;

    .line 562
    .line 563
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 564
    .line 565
    const v7, 0x7f120563

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    new-array v7, v6, [Ljava/lang/Object;

    .line 573
    .line 574
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    aput-object v8, v7, v9

    .line 579
    .line 580
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    .line 586
    .line 587
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->g:Landroid/widget/LinearLayout;

    .line 588
    .line 589
    const v5, 0x7f0813a1

    .line 590
    .line 591
    .line 592
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 593
    .line 594
    .line 595
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->i:Landroid/widget/RelativeLayout;

    .line 596
    .line 597
    const v5, 0x7f0813a2

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 601
    .line 602
    .line 603
    iget-object v4, v2, Lcom/join/mgps/adapter/t4$a;->d:Landroid/widget/TextView;

    .line 604
    .line 605
    iget-object v5, v0, Lcom/join/mgps/adapter/t4;->c:Landroid/content/Context;

    .line 606
    .line 607
    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    new-array v6, v6, [Ljava/lang/Object;

    .line 612
    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    aput-object v3, v6, v9

    .line 636
    .line 637
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    iget-object v3, v2, Lcom/join/mgps/adapter/t4$a;->h:Landroid/widget/LinearLayout;

    .line 649
    .line 650
    const v4, 0x7f080095

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 654
    .line 655
    .line 656
    iget-object v2, v2, Lcom/join/mgps/adapter/t4$a;->b:Landroid/widget/TextView;

    .line 657
    .line 658
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 659
    .line 660
    .line 661
    :cond_5
    :goto_2
    return-object v1

    .line 662
    nop

    .line 663
    :sswitch_data_0
    .sparse-switch
        -0x4cd702e1 -> :sswitch_3
        -0x321df11f -> :sswitch_2
        0x36ebbd -> :sswitch_1
        0x1ce53a2c -> :sswitch_0
    .end sparse-switch

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
