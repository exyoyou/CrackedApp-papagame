.class final Lcom/windmill/sigmob/SigNBAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/SigNBAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/sigmob/SigNBAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/SigNBAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    iput-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SigNBAdapter#onAdError: error = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdLoad(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SigNBAdapter#onAdLoad: placementId = "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-static {p2, p1}, Lcom/windmill/sigmob/SigNBAdapter;->a(Lcom/windmill/sigmob/SigNBAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)Lcom/sigmob/windad/natives/WindNativeAdData;

    new-instance v4, Lcom/windmill/sigmob/c;

    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    invoke-static {p1}, Lcom/windmill/sigmob/SigNBAdapter;->a(Lcom/windmill/sigmob/SigNBAdapter;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p2

    invoke-direct {v4, p1, p2}, Lcom/windmill/sigmob/c;-><init>(Lcom/sigmob/windad/natives/WindNativeAdData;I)V

    new-instance p1, Lcom/windmill/sdk/widget/BannerViewManager;

    iget-object v1, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    invoke-static {p2}, Lcom/windmill/sigmob/SigNBAdapter;->b(Lcom/windmill/sigmob/SigNBAdapter;)I

    move-result v2

    iget-object p2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    invoke-static {p2}, Lcom/windmill/sigmob/SigNBAdapter;->c(Lcom/windmill/sigmob/SigNBAdapter;)I

    move-result v3

    iget-object v5, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->c:Ljava/util/Map;

    new-instance v6, Lcom/windmill/sigmob/SigNBAdapter$1$1;

    invoke-direct {v6, p0}, Lcom/windmill/sigmob/SigNBAdapter$1$1;-><init>(Lcom/windmill/sigmob/SigNBAdapter$1;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/windmill/sdk/widget/BannerViewManager;-><init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    invoke-virtual {p1}, Lcom/windmill/sdk/widget/BannerViewManager;->render()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->d:Lcom/windmill/sigmob/SigNBAdapter;

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list is unavailable. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/sigmob/SigNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
