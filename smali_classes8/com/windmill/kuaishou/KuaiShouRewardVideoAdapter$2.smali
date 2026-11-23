.class final Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onExtraRewardVerify(I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---onExtraRewardVerify"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onPageDismiss()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onPageDismiss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->c(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Z

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    return-void
.end method

.method public final onRewardStepVerify(II)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {p2}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---onRewardStepVerify"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardVerify()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onRewardVerify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->d(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdReward(Z)V

    return-void
.end method

.method public final onRewardVerify(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---onRewardVerify map  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->d(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onVideoPlayEnd()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onVideoPlayEnd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method

.method public final onVideoPlayError(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onVideoPlayError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {v1}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onVideoPlayStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    return-void
.end method

.method public final onVideoSkipToEnd(J)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-static {p2}, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;->b(Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---onVideoSkipToEnd"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter$2;->a:Lcom/windmill/kuaishou/KuaiShouRewardVideoAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdSkipped()V

    return-void
.end method
