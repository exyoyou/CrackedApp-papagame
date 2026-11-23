.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/c;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/l/a;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public l()V
    .locals 4

    const-string v0, "nv_"

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

    :cond_0
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

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/l/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/l/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aggmoread/sdk/z/a/l/c;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/aggmoread/sdk/z/a/l/d;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/aggmoread/sdk/z/a/l/d;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/l/d;->f()I

    move-result v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v3, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/f/d;-><init>(Lcom/aggmoread/sdk/z/a/l/c;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->a(II)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->e(Ljava/util/List;)V

    return-void
.end method
