.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;
    }
.end annotation


# instance fields
.field private A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

.field private B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private C:Landroid/view/View$OnAttachStateChangeListener;

.field private w:Ljava/lang/String;

.field private x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    const-string p2, "AMEPTAGCSJ"

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->w:Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->r()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->C:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->y:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 3
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    :cond_0
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->C:Landroid/view/View$OnAttachStateChangeListener;

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

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/a;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->z:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->y:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_3
    return-object v0
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    invoke-interface {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)V

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->r()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    invoke-interface {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)V

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    invoke-interface {p1, p0, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;Ljava/lang/String;I)V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->A:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;

    invoke-interface {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b$b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;)V

    return-void
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public render()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->x:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    :cond_0
    return-void
.end method

.method public renderActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/b;->render()V

    return-void
.end method
