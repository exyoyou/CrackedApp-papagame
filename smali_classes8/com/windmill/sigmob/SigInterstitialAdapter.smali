.class public Lcom/windmill/sigmob/SigInterstitialAdapter;
.super Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sigmob/b$a;


# instance fields
.field private a:Lcom/windmill/sigmob/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigInterstitialAdapter#adapterDidLoadBiddingPriceSuccess: price = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", biddingType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v0, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/windmill/sigmob/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/windmill/sigmob/b;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSaasChannelInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/windmill/sigmob/b;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sigmob/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p1, "placementId"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->getInterstitialAdType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigInterstitialAdapter#loadAd: placementId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", interstitialAdType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/windmill/sigmob/g;

    invoke-direct {v0, p0, p0}, Lcom/windmill/sigmob/g;-><init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;Lcom/windmill/sigmob/b$a;)V

    iput-object v0, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/windmill/sigmob/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "can not support adType."

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public notifyBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigInterstitialAdapter#notifyBiddingResult: isWin = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", referBidInfo = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigInterstitialAdapter#notifyBiddingResult: channelId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bidInfoToOut = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    invoke-static {v0, p1, p3, p2}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoWithChannel(IZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const-string v0, "SigInterstitialAdapter#notifyBiddingResult: bidInfoWithChannel = "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Lcom/windmill/sigmob/SigAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/windmill/sigmob/SigAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    :goto_0
    const-string p3, "SigInterstitialAdapter#notifyBiddingResult: map = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    invoke-virtual {p1, p2}, Lcom/windmill/sigmob/b;->a(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    invoke-virtual {p1, p2}, Lcom/windmill/sigmob/b;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SigInterstitialAdapter#notifyBiddingResult: error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 1

    const-string v0, "SigInterstitialAdapter#onInterstitialAdClick"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClick()V

    return-void
.end method

.method public onInterstitialAdClose()V
    .locals 1

    const-string v0, "SigInterstitialAdapter#onInterstitialAdClose"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClosed()V

    return-void
.end method

.method public onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigInterstitialAdapter#onInterstitialAdFailToLoad: error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigInterstitialAdapter#onInterstitialAdFailToPlaying: error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onInterstitialAdLoadSuccess()V
    .locals 1

    const-string v0, "SigInterstitialAdapter#onInterstitialAdLoadSuccess"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    return-void
.end method

.method public onInterstitialAdPlayEnd()V
    .locals 1

    const-string v0, "SigInterstitialAdapter#onInterstitialAdPlayEnd"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public onInterstitialAdStartPlaying()V
    .locals 1

    const-string v0, "SigInterstitialAdapter#onInterstitialAdStartPlaying"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdShow()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sigmob/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sigmob/SigInterstitialAdapter;->a:Lcom/windmill/sigmob/b;

    invoke-virtual {p1, p2, p3}, Lcom/windmill/sigmob/b;->a(Ljava/util/HashMap;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6210\u529f\u52a0\u8f7d\u5e7f\u544a\u540e\u518d\u8fdb\u884c\u5e7f\u544a\u5c55\u793a"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
