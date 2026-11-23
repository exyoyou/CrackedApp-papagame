.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;


# instance fields
.field private A:Landroid/view/View$OnAttachStateChangeListener;

.field private B:Landroid/view/View;

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:J

.field private x:Ljava/lang/String;

.field private y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

.field private z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    const-string p4, "AMDRAWTAGCSJ"

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->k()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->A:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/c/o/b;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/c/o/b;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->A:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-object p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    :cond_0
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->A:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    const-string v1, "gv "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public onAdClick()V
    .locals 9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v5

    iget-wide v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->D:J

    iget-object v8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v3 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 8

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    const-string v1, "onAdShow "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->k()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->D:J

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->d()V

    :cond_1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    const-string p2, "onRenderFail "

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onRenderFail()V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FFZ)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    const-string p2, "onRenderSuccess "

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onRenderSuccess()V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->B:Landroid/view/View;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public render()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->x:Ljava/lang/String;

    const-string v1, "re "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->y:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->render()V

    :cond_0
    return-void
.end method

.method public renderActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->render()V

    return-void
.end method
