.class final Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;
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

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onAdClose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->b(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->c(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Z

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onAdShow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onAdVideoBarClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 6

    const-string p2, "isGroMoreServerSideVerify"

    const-string v0, "reward_extra_key_is_server_verify"

    const-string v1, "transId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v3, v3, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v3}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---onRewardArrived:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    const-string p2, "reward_extra_key_error_code"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "reward_extra_key_error_msg"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "---------GroRew: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    :cond_2
    const-string p3, "rewardVerify"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "errorMsg"

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p2, p2, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {p2, p1, v3}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdRewardWithData(ZLjava/util/Map;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p2, p2, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdReward(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object p3, p3, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {p3}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "---onRewardVerify:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onSkippedVideo()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onSkippedVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdSkipped()V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onVideoComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public final onVideoError()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

    iget-object v1, v1, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;->a(Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onVideoError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1$1;->a:Lcom/windmill/toutiao/TouTiaoRewardVideoAdapter$1;

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
