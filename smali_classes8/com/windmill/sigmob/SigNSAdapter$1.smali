.class final Lcom/windmill/sigmob/SigNSAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/SigNSAdapter;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sigmob/SigNSAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/SigNSAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    iput-object p2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigNSAdapter#onAdError: placementId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", error: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdLoad(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    const-string v0, "SigNSAdapter#onAdLoad: placementId "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-static {p2}, Lcom/windmill/sigmob/SigNSAdapter;->a(Lcom/windmill/sigmob/SigNSAdapter;)Z

    iget-object p2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-static {p2, p1}, Lcom/windmill/sigmob/SigNSAdapter;->a(Lcom/windmill/sigmob/SigNSAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)Lcom/sigmob/windad/natives/WindNativeAdData;

    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    new-instance p2, Lcom/windmill/sigmob/c;

    invoke-static {p1}, Lcom/windmill/sigmob/SigNSAdapter;->b(Lcom/windmill/sigmob/SigNSAdapter;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/windmill/sigmob/c;-><init>(Lcom/sigmob/windad/natives/WindNativeAdData;I)V

    invoke-static {p1, p2}, Lcom/windmill/sigmob/SigNSAdapter;->a(Lcom/windmill/sigmob/SigNSAdapter;Lcom/windmill/sigmob/c;)Lcom/windmill/sigmob/c;

    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-static {p1}, Lcom/windmill/sigmob/SigNSAdapter;->c(Lcom/windmill/sigmob/SigNSAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-static {p1}, Lcom/windmill/sigmob/SigNSAdapter;->c(Lcom/windmill/sigmob/SigNSAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-static {p1}, Lcom/windmill/sigmob/SigNSAdapter;->c(Lcom/windmill/sigmob/SigNSAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getEcpm()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "0"

    :goto_1
    iget-object p2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v0, p1}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_3
    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess()V

    return-void

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->b:Lcom/windmill/sigmob/SigNSAdapter;

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list is null or empty "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/sigmob/SigNSAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
