.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/l/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;->a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

.field final synthetic h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->g:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onADClicked()V
    .locals 9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v3

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v5, v1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-wide v6, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v8, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v3 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->g:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public onADExposed()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b$a;->g:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/b;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method
