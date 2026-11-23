.class public Lcom/join/mgps/ad/u;
.super Lcom/join/mgps/ad/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/u$c;
    }
.end annotation


# static fields
.field private static p:Z


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private f:I

.field g:Lcom/join/mgps/ad/u$c;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/app/Activity;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/ad/u$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appid",
            "adID",
            "orientation",
            "listenerWrap"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ad/b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/ad/u;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/ad/u;->l:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/u;->n:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/join/mgps/ad/u;->o:J

    .line 7
    iput-object p1, p0, Lcom/join/mgps/ad/u;->i:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/ad/u;->d:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/join/mgps/ad/u;->f:I

    .line 10
    iput-object p5, p0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 11
    invoke-static {p1, p2}, Lcom/join/mgps/ad/u;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/u;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/ad/u;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/u$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appid",
            "adID",
            "listenerWrap"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/ad/u$c;)V

    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/join/mgps/ad/u;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/ad/u;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/u;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/ad/u;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/u;->n:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/ad/u;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/u;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/ad/u;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/u;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/ad/u;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/u;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/ad/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ad/u;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/join/mgps/ad/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ad/u;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/join/mgps/ad/u;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ad/u;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/join/mgps/ad/u;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/u;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic m(Lcom/join/mgps/ad/u;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ad/u;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/join/mgps/ad/u;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/u;->m:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appid"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-boolean p1, Lcom/join/android/app/common/http/c;->c:Z

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-boolean v0, Lcom/join/mgps/ad/u;->p:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/join/mgps/ad/u;->o(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    .line 32
    .line 33
    .line 34
    new-instance p0, Lcom/join/mgps/ad/u$a;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/ad/u$a;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/join/mgps/ad/u;->p:Z

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ad/u;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "user123"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "media_extra"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lcom/join/mgps/ad/u;->f:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/join/mgps/ad/u;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public r()V
    .locals 6

    .line 1
    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u9519\u8bef"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x5

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/ad/u;->q()V

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/join/mgps/ad/u;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Lcom/join/mgps/ad/u;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 13
    .line 14
    new-instance v5, Lcom/join/mgps/ad/u$b;

    .line 15
    .line 16
    invoke-direct {v5, p0}, Lcom/join/mgps/ad/u$b;-><init>(Lcom/join/mgps/ad/u;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/ad/u;->i:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v1, v0}, Lcom/join/mgps/ad/u$c;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/join/mgps/ad/u;->i:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v1, v0}, Lcom/join/mgps/ad/u$c;->onError(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public s(Landroid/app/Activity;)V
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
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/u;->t(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/join/mgps/ad/u;->u(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId",
            "howTImes",
            "times"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/ad/u;->h:Ljava/lang/String;

    .line 2
    .line 3
    iput p4, p0, Lcom/join/mgps/ad/u;->k:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/ad/u;->j:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ad/u;->m:Landroid/app/Activity;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/ad/u;->l:Z

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/ad/u;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-boolean p3, p0, Lcom/join/mgps/ad/u;->n:Z

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/join/mgps/ad/u;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/join/mgps/ad/u;->l:Z

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    iget-wide v0, p0, Lcom/join/mgps/ad/u;->o:J

    .line 55
    .line 56
    sub-long/2addr p2, v0

    .line 57
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    const-wide/16 v0, 0x7d0

    .line 62
    .line 63
    cmp-long p4, p2, v0

    .line 64
    .line 65
    if-lez p4, :cond_3

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    iput-wide p1, p0, Lcom/join/mgps/ad/u;->o:J

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/ad/u;->r()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "\u5e7f\u544a\u52a0\u8f7d\u4e2d..."

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u8054\u7f51\u91cd\u8bd5"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method
