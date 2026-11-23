.class final Lcom/windmill/gromore/GroNBAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/BannerViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroNBAdapter$1;->onFeedAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gromore/GroNBAdapter$1;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroNBAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClick()V

    return-void
.end method

.method public final onAdClose()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->f(Lcom/windmill/gromore/GroNBAdapter;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClosed()V

    return-void
.end method

.method public final onAdRenderError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdRenderSuccess(Landroid/view/View;)V
    .locals 9

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0, p1}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v1, v1, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroNBAdapter;->d(Lcom/windmill/gromore/GroNBAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v2, v2, Lcom/windmill/gromore/GroNBAdapter$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;Lcom/windmill/gromore/q;)Lcom/windmill/gromore/q;

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-wide v0, v0, Lcom/windmill/gromore/q;->a:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v1, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-wide v2, v0, Lcom/windmill/gromore/q;->a:D

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v4, v0, Lcom/windmill/gromore/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v5, v0, Lcom/windmill/gromore/q;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v6, v0, Lcom/windmill/gromore/q;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v7, v0, Lcom/windmill/gromore/q;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v8, v0, Lcom/windmill/gromore/q;->i:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdRenderSuccess view is null  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v3, v3, Lcom/windmill/gromore/GroNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShow()V

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->e(Lcom/windmill/gromore/GroNBAdapter;)Lcom/windmill/gromore/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    return-void
.end method

.method public final onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1$1;->a:Lcom/windmill/gromore/GroNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
