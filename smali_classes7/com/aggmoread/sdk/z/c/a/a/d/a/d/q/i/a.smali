.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/s/f;


# instance fields
.field private C:Lcom/aggmoread/sdk/z/a/h/c;

.field private D:Lcom/aggmoread/sdk/z/a/a;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/h/c$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Z)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Landroid/view/View;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/a/h/c$b;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e$a;->e()Lcom/aggmoread/sdk/z/a/i/e;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/a/h/c;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->C:Lcom/aggmoread/sdk/z/a/h/c;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->C:Lcom/aggmoread/sdk/z/a/h/c;

    invoke-virtual {p1, p0}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/s/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/a;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->D:Lcom/aggmoread/sdk/z/a/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/a;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/a;->d()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/a;->d()I

    move-result p1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->f(Ljava/util/List;)V

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

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->D:Lcom/aggmoread/sdk/z/a/a;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->D:Lcom/aggmoread/sdk/z/a/a;

    invoke-interface {v1, v0, p1}, Lcom/aggmoread/sdk/z/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v0, 0x3baa1028

    const-string v1, "\u5bb9\u5668\u9875\u9762\u4e0d\u53ef\u89c1!"

    invoke-direct {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/i/a;->D:Lcom/aggmoread/sdk/z/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdClicked()V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q()V

    return-void
.end method

.method public onAdShow()V
    .locals 0

    return-void
.end method

.method public onAdTick(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(J)V

    return-void
.end method
