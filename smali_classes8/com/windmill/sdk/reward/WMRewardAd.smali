.class public Lcom/windmill/sdk/reward/WMRewardAd;
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

.field private mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

.field private mWMAdSourceModel:Lcom/windmill/sdk/common/g;

.field private mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

.field private nextController:Lcom/windmill/sdk/common/t;

.field private placementId:Ljava/lang/String;

.field private wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/windmill/sdk/reward/WMRewardAdRequest;)V
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
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    iput-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 40
    .line 41
    new-instance p1, Lcom/windmill/sdk/common/f;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/windmill/sdk/common/f;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 47
    .line 48
    new-instance p1, Lcom/windmill/sdk/common/e;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/windmill/sdk/common/e;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 54
    .line 55
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance p1, Lcom/windmill/sdk/common/n;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/windmill/sdk/common/n;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 71
    .line 72
    new-instance p1, Lcom/windmill/sdk/common/g;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/windmill/sdk/common/g;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 78
    .line 79
    new-instance p1, Lcom/windmill/sdk/common/i;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/windmill/sdk/common/i;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 85
    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/windmill/sdk/reward/WMRewardAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/common/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/reward/WMRewardAdRequest;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd;->privateLoadAd(Lcom/windmill/sdk/reward/WMRewardAdRequest;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

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

.method private privateLoadAd(Lcom/windmill/sdk/reward/WMRewardAdRequest;Z)Z
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
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-direct {v2, v3, v4, v5}, Lcom/windmill/sdk/reward/WMRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v3, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 25
    .line 26
    iput-boolean v0, v3, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 27
    .line 28
    iget-object v3, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    new-instance v3, Lcom/windmill/sdk/common/t;

    .line 33
    .line 34
    invoke-direct {v3, v2, p0, p0}, Lcom/windmill/sdk/common/t;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/t$a;Lcom/windmill/sdk/common/t$b;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 41
    .line 42
    sget-object v5, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 43
    .line 44
    if-ne v4, v5, :cond_2

    .line 45
    .line 46
    new-instance v3, Lcom/windmill/sdk/common/t;

    .line 47
    .line 48
    invoke-direct {v3, v2, p0, p0}, Lcom/windmill/sdk/common/t;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/t$a;Lcom/windmill/sdk/common/t$b;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 52
    .line 53
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/windmill/sdk/reward/WMRewardAd;->getActivity()Landroid/app/Activity;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v5, "WMRewardAd----loadAd "

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, " "

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/d;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2, p2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/WindMillAdRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_3
    return v1

    .line 127
    :catchall_0
    move-exception p2

    .line 128
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string v4, "error"

    .line 139
    .line 140
    const-string v5, "load"

    .line 141
    .line 142
    invoke-static {v4, v5, v3, p2}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, v2, p1}, Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iput-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iput-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 79
    .line 80
    :cond_4
    return-void
.end method

.method public getAdInfo()Lcom/windmill/sdk/models/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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

.method public getRequest()Lcom/windmill/sdk/reward/WMRewardAdRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mRequest:Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 3
    .line 4
    invoke-direct {p0, v1, v0}, Lcom/windmill/sdk/reward/WMRewardAd;->privateLoadAd(Lcom/windmill/sdk/reward/WMRewardAdRequest;Z)Z

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
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v4, "error"

    .line 21
    .line 22
    const-string v5, "load"

    .line 23
    .line 24
    invoke-static {v4, v5, v3, v1}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "---onVideoAdClicked |"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 30
    .line 31
    .line 32
    :cond_0
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
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/t;->a(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->nextController:Lcom/windmill/sdk/common/t;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "---onVideoAdClosed |"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdClosed(Lcom/windmill/sdk/models/AdInfo;)V

    .line 58
    .line 59
    .line 60
    :cond_2
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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/reward/WMRewardAd$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd$3;-><init>(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/reward/WMRewardAd$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/reward/WMRewardAd$1;-><init>(Lcom/windmill/sdk/reward/WMRewardAd;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "---onVideoAdPlayEnd |"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdPlayEnd(Lcom/windmill/sdk/models/AdInfo;)V

    .line 30
    .line 31
    .line 32
    :cond_0
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
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/windmill/sdk/reward/WMRewardAd$4;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd$4;-><init>(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

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
    .locals 4
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
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "---onVideoAdPlayStart "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v1, Lcom/windmill/sdk/reward/WMRewardAd$2;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd$2;-><init>(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/models/AdInfo;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onVideoAdReward(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/reward/WMRewardInfo;)V
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "---onVideoAdReward |"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoRewarded(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/reward/WMRewardInfo;)V

    .line 30
    .line 31
    .line 32
    :cond_0
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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

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
            "autoLoadListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

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

.method public setRewardedAdListener(Lcom/windmill/sdk/reward/WMRewardAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardAdListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd;->wmRewardAdListener:Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 2
    .line 3
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/util/HashMap;)Z
    .locals 7
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
    const-string v0, "activity can\'t is null"

    .line 2
    .line 3
    const-string v1, "play"

    .line 4
    .line 5
    const-string v2, "error"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, "----showAd "

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v6, " "

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-static {v2, v1, p2, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v5

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 102
    .line 103
    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 104
    .line 105
    if-ne v0, v4, :cond_3

    .line 106
    .line 107
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_PLAYING:Lcom/windmill/sdk/WindMillError;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v5

    .line 115
    :cond_3
    iput-object v4, p0, Lcom/windmill/sdk/reward/WMRewardAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->controller:Lcom/windmill/sdk/common/t;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/common/t;->a(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    const-string p1, "can\'t find controller object"

    .line 126
    .line 127
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    const-string v0, "can\'t find  controller object"

    .line 137
    .line 138
    invoke-static {v2, v1, p2, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    return v5

    .line 163
    :catchall_0
    move-exception p1

    .line 164
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v2, v1, p2, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd;->placementId:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 191
    .line 192
    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v0, "show Ad catch throwable "

    .line 199
    .line 200
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :goto_2
    return v3
.end method
