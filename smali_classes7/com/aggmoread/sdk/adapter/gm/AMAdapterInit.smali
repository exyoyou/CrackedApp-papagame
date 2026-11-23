.class public Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomInitLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomInitLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/client/AMSdk;->getSDKVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "initializeADN enter "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomInitLoader;->isInit()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;

    .line 15
    .line 16
    invoke-direct {v0, p0, p3, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;Ljava/util/Map;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
