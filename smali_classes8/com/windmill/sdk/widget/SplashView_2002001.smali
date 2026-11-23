.class public Lcom/windmill/sdk/widget/SplashView_2002001;
.super Lcom/windmill/sdk/widget/SplashBaseView;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Landroid/animation/ObjectAnimator;

.field public shakeGroup:Landroid/widget/RelativeLayout;

.field public shakeImage:Landroid/widget/ImageView;

.field public shakeLayout:Landroid/widget/RelativeLayout;

.field public shakeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V
    .locals 0
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/widget/SplashBaseView;-><init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 5
    .line 6
    const-string p3, "tobid_splash_shake_group"

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 21
    .line 22
    const-string p3, "tobid_splash_shake_layout"

    .line 23
    .line 24
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 37
    .line 38
    const-string p3, "tobid_splash_shake_image"

    .line 39
    .line 40
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 53
    .line 54
    const-string p3, "tobid_splash_shake_text"

    .line 55
    .line 56
    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashView_2002001;->a()V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/SplashView_2002001;->renderView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashView_2002001;->b()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private a()V
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getClose_position()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v4, :cond_2

    const/high16 v7, 0x41a00000    # 20.0f

    if-eq v0, v5, :cond_1

    const/4 v8, 0x3

    if-eq v0, v8, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v6, v0, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashView_2012001: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getClose_style()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0, v2}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p0, v0, v2}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/windmill/sdk/widget/SplashBaseView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipText:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x15

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 37
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 39
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getAutoPlayMuted()I

    move-result v0

    .line 40
    iget-object v3, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/windmill/sdk/widget/SplashView_2002001$1;

    invoke-direct {v5, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$1;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v0, v4, :cond_7

    .line 41
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0, v6}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "tobid_image_ad_sound_on"

    invoke-static {v3, v5}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    const-string v3, "sound_on"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0, v4}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 46
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "tobid_image_ad_sound_off"

    invoke-static {v3, v5}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->soundImage:Landroid/widget/ImageView;

    const-string v3, "sound_off"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    if-eq v0, v4, :cond_13

    const/16 v3, 0xd

    if-eq v0, v3, :cond_12

    const/16 v3, 0x10

    if-eq v0, v3, :cond_11

    const/16 v3, 0x13

    if-eq v0, v3, :cond_10

    if-eq v0, v2, :cond_f

    const/16 v2, 0x16

    if-eq v0, v2, :cond_12

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_e

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_d

    const/16 v2, 0x29

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_b

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_10

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_11

    const/16 v2, 0x3e6

    if-eq v0, v2, :cond_9

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_8

    .line 50
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_sg"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 51
    :cond_8
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_adx"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 53
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 56
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_bayes_fff"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_octopus_fff"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 63
    :cond_d
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_tap"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 64
    :cond_e
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_qm_fff"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 66
    :cond_f
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_bd"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_ks"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 68
    :cond_11
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_ylh"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 69
    :cond_12
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_tt"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 70
    :cond_13
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adLogoImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_image_ad_logo_mtg"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/SplashView_2002001;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashView_2002001;->c()V

    return-void
.end method

.method private b()V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getNativeShakeAd()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    new-instance v1, Lcom/windmill/sdk/widget/SplashView_2002001$5;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$5;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v2, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->renderShakeView(IILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    const/16 v3, 0xc8

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/windmill/sdk/natives/WMNativeAdData;->getInteractionWidgetView(Landroid/view/ViewGroup;IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    const/16 v1, 0xb

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v1, 0x3e8

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    new-instance v1, Lcom/windmill/sdk/widget/SplashView_2002001$6;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$6;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Lcom/windmill/sdk/widget/SplashView_2002001;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/SplashView_2002001;->d()V

    return-void
.end method

.method private c()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "#FF005C"

    .line 12
    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getClose_position()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v3, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSoundSkipLayout:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v3, p0, Lcom/windmill/sdk/widget/SplashBaseView;->iconTextLayout:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_0
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    div-int/2addr v5, v2

    .line 76
    add-int/2addr v4, v5

    .line 77
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    div-int/2addr v5, v2

    .line 84
    sub-int/2addr v4, v5

    .line 85
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 92
    .line 93
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v7, 0x4

    .line 97
    new-array v7, v7, [Landroid/animation/Animator;

    .line 98
    .line 99
    iget-object v8, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    new-array v9, v2, [F

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    aput v11, v9, v10

    .line 106
    .line 107
    sub-int/2addr v0, v4

    .line 108
    int-to-float v0, v0

    .line 109
    aput v0, v9, v1

    .line 110
    .line 111
    const-string v0, "translationX"

    .line 112
    .line 113
    invoke-static {v8, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    aput-object v0, v7, v10

    .line 118
    .line 119
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    new-array v4, v2, [F

    .line 122
    .line 123
    aput v11, v4, v10

    .line 124
    .line 125
    sub-int/2addr v3, v5

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    sub-int/2addr v3, v5

    .line 131
    int-to-float v3, v3

    .line 132
    aput v3, v4, v1

    .line 133
    .line 134
    const-string v3, "translationY"

    .line 135
    .line 136
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    aput-object v0, v7, v1

    .line 141
    .line 142
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    new-array v1, v2, [F

    .line 145
    .line 146
    fill-array-data v1, :array_0

    .line 147
    .line 148
    .line 149
    const-string v3, "scaleX"

    .line 150
    .line 151
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    aput-object v0, v7, v2

    .line 156
    .line 157
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 158
    .line 159
    new-array v1, v2, [F

    .line 160
    .line 161
    fill-array-data v1, :array_1

    .line 162
    .line 163
    .line 164
    const-string v2, "scaleY"

    .line 165
    .line 166
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const/4 v1, 0x3

    .line 171
    aput-object v0, v7, v1

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/windmill/sdk/widget/SplashView_2002001$7;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$7;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    .line 183
    .line 184
    new-array v0, v10, [Landroid/animation/Animator;

    .line 185
    .line 186
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 187
    .line 188
    .line 189
    const-wide/16 v0, 0x1f4

    .line 190
    .line 191
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 196
    .line 197
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    mul-int/lit8 v2, v2, 0x2

    .line 24
    .line 25
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-double v2, v2

    .line 49
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-double v2, v2, v4

    .line 55
    .line 56
    double-to-int v2, v2

    .line 57
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 71
    .line 72
    const-string v2, "\u6447\u4e00\u6447"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 78
    .line 79
    new-instance v2, Lcom/windmill/sdk/widget/SplashView_2002001$8;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$8;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v3, 0x1f4

    .line 85
    .line 86
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    .line 97
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iget-object v3, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotX(F)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeImage:Landroid/widget/ImageView;

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    new-array v2, v2, [F

    .line 122
    .line 123
    fill-array-data v2, :array_0

    .line 124
    .line 125
    .line 126
    const-string v3, "rotation"

    .line 127
    .line 128
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 135
    .line 136
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 143
    .line 144
    const/4 v2, -0x1

    .line 145
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 154
    .line 155
    const-wide/16 v1, 0x3e8

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :array_0
    .array-data 4
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
    .end array-data
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
    const-string v0, "tobid_layout_splash_model_2002001"

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

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->b:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->c:Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeGroup:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public renderView()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adTittleText:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adTittleText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adDescText:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adDescText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

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
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adIcon:Landroid/widget/ImageView;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v3, Lcom/windmill/sdk/widget/SplashView_2002001$2;

    .line 151
    .line 152
    invoke-direct {v3, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$2;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v8, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getMistake_click_rate()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget v2, p0, Lcom/windmill/sdk/widget/SplashBaseView;->ranDom:I

    .line 185
    .line 186
    const/16 v3, 0x8

    .line 187
    .line 188
    if-lt v0, v2, :cond_5

    .line 189
    .line 190
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipShade:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipShade:Landroid/view/View;

    .line 196
    .line 197
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adSkipShade:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :goto_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    sget-object v2, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 213
    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v5, "-------------patternType:"

    .line 220
    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v2, v4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    const/4 v4, 0x1

    .line 240
    if-eq v0, v4, :cond_7

    .line 241
    .line 242
    const/4 v4, 0x2

    .line 243
    if-eq v0, v4, :cond_7

    .line 244
    .line 245
    const/4 v4, 0x3

    .line 246
    if-ne v0, v4, :cond_6

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_6
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 255
    .line 256
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 261
    .line 262
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 266
    .line 267
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 276
    .line 277
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    :goto_5
    :try_start_0
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 281
    .line 282
    invoke-virtual {v4}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    const/16 v5, 0x2a

    .line 287
    .line 288
    if-ne v4, v5, :cond_8

    .line 289
    .line 290
    new-instance v4, Lcom/windmill/sdk/natives/WMNativeAdContainer;

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-direct {v4, v5}, Lcom/windmill/sdk/natives/WMNativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    check-cast v6, Landroid/app/Activity;

    .line 309
    .line 310
    new-instance v9, Lcom/windmill/sdk/widget/SplashView_2002001$3;

    .line 311
    .line 312
    invoke-direct {v9, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$3;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v6, v4, v9}, Lcom/windmill/sdk/natives/WMNativeAdData;->connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :catch_0
    move-exception v4

    .line 320
    new-instance v5, Ljava/io/StringWriter;

    .line 321
    .line 322
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 323
    .line 324
    .line 325
    new-instance v6, Ljava/io/PrintWriter;

    .line 326
    .line 327
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v6, "------BayesNativeAdData Exception   "

    .line 343
    .line 344
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_8
    :goto_6
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    const/16 v5, 0x16

    .line 364
    .line 365
    if-ne v4, v5, :cond_9

    .line 366
    .line 367
    new-instance v4, Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 368
    .line 369
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 370
    .line 371
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-direct {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;-><init>(I)V

    .line 376
    .line 377
    .line 378
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adTittleText:Landroid/widget/TextView;

    .line 379
    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->titleId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adDescText:Landroid/widget/TextView;

    .line 389
    .line 390
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->descriptionTextId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adCtaText:Landroid/widget/TextView;

    .line 399
    .line 400
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->callToActionId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adIcon:Landroid/widget/ImageView;

    .line 409
    .line 410
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->iconImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 419
    .line 420
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mainImageId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 429
    .line 430
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->mediaViewIdId(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage1Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 449
    .line 450
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage2Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 459
    .line 460
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->groupImage3Id(I)Lcom/windmill/sdk/natives/WMViewBinder$Builder;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v4}, Lcom/windmill/sdk/natives/WMViewBinder$Builder;->build()Lcom/windmill/sdk/natives/WMViewBinder;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    iget-object v5, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 473
    .line 474
    invoke-virtual {v5, v4}, Lcom/windmill/sdk/natives/WMNativeAdData;->registerViewBidder(Lcom/windmill/sdk/natives/WMViewBinder;)V

    .line 475
    .line 476
    .line 477
    :cond_9
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 478
    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    const/4 v9, 0x0

    .line 484
    move-object v6, p0

    .line 485
    invoke-virtual/range {v4 .. v9}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-nez v4, :cond_a

    .line 493
    .line 494
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 495
    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v0, v3, v2, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 501
    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_a
    const/4 v2, 0x4

    .line 505
    if-ne v0, v2, :cond_b

    .line 506
    .line 507
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adPostImage:Landroid/widget/ImageView;

    .line 508
    .line 509
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 513
    .line 514
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 518
    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/windmill/sdk/widget/SplashBaseView;->adMediaLayout:Landroid/widget/FrameLayout;

    .line 524
    .line 525
    invoke-virtual {v0, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 526
    .line 527
    .line 528
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eqz v0, :cond_c

    .line 535
    .line 536
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 537
    .line 538
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-lez v0, :cond_c

    .line 547
    .line 548
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    check-cast v0, Lcom/windmill/sdk/natives/WMImage;

    .line 559
    .line 560
    if-eqz v0, :cond_c

    .line 561
    .line 562
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-nez v1, :cond_c

    .line 571
    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-static {v1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    new-instance v2, Lcom/windmill/sdk/widget/SplashView_2002001$4;

    .line 585
    .line 586
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/SplashView_2002001$4;-><init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v0, v2}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    .line 590
    .line 591
    .line 592
    :cond_c
    return-void
.end method
