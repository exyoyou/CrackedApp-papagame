.class final Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----playAgain onAdClose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdShow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---playAgain onAdShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---playAgain onAdVideoBarClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p3, p3, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {p3}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "---playAgain onRewardArrived:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p3, p3, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {p3}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " playAgain onRewardVerify:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "rewardVerify"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "errorCode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "errorMsg"

    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p3, p3, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdRewardWithData(ZLjava/util/Map;)V

    return-void
.end method

.method public final onSkippedVideo()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---playAgain onSkippedVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdSkipped()V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---playAgain onVideoComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public final onVideoError()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----playAgain onVideoError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$2;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    const-string v3, "tt onVideoError"

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
