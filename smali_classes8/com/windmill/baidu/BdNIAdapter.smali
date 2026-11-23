.class public Lcom/windmill/baidu/BdNIAdapter;
.super Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field private b:Lcom/windmill/baidu/f;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/windmill/baidu/BdNIAdapter;Lcom/baidu/mobads/sdk/api/NativeResponse;)Lcom/baidu/mobads/sdk/api/NativeResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/baidu/BdNIAdapter;Lcom/windmill/baidu/f;)Lcom/windmill/baidu/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/baidu/BdNIAdapter;)Z
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/windmill/baidu/BdNIAdapter;)Lcom/baidu/mobads/sdk/api/NativeResponse;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/baidu/f;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    return-object v0
.end method

.method public getMediaExtraOption()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "request_id"

    :try_start_0
    iget-object v1, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "activity is null"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_0
    const-string p2, "placementId"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----loadAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getLastBidInfo()Lcom/windmill/sdk/models/BidInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "---bidInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const-string v3, "A"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getWinner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "B"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getECpm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "C"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getBidType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getExposureStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "D"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getClickStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "H"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getFailReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getSecondPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "J"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getBidTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v2}, Lcom/windmill/sdk/models/BidInfo;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    const-string v2, "bidFloor"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setBidFloor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v1

    new-instance v2, Lcom/windmill/baidu/BdNIAdapter$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/windmill/baidu/BdNIAdapter$1;-><init>(Lcom/windmill/baidu/BdNIAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---notifyBiddingResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz p2, :cond_2

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

    invoke-static {p1, p3}, Lcom/windmill/baidu/BdAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/windmill/baidu/BdAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/LinkedHashMap;

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

    if-eqz p1, :cond_1

    const-string p1, "ecpm"

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-static {p3, p1, p2}, Lcom/windmill/baidu/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_1
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-static {p3, p1, p2}, Lcom/windmill/baidu/a;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---showAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/baidu/BdNIAdapter;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/widget/InterstitialViewManager;

    new-instance v1, Lcom/windmill/baidu/BdNIAdapter$2;

    invoke-direct {v1, p0}, Lcom/windmill/baidu/BdNIAdapter$2;-><init>(Lcom/windmill/baidu/BdNIAdapter;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/windmill/sdk/widget/InterstitialViewManager;-><init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/BdNIAdapter;->b:Lcom/windmill/baidu/f;

    new-instance p2, Lcom/windmill/baidu/BdNIAdapter$3;

    invoke-direct {p2, p0}, Lcom/windmill/baidu/BdNIAdapter$3;-><init>(Lcom/windmill/baidu/BdNIAdapter;)V

    invoke-virtual {p1, p2}, Lcom/windmill/baidu/f;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->getTips()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/widget/InterstitialViewManager;->setTips(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/InterstitialViewManager;->show()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6210\u529f\u52a0\u8f7d\u5e7f\u544a\u540e\u518d\u8fdb\u884c\u5e7f\u544a\u5c55\u793a\uff01"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/baidu/BdNIAdapter;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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
