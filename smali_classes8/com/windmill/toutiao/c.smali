.class public final Lcom/windmill/toutiao/c;
.super Lcom/windmill/toutiao/d;
.source "SourceFile"


# instance fields
.field a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

.field b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/toutiao/d;-><init>()V

    iput-object p1, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    return-void
.end method

.method private b(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object v0
.end method

.method public final a(D)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTClientBidding;->win(Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public final a(DLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTClientBidding;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "eCpm"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTClientBidding;->setPrice(Ljava/lang/Double;)V

    :cond_0
    iget-object p2, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    new-instance v0, Lcom/windmill/toutiao/c$2;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/c$2;-><init>(Lcom/windmill/toutiao/c;)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object p2, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    return-void

    :cond_1
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string v0, "mTTFullScreenVideoAd is null when show"

    invoke-direct {p1, p2, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/windmill/toutiao/c;->b(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TT catch error when show "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/windmill/toutiao/c;->b(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method final a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    const-string v0, ""

    :try_start_0
    new-instance v1, Lcom/windmill/toutiao/c$1;

    invoke-direct {v1, p0}, Lcom/windmill/toutiao/c$1;-><init>(Lcom/windmill/toutiao/c;)V

    invoke-static {}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getTTAdNative()Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const-string v3, "templateType"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_1
    iget-object p2, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TT catch error load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/toutiao/c;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getExpirationTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;->destroy()V

    iput-object v1, p0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    :cond_0
    iput-object v1, p0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    return-void
.end method
