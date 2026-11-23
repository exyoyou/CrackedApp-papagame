.class public Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;
.source "SourceFile"


# instance fields
.field private amBannerAd:Lcom/aggmoread/sdk/client/banner/AMBannerAd;

.field private amBannerContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$002(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;)Lcom/aggmoread/sdk/client/banner/AMBannerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerAd:Lcom/aggmoread/sdk/client/banner/AMBannerAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;Lcom/aggmoread/sdk/client/banner/AMBannerAd;)Lcom/aggmoread/sdk/client/banner/AMBannerAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerAd:Lcom/aggmoread/sdk/client/banner/AMBannerAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerContainer:Landroid/view/ViewGroup;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerContainer:Landroid/view/ViewGroup;

    .line 15
    .line 16
    new-instance v1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$2;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerContainer:Landroid/view/ViewGroup;

    .line 25
    .line 26
    return-object v0
.end method

.method public load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
    .locals 0

    .line 1
    const-string p2, "AMAdapterCustomFullVideoLoader load Ad enter "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1, p3}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInWorkerThread(Ljava/lang/Runnable;)Z

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->amBannerAd:Lcom/aggmoread/sdk/client/banner/AMBannerAd;

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
