.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->a(J)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v0, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;)V

    const-wide/16 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->c()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_0
    return-void
.end method

.method public onVideoInit()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->onVideoInit()V

    :cond_0
    return-void
.end method

.method public onVideoLoading()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->onVideoLoading()V

    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/i/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/m;->onVideoStart()V

    :cond_0
    return-void
.end method
