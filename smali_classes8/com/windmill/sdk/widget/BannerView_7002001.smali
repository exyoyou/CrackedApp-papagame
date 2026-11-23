.class public Lcom/windmill/sdk/widget/BannerView_7002001;
.super Lcom/windmill/sdk/widget/BannerBaseView;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V
    .locals 1
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
    invoke-direct {p0, p1, p4}, Lcom/windmill/sdk/widget/BannerBaseView;-><init>(Landroid/content/Context;Lcom/windmill/sdk/widget/a;)V

    .line 2
    .line 3
    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "--------------BannerView_7002001-------------"

    .line 10
    .line 11
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ":"

    .line 18
    .line 19
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-static {p4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-lez p2, :cond_0

    .line 33
    .line 34
    int-to-float p2, p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/widget/BannerBaseView;->dp2px(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->b:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget p2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->screenWidth:I

    .line 43
    .line 44
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->b:I

    .line 45
    .line 46
    :goto_0
    if-lez p3, :cond_1

    .line 47
    .line 48
    int-to-float p2, p3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/widget/BannerBaseView;->dp2px(Landroid/content/Context;F)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget p2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->screenWidth:I

    .line 57
    .line 58
    mul-int/lit8 p2, p2, 0x32

    .line 59
    .line 60
    div-int/lit16 p2, p2, 0x140

    .line 61
    .line 62
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    .line 63
    .line 64
    :goto_1
    iget p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->b:I

    .line 65
    .line 66
    const/high16 p4, 0x41a00000    # 20.0f

    .line 67
    .line 68
    invoke-virtual {p0, p1, p4}, Lcom/windmill/sdk/widget/BannerBaseView;->dp2px(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sub-int/2addr p2, p1

    .line 73
    div-int/lit8 p2, p2, 0x4

    .line 74
    .line 75
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->d:I

    .line 76
    .line 77
    mul-int/lit8 p2, p2, 0x9

    .line 78
    .line 79
    div-int/lit8 p2, p2, 0x10

    .line 80
    .line 81
    iput p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->e:I

    .line 82
    .line 83
    if-lez p3, :cond_2

    .line 84
    .line 85
    iget p1, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    .line 86
    .line 87
    if-le p2, p1, :cond_2

    .line 88
    .line 89
    int-to-float p1, p1

    .line 90
    int-to-float p2, p2

    .line 91
    div-float/2addr p1, p2

    .line 92
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/BannerView_7002001;->a(F)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->clickLayout:Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->b:I

    .line 104
    .line 105
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    .line 107
    iget p2, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    .line 108
    .line 109
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    .line 111
    iget-object p2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->clickLayout:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object p2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    iget p1, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->d:I

    .line 125
    .line 126
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    .line 128
    iget p1, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->e:I

    .line 129
    .line 130
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    .line 132
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/view/View;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iget p4, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->d:I

    .line 152
    .line 153
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    .line 155
    iget p4, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->e:I

    .line 156
    .line 157
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-direct {p0}, Lcom/windmill/sdk/widget/BannerView_7002001;->a()V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private a()V
    .locals 4

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 26
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getAutoPlayMuted()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    if-eq v0, v3, :cond_e

    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    const/16 v3, 0x10

    if-eq v0, v3, :cond_c

    const/16 v3, 0x13

    if-eq v0, v3, :cond_b

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_a

    const/16 v2, 0x16

    if-eq v0, v2, :cond_d

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_8

    const/16 v2, 0x29

    if-eq v0, v2, :cond_7

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e6

    if-eq v0, v2, :cond_4

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_3

    .line 31
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_sg"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_adx"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_bayes_fff"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_octopus_fff"

    .line 40
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 41
    :cond_8
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_tap"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 42
    :cond_9
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_qm_fff"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_bd"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 44
    :cond_b
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_ks"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 45
    :cond_c
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_ylh"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 46
    :cond_d
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_tt"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 47
    :cond_e
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const-string v2, "tobid_image_ad_logo_mtg"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_2
    return-void
.end method

.method private a(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->c:I

    :goto_0
    iput v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->e:I

    mul-int/lit8 v0, v0, 0x10

    .line 4
    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/windmill/sdk/widget/BannerView_7002001;->d:I

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->llAdGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget-object v3, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    mul-float v4, p1, v2

    invoke-static {v3, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->llAdGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const/high16 v3, 0x42700000    # 60.0f

    mul-float v3, v3, p1

    invoke-static {v1, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float v3, v3, p1

    invoke-static {v1, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCloseImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/windmill/sdk/widget/e;

    invoke-direct {v3, p0}, Lcom/windmill/sdk/widget/e;-><init>(Lcom/windmill/sdk/widget/BannerView_7002001;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/windmill/sdk/widget/f;

    invoke-direct {v3, p0, p1}, Lcom/windmill/sdk/widget/f;-><init>(Lcom/windmill/sdk/widget/BannerView_7002001;F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adTittleText:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 22
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    iget-object v3, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    mul-float p1, p1, v2

    invoke-static {v3, p1}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/widget/BannerView_7002001;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/BannerView_7002001;->b(F)V

    return-void
.end method

.method private synthetic b()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCloseImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCloseImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 9
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 10
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1
    add-int/2addr v2, v4

    add-int/2addr v2, v5

    .line 11
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private synthetic b(F)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    iget-object p1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/windmill/sdk/widget/BannerView_7002001;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/BannerView_7002001;->b()V

    return-void
.end method


# virtual methods
.method public getLayoutId(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "tobid_layout_banner_model_7002001"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public renderView()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adTittleText:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adTittleText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 90
    .line 91
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Lcom/windmill/sdk/widget/BannerView_7002001$1;

    .line 144
    .line 145
    invoke-direct {v3, p0}, Lcom/windmill/sdk/widget/BannerView_7002001$1;-><init>(Lcom/windmill/sdk/widget/BannerView_7002001;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getNativeEnableFullScreenClick()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v2, 0x1

    .line 168
    const/16 v3, 0x8

    .line 169
    .line 170
    if-ne v0, v2, :cond_5

    .line 171
    .line 172
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adBgShade:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->clickLayout:Landroid/view/ViewGroup;

    .line 178
    .line 179
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->clickLayout:Landroid/view/ViewGroup;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adBgShade:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 191
    .line 192
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostGroup:Landroid/view/ViewGroup;

    .line 196
    .line 197
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adBgShade:Landroid/view/View;

    .line 198
    .line 199
    new-instance v5, Lcom/windmill/sdk/widget/BannerView_7002001$2;

    .line 200
    .line 201
    invoke-direct {v5, p0}, Lcom/windmill/sdk/widget/BannerView_7002001$2;-><init>(Lcom/windmill/sdk/widget/BannerView_7002001;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :goto_3
    move-object v6, v0

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    if-eq v0, v2, :cond_7

    .line 230
    .line 231
    const/4 v2, 0x2

    .line 232
    if-eq v0, v2, :cond_7

    .line 233
    .line 234
    const/4 v2, 0x3

    .line 235
    if-ne v0, v2, :cond_6

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 244
    .line 245
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 265
    .line 266
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :goto_5
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    const/16 v4, 0x16

    .line 276
    .line 277
    if-ne v2, v4, :cond_8

    .line 278
    .line 279
    new-instance v2, Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 280
    .line 281
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adView:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-direct {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;-><init>(I)V

    .line 288
    .line 289
    .line 290
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adTittleText:Landroid/widget/TextView;

    .line 291
    .line 292
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->titleId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adDescText:Landroid/widget/TextView;

    .line 301
    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->descriptionTextId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adCtaText:Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->callToActionId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 321
    .line 322
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mainImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 331
    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mediaViewIdId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage1Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 351
    .line 352
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage2Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage3Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->build()Lcom/windmill/sdk/natives/WMViewBinder;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 375
    .line 376
    invoke-virtual {v4, v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->registerViewBidder(Lcom/windmill/sdk/natives/WMViewBinder;)V

    .line 377
    .line 378
    .line 379
    :cond_8
    iget-object v4, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 380
    .line 381
    iget-object v5, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 382
    .line 383
    const/4 v9, 0x0

    .line 384
    invoke-virtual/range {v4 .. v9}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-nez v2, :cond_9

    .line 392
    .line 393
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 394
    .line 395
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 396
    .line 397
    invoke-virtual {v0, v2, v10, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_9
    const/4 v2, 0x4

    .line 402
    if-ne v0, v2, :cond_b

    .line 403
    .line 404
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 415
    .line 416
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    const/16 v2, 0x2a

    .line 421
    .line 422
    if-ne v0, v2, :cond_a

    .line 423
    .line 424
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 425
    .line 426
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const/16 v2, 0xc8

    .line 431
    .line 432
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    .line 434
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const/16 v2, 0x12c

    .line 441
    .line 442
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 443
    .line 444
    :cond_a
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 445
    .line 446
    iget-object v2, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 447
    .line 448
    iget-object v3, p0, Lcom/windmill/sdk/widget/BannerBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 449
    .line 450
    invoke-virtual {v0, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 451
    .line 452
    .line 453
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-eqz v0, :cond_c

    .line 460
    .line 461
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-lez v0, :cond_c

    .line 472
    .line 473
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, Lcom/windmill/sdk/natives/WMImage;

    .line 484
    .line 485
    if-eqz v0, :cond_c

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-nez v1, :cond_c

    .line 496
    .line 497
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerBaseView;->context:Landroid/content/Context;

    .line 498
    .line 499
    invoke-static {v1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    new-instance v2, Lcom/windmill/sdk/widget/BannerView_7002001$3;

    .line 508
    .line 509
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/BannerView_7002001$3;-><init>(Lcom/windmill/sdk/widget/BannerView_7002001;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v0, v2}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 513
    .line 514
    .line 515
    :cond_c
    return-void
.end method
