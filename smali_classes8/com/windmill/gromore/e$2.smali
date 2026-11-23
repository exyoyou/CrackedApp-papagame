.class final Lcom/windmill/gromore/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/gromore/q;

.field final synthetic c:Lcom/windmill/gromore/e;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/e;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iput-object p2, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p3, p0, Lcom/windmill/gromore/e$2;->b:Lcom/windmill/gromore/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "----------onAdClicked-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {v0}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v0, v0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v1, v1, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {v0}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_2
    return-void
.end method

.method public final onAdShow()V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onAdShow-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v0, v0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "adnName"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getSdkName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adnNetworkRitId"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adnEcpm"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v0, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v0, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/AdInfo;->fillNetWorkOption(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {v0}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {v0}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v0, v0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v1, v1, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->b:Lcom/windmill/gromore/q;

    invoke-static {v0, v1}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    :cond_3
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------onRenderFail-----------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {p1}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {v0}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "tt onRenderFail:"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p3, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FFZ)V
    .locals 2

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------onRenderSuccess-----------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {p1}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-static {p1}, Lcom/windmill/gromore/e;->a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p4, p0, Lcom/windmill/gromore/e$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    invoke-virtual {p4, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p4

    iget-object v0, p0, Lcom/windmill/gromore/e$2;->c:Lcom/windmill/gromore/e;

    iget-object v0, v0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, p4, v0, p2, p3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method
