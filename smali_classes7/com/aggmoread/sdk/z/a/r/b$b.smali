.class Lcom/aggmoread/sdk/z/a/r/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/b;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onRewardClose "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->b(Lcom/aggmoread/sdk/z/a/r/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(FI)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(FI)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 3
    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onRewardClick "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/s/a;)V
    .locals 2

    .line 4
    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onVideoShow "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Lcom/aggmoread/sdk/z/a/s/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
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

    .line 6
    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onRewardReward "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onVideoSkipClosed "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onVideoClosed "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onVideoExposure "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->d()V

    :cond_0
    return-void
.end method

.method public onVideoCached()V
    .locals 2

    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onVideoCached "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    const-string v0, "ApiRewardVideoPresenter"

    const-string v1, "onRewardComplete "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b$b;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->onVideoComplete()V

    :cond_0
    return-void
.end method
