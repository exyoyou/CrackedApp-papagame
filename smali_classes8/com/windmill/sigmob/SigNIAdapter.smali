.class public Lcom/windmill/sigmob/SigNIAdapter;
.super Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/sigmob/windad/natives/WindNativeAdData;

.field private b:Lcom/windmill/sigmob/c;

.field private c:Z

.field private d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNIAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNIAdapter;Lcom/windmill/sigmob/c;)Lcom/windmill/sigmob/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNIAdapter;)Z
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/windmill/sigmob/SigNIAdapter;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/SigNIAdapter;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/sigmob/SigNIAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->destroy()V

    iput-object v1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sigmob/c;->destroy()V

    iput-object v1, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sigmob/c;->getMediaExtraOption()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    invoke-virtual {v0}, Lcom/windmill/sigmob/c;->getMediaExtraOption()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

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

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "activity is null."

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_0
    const-string p1, "placementId"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "SigNIAdapter#loadAd: placementId = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const-string v0, "SigNIAdapter#"

    invoke-static {v0, p0}, Lcom/windmill/sigmob/a;->a(Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-direct {v2, p1, v1, p2}, Lcom/sigmob/windad/natives/WindNativeAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lcom/sigmob/windad/WindAdRequest;->setExtOptions(Ljava/util/Map;)V

    new-instance p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-direct {p2, v2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;-><init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    iput-object p2, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    new-instance v0, Lcom/windmill/sigmob/SigNIAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sigmob/SigNIAdapter$1;-><init>(Lcom/windmill/sigmob/SigNIAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->setNativeAdLoadListener(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    :try_start_1
    const-string p1, "bidFloor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    const-string p3, "CNY"

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(I)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
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

    const-string v1, "SigNIAdapter#notifyBiddingResult: isWin = "

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

    iget-object p2, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigNIAdapter#notifyBiddingResult: channelId = "

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

    const-string v0, "SigNIAdapter#notifyBiddingResult: bidInfoWithChannel = "

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
    const-string p3, "SigNIAdapter#notifyBiddingResult: map = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SigNIAdapter#notifyBiddingResult: error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

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

    const-string p2, "SigNIAdapter#showAd"

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/windmill/sigmob/SigNIAdapter;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :try_start_1
    const-string p2, "eCpm"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->d:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p2, Lcom/windmill/sdk/widget/InterstitialViewManager;

    iget-object v0, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    new-instance v1, Lcom/windmill/sigmob/SigNIAdapter$2;

    invoke-direct {v1, p0}, Lcom/windmill/sigmob/SigNIAdapter$2;-><init>(Lcom/windmill/sigmob/SigNIAdapter;)V

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/windmill/sdk/widget/InterstitialViewManager;-><init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->b:Lcom/windmill/sigmob/c;

    new-instance p3, Lcom/windmill/sigmob/SigNIAdapter$3;

    invoke-direct {p3, p0}, Lcom/windmill/sigmob/SigNIAdapter$3;-><init>(Lcom/windmill/sigmob/SigNIAdapter;)V

    invoke-virtual {p1, p3}, Lcom/windmill/sigmob/c;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->getTips()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/widget/InterstitialViewManager;->setTips(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/windmill/sdk/widget/InterstitialViewManager;->show()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6210\u529f\u52a0\u8f7d\u5e7f\u544a\u540e\u518d\u8fdb\u884c\u5e7f\u544a\u5c55\u793a"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/sigmob/SigNIAdapter;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
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
