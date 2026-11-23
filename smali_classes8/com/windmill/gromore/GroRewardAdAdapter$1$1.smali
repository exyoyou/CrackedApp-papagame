.class final Lcom/windmill/gromore/GroRewardAdAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroRewardAdAdapter$1;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/GroRewardAdAdapter$1;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroRewardAdAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->c(Lcom/windmill/gromore/GroRewardAdAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->d(Lcom/windmill/gromore/GroRewardAdAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->b(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---onRewardArrived:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object p2, p2, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object p2, p2, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object p2, p2, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_4

    const-string p2, "reward_extra_key_is_server_verify"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "isGroMoreServerSideVerify"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_2
    const-string v0, "reward_extra_key_error_code"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "reward_extra_key_error_msg"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "transId"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "---------GroRew: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    :cond_3
    const-string p3, "rewardVerify"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "errorCode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "errorMsg"

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object p2, p2, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p2, p1, v2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdRewardWithData(ZLjava/util/Map;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object p2, p2, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdReward(Z)V

    return-void
.end method

.method public final onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdSkipped()V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroRewardAdAdapter;->a(Lcom/windmill/gromore/GroRewardAdAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationRewardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public final onVideoError()V
    .locals 4

    iget-object v0, p0, Lcom/windmill/gromore/GroRewardAdAdapter$1$1;->a:Lcom/windmill/gromore/GroRewardAdAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroRewardAdAdapter$1;->b:Lcom/windmill/gromore/GroRewardAdAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    const-string v3, "tt onVideoError"

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
