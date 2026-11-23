.class public Lcom/windmill/adscope/AdScopeAdapterProxy;
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

.method static synthetic a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;
    .locals 0

    iget-object p0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    return-object p0
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

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
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

    :try_start_0
    const-string v0, "appId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initializeADN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getOaidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getOaidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/BeiZis;->setOaidVersion(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getAdConfig()Lcom/windmill/sdk/WMAdConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitBefore(Ljava/lang/Object;)V

    new-instance v0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;

    invoke-direct {v0, p0}, Lcom/windmill/adscope/AdScopeAdapterProxy$1;-><init>(Lcom/windmill/adscope/AdScopeAdapterProxy;)V

    invoke-static {p1, p2, v0}, Lcom/beizi/fusion/BeiZis;->init(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/BeiZiCustomController;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    return-void
.end method

.method public notifyPrivacyStatusChange()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v0

    invoke-static {v0}, Lcom/beizi/fusion/BeiZis;->setSupportPersonalized(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
