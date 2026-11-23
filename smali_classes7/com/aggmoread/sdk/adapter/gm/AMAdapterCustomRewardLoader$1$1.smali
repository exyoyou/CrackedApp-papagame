.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationRewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1;->onReward(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1$1;->val$map:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomRewardLoader$1$1;->val$map:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public rewardVerify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
