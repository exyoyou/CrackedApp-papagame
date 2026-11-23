.class final Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/BannerViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->onFeedAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoNBAdapter$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iput-object p2, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClick()V

    return-void
.end method

.method public final onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->d(Lcom/windmill/toutiao/TouTiaoNBAdapter;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClosed()V

    return-void
.end method

.method public final onAdRenderError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdRenderSuccess(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {v0, p1}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->a(Lcom/windmill/toutiao/TouTiaoNBAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {p1}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->a(Lcom/windmill/toutiao/TouTiaoNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    new-instance v1, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object p1, p1, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdRenderSuccess view is null  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v3, v3, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShow()V

    return-void
.end method

.method public final onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;->b:Lcom/windmill/toutiao/TouTiaoNBAdapter$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
