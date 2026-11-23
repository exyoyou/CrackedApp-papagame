.class public Lcom/windmill/sdk/widget/InterstitialView_4012002;
.super Lcom/windmill/sdk/widget/InterstitialBaseView;
.source "SourceFile"


# instance fields
.field private D:I

.field private E:I


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

.method private m()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->u:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x64

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x50

    .line 6
    .line 7
    iput v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012002;->D:I

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    iput v0, p0, Lcom/windmill/sdk/widget/InterstitialView_4012002;->E:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget v1, p0, Lcom/windmill/sdk/widget/InterstitialView_4012002;->D:I

    .line 29
    .line 30
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    iget v1, p0, Lcom/windmill/sdk/widget/InterstitialView_4012002;->E:I

    .line 33
    .line 34
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialView_4012002;->f()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->g()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->i()V

    .line 48
    .line 49
    .line 50
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
    const-string v0, "tobid_layout_interstitial_model_4012002"

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v1, "\u70b9\u5f00\u6709\u60ca\u559c"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v1, "\u542c\u8bf4\u70b9\u5f00\u5b83\u7684\u4eba\u90fd\u4ea4\u4e86\u597d\u8fd0!"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCTAText()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCTAText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 90
    .line 91
    const-string v1, "\u83b7\u53d6\u8be6\u60c5"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/4 v1, 0x0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v3, Lcom/windmill/sdk/widget/InterstitialView_4012002$1;

    .line 151
    .line 152
    invoke-direct {v3, p0}, Lcom/windmill/sdk/widget/InterstitialView_4012002$1;-><init>(Lcom/windmill/sdk/widget/InterstitialView_4012002;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/windmill/sdk/widget/a;->getNativeEnableFullScreenClick()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const/4 v3, 0x1

    .line 175
    const/16 v4, 0x8

    .line 176
    .line 177
    if-ne v2, v3, :cond_5

    .line 178
    .line 179
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 185
    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 198
    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 203
    .line 204
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 205
    .line 206
    new-instance v6, Lcom/windmill/sdk/widget/InterstitialView_4012002$2;

    .line 207
    .line 208
    invoke-direct {v6, p0}, Lcom/windmill/sdk/widget/InterstitialView_4012002$2;-><init>(Lcom/windmill/sdk/widget/InterstitialView_4012002;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/windmill/sdk/widget/a;->getMistake_click_rate()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    iget v7, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->y:I

    .line 231
    .line 232
    if-lt v6, v7, :cond_6

    .line 233
    .line 234
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 235
    .line 236
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 240
    .line 241
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_6
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 246
    .line 247
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    :goto_4
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    sget-object v7, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 257
    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v9, "-------------patternType:"

    .line 264
    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-static {v7, v8}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v7, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    if-eq v6, v3, :cond_8

    .line 284
    .line 285
    const/4 v3, 0x2

    .line 286
    if-eq v6, v3, :cond_8

    .line 287
    .line 288
    const/4 v3, 0x3

    .line 289
    if-ne v6, v3, :cond_7

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_7
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 293
    .line 294
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 298
    .line 299
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_8
    :goto_5
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 304
    .line 305
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 314
    .line 315
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    :goto_6
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 324
    .line 325
    invoke-virtual {v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    const/16 v8, 0x16

    .line 330
    .line 331
    if-ne v3, v8, :cond_9

    .line 332
    .line 333
    new-instance v3, Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 334
    .line 335
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    .line 336
    .line 337
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    invoke-direct {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;-><init>(I)V

    .line 342
    .line 343
    .line 344
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->titleId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 355
    .line 356
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->descriptionTextId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 365
    .line 366
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->callToActionId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 375
    .line 376
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->iconImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 385
    .line 386
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mainImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 395
    .line 396
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mediaViewIdId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage1Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 415
    .line 416
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage2Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 425
    .line 426
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    invoke-virtual {v3, v8}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage3Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v3}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->build()Lcom/windmill/sdk/natives/WMViewBinder;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 439
    .line 440
    invoke-virtual {v8, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->registerViewBidder(Lcom/windmill/sdk/natives/WMViewBinder;)V

    .line 441
    .line 442
    .line 443
    :cond_9
    invoke-virtual {p0, v2, v0, v5}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    .line 444
    .line 445
    .line 446
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_a

    .line 451
    .line 452
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 453
    .line 454
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v0, v2, v7, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 459
    .line 460
    .line 461
    goto :goto_7

    .line 462
    :cond_a
    const/4 v0, 0x4

    .line 463
    if-ne v6, v0, :cond_b

    .line 464
    .line 465
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 466
    .line 467
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 482
    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 484
    .line 485
    .line 486
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->c()V

    .line 487
    .line 488
    .line 489
    :cond_c
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
    invoke-super {p0, p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialView_4012002;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "------interstitialView_4012002--onCreate "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
