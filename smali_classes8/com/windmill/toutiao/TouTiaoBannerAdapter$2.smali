.class final Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/toutiao/TouTiaoBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field final synthetic b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    iput-object p2, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClick()V

    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShow()V

    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v0, p3, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    iget-object p2, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-static {p2, p1}, Lcom/windmill/toutiao/TouTiaoBannerAdapter;->a(Lcom/windmill/toutiao/TouTiaoBannerAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iget-object p2, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    new-instance p3, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {p3, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoBannerAdapter$2;->b:Lcom/windmill/toutiao/TouTiaoBannerAdapter;

    invoke-static {p1}, Lcom/windmill/toutiao/TouTiaoBannerAdapter;->b(Lcom/windmill/toutiao/TouTiaoBannerAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void
.end method
