.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/f/a;


# instance fields
.field private v:Lcom/aggmoread/sdk/z/a/f/b;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method private y()V
    .locals 3

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/f/b;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1418

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25!"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_2
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
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->y()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/f/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->x()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->a([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->t()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/f/b;Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b(Lcom/aggmoread/sdk/z/a/f/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->q()V

    return-void
.end method

.method public c(Lcom/aggmoread/sdk/z/a/f/b;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/aggmoread/sdk/z/a/f/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->r()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/f/b;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    :cond_0
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/f/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 4

    const-string v0, "ban_"

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v1

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "AGBANNERHTAG"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e$a;->e()Lcom/aggmoread/sdk/z/a/i/e;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/h/c;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/f/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/f/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/a/f/b;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/e/a;->v:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/f/b;->b()I

    move-result p1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->v()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v0, -0x3e8

    const-string v1, "\u5e7f\u544a\u65e0\u586b\u5145!"

    invoke-direct {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :goto_0
    return-void
.end method
