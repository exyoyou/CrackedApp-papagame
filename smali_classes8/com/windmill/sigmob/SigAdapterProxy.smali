.class public Lcom/windmill/sigmob/SigAdapterProxy;
.super Lcom/windmill/sdk/custom/WMCustomAdapterProxy;
.source "SourceFile"


# instance fields
.field private a:Lcom/windmill/sdk/WMCustomController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/SigAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    return-object p0
.end method

.method public static castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->CURRENCY:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "USD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CNY"

    :goto_0
    const-string v1, "CURRENCY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->WIN_ECPM:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AUCTION_PRICE"

    if-eqz p0, :cond_2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->LOSS_ECPM:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "HIGHEST_LOSS_PRICE"

    :goto_1
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->REASON:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lcom/windmill/sigmob/SigAdapterProxy$4;

    invoke-direct {v1}, Lcom/windmill/sigmob/SigAdapterProxy$4;-><init>()V

    sget-object v2, Lcom/sigmob/windad/WindAdBiddingLossReason;->LOSS_REASON_LOW_PRICE:Lcom/sigmob/windad/WindAdBiddingLossReason;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdBiddingLossReason;->getCode()I

    move-result v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    const-string p0, "LOSS_REASON"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->ADN:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lcom/windmill/sigmob/SigAdapterProxy$5;

    invoke-direct {p1}, Lcom/windmill/sigmob/SigAdapterProxy$5;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_3
    const-string p0, "10001"

    :cond_8
    const-string p1, "ADN_ID"

    goto :goto_1

    :goto_4
    return-object v0
.end method


# virtual methods
.method public baseOnToBidCustomAdapterVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAdapterSdkVersion()I
    .locals 1

    const v0, 0x9858

    return v0
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
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
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "SigAdapterProxy#getBiddingToken"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "sdkVersion"

    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAds;->getSDKToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sdkToken"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initializeADN: method = "

    const-class v1, Lcom/sigmob/windad/WindAdOptions;

    const-class v2, Landroid/content/Context;

    const-string v3, "SigAdapterProxy#"

    :try_start_0
    const-string v4, "appId"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "apiKey"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    :cond_0
    const-string v5, "SigAdapterProxy#initializeADN: appId = "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v5

    sget-boolean v6, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->getUserAge()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setUserAge(I)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->isAdult()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setAdult(Z)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->getAgeRestrictedStatus()Lcom/windmill/sdk/WindMillUserAgeStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setIsAgeRestrictedUser(I)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->getUserGDPRConsentStatus()Lcom/windmill/sdk/WindMillConsentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(I)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sigmob/windad/WindAds;->setPersonalizedAdvertisingOn(Z)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAd;->getAdConfig()Lcom/windmill/sdk/WMAdConfig;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/windmill/sigmob/SigAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    new-instance v6, Lcom/sigmob/windad/WindAdOptions;

    invoke-direct {v6, v4, p2}, Lcom/sigmob/windad/WindAdOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/windmill/sigmob/SigAdapterProxy$3;

    invoke-direct {p2, p0}, Lcom/windmill/sigmob/SigAdapterProxy$3;-><init>(Lcom/windmill/sigmob/SigAdapterProxy;)V

    invoke-virtual {v6, p2}, Lcom/sigmob/windad/WindAdOptions;->setCustomController(Lcom/sigmob/windad/WindCustomController;)Lcom/sigmob/windad/WindAdOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    aput-object v2, v10, v7

    aput-object v1, v10, p2

    const-class v11, Lcom/sigmob/windad/OnInitializationListener;

    aput-object v11, v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitBefore(Ljava/lang/Object;)V

    new-instance v8, Lcom/windmill/sigmob/SigAdapterProxy$1;

    invoke-direct {v8, p0}, Lcom/windmill/sigmob/SigAdapterProxy$1;-><init>(Lcom/windmill/sigmob/SigAdapterProxy;)V

    invoke-virtual {v5, p1, v6, v8}, Lcom/sigmob/windad/WindAds;->init(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;Lcom/sigmob/windad/OnInitializationListener;)Z

    new-instance v8, Lcom/windmill/sigmob/SigAdapterProxy$2;

    invoke-direct {v8, p0}, Lcom/windmill/sigmob/SigAdapterProxy$2;-><init>(Lcom/windmill/sigmob/SigAdapterProxy;)V

    invoke-virtual {v5, v8}, Lcom/sigmob/windad/WindAds;->start(Lcom/sigmob/windad/OnStartListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "startWithOptions"

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v2, v11, v7

    aput-object v1, v11, p2

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v7

    aput-object v6, v0, p2

    invoke-virtual {v1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "initializeADN: error = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    return-void
.end method

.method public notifyPrivacyStatusChange()V
    .locals 3

    const-string v0, "SigAdapterProxy#notifyPrivacyStatusChange"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->isPersonalizedAdvertisingOn()Z

    move-result v1

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sigmob/windad/WindAds;->setPersonalizedAdvertisingOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigAdapterProxy#notifyPrivacyStatusChange: error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method
