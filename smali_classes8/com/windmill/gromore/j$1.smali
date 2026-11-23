.class final Lcom/windmill/gromore/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/j;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/gromore/q;

.field final synthetic c:Lcom/windmill/gromore/j;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/j;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iput-object p2, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p3, p0, Lcom/windmill/gromore/j$1;->b:Lcom/windmill/gromore/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/windmill/gromore/j$1;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "----------onAdClicked-----------"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p1, p1, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p2, p2, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_2
    return-void
.end method

.method public final onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/windmill/gromore/j$1;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "------onAdCreativeClick-----------"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p1, p1, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p2, p2, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_2
    return-void
.end method

.method public final onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/windmill/gromore/j$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "------onAdShow---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p1, p1, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adnName"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getSdkName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adnNetworkRitId"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adnEcpm"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/models/AdInfo;->fillNetWorkOption(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-static {p1}, Lcom/windmill/gromore/j;->a(Lcom/windmill/gromore/j;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object p1, p1, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    iget-object v0, v0, Lcom/windmill/gromore/j;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->c:Lcom/windmill/gromore/j;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iget-object p1, p0, Lcom/windmill/gromore/j$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/gromore/j$1;->b:Lcom/windmill/gromore/q;

    invoke-static {p1, v0}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    :cond_3
    return-void
.end method
