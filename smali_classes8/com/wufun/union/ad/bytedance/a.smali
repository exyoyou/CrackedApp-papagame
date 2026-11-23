.class public Lcom/wufun/union/ad/bytedance/a;
.super Lcom/wufun/union/ad/AdChannel;
.source "SourceFile"


# static fields
.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x7

.field public static final u:I = 0x8


# instance fields
.field private j:Z

.field k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufun/union/ad/AdChannel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/wufun/union/ad/bytedance/a;->j:Z

    .line 6
    .line 7
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic n(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/wufun/union/ad/bytedance/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic r(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic s(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic t(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/wufun/union/ad/bytedance/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "PrefDef"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "sdkInit"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v0, 0x3

    .line 39
    const/4 v1, 0x5

    .line 40
    const/4 v2, 0x4

    .line 41
    filled-new-array {v2, v0, v1}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/wufun/union/ad/bytedance/a$a;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/wufun/union/ad/bytedance/a$a;-><init>(Lcom/wufun/union/ad/bytedance/a;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 82
    .line 83
    return-void
.end method

.method public h(Ljava/lang/String;FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "PrefDef"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "sdkInit"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    const-string p2, "ad code id is must not null"

    .line 40
    .line 41
    invoke-virtual {p0, v1, p1, p2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x2

    .line 61
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object p2, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 76
    .line 77
    new-instance p3, Lcom/wufun/union/ad/bytedance/a$b;

    .line 78
    .line 79
    invoke-direct {p3, p0}, Lcom/wufun/union/ad/bytedance/a$b;-><init>(Lcom/wufun/union/ad/bytedance/a;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    .line 88
    const-string p2, "ad sdk not init"

    .line 89
    .line 90
    invoke-virtual {p0, v1, p1, p2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/wufun/union/ad/bytedance/a$c;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/wufun/union/ad/bytedance/a$c;-><init>(Lcom/wufun/union/ad/bytedance/a;Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardPlayAgainInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/wufun/union/ad/bytedance/a;->j:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method
