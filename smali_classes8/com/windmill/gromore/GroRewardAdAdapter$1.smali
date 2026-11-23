.class final Lcom/windmill/gromore/GroRewardAdAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroRewardAdAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/gromore/GroRewardAdAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroRewardAdAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    iput-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gromore/GroRewardAdAdapter$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---Gro--onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/gromore/GroAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gromore/GroRewardAdAdapter$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onRewardVideoAdLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0, p1}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    new-instance v0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;-><init>(Lcom/windmill/gromore/GroRewardAdAdapter$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    new-instance v0, Lcom/windmill/gromore/GroRewardAdAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/windmill/gromore/GroRewardAdAdapter$1$2;-><init>(Lcom/windmill/gromore/GroRewardAdAdapter$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v2}, Lcom/windmill/gromore/GroRewardAdAdapter;->e(Lcom/windmill/gromore/GroRewardAdAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;Lcom/windmill/gromore/q;)Lcom/windmill/gromore/q;

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-wide v1, v1, Lcom/windmill/gromore/q;->a:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v2}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-wide v3, v1, Lcom/windmill/gromore/q;->a:D

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-object v5, v1, Lcom/windmill/gromore/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-object v6, v1, Lcom/windmill/gromore/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-object v7, v1, Lcom/windmill/gromore/q;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-object v8, v1, Lcom/windmill/gromore/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    iget-object v9, v1, Lcom/windmill/gromore/q;->i:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v1, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess()V

    :cond_1
    return-void
.end method

.method public final onRewardVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---onRewardVideoCached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess()V

    :cond_0
    return-void
.end method
