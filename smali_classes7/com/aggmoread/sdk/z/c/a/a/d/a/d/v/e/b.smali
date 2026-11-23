.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;
.source "SourceFile"


# instance fields
.field private v:Lcom/qq/e/ads/banner2/UnifiedBannerView;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method private A()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->s()V

    return-void
.end method

.method private B()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->a([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t()V

    return-void
.end method

.method private C()V
    .locals 3

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->v()V

    return-void
.end method

.method private D()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->w()V

    return-void
.end method

.method private E()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u()V

    return-void
.end method

.method private F()V
    .locals 3

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->k()Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/a;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->C()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;Lcom/qq/e/comm/util/AdError;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->a(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method

.method private a(Lcom/qq/e/comm/util/AdError;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/qq/e/comm/util/AdError;)Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->B()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->z()V

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->y()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->E()V

    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->D()V

    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->A()V

    return-void
.end method

.method private y()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q()V

    return-void
.end method

.method private z()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->r()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->F()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0, p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;IILjava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    :cond_0
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 11

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/g;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;)V

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/a$a;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->i:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    iget-object v8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/a;->a()Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    move-result-object v9

    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static/range {v4 .. v10}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q:Z

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-boolean v3, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->l:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->o:I

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    :goto_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/e/b;->v:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    return-void
.end method
