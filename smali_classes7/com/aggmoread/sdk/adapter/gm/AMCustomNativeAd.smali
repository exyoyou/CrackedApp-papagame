.class public Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private VIEW_TAG:Ljava/lang/String;

.field private mAdSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private mContext:Landroid/content/Context;

.field private mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

.field private statusFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "view_tag"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->VIEW_TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->statusFlag:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mAdSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getAppInfo()Lcom/aggmoread/sdk/client/AMAppInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;

    .line 22
    .line 23
    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getAppName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setAppName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getAuthorName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setAuthorName(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getPacakgesSize()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setPackageSizeBytes(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getPermissionsUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setPermissionsUrl(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getPrivacyAgreement()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAppInfo;->getVersionName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setNativeAdAppInfo(Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationNativeAdAppInfo;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getDesc()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setDescription(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getIconUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setIconUrl(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 101
    .line 102
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getImageUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageUrl(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getPictureWidth()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageWidth(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 119
    .line 120
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getPictureHeight()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageHeight(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 128
    .line 129
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getImageUrlList()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setImageList(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 137
    .line 138
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getAppScore()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    int-to-double p1, p1

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setStarRating(D)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 147
    .line 148
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getTitle()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setSource(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getAdPatternType()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    const/4 p2, 0x2

    .line 162
    const/4 p3, 0x4

    .line 163
    const/4 v1, 0x3

    .line 164
    if-ne p1, p2, :cond_1

    .line 165
    .line 166
    const/4 p1, 0x5

    .line 167
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setAdImageMode(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 172
    .line 173
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getAdPatternType()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-ne p1, v0, :cond_2

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setAdImageMode(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 184
    .line 185
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->getAdPatternType()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-ne p1, v1, :cond_3

    .line 190
    .line 191
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setAdImageMode(I)V

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 195
    .line 196
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->isAppAd()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_4

    .line 201
    .line 202
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setInteractionType(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setInteractionType(I)V

    .line 207
    .line 208
    .line 209
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mAdSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onDestroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$4;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$4;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInMainThread(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onPause()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$3;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public receiveBidResult(ZDILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->mNativeUnifiedADData:Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->notifyBidResult(Lcom/aggmoread/sdk/client/AMAdInterface;ZDI)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->receiveBidResult(ZDILjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p4, "registerView enter "

    .line 2
    .line 3
    invoke-static {p4}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p4, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    move-object v0, p4

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p4}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
