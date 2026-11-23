.class public Lcom/join/mgps/ad/f;
.super Lcom/join/mgps/ad/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/f$b;
    }
.end annotation


# static fields
.field public static r:Z


# instance fields
.field private o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field private p:Z

.field private q:Lcom/join/mgps/ad/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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
    iput-boolean p1, p0, Lcom/join/mgps/ad/f;->p:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/f;->p:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
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
    sget-boolean v0, Lcom/join/mgps/ad/f;->r:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setChannel(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setEnableMediationTool(Z)V

    .line 41
    .line 42
    .line 43
    sput-boolean v0, Lcom/join/mgps/ad/f;->r:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/ad/f;->p:Z

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
    .locals 3
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
    iput-boolean v0, p0, Lcom/join/mgps/ad/f;->p:Z

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
    iget-object v0, p0, Lcom/join/mgps/ad/f;->q:Lcom/join/mgps/ad/f$b;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/ad/f$b;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/f$b;-><init>(Lcom/join/mgps/ad/f;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/ad/f;->q:Lcom/join/mgps/ad/f$b;

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ad/f;->q:Lcom/join/mgps/ad/f$b;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/f$b;->a(Z)V

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
    iget-object p1, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->close()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 79
    .line 80
    .line 81
    :cond_4
    new-instance p1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/ad/f;->q:Lcom/join/mgps/ad/f$b;

    .line 88
    .line 89
    invoke-direct {p1, v0, v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 93
    .line 94
    new-instance v0, Lcom/join/mgps/ad/f$a;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/f$a;-><init>(Lcom/join/mgps/ad/f;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setNegativeFeedbackListener(Lcom/qq/e/comm/listeners/NegativeFeedbackListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/ad/f;->q:Lcom/join/mgps/ad/f$b;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    const/4 p1, -0x1

    .line 120
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    .line 121
    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
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
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/f;->p:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f;->o:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
