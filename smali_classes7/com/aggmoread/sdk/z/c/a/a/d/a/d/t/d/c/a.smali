.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# instance fields
.field private v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/b;->b()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t:[Ljava/lang/Object;

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->r()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;Landroid/app/Activity;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .line 3
    const-string v0, "AMBTAGCSJ"

    const-string v1, "showInner "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$c;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    :cond_1
    return-void
.end method

.method private y()V
    .locals 6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x3baa17fd

    const-string v1, "\u5f53\u524d\u4f20\u5165Activity\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->q:Lcom/aggmoread/sdk/z/c/a/a/c/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/c/i;->b()I

    move-result v2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->q:Lcom/aggmoread/sdk/z/c/a/a/c/i;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/c/i;->a()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    if-ge v1, v3, :cond_3

    :cond_2
    const-wide/high16 v1, 0x4074000000000000L    # 320.0

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v2

    const-wide v3, 0x4062c00000000000L    # 150.0

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v1

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 5

    .line 3
    const-string v0, "showInContainer "

    const-string v1, "AMBTAGCSJ"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show #3 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->b(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a([Landroid/view/View;)V
    .locals 3

    .line 6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t:[Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t:[Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    const-string v0, "AMBTAGCSJ"

    const-string v1, "show() "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    :cond_0
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

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

    const-string v2, "AMBTAGCSJ"

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa17fd

    const-string v2, "csj: MSDK\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->y()V

    return-void
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    const-string p1, "AMBTAGCSJ"

    const-string p2, "onAdClicked"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q()V

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 2

    const-string p1, "AMBTAGCSJ"

    const-string p2, "onAdShow"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$d;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->v:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->A()V

    :cond_0
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->x()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t()V

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const-string p1, "AMBTAGCSJ"

    const-string v0, "onRewardedAdShowFail"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 2

    const-string v0, "AMBTAGCSJ"

    const-string v1, "onBannerLoadedInner "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->A()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->v()V

    return-void
.end method
