.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/a;
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
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/b/b/a$b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/b/b/a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e$a;->e()Lcom/aggmoread/sdk/z/a/i/e;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/b/b/a;

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
    .locals 6
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/a/l/c;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;-><init>(Lcom/aggmoread/sdk/z/a/l/c;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->e(Ljava/util/List;)V

    return-void
.end method
