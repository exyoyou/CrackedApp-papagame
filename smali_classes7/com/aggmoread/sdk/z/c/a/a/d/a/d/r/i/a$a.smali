.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdDismissed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdCacheFailed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v2, -0x3e8

    const-string v3, "\u5e7f\u544a\u7d20\u6750\u52a0\u8f7d\u5931\u8d25\uff01"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "AMSTAGBD"

    const-string v1, "onLpClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdCacheSuccess"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdSkip"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "AMSTAGBD"

    const-string v1, "onADLoaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)Lcom/baidu/mobads/sdk/api/SplashAd;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    iget-object v2, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v2, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Ljava/util/List;)V

    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdPresent"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 2

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdClick"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    return-void
.end method

.method public onAdExposed()V
    .locals 3

    const-string v0, "AMSTAGBD"

    const-string v1, "onAdExposed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v2, -0x3e8

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method
