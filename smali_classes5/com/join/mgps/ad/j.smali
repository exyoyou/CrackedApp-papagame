.class public Lcom/join/mgps/ad/j;
.super Lcom/join/mgps/ad/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/j$b;
    }
.end annotation


# instance fields
.field private o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private q:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private r:Z

.field private s:Lcom/join/mgps/ad/j$b;

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
    const-string v0, "GroMore"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/j;->r:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/j;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic v(Lcom/join/mgps/ad/j;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 2
    .line 3
    return-object p1
.end method

.method private w(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthInPx(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightInPx(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "user123"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "media_extra"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/join/mgps/ad/j;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/ad/j$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/j$b;-><init>(Lcom/join/mgps/ad/j;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

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
    new-instance v2, Lcom/join/mgps/ad/i;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/i;-><init>(Lcom/join/mgps/ad/j;)V

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
    iget-object v3, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

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
    iget-boolean v3, p0, Lcom/join/mgps/ad/j;->r:Z

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/join/mgps/ad/j;->r:Z

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
    new-instance v4, Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v4, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/j;->r:Z

    .line 31
    .line 32
    sget-boolean v4, Lcom/join/mgps/ad/d;->m:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "load:"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/ad/j;->w(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

    .line 53
    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    new-instance v4, Lcom/join/mgps/ad/j$b;

    .line 57
    .line 58
    invoke-direct {v4, p0}, Lcom/join/mgps/ad/j$b;-><init>(Lcom/join/mgps/ad/j;)V

    .line 59
    .line 60
    .line 61
    iput-object v4, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

    .line 62
    .line 63
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Lcom/join/mgps/ad/j$b;->a(Z)V

    .line 66
    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/ad/j;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v4, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-interface {p1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/join/mgps/ad/j;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 97
    .line 98
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/ad/j;->o:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget-object v4, p0, Lcom/join/mgps/ad/j;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/join/mgps/ad/j;->s:Lcom/join/mgps/ad/j$b;

    .line 105
    .line 106
    invoke-interface {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    iget-object v4, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v4, v3, p1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {p1, v3}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    iput-boolean v2, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    iget-object v2, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v2, v3, p1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {p1, v3}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
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
    iget-object v0, p0, Lcom/join/mgps/ad/j;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/ad/j$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/j$a;-><init>(Lcom/join/mgps/ad/j;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/ad/j;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/ad/j;->t:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/join/mgps/ad/j;->p:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 29
    .line 30
    return-void
.end method
