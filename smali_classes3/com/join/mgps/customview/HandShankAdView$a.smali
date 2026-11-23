.class Lcom/join/mgps/customview/HandShankAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/HandShankAdBean;

.field final synthetic c:Lcom/join/mgps/customview/HandShankAdView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/HandShankAdBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 10
    .line 11
    const v3, 0x7f0a0a13

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    .line 20
    const/high16 v3, 0x41000000    # 8.0f

    .line 21
    .line 22
    invoke-static {v1, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x1

    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lez v4, :cond_1

    .line 49
    .line 50
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getTop_banner_ad()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-ne v8, v5, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const v8, 0x7f08018d

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {v2, v8, v9}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 85
    .line 86
    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-lez v4, :cond_3

    .line 120
    .line 121
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const/high16 v8, 0x42400000    # 48.0f

    .line 132
    .line 133
    invoke-static {v1, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    const/high16 v9, 0x40e00000    # 7.0f

    .line 138
    .line 139
    invoke-static {v1, v9}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    const/4 v10, 0x0

    .line 144
    :goto_1
    if-ge v10, v4, :cond_4

    .line 145
    .line 146
    const/4 v11, 0x5

    .line 147
    if-ge v10, v11, :cond_4

    .line 148
    .line 149
    iget-object v11, v0, Lcom/join/mgps/customview/HandShankAdView$a;->b:Lcom/join/mgps/dto/HandShankAdBean;

    .line 150
    .line 151
    invoke-virtual {v11}, Lcom/join/mgps/dto/HandShankAdBean;->getFast_entrance_ad()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    check-cast v11, Lcom/join/mgps/dto/BannerBean;

    .line 160
    .line 161
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-nez v12, :cond_2

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    new-instance v12, Landroid/widget/LinearLayout;

    .line 169
    .line 170
    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    .line 175
    const/4 v14, -0x1

    .line 176
    const/high16 v15, 0x3f800000    # 1.0f

    .line 177
    .line 178
    invoke-direct {v13, v7, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    const/16 v13, 0x11

    .line 185
    .line 186
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    .line 191
    .line 192
    new-instance v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    .line 194
    invoke-direct {v13, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    .line 199
    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v14, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 209
    .line 210
    invoke-static {v14}, Lcom/join/mgps/customview/HandShankAdView;->a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    const v14, 0x7f080caf

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    invoke-static {v13, v14, v15}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v14, Landroid/widget/TextView;

    .line 228
    .line 229
    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    .line 234
    const/4 v5, -0x2

    .line 235
    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 239
    .line 240
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    int-to-float v5, v9

    .line 244
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    .line 246
    .line 247
    const-string v5, "#585858"

    .line 248
    .line 249
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11}, Lcom/join/mgps/dto/BannerBean;->getSub_title()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    iget-object v5, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 270
    .line 271
    invoke-static {v5}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 279
    .line 280
    const/4 v5, 0x1

    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :cond_3
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 284
    .line 285
    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    :cond_4
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/join/mgps/customview/HandShankAdView;->f()V

    .line 295
    .line 296
    .line 297
    iget-object v4, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 298
    .line 299
    invoke-static {v4}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    const/high16 v5, 0x43020000    # 130.0f

    .line 312
    .line 313
    if-ne v2, v6, :cond_6

    .line 314
    .line 315
    if-gtz v4, :cond_5

    .line 316
    .line 317
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 318
    .line 319
    invoke-static {v1}, Lcom/join/mgps/customview/HandShankAdView;->c(Lcom/join/mgps/customview/HandShankAdView;)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_5
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 324
    .line 325
    invoke-static {v2}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    .line 335
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 336
    .line 337
    iget-object v3, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 338
    .line 339
    invoke-static {v3}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v1, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 351
    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    .line 358
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 359
    .line 360
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 361
    .line 362
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_6
    if-gtz v4, :cond_7

    .line 367
    .line 368
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 369
    .line 370
    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    iget-object v2, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 378
    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 384
    .line 385
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 386
    .line 387
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lcom/join/mgps/customview/HandShankAdView$a;->c:Lcom/join/mgps/customview/HandShankAdView;

    .line 393
    .line 394
    invoke-static {v1}, Lcom/join/mgps/customview/HandShankAdView;->b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    :cond_7
    :goto_3
    return-void
.end method
