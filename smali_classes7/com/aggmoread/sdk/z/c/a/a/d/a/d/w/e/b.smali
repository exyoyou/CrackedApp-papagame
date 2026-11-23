.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b$b;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Ljava/lang/String;

.field private y:Lcom/kwad/sdk/api/KsDrawAd;

.field private z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsDrawAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/KsDrawAd;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    const-string p2, "AMDRAWTAGKS"

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    const-class p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    aput-object v1, p4, v0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b$a;)V

    invoke-static {p2, p4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    iget-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-interface {p4, p2}, Lcom/kwad/sdk/api/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->t:Ljava/util/Map;

    invoke-static {p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 2
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->b(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Lcom/kwad/sdk/api/KsDrawAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    const-string v1, "getView"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    return-object v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public l()V
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

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v5

    iget-wide v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

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

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->u:Lcom/aggmoread/sdk/z/c/a/a/c/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/d;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->u:Lcom/aggmoread/sdk/z/c/a/a/c/o/d;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v2, -0x3e8

    const-string v3, "ks:\u89c6\u9891\u7d20\u6750\u64ad\u653e\u5931\u8d25\uff01"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/d;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->u:Lcom/aggmoread/sdk/z/c/a/a/c/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/d;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->d()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->u:Lcom/aggmoread/sdk/z/c/a/a/c/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/d;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->u:Lcom/aggmoread/sdk/z/c/a/a/c/o/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/d;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    const-string v1, "render"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->y:Lcom/kwad/sdk/api/KsDrawAd;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    const-string v1, "render enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->k()V

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->A:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->v:Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onRenderSuccess()V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->z:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->x:Ljava/lang/String;

    const-string v1, "render failed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/e/b;->render()V

    return-void
.end method
