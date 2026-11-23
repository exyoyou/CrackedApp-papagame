.class final Lcom/windmill/gromore/GroBannerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


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

    iput-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->b:Lcom/windmill/gromore/GroBannerAdapter;

    iput-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->b:Lcom/windmill/gromore/GroBannerAdapter;

    iget-object p2, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/gromore/n;->a(Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroEcpm(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/GroBannerAdapter$3;->b:Lcom/windmill/gromore/GroBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClosed()V

    return-void
.end method

.method public final onShow()V
    .locals 0

    return-void
.end method
