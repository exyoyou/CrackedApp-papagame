.class public Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;->getVideoOptions(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    const-string v0, "AMAdapterCustomRewardLoader load Ad enter "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInWorkerThread(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
