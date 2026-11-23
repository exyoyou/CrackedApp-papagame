.class public Lcom/windmill/sigmob/SigNBAdapter;
.super Lcom/windmill/sdk/custom/WMCustomBannerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/sigmob/windad/natives/WindNativeAdData;

.field private c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNBAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNBAdapter;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigNBAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object p1
.end method

.method static synthetic b(Lcom/windmill/sigmob/SigNBAdapter;)I
    .locals 0

    iget p0, p0, Lcom/windmill/sigmob/SigNBAdapter;->d:I

    return p0
.end method

.method static synthetic c(Lcom/windmill/sigmob/SigNBAdapter;)I
    .locals 0

    iget p0, p0, Lcom/windmill/sigmob/SigNBAdapter;->e:I

    return p0
.end method

.method static synthetic d(Lcom/windmill/sigmob/SigNBAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/sigmob/SigNBAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigNBAdapter#removeBannerSelf: error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->destroy()V

    iput-object v1, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    return-object v0
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/SigNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    const-string v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SigNBAdapter#loadAd: codeId = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "loadAd with activity is null."

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    const-string v1, "ad_key_width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/windmill/sigmob/SigNBAdapter;->d:I

    :cond_1
    const-string v1, "ad_key_height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/windmill/sigmob/SigNBAdapter;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v1, "SigNBAdapter#"

    invoke-static {v1, p0}, Lcom/windmill/sigmob/a;->a(Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-direct {v3, v0, v2, p2}, Lcom/sigmob/windad/natives/WindNativeAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lcom/sigmob/windad/WindAdRequest;->setExtOptions(Ljava/util/Map;)V

    new-instance p2, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-direct {p2, v3}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;-><init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    iput-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    new-instance v1, Lcom/windmill/sigmob/SigNBAdapter$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/windmill/sigmob/SigNBAdapter$1;-><init>(Lcom/windmill/sigmob/SigNBAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p2, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->setNativeAdLoadListener(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    :try_start_3
    const-string p1, "bidFloor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/m;->setBidFloor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    const-string p3, "CNY"

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(I)Z

    return-void

    :cond_5
    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->loadAd(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catch sig loadAd error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

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

    const-string v1, "SigNBAdapter#notifyBiddingResult: isWin = "

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

    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigNBAdapter#notifyBiddingResult: channelId = "

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

    const-string v0, "SigNBAdapter#notifyBiddingResult: bidInfoWithChannel = "

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
    const-string p3, "SigNBAdapter#notifyBiddingResult: map = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter;->c:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SigNBAdapter#notifyBiddingResult: error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
