.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

.field final synthetic val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$context:Landroid/content/Context;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;)Lcom/aggmoread/sdk/client/AMRewardAdConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSlotId(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdCount(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setRewardConfig(Lcom/aggmoread/sdk/client/AMRewardAdConfig;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;->access$100(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setVideoConfig(Lcom/aggmoread/sdk/client/AMVideoConfigs;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->build()Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/aggmoread/sdk/client/AMSdk;->makeAdLoader(Lcom/aggmoread/sdk/client/AMAdLoadSlot;)Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->val$context:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2$1;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadFullScreenAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/fullscreen/AMFullScreenAdListener;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 65
    .line 66
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5668\u6784\u5efa\u5931\u8d25!"

    .line 67
    .line 68
    const v2, -0x7a120

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "reward err "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method
