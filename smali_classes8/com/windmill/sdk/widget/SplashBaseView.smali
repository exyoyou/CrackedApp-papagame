.class public abstract Lcom/windmill/sdk/widget/SplashBaseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/widget/TextView;

.field public adBgShade:Landroid/view/View;

.field public adCtaGd:Landroid/view/View;

.field public adCtaText:Landroid/widget/TextView;

.field public adDescText:Landroid/widget/TextView;

.field public adIcon:Landroid/widget/ImageView;

.field public adLogoImage:Landroid/widget/ImageView;

.field public adMediaLayout:Landroid/widget/FrameLayout;

.field public adPostImage:Landroid/widget/ImageView;

.field public adPrivacyLayout:Landroid/widget/LinearLayout;

.field public adSkipLayout:Landroid/widget/LinearLayout;

.field public adSkipShade:Landroid/view/View;

.field public adSkipText:Landroid/widget/TextView;

.field public adSoundSkipLayout:Landroid/widget/LinearLayout;

.field public adTittleText:Landroid/widget/TextView;

.field public adView:Landroid/view/View;

.field private b:Lcom/windmill/sdk/widget/d;

.field public baseControl:Lcom/windmill/sdk/widget/a;

.field public blurImage:Landroid/widget/ImageView;

.field private c:Lcom/windmill/sdk/widget/c;

.field private d:Lcom/windmill/sdk/widget/CircleWebView;

.field private e:Landroid/widget/ImageView;

.field public iconTextLayout:Landroid/widget/LinearLayout;

.field public nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

.field public ranDom:I

.field public soundImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height",
            "baseControl"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    iput-object p4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 13
    .line 14
    invoke-virtual {p4}, Lcom/windmill/sdk/widget/a;->getNativeAdData()Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 19
    .line 20
    new-instance p2, Ljava/util/Random;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 p3, 0x64

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 p3, 0x1

    .line 32
    add-int/2addr p2, p3

    .line 33
    iput p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->ranDom:I

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "SplashBaseView: ranDom "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->ranDom:I

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string v0, "SplashBaseView"

    .line 55
    .line 56
    invoke-static {v0, p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/widget/SplashBaseView;->getLayoutId(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNativeAdContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/4 v0, -0x1

    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 88
    .line 89
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 99
    .line 100
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 109
    .line 110
    const-string v0, "tobid_splash_blur_image"

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Landroid/widget/ImageView;

    .line 121
    .line 122
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->blurImage:Landroid/widget/ImageView;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 125
    .line 126
    const-string v0, "tobid_splash_sound_and_skip_layout"

    .line 127
    .line 128
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 141
    .line 142
    const-string v0, "tobid_splash_skip_ll"

    .line 143
    .line 144
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipLayout:Landroid/widget/LinearLayout;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 157
    .line 158
    const-string v0, "tobid_splash_skip_shade"

    .line 159
    .line 160
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipShade:Landroid/view/View;

    .line 169
    .line 170
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 171
    .line 172
    const-string v0, "tobid_splash_skip_text"

    .line 173
    .line 174
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Landroid/widget/TextView;

    .line 183
    .line 184
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 187
    .line 188
    const-string v0, "tobid_splash_sound_image"

    .line 189
    .line 190
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/widget/ImageView;

    .line 199
    .line 200
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    .line 201
    .line 202
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 203
    .line 204
    const-string v0, "tobid_splash_post_media"

    .line 205
    .line 206
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    check-cast p2, Landroid/widget/FrameLayout;

    .line 215
    .line 216
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 217
    .line 218
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 219
    .line 220
    const-string v0, "tobid_splash_post_image"

    .line 221
    .line 222
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Landroid/widget/ImageView;

    .line 231
    .line 232
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 233
    .line 234
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 235
    .line 236
    const-string v0, "tobid_splash_bg_shade"

    .line 237
    .line 238
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adBgShade:Landroid/view/View;

    .line 247
    .line 248
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 249
    .line 250
    const-string v0, "tobid_splash_icon_text_layout"

    .line 251
    .line 252
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Landroid/widget/LinearLayout;

    .line 261
    .line 262
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    .line 263
    .line 264
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 265
    .line 266
    const-string v0, "tobid_splash_icon_image"

    .line 267
    .line 268
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    check-cast p2, Landroid/widget/ImageView;

    .line 277
    .line 278
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adIcon:Landroid/widget/ImageView;

    .line 279
    .line 280
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 281
    .line 282
    const-string v0, "tobid_splash_tittle_tv"

    .line 283
    .line 284
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    check-cast p2, Landroid/widget/TextView;

    .line 293
    .line 294
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adTittleText:Landroid/widget/TextView;

    .line 295
    .line 296
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 297
    .line 298
    const-string v0, "tobid_splash_desc_tv"

    .line 299
    .line 300
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    check-cast p2, Landroid/widget/TextView;

    .line 309
    .line 310
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adDescText:Landroid/widget/TextView;

    .line 311
    .line 312
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 313
    .line 314
    const-string v0, "tobid_splash_cta_bt"

    .line 315
    .line 316
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    check-cast p2, Landroid/widget/TextView;

    .line 325
    .line 326
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

    .line 327
    .line 328
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 329
    .line 330
    const-string v0, "tobid_splash_cta_bt_gd"

    .line 331
    .line 332
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaGd:Landroid/view/View;

    .line 341
    .line 342
    invoke-virtual {p4}, Lcom/windmill/sdk/widget/a;->getNativeBtnStyle()I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-ne p2, p3, :cond_1

    .line 347
    .line 348
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaGd:Landroid/view/View;

    .line 349
    .line 350
    const/4 p3, 0x0

    .line 351
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    :cond_1
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 355
    .line 356
    const-string p3, "tobid_splash_privacy_ll"

    .line 357
    .line 358
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result p3

    .line 362
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    check-cast p2, Landroid/widget/LinearLayout;

    .line 367
    .line 368
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPrivacyLayout:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 371
    .line 372
    const-string p3, "tobid_splash_logo_image"

    .line 373
    .line 374
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result p3

    .line 378
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    check-cast p2, Landroid/widget/ImageView;

    .line 383
    .line 384
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    .line 385
    .line 386
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 387
    .line 388
    const-string p3, "tobid_splash_ad_text"

    .line 389
    .line 390
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Landroid/widget/TextView;

    .line 399
    .line 400
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->a:Landroid/widget/TextView;

    .line 401
    .line 402
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipLayout:Landroid/widget/LinearLayout;

    .line 403
    .line 404
    new-instance p2, Lcom/windmill/sdk/widget/SplashBaseView$1;

    .line 405
    .line 406
    invoke-direct {p2, p0, p4}, Lcom/windmill/sdk/widget/SplashBaseView$1;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/a;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adBgShade:Landroid/view/View;

    .line 413
    .line 414
    new-instance p2, Lcom/windmill/sdk/widget/SplashBaseView$2;

    .line 415
    .line 416
    invoke-direct {p2, p0}, Lcom/windmill/sdk/widget/SplashBaseView$2;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    .line 421
    .line 422
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->b()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->bindListener()V

    .line 426
    .line 427
    .line 428
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/CircleWebView;)Lcom/windmill/sdk/widget/CircleWebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->d:Lcom/windmill/sdk/widget/CircleWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/c;)Lcom/windmill/sdk/widget/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->c:Lcom/windmill/sdk/widget/c;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/d;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getMistake_click_rate()I

    move-result v0

    iget v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->ranDom:I

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$3;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$3;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipShade:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPrivacyLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/16 v3, 0x9

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getInteractionType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->c()V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPrivacyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->c()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPrivacyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/widget/SplashBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->a()V

    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->c:Lcom/windmill/sdk/widget/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPrivacyLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$5;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$5;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->d:Lcom/windmill/sdk/widget/CircleWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashBaseView;->getCloseView()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lcom/windmill/sdk/widget/SplashBaseView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private getCloseView()Landroid/widget/ImageView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "tobid_image_ad_close_no_bg"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 37
    .line 38
    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$6;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$6;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->e:Landroid/widget/ImageView;

    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public bindListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$7;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public dp2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dp"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method

.method public abstract getLayoutId(Landroid/content/Context;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract renderView()V
.end method

.method public startCountDown()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->d()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/windmill/sdk/widget/d;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/widget/a;->getNativeTotalTime(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/lit16 v1, v1, 0x3e8

    .line 23
    .line 24
    int-to-long v1, v1

    .line 25
    const-wide/16 v3, 0x1f4

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/widget/d;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    .line 31
    .line 32
    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$4;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$4;-><init>(Lcom/windmill/sdk/widget/SplashBaseView;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d$a;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->a()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->b:Lcom/windmill/sdk/widget/d;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->b()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
