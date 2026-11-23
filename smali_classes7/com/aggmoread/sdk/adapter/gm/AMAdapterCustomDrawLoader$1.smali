.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;

.field final synthetic val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v2, -0x2

    .line 22
    :cond_0
    new-instance v3, Lcom/aggmoread/sdk/client/AMAdSize;

    .line 23
    .line 24
    invoke-direct {v3, v1, v2}, Lcom/aggmoread/sdk/client/AMAdSize;-><init>(II)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSlotId(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdCount(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v3}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAMAdSize(Lcom/aggmoread/sdk/client/AMAdSize;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setVideoConfig(Lcom/aggmoread/sdk/client/AMVideoConfigs;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->build()Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/aggmoread/sdk/client/AMSdk;->makeAdLoader(Lcom/aggmoread/sdk/client/AMAdLoadSlot;)Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->val$context:Landroid/content/Context;

    .line 68
    .line 69
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1$1;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadDrawAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/draw/AMDrawAdListener;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomDrawLoader;

    .line 79
    .line 80
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5668\u6784\u5efa\u5931\u8d25!"

    .line 81
    .line 82
    const v2, -0x7a120

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "reward err "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method
