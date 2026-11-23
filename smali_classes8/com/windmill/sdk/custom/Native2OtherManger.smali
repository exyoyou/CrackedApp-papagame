.class public Lcom/windmill/sdk/custom/Native2OtherManger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field protected bannerView:Landroid/view/View;

.field protected isReady:Z

.field protected nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

.field protected subType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->isReady:Z

    .line 6
    .line 7
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    instance-of v1, v0, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    const-string v2, "ad_key_width"

    .line 3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    const-string v3, "ad_key_height"

    .line 6
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_4

    :cond_2
    move v1, v2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    const/4 v2, 0x0

    .line 9
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v2

    const/4 v5, 0x0

    goto :goto_5

    :cond_3
    :goto_3
    const/4 p2, 0x0

    :goto_4
    move v5, p2

    move v4, v1

    .line 10
    :goto_5
    new-instance p2, Lcom/windmill/sdk/widget/BannerViewManager;

    iget-object v6, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    new-instance v8, Lcom/windmill/sdk/custom/Native2OtherManger$4;

    invoke-direct {v8, p0, v0}, Lcom/windmill/sdk/custom/Native2OtherManger$4;-><init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMCustomBannerAdapter;)V

    move-object v2, p2

    move-object v3, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/windmill/sdk/widget/BannerViewManager;-><init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/widget/BannerViewManager;->render()V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/custom/Native2OtherManger;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/Native2OtherManger;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->bannerView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getChannelObject"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 19
    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-object v0

    .line 27
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->isReady:Z

    .line 2
    .line 3
    return v0
.end method

.method protected loadAd(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "baseAdapter",
            "context",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMCustomNativeAdapter;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->setAdapter(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lcom/windmill/sdk/custom/Native2OtherManger$1;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/custom/Native2OtherManger$1;-><init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v6}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->setLoadNativeAdResponseLoadListener(Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->subType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v1, v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    :try_start_1
    const-string v1, "ad_key_width"

    .line 39
    .line 40
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    move-object v3, v1

    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :cond_1
    const-string v1, "ad_key_height"

    .line 68
    .line 69
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    move-object v1, p3

    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-static {p3}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p3

    .line 98
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    move v5, p1

    .line 102
    move v4, v0

    .line 103
    new-instance p1, Lcom/windmill/sdk/widget/SplashViewManager;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 106
    .line 107
    new-instance v8, Lcom/windmill/sdk/custom/Native2OtherManger$2;

    .line 108
    .line 109
    invoke-direct {v8, p0, v2}, Lcom/windmill/sdk/custom/Native2OtherManger$2;-><init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMCustomSplashAdapter;)V

    .line 110
    .line 111
    .line 112
    move-object v3, p1

    .line 113
    move-object v7, p4

    .line 114
    invoke-direct/range {v3 .. v8}, Lcom/windmill/sdk/widget/SplashViewManager;-><init>(IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/widget/SplashViewManager;->show(Landroid/view/ViewGroup;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/4 p2, 0x2

    .line 122
    if-ne v0, p2, :cond_6

    .line 123
    .line 124
    iget-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 125
    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    instance-of p3, p2, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 129
    .line 130
    if-eqz p3, :cond_4

    .line 131
    .line 132
    move-object v2, p2

    .line 133
    check-cast v2, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 134
    .line 135
    :cond_4
    new-instance p2, Lcom/windmill/sdk/widget/InterstitialViewManager;

    .line 136
    .line 137
    iget-object p3, p0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 138
    .line 139
    new-instance v0, Lcom/windmill/sdk/custom/Native2OtherManger$3;

    .line 140
    .line 141
    invoke-direct {v0, p0, v2}, Lcom/windmill/sdk/custom/Native2OtherManger$3;-><init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p1, p3, p4, v0}, Lcom/windmill/sdk/widget/InterstitialViewManager;-><init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 145
    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->getTips()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p2, p1}, Lcom/windmill/sdk/widget/InterstitialViewManager;->setTips(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {p2}, Lcom/windmill/sdk/widget/InterstitialViewManager;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catch_1
    move-exception p1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p3, "showAd"

    .line 178
    .line 179
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_1
    return-void
.end method
