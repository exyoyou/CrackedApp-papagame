.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# instance fields
.field private v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAd activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMRTAGCSJ"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    return-object p0
.end method

.method private w()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private x()I
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private y()V
    .locals 8

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->w()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, 0x3baa17fd

    const-string v1, "\u5f53\u524d\u4f20\u5165Activity\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "use cjs verify = false"

    const-string v6, "AMRTAGCSJ"

    invoke-static {v6, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v7, v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-virtual {v7, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v5, v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v5}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->x()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setMuted(Z)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->d()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setUseSurfaceView(Z)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v5, v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v5}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v5, v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v5}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    const-string v5, "gromoreExtra"

    invoke-virtual {v0, v5, v3}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdSlot;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediationAdSlot(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onRewardVideoCached"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->u()V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->v:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    :cond_0
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    if-nez v1, :cond_0

    const v0, 0x3baa1028

    const-string v1, "\u7f3a\u5c11\u5fc5\u8981\u7684\u6fc0\u52b1\u89c6\u9891\u914d\u7f6e\u53c2\u6570!"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->d0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMRTAGCSJ"

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const v0, 0x3baa17fd

    const-string v1, "csj: MSDK\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->y()V

    return-void
.end method

.method public onAdClose()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onAdClose"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r()V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onAdShow"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->B()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s()V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onAdVideoBarClick"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->q()V

    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 2

    const-string p1, "onRewardVerify"

    const-string p2, "AMRTAGCSJ"

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "reward_extra_key_error_code"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "reward_extra_key_error_msg"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x277f

    if-ne p1, p3, :cond_0

    const-string p1, "\u5f53\u524dCSJ\u5224\u5b9a\u4e3a\u5f02\u5e38\u7528\u6237"

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    const p2, 0x3baa2798

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "reward.ERROR_CODE"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Ljava/util/Map;)V

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onSkippedVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onVideoError()V
    .locals 3

    const-string v0, "AMRTAGCSJ"

    const-string v1, "onVideoError"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1028

    const-string v2, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25!"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->c(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act = null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMRTAGCSJ"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1419

    const-string v2, "\u5f53\u524d\u4f20\u5165Activity\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->c(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()V
    .locals 2

    const-string v0, "AMRTAGCSJ"

    const-string v1, "ad loaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->B()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->d(I)V

    return-void
.end method
