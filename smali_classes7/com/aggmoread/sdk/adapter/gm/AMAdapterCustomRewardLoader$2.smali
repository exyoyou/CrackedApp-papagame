.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;

.field final synthetic val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;->access$002(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;Landroid/content/Context;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setSlotId(Ljava/lang/String;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setAdCount(I)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;->access$100(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->setVideoConfig(Lcom/aggmoread/sdk/client/AMVideoConfigs;)Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;->build()Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/aggmoread/sdk/client/AMSdk;->makeAdLoader(Lcom/aggmoread/sdk/client/AMAdLoadSlot;)Lcom/aggmoread/sdk/client/AMAdLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->val$context:Landroid/content/Context;

    .line 51
    .line 52
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2$1;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadRewardAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/reward/AMRewardAdListener;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader;

    .line 62
    .line 63
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5668\u6784\u5efa\u5931\u8d25!"

    .line 64
    .line 65
    const v2, -0x7a120

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "reward err "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
