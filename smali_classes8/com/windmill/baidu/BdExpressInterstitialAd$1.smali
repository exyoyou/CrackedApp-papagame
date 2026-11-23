.class Lcom/windmill/baidu/BdExpressInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/c;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/c;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADExposed()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdStartPlaying()V

    :cond_0
    return-void
.end method

.method public onADExposureFailed()V
    .locals 0

    return-void
.end method

.method public onADLoaded()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v1, v1, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/windmill/baidu/c;->d:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v3, v1, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getPECPM()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/windmill/baidu/e$a;->adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdLoadSuccess()V

    :cond_1
    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iput-boolean v2, v0, Lcom/windmill/baidu/c;->e:Z

    :cond_2
    return-void
.end method

.method public onAdCacheFailed()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdCacheFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v1, v1, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

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

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    const-string v3, "onAdCacheFailed"

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/c;->a(Lcom/windmill/baidu/c;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onAdCacheSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdCacheSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v1, v1, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

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

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/baidu/c;->e:Z

    iget-object v0, v0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdLoadSuccess()V

    :cond_1
    return-void
.end method

.method public onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    iget-object v0, v0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/c;->a(Lcom/windmill/baidu/c;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressInterstitialAd$1;->a:Lcom/windmill/baidu/c;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/c;->a(Lcom/windmill/baidu/c;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method
