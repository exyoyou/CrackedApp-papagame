.class public Lcom/windmill/sdk/interstitial/WMInterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/k;
.implements Lcom/windmill/sdk/common/t$a;
.implements Lcom/windmill/sdk/common/t$b;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

.field private controller:Lcom/windmill/sdk/common/t;

.field private mActivityFilterModel:Lcom/windmill/sdk/common/e;

.field private mAdFilterModel:Lcom/windmill/sdk/common/f;

.field private mCustomGroupModel:Lcom/windmill/sdk/common/n;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

.field private mWMAdSourceModel:Lcom/windmill/sdk/common/g;

.field private mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

.field private nextController:Lcom/windmill/sdk/common/t;

.field private placementId:Ljava/lang/String;

.field private wmInterstitialAdListener:Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "request"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    :cond_1
    iput-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

    .line 40
    .line 41
    new-instance p1, Lcom/windmill/sdk/common/n;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/windmill/sdk/common/n;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 47
    .line 48
    new-instance p1, Lcom/windmill/sdk/common/f;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/windmill/sdk/common/f;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 54
    .line 55
    new-instance p1, Lcom/windmill/sdk/common/e;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/windmill/sdk/common/e;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 61
    .line 62
    new-instance p1, Lcom/windmill/sdk/common/g;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/windmill/sdk/common/g;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 68
    .line 69
    new-instance p1, Lcom/windmill/sdk/common/i;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/windmill/sdk/common/i;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 75
    .line 76
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/interstitial/WMInterstitialAd;)Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->wmInterstitialAdListener:Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/windmill/sdk/interstitial/WMInterstitialAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method private privateLoadAd(Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "isAutoLoad"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "-----WMInterstitialAd--loadAd "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " adOutStatus: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "  "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    new-instance v1, Lcom/windmill/sdk/common/t;

    .line 61
    .line 62
    invoke-direct {v1, p1, p0, p0}, Lcom/windmill/sdk/common/t;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/t$a;Lcom/windmill/sdk/common/t$b;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 69
    .line 70
    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 71
    .line 72
    if-ne v2, v4, :cond_2

    .line 73
    .line 74
    new-instance v1, Lcom/windmill/sdk/common/t;

    .line 75
    .line 76
    invoke-direct {v1, p1, p0, p0}, Lcom/windmill/sdk/common/t;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/t$a;Lcom/windmill/sdk/common/t$b;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 80
    .line 81
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/d;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->getActivity()Landroid/app/Activity;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1, p2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/WindMillAdRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_3
    return v3

    .line 119
    :catchall_0
    move-exception p2

    .line 120
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const-string v4, "error"

    .line 131
    .line 132
    const-string v5, "load"

    .line 133
    .line 134
    invoke-static {v4, v5, v2, v3}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v3, 0x4

    .line 139
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 152
    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v3, "load Ad catch error "

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p0, v1, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v0
.end method


# virtual methods
.method public checkValidAdCaches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/AdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->wmInterstitialAdListener:Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->wmInterstitialAdListener:Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public getAdInfo()Lcom/windmill/sdk/models/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->d()Lcom/windmill/sdk/models/AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->d()Lcom/windmill/sdk/models/AdInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public getLoadFailMessages()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getRequest()Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/t;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public loadAd()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

    .line 3
    .line 4
    invoke-direct {p0, v1, v0}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->privateLoadAd(Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    return v0

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "load Ad catch error "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v4, "error"

    .line 45
    .line 46
    const-string v5, "load"

    .line 47
    .line 48
    invoke-static {v4, v5, v3, v1}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v3, 0x4

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v2, v1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v0
.end method

.method public onVideoAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$4;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$5;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$5;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/models/AdInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$6;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$6;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdPlayEnd(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$3;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/windmill/sdk/interstitial/WMInterstitialAd$7;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$7;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "hasAdShow"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$2;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/interstitial/WMInterstitialAd$2;-><init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Lcom/windmill/sdk/models/AdInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/windmill/sdk/common/l;->i()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mRequest:Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->privateLoadAd(Lcom/windmill/sdk/interstitial/WMInterstitialAdRequest;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :cond_0
    return-void
.end method

.method public onVideoAdReward(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/reward/WMRewardInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "rewardInfo"
        }
    .end annotation

    return-void
.end method

.method public setActivityChannelFilterList(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/e;->a(Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdSourceStatusListener(Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/g;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAutoLoadListener(Lcom/windmill/sdk/base/AutoAdLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAutoAdLoadListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCustomGroup(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/n;->a(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/windmill/sdk/WMAdFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/f;->a(Lcom/windmill/sdk/models/WMFilter;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setInterstitialAdListener(Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitialAdListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->wmInterstitialAdListener:Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 2
    .line 3
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "can\'t find  controller object"

    .line 2
    .line 3
    const-string v1, "activity can\'t is null"

    .line 4
    .line 5
    const-string v2, "play"

    .line 6
    .line 7
    const-string v3, "error"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x4

    .line 11
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v7, "----WMInterstitialAd--showAd "

    .line 17
    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v8, 0x0

    .line 27
    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v8, " "

    .line 31
    .line 32
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v8, 0x0

    .line 40
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {v3, v2, p2, v1}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v7

    .line 86
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 94
    .line 95
    sget-object v6, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 96
    .line 97
    if-ne v1, v6, :cond_3

    .line 98
    .line 99
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_PLAYING:Lcom/windmill/sdk/WindMillError;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v7

    .line 107
    :cond_3
    iput-object v6, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->controller:Lcom/windmill/sdk/common/t;

    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1, p1, p2}, Lcom/windmill/sdk/common/t;->a(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-static {v3, v2, p2, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    return v7

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v3, v2, p2, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->placementId:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 179
    .line 180
    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v0, "show Ad catch error "

    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_2
    return v4
.end method
