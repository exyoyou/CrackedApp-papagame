.class public abstract Lcom/windmill/sdk/widget/BannerBaseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/widget/TextView;

.field public adBgShade:Landroid/view/View;

.field public adCloseImage:Landroid/widget/ImageView;

.field public adCtaText:Landroid/widget/TextView;

.field public adDescText:Landroid/widget/TextView;

.field public adLogoImage:Landroid/widget/ImageView;

.field public adMediaLayout:Landroid/widget/FrameLayout;

.field public adPostGroup:Landroid/view/ViewGroup;

.field public adPostImage:Landroid/widget/ImageView;

.field public adTittleText:Landroid/widget/TextView;

.field public adView:Landroid/view/View;

.field public baseControl:Lcom/windmill/sdk/widget/a;

.field public blurImage:Landroid/widget/ImageView;

.field public clickLayout:Landroid/view/ViewGroup;

.field public context:Landroid/content/Context;

.field public llAdGroup:Landroid/view/ViewGroup;

.field public nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/windmill/sdk/widget/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "baseControl"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/windmill/sdk/widget/a;->getNativeAdData()Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    iput v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->screenWidth:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .line 36
    iput v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->screenHeight:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/widget/BannerBaseView;->getLayoutId(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNativeAdContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, -0x2

    .line 56
    const/4 v2, -0x1

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 71
    .line 72
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v4, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 82
    .line 83
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 92
    .line 93
    const-string v1, "tobid_banner_click_group"

    .line 94
    .line 95
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->clickLayout:Landroid/view/ViewGroup;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 108
    .line 109
    const-string v1, "tobid_banner_post_group"

    .line 110
    .line 111
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 124
    .line 125
    const-string v1, "tobid_banner_bg_shade"

    .line 126
    .line 127
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adBgShade:Landroid/view/View;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 138
    .line 139
    const-string v1, "tobid_banner_ll_ad_group"

    .line 140
    .line 141
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->llAdGroup:Landroid/view/ViewGroup;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 154
    .line 155
    const-string v1, "tobid_banner_blur_image"

    .line 156
    .line 157
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/ImageView;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->blurImage:Landroid/widget/ImageView;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 170
    .line 171
    const-string v1, "tobid_banner_post_media"

    .line 172
    .line 173
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroid/widget/FrameLayout;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 186
    .line 187
    const-string v1, "tobid_banner_post_image"

    .line 188
    .line 189
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 202
    .line 203
    const-string v1, "tobid_banner_logo_image"

    .line 204
    .line 205
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/ImageView;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 218
    .line 219
    const-string v1, "tobid_banner_ad_text"

    .line 220
    .line 221
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroid/widget/TextView;

    .line 230
    .line 231
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->a:Landroid/widget/TextView;

    .line 232
    .line 233
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 234
    .line 235
    const-string v1, "tobid_banner_tittle_tv"

    .line 236
    .line 237
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Landroid/widget/TextView;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adTittleText:Landroid/widget/TextView;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 250
    .line 251
    const-string v1, "tobid_banner_desc_tv"

    .line 252
    .line 253
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/TextView;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    .line 264
    .line 265
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 266
    .line 267
    const-string v1, "tobid_banner_cta_bt"

    .line 268
    .line 269
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/TextView;

    .line 278
    .line 279
    iput-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 280
    .line 281
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 282
    .line 283
    const-string v1, "tobid_banner_close_image"

    .line 284
    .line 285
    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Landroid/widget/ImageView;

    .line 294
    .line 295
    iput-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCloseImage:Landroid/widget/ImageView;

    .line 296
    .line 297
    new-instance v0, Lcom/windmill/sdk/widget/BannerBaseView$1;

    .line 298
    .line 299
    invoke-direct {v0, p0, p2}, Lcom/windmill/sdk/widget/BannerBaseView$1;-><init>(Lcom/windmill/sdk/widget/BannerBaseView;Lcom/windmill/sdk/widget/a;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adBgShade:Landroid/view/View;

    .line 306
    .line 307
    new-instance p2, Lcom/windmill/sdk/widget/BannerBaseView$2;

    .line 308
    .line 309
    invoke-direct {p2, p0}, Lcom/windmill/sdk/widget/BannerBaseView$2;-><init>(Lcom/windmill/sdk/widget/BannerBaseView;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/BannerBaseView;->bindListener()V

    .line 316
    .line 317
    .line 318
    return-void
.end method


# virtual methods
.method public bindListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/windmill/sdk/widget/BannerBaseView$3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/BannerBaseView$3;-><init>(Lcom/windmill/sdk/widget/BannerBaseView;)V

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
