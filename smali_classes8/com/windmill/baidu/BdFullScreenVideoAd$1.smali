.class Lcom/windmill/baidu/BdFullScreenVideoAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/FullScreenVideoAd$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/d;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/d;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClose(F)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object p1, p1, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/windmill/baidu/e$a;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/d;->a(Lcom/windmill/baidu/d;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v1, v1, Lcom/windmill/baidu/d;->c:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->isReady()Z

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

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v1, v0, Lcom/windmill/baidu/d;->c:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/baidu/d;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->c:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v3, v1, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/windmill/baidu/d;->c:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->getPECPM()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/windmill/baidu/e$a;->adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdLoadSuccess()V

    :cond_2
    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iput-boolean v2, v0, Lcom/windmill/baidu/d;->d:Z

    :cond_3
    return-void
.end method

.method public onAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdStartPlaying()V

    :cond_0
    return-void
.end method

.method public onAdSkip(F)V
    .locals 0

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 4

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    const-string v3, "onVideoDownloadFailed"

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/d;->a(Lcom/windmill/baidu/d;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoDownloadSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v1, v1, Lcom/windmill/baidu/d;->c:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->isReady()Z

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

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdLoadSuccess()V

    :cond_1
    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/baidu/d;->d:Z

    :cond_2
    return-void
.end method

.method public playCompletion()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " playCompletion()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdFullScreenVideoAd$1;->a:Lcom/windmill/baidu/d;

    iget-object v0, v0, Lcom/windmill/baidu/d;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/baidu/e$a;->onInterstitialAdPlayComplete()V

    :cond_0
    return-void
.end method
