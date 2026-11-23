.class public Lcom/join/mgps/ad/h;
.super Lcom/join/mgps/ad/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/h$a;
    }
.end annotation


# instance fields
.field private o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field private p:Z

.field private q:Lcom/join/mgps/ad/h$a;


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
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/h;->p:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/h;->p:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lcom/join/mgps/ad/g;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/g;-><init>(Lcom/join/mgps/ad/h;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/b;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/ad/h;->p:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/ad/h;->p:Z

    .line 27
    .line 28
    sget-boolean v0, Lcom/join/mgps/ad/d;->m:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "load:"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/ad/h;->q:Lcom/join/mgps/ad/h$a;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/ad/h$a;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/h$a;-><init>(Lcom/join/mgps/ad/h;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/ad/h;->q:Lcom/join/mgps/ad/h$a;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ad/h;->q:Lcom/join/mgps/ad/h$a;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/h$a;->a(Z)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/ad/h;->q:Lcom/join/mgps/ad/h$a;

    .line 80
    .line 81
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 85
    .line 86
    :cond_4
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 111
    .line 112
    const/4 v0, 0x5

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v1, v0, p1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p1, v0}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    const/4 p1, -0x1

    .line 127
    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u9519\u8bef"

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/ad/h;->o:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
