.class public final Lcom/windmill/sigmob/g;
.super Lcom/windmill/sigmob/b;
.source "SourceFile"


# instance fields
.field a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

.field final b:Lcom/windmill/sigmob/b$a;

.field private final c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;Lcom/windmill/sigmob/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sigmob/b;-><init>()V

    iput-object p1, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iput-object p2, p0, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 1
    :try_start_0
    const-string v0, "SigNewInterstitialAd#"

    iget-object v1, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-static {v0, v1}, Lcom/windmill/sigmob/a;->a(Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;

    iget-object v2, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/sigmob/windad/WindAdRequest;->setExtOptions(Ljava/util/Map;)V

    new-instance p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-direct {p1, v1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V

    iput-object p1, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    new-instance p2, Lcom/windmill/sigmob/g$1;

    invoke-direct {p2, p0}, Lcom/windmill/sigmob/g$1;-><init>(Lcom/windmill/sigmob/g;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->setWindNewInterstitialAdListener(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;)V

    iget-object p1, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object p2, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd(Ljava/lang/String;)Z
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

    iget-object p2, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

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
    iget-object p1, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    const-string p2, "CNY"

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/m;->setCurrency(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->loadAd()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/windmill/sigmob/b$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/sigmob/g;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v0, "eCpm"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->show(Ljava/util/HashMap;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "windInterstitialAd is not ready"

    invoke-direct {p2, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/windmill/sigmob/b$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/windmill/sigmob/g;->b:Lcom/windmill/sigmob/b$a;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/windmill/sigmob/b$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/m;->sendWinNotificationWithInfo(Ljava/util/Map;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/c;->isReady()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/m;->sendLossNotificationWithInfo(Ljava/util/Map;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/windmill/sigmob/g;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/m;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
