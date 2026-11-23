.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/s/d;


# instance fields
.field private v:Lcom/aggmoread/sdk/z/a/h/c;

.field private w:Lcom/aggmoread/sdk/z/a/a;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "AMRTAGAPI"

    const-string v1, "onADClose"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/a;)V
    .locals 2

    .line 2
    const-string v0, "AMRTAGAPI"

    const-string v1, "onADLoad"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->d(I)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMRTAGAPI"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "AMRTAGAPI"

    const-string v1, "showInner ac"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/aggmoread/sdk/z/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AMRTAGAPI"

    const-string v1, "onADExpose"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s()V

    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public l()V
    .locals 7

    const-string v0, "handle"

    const-string v1, "AMRTAGAPI"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v0

    new-instance v3, Lcom/aggmoread/sdk/z/a/t/e$b;

    invoke-direct {v3}, Lcom/aggmoread/sdk/z/a/t/e$b;-><init>()V

    invoke-virtual {v3, v0}, Lcom/aggmoread/sdk/z/a/t/e$b;->a(Z)Lcom/aggmoread/sdk/z/a/t/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/t/e$b;->a()Lcom/aggmoread/sdk/z/a/t/e;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    :try_start_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/c;

    move-result-object v4

    iget-object v5, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v4, v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v4

    check-cast v4, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v4, v2}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Z)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v2

    check-cast v2, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v2, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Lcom/aggmoread/sdk/z/a/t/e;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/a/h/c$b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->e()Lcom/aggmoread/sdk/z/a/i/e;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/a/h/c;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->v:Lcom/aggmoread/sdk/z/a/h/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->v:Lcom/aggmoread/sdk/z/a/h/c;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/s/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1418

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25!"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :goto_1
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    const-string v0, "AMRTAGAPI"

    const-string v1, "onADClick"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->q()V

    return-void
.end method

.method public onAdShow()V
    .locals 4

    const-string v0, "AMRTAGAPI"

    const-string v1, "onADShow"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[I)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t()V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AMRTAGAPI"

    const-string v1, "reward onReward map"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->r:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->b(Ljava/util/Map;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    const-string v0, "AMRTAGAPI"

    const-string v1, "onVideoCached"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->u()V

    return-void
.end method

.method public onVideoCompleted()V
    .locals 2

    const-string v0, "AMRTAGAPI"

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->s:[Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a([Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->a(Ljava/util/Map;)V

    return-void
.end method

.method public v()V
    .locals 3

    const-string v0, "AMRTAGAPI"

    const-string v1, "showInner "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/j;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/h/a;->w:Lcom/aggmoread/sdk/z/a/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/a;->b()Z

    :cond_0
    return-void
.end method
