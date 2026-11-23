.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;
.source "SourceFile"


# instance fields
.field private A:Lcom/aggmoread/sdk/z/a/l/c;

.field private B:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/a/l/c;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/a/l/c;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    const-string p2, "AMHTAG"

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    instance-of p2, p1, Lcom/aggmoread/sdk/z/a/l/d;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/aggmoread/sdk/z/a/l/d;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/l/d;->f()I

    move-result p1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->t:Ljava/util/Map;

    invoke-static {p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p7, :cond_1

    move-object p3, p7

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    const-string v0, "ovov + true"

    goto :goto_1

    :cond_2
    iget-object p6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    const-string v0, "ovov + false"

    :goto_1
    invoke-static {p6, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p6}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_3

    iget-object p6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    const-string v0, "ovov "

    invoke-static {p6, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object p8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of p3, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->x:Z

    if-eqz p3, :cond_4

    move-object p3, p2

    check-cast p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    sget-object p6, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->y:Ljava/lang/Object;

    invoke-virtual {p3, p6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lcom/aggmoread/sdk/z/a/u/d;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    move-object p6, p3

    :goto_2
    if-eqz p3, :cond_5

    if-nez p6, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    move-object p6, p1

    check-cast p6, Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {p0, p2, p7, p6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object p3

    :cond_6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d$a;

    invoke-direct {p2, p0, p8}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    invoke-interface {p1, p6, p4, p2}, Lcom/aggmoread/sdk/z/a/l/c;->a(Landroid/view/View;Ljava/util/List;Lcom/aggmoread/sdk/z/a/l/f;)Landroid/view/View;

    const/4 p1, 0x0

    if-eqz p5, :cond_7

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    aput-object p5, p2, p1

    goto :goto_3

    :cond_7
    new-array p2, p1, [Landroid/view/View;

    :goto_3
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->a(Landroid/view/View;[Landroid/view/View;)V

    return-object p3
.end method

.method protected a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/a/u/d;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/u/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;[Landroid/view/View;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->w:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->u:Ljava/lang/ref/WeakReference;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 0

    .line 7
    instance-of p1, p1, Lcom/aggmoread/sdk/z/a/u/m;

    return p1
.end method

.method protected b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/z/a/u/m;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/u/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    new-instance v1, Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/t/e$b;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/t/e$b;->a(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/t/e$b;->a(I)Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/t/e$b;->b(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/t/e$b;->d(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/t/e$b;->e(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/t/e$b;->c(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    :cond_0
    instance-of v0, p1, Lcom/aggmoread/sdk/z/a/u/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    check-cast p1, Lcom/aggmoread/sdk/z/a/u/m;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/t/e$b;->a()Lcom/aggmoread/sdk/z/a/t/e;

    move-result-object v1

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d$b;

    invoke-direct {v2, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/aggmoread/sdk/z/a/l/e;->a(Lcom/aggmoread/sdk/z/a/u/m;Lcom/aggmoread/sdk/z/a/t/e;Lcom/aggmoread/sdk/z/a/l/e$a;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public g()Lcom/aggmoread/sdk/z/c/a/a/c/c;
    .locals 9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->b()Lcom/aggmoread/sdk/z/a/g/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/g/a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/a/g/a;->e:Ljava/lang/String;

    iget v3, v0, Lcom/aggmoread/sdk/z/a/g/a;->b:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/g/a;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/aggmoread/sdk/z/a/g/a;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/aggmoread/sdk/z/a/g/a;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v1

    iget-object v2, v0, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aggmoread/sdk/z/a/g/a$a;

    new-instance v5, Lcom/aggmoread/sdk/z/c/a/a/c/c$a;

    iget-object v6, v4, Lcom/aggmoread/sdk/z/a/g/a$a;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/a/g/a$a;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/aggmoread/sdk/z/c/a/a/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/util/List;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->g()Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppPrice()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppScore()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCount()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPictureWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->getVideoCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isAppAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/c;->isAppAd()Z

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/c;->isVideoAd()Z

    move-result v0

    return v0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->pauseVideo()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/c;->resume()V

    return-void
.end method

.method public resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->resumeVideo()V

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0

    return-void
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->startVideo()V

    return-void
.end method

.method public stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;->A:Lcom/aggmoread/sdk/z/a/l/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/l/e;->stopVideo()V

    return-void
.end method
