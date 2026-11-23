.class final Lcom/windmill/sigmob/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/e;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/e;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v1}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onAdDetailDismiss()V
    .locals 0

    return-void
.end method

.method public final onAdDetailShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdLangPageShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    return-void
.end method

.method public final onAdError(Lcom/sigmob/windad/WindAdError;)V
    .locals 4

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v1}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v2}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v2, v3}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {p1}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {p1, v1, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public final onAdExposed()V
    .locals 3

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v1}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$2;->a:Lcom/windmill/sigmob/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method
