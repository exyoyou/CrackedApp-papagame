.class public Lcom/windmill/sdk/widget/InterstitialView_4102001;
.super Lcom/windmill/sdk/widget/InterstitialBaseView;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialView_4102001;->f()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->g()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->i()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialView_4102001;->m()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "tobid_layout_interstitial_model_4102001"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public f()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "--------RenderView "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 28
    .line 29
    if-eqz v0, :cond_e

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 54
    .line 55
    const-string v1, "\u70b9\u5f00\u6709\u60ca\u559c"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 85
    .line 86
    const-string v1, "\u542c\u8bf4\u70b9\u5f00\u5b83\u7684\u4eba\u90fd\u4ea4\u4e86\u597d\u8fd0!"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCTAText()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCTAText()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 116
    .line 117
    const-string v1, "\u83b7\u53d6\u8be6\u60c5"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v1, 0x0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 146
    .line 147
    const/4 v2, 0x1

    .line 148
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/widget/TbCircleImageView;->setShapeType(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, "----iconUrl "

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    new-instance v4, Lcom/windmill/sdk/widget/InterstitialView_4102001$1;

    .line 220
    .line 221
    invoke-direct {v4, p0}, Lcom/windmill/sdk/widget/InterstitialView_4102001$1;-><init>(Lcom/windmill/sdk/widget/InterstitialView_4102001;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v3, v4}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const/4 v3, 0x0

    .line 240
    invoke-static {p0, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    .line 246
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 253
    .line 254
    const/high16 v3, 0x41200000    # 10.0f

    .line 255
    .line 256
    invoke-static {p0, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 261
    .line 262
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v4, "-------getNativeEnableFullScreenClick "

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v4, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/windmill/sdk/widget/a;->getNativeEnableFullScreenClick()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 299
    .line 300
    invoke-virtual {v3}, Lcom/windmill/sdk/widget/a;->getNativeEnableFullScreenClick()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-ne v3, v2, :cond_5

    .line 305
    .line 306
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 307
    .line 308
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_5
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 315
    .line 316
    iget-object v4, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 317
    .line 318
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v4, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 322
    .line 323
    new-instance v5, Lcom/windmill/sdk/widget/InterstitialView_4102001$2;

    .line 324
    .line 325
    invoke-direct {v5, p0}, Lcom/windmill/sdk/widget/InterstitialView_4102001$2;-><init>(Lcom/windmill/sdk/widget/InterstitialView_4102001;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .line 335
    .line 336
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/windmill/sdk/widget/a;->getMistake_click_rate()I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    iget v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->y:I

    .line 348
    .line 349
    const/16 v7, 0x8

    .line 350
    .line 351
    if-lt v5, v6, :cond_6

    .line 352
    .line 353
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 354
    .line 355
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 359
    .line 360
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_6
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 365
    .line 366
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    :goto_5
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 370
    .line 371
    invoke-virtual {v5}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    sget-object v6, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 376
    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v9, "-------------patternType:"

    .line 383
    .line 384
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    invoke-static {v6, v8}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v6, Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .line 401
    .line 402
    if-eq v5, v2, :cond_8

    .line 403
    .line 404
    const/4 v2, 0x2

    .line 405
    if-eq v5, v2, :cond_8

    .line 406
    .line 407
    const/4 v2, 0x3

    .line 408
    if-ne v5, v2, :cond_7

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_7
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 412
    .line 413
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 417
    .line 418
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_8
    :goto_6
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 423
    .line 424
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 428
    .line 429
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 433
    .line 434
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-static {v2}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightInPx(Landroid/content/Context;)I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 446
    .line 447
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 452
    .line 453
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 454
    .line 455
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    mul-int/lit8 v9, v2, 0x9

    .line 460
    .line 461
    div-int/lit8 v9, v9, 0x10

    .line 462
    .line 463
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 464
    .line 465
    :try_start_0
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 466
    .line 467
    invoke-virtual {v8}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    if-nez v8, :cond_a

    .line 476
    .line 477
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 478
    .line 479
    invoke-virtual {v8}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, Lcom/windmill/sdk/natives/WMImage;

    .line 488
    .line 489
    invoke-virtual {v8}, Lcom/windmill/sdk/natives/WMImage;->getWidth()I

    .line 490
    .line 491
    .line 492
    move-result v9

    .line 493
    mul-int v2, v2, v9

    .line 494
    .line 495
    invoke-virtual {v8}, Lcom/windmill/sdk/natives/WMImage;->getHeight()I

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    div-int/2addr v2, v8

    .line 500
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-static {v8}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthPx(Landroid/content/Context;)F

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    int-to-float v9, v2

    .line 509
    cmpg-float v8, v8, v9

    .line 510
    .line 511
    if-gez v8, :cond_9

    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-static {v2}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthPx(Landroid/content/Context;)F

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    float-to-int v2, v2

    .line 522
    :cond_9
    const/16 v8, 0x3c

    .line 523
    .line 524
    if-le v2, v8, :cond_a

    .line 525
    .line 526
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 527
    .line 528
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .line 534
    goto :goto_7

    .line 535
    :catch_0
    nop

    .line 536
    :cond_a
    :goto_7
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 537
    .line 538
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    const/16 v8, 0x16

    .line 543
    .line 544
    if-ne v2, v8, :cond_b

    .line 545
    .line 546
    new-instance v2, Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 547
    .line 548
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    .line 549
    .line 550
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    invoke-direct {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;-><init>(I)V

    .line 555
    .line 556
    .line 557
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 558
    .line 559
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->titleId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 568
    .line 569
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->descriptionTextId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 578
    .line 579
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 580
    .line 581
    .line 582
    move-result v8

    .line 583
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->callToActionId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 588
    .line 589
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->iconImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 598
    .line 599
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mainImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 608
    .line 609
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 610
    .line 611
    .line 612
    move-result v8

    .line 613
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mediaViewIdId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 618
    .line 619
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage1Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 628
    .line 629
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 630
    .line 631
    .line 632
    move-result v8

    .line 633
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage2Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 638
    .line 639
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    invoke-virtual {v2, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage3Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->build()Lcom/windmill/sdk/natives/WMViewBinder;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 652
    .line 653
    invoke-virtual {v8, v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->registerViewBidder(Lcom/windmill/sdk/natives/WMViewBinder;)V

    .line 654
    .line 655
    .line 656
    :cond_b
    invoke-virtual {p0, v3, v0, v4}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    .line 657
    .line 658
    .line 659
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-nez v0, :cond_c

    .line 664
    .line 665
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 666
    .line 667
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-virtual {v0, v2, v6, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 672
    .line 673
    .line 674
    goto :goto_8

    .line 675
    :cond_c
    const/4 v0, 0x4

    .line 676
    if-ne v5, v0, :cond_d

    .line 677
    .line 678
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 679
    .line 680
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    .line 682
    .line 683
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 684
    .line 685
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    .line 687
    .line 688
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 689
    .line 690
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 695
    .line 696
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 697
    .line 698
    .line 699
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->c()V

    .line 700
    .line 701
    .line 702
    :cond_e
    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xf06

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Lcom/windmill/sdk/R$style;->tobid_page:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    invoke-super {p0, p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialView_4102001;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "------interstitialView_4012003--onCreate "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget v0, Lcom/windmill/sdk/R$style;->tobid_page:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method
