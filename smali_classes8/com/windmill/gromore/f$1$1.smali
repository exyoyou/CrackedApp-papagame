.class final Lcom/windmill/gromore/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/f$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/f$1;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/f$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClosed()V

    :cond_1
    return-void
.end method

.method public final onAdShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdShow()V

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->d:Lcom/windmill/gromore/q;

    invoke-static {v1, v0}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    :cond_1
    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClick()V

    :cond_1
    return-void
.end method

.method public final onSkippedVideo()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdSkipped()V

    :cond_1
    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v1, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/f$1$1;->a:Lcom/windmill/gromore/f$1;

    iget-object v0, v0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayComplete()V

    :cond_1
    return-void
.end method
