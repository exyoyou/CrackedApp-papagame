.class public Lcom/windmill/sigmob/SigRewardAdAdapter;
.super Lcom/windmill/sdk/custom/WMCustomRewardAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;


# instance fields
.field private a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

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

    iget-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/m;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

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

    const-string v0, "SigRewardAdAdapter# loadAd: placementId = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const-string v0, "SigRewardAdAdapter#"

    invoke-static {v0, p0}, Lcom/windmill/sigmob/a;->a(Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/sigmob/windad/WindAdRequest;->setExtOptions(Ljava/util/Map;)V

    new-instance p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-direct {p1, v1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;-><init>(Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;)V

    iput-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1, p0}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->setWindRewardVideoAdListener(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->loadAd(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    :try_start_1
    const-string p1, "bidFloor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    const-string p2, "CNY"

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->loadAd()Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->loadAd()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

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

    const-string v1, "SigRewardAdAdapter#notifyBiddingResult: isWin = "

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

    iget-object p2, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigRewardAdAdapter#notifyBiddingResult: channelId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bidInfoToOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {v0, p1, p3, p2}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoWithChannel(IZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const-string v0, "SigRewardAdAdapter#notifyBiddingResult: bidInfoWithChannel = "

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
    const-string p3, "SigRewardAdAdapter#notifyBiddingResult: map = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SigRewardAdAdapter#notifyBiddingResult: error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardAdClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public onRewardAdClosed(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    return-void
.end method

.method public onRewardAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SigRewardAdAdapter#onRewardAdLoadError: error = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onRewardAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SigRewardAdAdapter# onRewardAdLoadSuccess:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess()V

    return-void
.end method

.method public onRewardAdPlayEnd(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public onRewardAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onRewardAdPlayStart(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    return-void
.end method

.method public onRewardAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRewardAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SigRewardAdAdapter#onRewardAdPreLoadSuccess: placementId = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object v0, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    return-void
.end method

.method public onRewardAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardVideo/WindRewardInfo;->isReward()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdReward(Z)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 1
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
    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_1
    const-string p1, "eCpm"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/windmill/sigmob/SigRewardAdAdapter;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->show(Ljava/util/HashMap;)Z

    return-void

    :cond_1
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "rewardVideoAd is not ready."

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
