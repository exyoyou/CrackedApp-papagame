.class public Lcom/windmill/sdk/splash/WMSplashAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/k;
.implements Lcom/windmill/sdk/common/s$a;


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

.field private adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

.field private autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

.field private isAutoLoad:Z

.field private isLoadAndShow:Z

.field private mActivityFilterModel:Lcom/windmill/sdk/common/e;

.field private mAdFilterModel:Lcom/windmill/sdk/common/f;

.field private mCustomGroupModel:Lcom/windmill/sdk/common/n;

.field private mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

.field private mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

.field private mSplashAdController:Lcom/windmill/sdk/common/s;

.field private mWMAdSourceModel:Lcom/windmill/sdk/common/g;

.field private mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

.field private nextController:Lcom/windmill/sdk/common/s;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "adRequest"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    const-string v1, "WMSplashAd"

    .line 17
    iput-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isLoadAndShow:Z

    .line 19
    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 20
    new-instance p2, Lcom/windmill/sdk/common/n;

    invoke-direct {p2}, Lcom/windmill/sdk/common/n;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 21
    new-instance p2, Lcom/windmill/sdk/common/f;

    invoke-direct {p2}, Lcom/windmill/sdk/common/f;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 22
    new-instance p2, Lcom/windmill/sdk/common/e;

    invoke-direct {p2}, Lcom/windmill/sdk/common/e;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 23
    new-instance p2, Lcom/windmill/sdk/common/g;

    invoke-direct {p2}, Lcom/windmill/sdk/common/g;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 24
    new-instance p2, Lcom/windmill/sdk/common/i;

    invoke-direct {p2}, Lcom/windmill/sdk/common/i;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 25
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/splash/WMSplashAdListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "adRequest",
            "adListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    const-string v1, "WMSplashAd"

    .line 4
    iput-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isLoadAndShow:Z

    .line 6
    iput-object p3, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 7
    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 8
    new-instance p2, Lcom/windmill/sdk/common/n;

    invoke-direct {p2}, Lcom/windmill/sdk/common/n;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 9
    new-instance p2, Lcom/windmill/sdk/common/f;

    invoke-direct {p2}, Lcom/windmill/sdk/common/f;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 10
    new-instance p2, Lcom/windmill/sdk/common/e;

    invoke-direct {p2}, Lcom/windmill/sdk/common/e;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 11
    new-instance p2, Lcom/windmill/sdk/common/g;

    invoke-direct {p2}, Lcom/windmill/sdk/common/g;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 12
    new-instance p2, Lcom/windmill/sdk/common/i;

    invoke-direct {p2}, Lcom/windmill/sdk/common/i;-><init>()V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 13
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/splash/WMSplashAd;)Lcom/windmill/sdk/splash/WMSplashAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

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

.method private isNextControllerReady(Landroid/view/ViewGroup;)Lcom/windmill/sdk/common/s;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adContainer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/windmill/sdk/common/s;->a(Landroid/app/Activity;Lcom/windmill/sdk/common/s$a;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/s;->b(Landroid/view/ViewGroup;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method private logError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event_type",
            "code",
            "message"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "error"

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const-string v6, ""

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    move-object v1, p1

    .line 10
    move v5, p2

    .line 11
    move-object v7, p3

    .line 12
    invoke-static/range {v0 .. v8}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private privateLoadAd(Landroid/view/ViewGroup;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adContainer",
            "isAutoLoad"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-boolean p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/windmill/sdk/splash/WMSplashAd;->isNextControllerReady(Landroid/view/ViewGroup;)Lcom/windmill/sdk/common/s;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v2, v0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 26
    .line 27
    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 28
    .line 29
    if-ne v2, v4, :cond_1

    .line 30
    .line 31
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2, p0}, Lcom/windmill/sdk/common/s;->a(Landroid/app/Activity;Lcom/windmill/sdk/common/s$a;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Lcom/windmill/sdk/common/s;->b(Landroid/view/ViewGroup;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/windmill/sdk/common/s;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v4, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 55
    .line 56
    invoke-direct {v0, v2, v4, p0}, Lcom/windmill/sdk/common/s;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/s$a;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 68
    .line 69
    sget-object v5, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    .line 70
    .line 71
    if-ne v4, v5, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 74
    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    new-instance v0, Lcom/windmill/sdk/common/s;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v4, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 86
    .line 87
    invoke-direct {v0, v2, v4, p0}, Lcom/windmill/sdk/common/s;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/s$a;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    if-nez p2, :cond_5

    .line 102
    .line 103
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 106
    .line 107
    .line 108
    move-object v0, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_5
    new-instance v0, Lcom/windmill/sdk/common/s;

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v4, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 117
    .line 118
    invoke-direct {v0, v2, v4, p0}, Lcom/windmill/sdk/common/s;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/s$a;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_0
    if-eqz v0, :cond_a

    .line 129
    .line 130
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/d;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/windmill/sdk/splash/WMSplashAd;->getActivity()Landroid/app/Activity;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 158
    .line 159
    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 160
    .line 161
    if-eq v2, v4, :cond_a

    .line 162
    .line 163
    iget-boolean v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isLoadAndShow:Z

    .line 164
    .line 165
    if-eqz v2, :cond_7

    .line 166
    .line 167
    if-nez p2, :cond_7

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    const/4 v2, 0x0

    .line 172
    :goto_1
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/s;->a(Z)V

    .line 173
    .line 174
    .line 175
    if-nez p2, :cond_8

    .line 176
    .line 177
    iget-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mRequest:Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 178
    .line 179
    if-eqz p2, :cond_9

    .line 180
    .line 181
    iget-boolean p2, p2, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    .line 182
    .line 183
    if-eqz p2, :cond_9

    .line 184
    .line 185
    :cond_8
    const/4 v1, 0x1

    .line 186
    :cond_9
    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/common/s;->a(Landroid/view/ViewGroup;Z)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string p2, "----WMSplashAd----loadAd: "

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p2, " "

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_0
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, "------privateLoadAd Throwable "

    .line 243
    .line 244
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 262
    .line 263
    if-eqz p2, :cond_a

    .line 264
    .line 265
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 266
    .line 267
    const-string v1, ""

    .line 268
    .line 269
    invoke-interface {p2, v0, v1}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v1, "loadAdAndShow catch throwable:"

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    const-string v0, "load"

    .line 298
    .line 299
    invoke-direct {p0, v0, p2, p1}, Lcom/windmill/sdk/splash/WMSplashAd;->logError(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_2
    return-void
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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->e()Ljava/util/List;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2, v2}, Lcom/windmill/sdk/common/s;->a(Landroid/app/Activity;Lcom/windmill/sdk/common/s$a;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s$a;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v2, v2}, Lcom/windmill/sdk/common/s;->a(Landroid/app/Activity;Lcom/windmill/sdk/common/s$a;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s$a;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iput-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iput-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 91
    .line 92
    iput-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 93
    .line 94
    iput-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "destroy: "

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method

.method public getAdInfo()Lcom/windmill/sdk/models/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->c()Lcom/windmill/sdk/models/AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->c()Lcom/windmill/sdk/models/AdInfo;

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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

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

.method public isReady()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public loadAdAndShow(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adContainer"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isLoadAndShow:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/splash/WMSplashAd;->privateLoadAd(Landroid/view/ViewGroup;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public loadAdOnly()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isLoadAndShow:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/windmill/sdk/splash/WMSplashAd;->privateLoadAd(Landroid/view/ViewGroup;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public loadWaterfall()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public onSplashAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId",
            "isAutoLoad"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "----onSplashAdFailToLoad "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    iget-object p3, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 49
    .line 50
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 51
    .line 52
    if-eq p3, v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p3, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    invoke-interface {p3, p1, p2}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    new-instance v0, Lcom/windmill/sdk/splash/WMSplashAd$3;

    .line 78
    .line 79
    invoke-direct {v0, p0, p1, p2}, Lcom/windmill/sdk/splash/WMSplashAd$3;-><init>(Lcom/windmill/sdk/splash/WMSplashAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object p3, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 87
    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    invoke-interface {p3, p1, p2}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    sget-object p1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 96
    .line 97
    return-void
.end method

.method public onSplashAdFailToPresent(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-----WMSplashAd onSplashAdFailToPresent "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " mainUI "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/windmill/sdk/splash/WMSplashAd$1;

    .line 84
    .line 85
    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/splash/WMSplashAd$1;-><init>(Lcom/windmill/sdk/splash/WMSplashAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdFailToPresent(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_2
    sget-object p1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 102
    .line 103
    return-void
.end method

.method public onSplashAdSuccessLoad(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-----WMSplashAd onSplashAdSuccessLoad "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " mainUI "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->isAutoLoad:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-interface {v0, p1}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadSuccess(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/windmill/sdk/splash/WMSplashAd$2;

    .line 96
    .line 97
    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/splash/WMSplashAd$2;-><init>(Lcom/windmill/sdk/splash/WMSplashAd;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-interface {v0, p1}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdSuccessLoad(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_2
    return-void
.end method

.method public onSplashAdSuccessPresent(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdSuccessPresent(Lcom/windmill/sdk/models/AdInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onSplashClosed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/splash/IWMSplashEyeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "splashEyeAd"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->adOutStatus:Lcom/czhj/sdk/common/models/AdStatus;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "-------onSplashClosed "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/windmill/sdk/common/l;->i()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, "F"

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->i()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v2}, Lcom/windmill/sdk/splash/WMSplashAd;->privateLoadAd(Landroid/view/ViewGroup;Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashClosed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/splash/IWMSplashEyeAd;)V

    .line 75
    .line 76
    .line 77
    :cond_3
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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mActivityFilterModel:Lcom/windmill/sdk/common/e;

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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAdSourceModel:Lcom/windmill/sdk/common/g;

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

.method public setAutoAdLoadListener(Lcom/windmill/sdk/base/AutoAdLoadListener;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->autoAdLoadListener:Lcom/windmill/sdk/base/AutoAdLoadListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mWMAutoAdLoadModel:Lcom/windmill/sdk/common/i;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/i;->a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V

    .line 8
    .line 9
    .line 10
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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mCustomGroupModel:Lcom/windmill/sdk/common/n;

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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mAdFilterModel:Lcom/windmill/sdk/common/f;

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

.method public setSplashADListener(Lcom/windmill/sdk/splash/WMSplashAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashADListener:Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adContainer"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-----showAd: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/windmill/sdk/common/s;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->nextController:Lcom/windmill/sdk/common/s;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd;->mSplashAdController:Lcom/windmill/sdk/common/s;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/s;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd;->tag:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "-----showAd:Throwable "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_1
    return-void
.end method
