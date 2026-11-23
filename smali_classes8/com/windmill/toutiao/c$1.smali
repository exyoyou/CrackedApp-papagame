.class final Lcom/windmill/toutiao/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/c;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/c;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/c;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/toutiao/c;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 4

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iput-object p1, v0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    new-instance v0, Lcom/windmill/toutiao/c$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/c$1$1;-><init>(Lcom/windmill/toutiao/c$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v1, v0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "price"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    iget-object v1, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v1, v1, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    new-instance v3, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v3, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onFullScreenVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
