.class public Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/interstitial/MediationCustomInterstitialLoader;
.source "SourceFile"


# instance fields
.field private amInterstitialAd:Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/interstitial/MediationCustomInterstitialLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;->getVideoOptions(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;)Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;->amInterstitialAd:Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;)Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;->amInterstitialAd:Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;

    .line 2
    .line 3
    return-object p1
.end method

.method private getVideoOptions(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->getVideoOptions(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 1

    .line 1
    const-string v0, "AMAdapterCustomInterLoader load Ad enter "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader$2;

    .line 7
    .line 8
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInWorkerThread(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public receiveBidResult(ZDILjava/util/Map;)V
    .locals 1
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;->amInterstitialAd:Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->notifyBidResult(Lcom/aggmoread/sdk/client/AMAdInterface;ZDI)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->receiveBidResult(ZDILjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;->amInterstitialAd:Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomInterLoader;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, v1}, Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAd;->show(Landroid/app/Activity;Lcom/aggmoread/sdk/client/interstitial/AMInterstitialAdInteractionListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
