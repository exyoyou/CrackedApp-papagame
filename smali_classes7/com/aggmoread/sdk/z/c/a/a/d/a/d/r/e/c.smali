.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private w:Ljava/lang/String;

.field private x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

.field private y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ExpressResponse;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    const-string p4, "AMEPTAGBD"

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->q()V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result p4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    invoke-static {v0, p4, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->s()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)Lcom/baidu/mobads/sdk/api/ExpressResponse;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->onAdShow()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->t()V

    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->u()V

    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x()V

    return-void
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->v()V

    return-void
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w()V

    return-void
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-object p0
.end method

.method static synthetic k(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private onAdShow()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->k()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V

    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setInteractionListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$g;)Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;)V

    return-void
.end method

.method private s()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->i()V

    return-void
.end method

.method private t()V
    .locals 0

    return-void
.end method

.method private u()V
    .locals 0

    return-void
.end method

.method private v()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->j()V

    return-void
.end method

.method private w()V
    .locals 0

    return-void
.end method

.method private x()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_0

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

.method public b(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->b(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    const-string p2, "203"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/ExpressResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    const-string v1, "getView"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$c;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-object v0
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public render()V
    .locals 8

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    const-string v1, "render"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->x:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->render()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    const-string v1, "render enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->z:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->y:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

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

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->w:Ljava/lang/String;

    const-string v1, "render failed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/c;->render()V

    return-void
.end method
