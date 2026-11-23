.class final Lcom/windmill/gromore/GroBannerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gromore/GroBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field final synthetic b:Lcom/windmill/gromore/GroBannerAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    iput-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClick()V

    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShow()V

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/gromore/c;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/gromore/q;)V

    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v0, p3, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .locals 8

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroBannerAdapter;->a(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/gromore/GroBannerAdapter;->a(Lcom/windmill/gromore/GroBannerAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroBannerAdapter;->a(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p2

    iget-object p3, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p3}, Lcom/windmill/gromore/GroBannerAdapter;->c(Lcom/windmill/gromore/GroBannerAdapter;)I

    move-result p3

    iget-object v0, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroBannerAdapter;->d(Lcom/windmill/gromore/GroBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2, p3, v0, v1}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/gromore/GroBannerAdapter;->a(Lcom/windmill/gromore/GroBannerAdapter;Lcom/windmill/gromore/q;)Lcom/windmill/gromore/q;

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-wide p2, p2, Lcom/windmill/gromore/q;->a:D

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "-------GroRew:  "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p3}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-wide v1, p2, Lcom/windmill/gromore/q;->a:D

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-object v3, p2, Lcom/windmill/gromore/q;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-object v4, p2, Lcom/windmill/gromore/q;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-object v5, p2, Lcom/windmill/gromore/q;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-object v6, p2, Lcom/windmill/gromore/q;->f:Ljava/lang/String;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-static {p2}, Lcom/windmill/gromore/GroBannerAdapter;->b(Lcom/windmill/gromore/GroBannerAdapter;)Lcom/windmill/gromore/q;

    move-result-object p2

    iget-object v7, p2, Lcom/windmill/gromore/q;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$2;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess()V

    return-void
.end method
