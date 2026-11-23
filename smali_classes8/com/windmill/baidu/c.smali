.class public final Lcom/windmill/baidu/c;
.super Lcom/windmill/baidu/e;
.source "SourceFile"


# instance fields
.field a:Lcom/windmill/baidu/e$a;

.field b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

.field c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

.field d:Ljava/lang/Boolean;

.field e:Z


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;Lcom/windmill/baidu/e$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/baidu/e;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/windmill/baidu/c;->d:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/baidu/c;->e:Z

    iput-object p1, p0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iput-object p2, p0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    return-void
.end method

.method static synthetic a(Lcom/windmill/baidu/c;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/windmill/baidu/e$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/windmill/baidu/e$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show()V

    return-void

    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    :cond_1
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "expressInterstitialAd is null when show"

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/windmill/baidu/c;->a(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bd catch error when show "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/windmill/baidu/c;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/windmill/baidu/c;->e:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/windmill/baidu/c;->d:Ljava/lang/Boolean;

    new-instance v0, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    new-instance p1, Lcom/windmill/baidu/BdExpressInterstitialAd$1;

    invoke-direct {p1, p0}, Lcom/windmill/baidu/BdExpressInterstitialAd$1;-><init>(Lcom/windmill/baidu/c;)V

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setLoadListener(Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "bidFloor"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setBidFloor(I)V
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
    iget-object p1, p0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getLastBidInfo()Lcom/windmill/sdk/models/BidInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/windmill/baidu/c;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " bidInfo:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p2, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    const-string p3, "A"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getWinner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "B"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getECpm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "C"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getBidType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "S"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getExposureStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "D"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getClickStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "H"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getFailReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "I"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getSecondPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "J"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getBidTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p2

    const-string p3, "K"

    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidInfo;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addCustExt(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setRequestParameters(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->load()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/windmill/baidu/c;->a:Lcom/windmill/baidu/e$a;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bd catch error load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/windmill/baidu/e$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/windmill/baidu/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/windmill/baidu/a;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/baidu/c;->b:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isUseChannelIsReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/windmill/baidu/c;->e:Z

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    :cond_0
    return-void
.end method

.method public final d()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/windmill/baidu/c;->c:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
