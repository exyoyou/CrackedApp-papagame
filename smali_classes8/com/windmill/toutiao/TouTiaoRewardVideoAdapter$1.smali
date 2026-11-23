.class final Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onRewardVideoAdLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v0, p1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    new-instance v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;-><init>(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    new-instance v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;-><init>(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setRewardPlayAgainInteractionListener"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v2}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----setRewardPlayAgainInteractionListener called via reflection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v2}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----setRewardPlayAgainInteractionListener not supported in this SDK version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$3;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$3;-><init>(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->d(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "price"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    iget-object v2, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    new-instance v3, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v3, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_2
    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onRewardVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onRewardVideoCached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
