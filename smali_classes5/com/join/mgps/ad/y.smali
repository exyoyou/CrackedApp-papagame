.class public Lcom/join/mgps/ad/y;
.super Lcom/join/mgps/ad/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/y$b;
    }
.end annotation


# instance fields
.field private o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private q:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private r:Z

.field private s:Lcom/join/mgps/ad/y$b;

.field private t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


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
    const-string v0, "TT"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/y;->r:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/y;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/y;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic v(Lcom/join/mgps/ad/y;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 2
    .line 3
    return-object p1
.end method

.method private x(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/ad/adapter/f;->b()Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/ad/adapter/f;->b()Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/ad/adapter/f;->b()Landroid/graphics/Point;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x500

    .line 21
    .line 22
    const/16 v1, 0x2d0

    .line 23
    .line 24
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 25
    .line 26
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 56
    .line 57
    invoke-virtual {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/join/mgps/ad/y;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/ad/y$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/y$b;-><init>(Lcom/join/mgps/ad/y;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Lcom/join/mgps/ad/x;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/x;-><init>(Lcom/join/mgps/ad/y;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/f;->d(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 46
    .line 47
    .line 48
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
    iget-object v3, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

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
    iget-boolean v3, p0, Lcom/join/mgps/ad/y;->r:Z

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/join/mgps/ad/y;->r:Z

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
    .locals 5
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
    :try_start_0
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v3, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/y;->r:Z

    .line 30
    .line 31
    sget-boolean v3, Lcom/join/mgps/ad/d;->m:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "load:"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/ad/y;->x(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    new-instance v3, Lcom/join/mgps/ad/y$b;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lcom/join/mgps/ad/y$b;-><init>(Lcom/join/mgps/ad/y;)V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 61
    .line 62
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Lcom/join/mgps/ad/y$b;->a(Z)V

    .line 65
    .line 66
    .line 67
    iget-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/ad/y;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v3, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-interface {p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/join/mgps/ad/y;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 96
    .line 97
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/ad/y;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object v3, p0, Lcom/join/mgps/ad/y;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/join/mgps/ad/y;->s:Lcom/join/mgps/ad/y$b;

    .line 104
    .line 105
    invoke-interface {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    iput-boolean v2, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 118
    .line 119
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_0
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
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/y;->r:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/y;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/ad/y$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/y$a;-><init>(Lcom/join/mgps/ad/y;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/ad/y;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/ad/y;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/ad/y;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 7
    .line 8
    :cond_0
    return-void
.end method
