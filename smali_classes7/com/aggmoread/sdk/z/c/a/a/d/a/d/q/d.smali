.class public abstract Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/aggmoread/sdk/z/a/i/e$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/aggmoread/sdk/z/a/h/a$a;
.end method

.method protected abstract a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v0

    instance-of v1, v0, Lcom/aggmoread/sdk/z/a/i/e$a;

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->m:I

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->b(I)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v1

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/i/e$a;->b(Z)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v1

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->d(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/a/i/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(Lcom/aggmoread/sdk/z/a/i/b;)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object v1

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->i(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/i/e$a;->a(D)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object p2

    iget v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->n:I

    invoke-virtual {p2, v1}, Lcom/aggmoread/sdk/z/a/i/e$a;->d(I)Lcom/aggmoread/sdk/z/a/i/e$a;

    move-result-object p2

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/a/i/e$a;->c(I)Lcom/aggmoread/sdk/z/a/i/e$a;

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/d;->a(Z)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->I()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->M()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->N()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->L()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->G()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->H()V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a()Lcom/aggmoread/sdk/z/a/h/a$a;

    move-result-object v0

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->b()Lcom/aggmoread/sdk/z/a/g/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/aggmoread/sdk/z/a/h/a;->a(Landroid/content/Context;Lcom/aggmoread/sdk/z/a/h/a$a;Lcom/aggmoread/sdk/z/a/g/b;Lcom/aggmoread/sdk/z/a/h/b;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->a:Z

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/i;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/g/i;-><init>()V

    const-string v2, "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"

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/m/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/i;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/aggmoread/sdk/z/a/h/a;->a(Lcom/aggmoread/sdk/z/a/h/a$a;Lcom/aggmoread/sdk/z/a/g/i;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/h/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/h/a;->a(I)V

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected b()Lcom/aggmoread/sdk/z/a/g/b;
    .locals 4

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;

    invoke-direct {v1, p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)V

    :try_start_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->c(I)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->a(I)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->d(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->b(I)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->g(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->a(Z)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->B()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/g/b;->c(J)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->q()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/g/b;->b(J)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/g/b;->a(J)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->b(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->a(F)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;)V

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/g/b;->a(Lcom/aggmoread/sdk/z/a/g/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method protected b(Landroid/content/Context;)V
    .locals 0

    .line 2
    return-void
.end method
