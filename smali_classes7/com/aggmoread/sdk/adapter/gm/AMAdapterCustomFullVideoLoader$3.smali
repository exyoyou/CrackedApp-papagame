.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/AMRewardAdConfig$RewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;->getRewardAdConfig()Lcom/aggmoread/sdk/client/AMRewardAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    new-instance v1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$3;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/fullvideo/MediationCustomFullVideoLoader;->callFullVideoRewardVerify(Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationRewardItem;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
