.class public Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;
.super Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/kuaishou/e$a;


# instance fields
.field private a:Lcom/windmill/kuaishou/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v0, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    :cond_0
    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMediaExtraOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    :goto_0
    invoke-interface {v0}, Lcom/kwad/sdk/api/BaseKSAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->getRequestId(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kwad/sdk/api/KsInterstitialAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsInterstitialAd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/kuaishou/e;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "ks isReady fail:"

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    move-result p2

    const-string p3, "L"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const-string p3, "l"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadAd:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/windmill/kuaishou/c;

    invoke-direct {p2, p0, p0}, Lcom/windmill/kuaishou/c;-><init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;Lcom/windmill/kuaishou/e$a;)V

    :goto_0
    iput-object p2, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "can not get ks adType"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_4
    :goto_1
    new-instance p2, Lcom/windmill/kuaishou/d;

    invoke-direct {p2, p0, p0}, Lcom/windmill/kuaishou/d;-><init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;Lcom/windmill/kuaishou/e$a;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {p2, p1}, Lcom/windmill/kuaishou/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ks loadAd fail:"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catch TT loadAd error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyBiddingResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    if-eqz p2, :cond_1

    const-string p2, "isKS"

    const-string v0, "0"

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notifyBiddingResult-----1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    invoke-static {v0, p1, p3, p2}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoWithChannel(IZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyBiddingResult-----2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " notifyBiddingResult-----3:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {p3, p1, p2}, Lcom/windmill/kuaishou/e;->a(ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClick()V

    return-void
.end method

.method public onInterstitialAdClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClosed()V

    return-void
.end method

.method public onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onInterstitialAdLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterstitialAdPlayEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public onInterstitialAdPreLoadSuccess()V
    .locals 0

    return-void
.end method

.method public onInterstitialAdStartPlaying()V
    .locals 0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdShow()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2
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
    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/windmill/kuaishou/e;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouInterstitialAdapter;->a:Lcom/windmill/kuaishou/e;

    invoke-virtual {p2, p1, p3}, Lcom/windmill/kuaishou/e;->a(Landroid/app/Activity;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6210\u529f\u52a0\u8f7d\u5e7f\u544a\u540e\u518d\u8fdb\u884c\u5e7f\u544a\u5c55\u793a\uff01"

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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catch ks presentVideoAd error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
