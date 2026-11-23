.class Lcom/aggmoread/sdk/b/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/b/n;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/s/a;Lcom/aggmoread/sdk/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/b/n;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/client/AMError;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/d;->a()I

    move-result v2

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/client/AMError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/client/IAMAdInteractionListener;->onAdError(Lcom/aggmoread/sdk/client/AMError;)V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;->onAdExposed()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 0

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;->onReward(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n$a;->a:Lcom/aggmoread/sdk/b/n;

    invoke-static {v0}, Lcom/aggmoread/sdk/b/n;->a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;->onVideoComplete()V

    :cond_0
    return-void
.end method
