.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;->load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

.field final synthetic val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;Lcom/bytedance/sdk/openadsdk/AdSlot;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$mediationCustomServiceConfig:Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomServiceConfig;->getADNNetworkSlotId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;

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
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->isNativeAd()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$context:Landroid/content/Context;

    .line 76
    .line 77
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$1;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadNativeAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/feedlist/AMNativeAdListener;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->isExpressRender()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$context:Landroid/content/Context;

    .line 95
    .line 96
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;

    .line 97
    .line 98
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/client/AMAdLoader;->loadExpressAd(Landroid/content/Context;Lcom/aggmoread/sdk/client/feedlist/AMExpressAdListener;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 106
    .line 107
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5668\u6784\u5efa\u5931\u8d25!"

    .line 108
    .line 109
    const v2, -0x7a120

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "feed err "

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_0
    return-void
.end method
