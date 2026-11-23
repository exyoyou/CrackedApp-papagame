.class public Lcom/join/mgps/ad/s;
.super Lcom/join/mgps/ad/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/s$a;
    }
.end annotation


# instance fields
.field private o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

.field p:Lcom/aggmoread/sdk/client/AMAdLoader;

.field private q:Lcom/aggmoread/sdk/client/AMVideoConfigs;

.field private r:Z

.field private s:Lcom/join/mgps/ad/s$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appId",
            "posId"
        }
    .end annotation

    .line 1
    const-string v0, "RE"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/s;->r:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/s;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/s;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic v(Lcom/join/mgps/ad/s;Lcom/aggmoread/sdk/client/reward/AMRewardAd;)Lcom/aggmoread/sdk/client/reward/AMRewardAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/s;->o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 2
    .line 3
    return-object p1
.end method

.method private w(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setAutoPlayMuted(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setAutoPlayPolicy(I)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setEnableDetailPage(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setDetailPageMuted(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setEnableUserControl(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setNeedCoverImage(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setNeedProgressBar(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->build()Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/join/mgps/ad/s;->q:Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/ad/s$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/s$a;-><init>(Lcom/join/mgps/ad/s;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Lcom/join/mgps/ad/r;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/r;-><init>(Lcom/join/mgps/ad/s;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/d;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected b()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/join/mgps/ad/d;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "RewardVideoAd:"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/ad/s;->o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "hasLoaded:"

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/join/mgps/ad/s;->r:Z

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/s;->o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/join/mgps/ad/s;->r:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_1
    return v1
.end method

.method public d(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x5

    .line 6
    :try_start_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/s;->r:Z

    .line 7
    .line 8
    sget-boolean v4, Lcom/join/mgps/ad/d;->m:Z

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v5, "load:"

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/ad/s;->w(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    new-instance v4, Lcom/join/mgps/ad/s$a;

    .line 33
    .line 34
    invoke-direct {v4, p0}, Lcom/join/mgps/ad/s$a;-><init>(Lcom/join/mgps/ad/s;)V

    .line 35
    .line 36
    .line 37
    iput-object v4, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 38
    .line 39
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 40
    .line 41
    invoke-virtual {v4, p1}, Lcom/join/mgps/ad/s$a;->a(Z)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 51
    .line 52
    iget-object v4, p0, Lcom/join/mgps/ad/s;->p:Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    new-instance v4, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 57
    .line 58
    invoke-direct {v4}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSlotId(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/join/mgps/ad/s;->q:Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setVideoConfig(Lcom/aggmoread/sdk/client/AMVideoConfigs;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, p1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdCount(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1, v4}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSSBidToken(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->build()Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/aggmoread/sdk/client/AMSdk;->makeAdLoader(Lcom/aggmoread/sdk/client/AMAdLoadSlot;)Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/join/mgps/ad/s;->p:Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 91
    .line 92
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/ad/s;->p:Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object v4, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v5, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 99
    .line 100
    invoke-virtual {p1, v4, v5}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadRewardAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/reward/AMRewardAdListener;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iget-object v4, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v4, v3, p1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {p1, v3}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    iput-boolean v2, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {v2, v3, p1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {p1, v3}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->t(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/s;->o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ad/s;->s:Lcom/join/mgps/ad/s$a;

    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/aggmoread/sdk/client/reward/AMRewardAd;->show(Landroid/app/Activity;Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/join/mgps/ad/s;->o:Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 13
    .line 14
    return-void
.end method
