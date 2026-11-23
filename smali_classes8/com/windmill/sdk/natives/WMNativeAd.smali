.class public Lcom/windmill/sdk/natives/WMNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/k;
.implements Lcom/windmill/sdk/common/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;
    }
.end annotation


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

.field private controller:Lcom/windmill/sdk/common/p;

.field private mActivityFilterModel:Lcom/windmill/sdk/common/e;

.field private mAdFilterModel:Lcom/windmill/sdk/common/f;

.field private mCustomGroupModel:Lcom/windmill/sdk/common/n;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

.field private mWMAdSourceModel:Lcom/windmill/sdk/common/g;

.field private mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

.field private nativeAdLoadListener:Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;

.field private nextController:Lcom/windmill/sdk/common/p;

.field private placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "request"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->placementId:Ljava/lang/String;

    .line 7
    .line 8
    instance-of v0, p1, Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    check-cast p1, Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

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
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->placementId:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    iput-object p2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 40
    .line 41
    new-instance p1, Lcom/windmill/sdk/common/n;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/windmill/sdk/common/n;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 47
    .line 48
    new-instance p1, Lcom/windmill/sdk/common/g;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/windmill/sdk/common/g;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 54
    .line 55
    new-instance p1, Lcom/windmill/sdk/common/f;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/windmill/sdk/common/f;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 61
    .line 62
    new-instance p1, Lcom/windmill/sdk/common/i;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/windmill/sdk/common/i;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 68
    .line 69
    new-instance p1, Lcom/windmill/sdk/common/e;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/windmill/sdk/common/e;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

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
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/natives/WMNativeAd;)Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nativeAdLoadListener:Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

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

.method private privateLoadAd(Lcom/windmill/sdk/natives/WMNativeAdRequest;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 5
    .line 6
    iput-boolean v1, v2, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "----NativeAd-----privateLoadAd "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/windmill/sdk/common/p;->d()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v0, v2}, Lcom/windmill/sdk/natives/WMNativeAd;->onVideoAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Lcom/windmill/sdk/common/p;

    .line 85
    .line 86
    invoke-direct {v0, p1, p0}, Lcom/windmill/sdk/common/p;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/p$a;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAd;->getActivity()Landroid/app/Activity;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/d;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 129
    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillAdRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    :goto_2
    return v4

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v4, "error"

    .line 146
    .line 147
    const-string v5, "load"

    .line 148
    .line 149
    invoke-static {v4, v5, v3, v0}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v3, 0x5

    .line 154
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/windmill/sdk/natives/WMNativeAd;->placementId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, v2, p1}, Lcom/windmill/sdk/natives/WMNativeAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return v1
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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/p;->e()Ljava/util/List;

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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/p;->a(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/p;->a(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public getAdInfo()Lcom/windmill/sdk/models/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/p;->p()Lcom/windmill/sdk/models/AdInfo;

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

.method public getLoadFailMessages()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

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

.method public getNativeADDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/p;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/windmill/sdk/common/p;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getRequest()Lcom/windmill/sdk/natives/WMNativeAdRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadAd(Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdLoadListener"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nativeAdLoadListener:Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/windmill/sdk/natives/WMNativeAd;->privateLoadAd(Lcom/windmill/sdk/natives/WMNativeAdRequest;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "error"

    .line 24
    .line 25
    const-string v3, "load"

    .line 26
    .line 27
    invoke-static {v2, v3, v1, p1}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->placementId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->placementId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/windmill/sdk/natives/WMNativeAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public onNativeAdFirstPlay()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->controller:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "-------AdFirstPlay "

    .line 12
    .line 13
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/windmill/sdk/common/p;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lcom/windmill/sdk/common/p;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/p$a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAd;->getActivity()Landroid/app/Activity;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setPlacementId(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->nextController:Lcom/windmill/sdk/common/p;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mRequest:Lcom/windmill/sdk/natives/WMNativeAdRequest;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillAdRequest;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/natives/WMNativeAd$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/natives/WMNativeAd$2;-><init>(Lcom/windmill/sdk/natives/WMNativeAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adDataList",
            "placementId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAd$1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/windmill/sdk/natives/WMNativeAd$1;-><init>(Lcom/windmill/sdk/natives/WMNativeAd;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

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
            "loadListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

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
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativeAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

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
