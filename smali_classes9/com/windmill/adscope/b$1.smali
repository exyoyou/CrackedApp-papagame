.class final Lcom/windmill/adscope/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/adscope/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/adscope/b;


# direct methods
.method constructor <init>(Lcom/windmill/adscope/b;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v0, v0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/adscope/c$a;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v0, v0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/adscope/c$a;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdFailed(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v0, v0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    const-string v2, "onAdFailed"

    invoke-direct {v1, p1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/windmill/adscope/c$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v1, v1, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/beizi/fusion/InterstitialAd;->isLoaded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v0, v0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->getECPM()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v1, v1, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/windmill/adscope/c$a;->onInterstitialAdLoadSuccess(I)V

    :cond_2
    return-void
.end method

.method public final onAdShown()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/b$1;->a:Lcom/windmill/adscope/b;

    iget-object v0, v0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/adscope/c$a;->onInterstitialAdStartPlaying()V

    :cond_0
    return-void
.end method
