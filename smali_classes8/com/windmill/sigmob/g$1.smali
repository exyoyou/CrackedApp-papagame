.class final Lcom/windmill/sigmob/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/g;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/g;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/g;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p1, p1, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/windmill/sigmob/b$a;->onInterstitialAdClick()V

    return-void
.end method

.method public final onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p1, p1, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/windmill/sigmob/b$a;->onInterstitialAdClose()V

    return-void
.end method

.method public final onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p2, p2, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/windmill/sigmob/b$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p1, p1, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/windmill/sigmob/b$a;->onInterstitialAdLoadSuccess()V

    return-void
.end method

.method public final onInterstitialAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object v0, p1, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/windmill/sigmob/b$a;->adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInterstitialAdShow(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p1, p1, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/windmill/sigmob/b$a;->onInterstitialAdStartPlaying()V

    return-void
.end method

.method public final onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/windmill/sigmob/g$1;->a:Lcom/windmill/sigmob/g;

    iget-object p2, p2, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/windmill/sigmob/b$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
