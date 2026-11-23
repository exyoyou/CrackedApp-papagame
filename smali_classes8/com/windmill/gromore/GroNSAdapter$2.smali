.class final Lcom/windmill/gromore/GroNSAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/ViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroNSAdapter;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/GroNSAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroNSAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClick()V

    return-void
.end method

.method public final onAdClose()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClosed()V

    return-void
.end method

.method public final onAdShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->a(Lcom/windmill/gromore/GroNSAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShow()V

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNSAdapter;->d(Lcom/windmill/gromore/GroNSAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    return-void
.end method

.method public final onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroNSAdapter$2;->a:Lcom/windmill/gromore/GroNSAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
