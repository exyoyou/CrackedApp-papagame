.class final Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    iput-object p2, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRewardVideoAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onRewardVideoAdLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {v0, v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->a(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;Lcom/kwad/sdk/api/KsRewardVideoAd;)Lcom/kwad/sdk/api/KsRewardVideoAd;

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adList is null for codeId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRewardVideoResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onRewardVideoResult()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-static {v0, p1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->a(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;Lcom/kwad/sdk/api/KsRewardVideoAd;)Lcom/kwad/sdk/api/KsRewardVideoAd;

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {p1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->a(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Lcom/kwad/sdk/api/KsRewardVideoAd;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {p1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->a(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Lcom/kwad/sdk/api/KsRewardVideoAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->getECPM()I

    move-result p1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$1;->b:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    new-instance v1, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    return-void
.end method
