.class final Lcom/windmill/gdt/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/gdt/f;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iput-object p2, p0, Lcom/windmill/gdt/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onADClicked---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    move-object v2, v1

    check-cast v2, Lcom/windmill/gdt/b;

    invoke-virtual {v2}, Lcom/windmill/gdt/b;->getExpressAdView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v3, v3, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/windmill/gdt/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/windmill/gdt/d$a;->onADClicked(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 5

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onADClosed---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/gdt/b;

    invoke-virtual {v2}, Lcom/windmill/gdt/b;->getExpressAdView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/windmill/gdt/b;->c:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz v2, :cond_0

    const-string v3, "gdt"

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onADExposure---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    move-object v2, v1

    check-cast v2, Lcom/windmill/gdt/b;

    invoke-virtual {v2}, Lcom/windmill/gdt/b;->getExpressAdView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v3, v3, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/windmill/gdt/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/windmill/gdt/d$a;->onADExposure(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public final onADLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADLoad()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-boolean v3, v3, Lcom/windmill/gdt/f;->b:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/windmill/gdt/GDTAdapterProxy;->DOWNLOAD_CONFIRM_LISTENER:Lcom/qq/e/comm/compliance/DownloadConfirmListener;

    invoke-interface {v2, v3}, Lcom/qq/e/comm/compliance/ApkDownloadComplianceInterface;->setDownloadConfirmListener(Lcom/qq/e/comm/compliance/DownloadConfirmListener;)V

    :cond_1
    new-instance v3, Lcom/windmill/gdt/b;

    iget-object v4, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v4, v4, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {v3, v2, v4}, Lcom/windmill/gdt/b;-><init>(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iget-object v4, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v4, v4, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v0, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Lcom/windmill/gdt/d$a;->onNativeAdLoadSuccess(Ljava/util/List;I)V

    :cond_4
    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "-----------onADLoaded---------"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object p1, p1, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gdt/f$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    invoke-interface {v0, p1}, Lcom/windmill/gdt/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_7
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onNoAD---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/gdt/GDTAdapterProxy;->getDetailCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object p1, p1, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    invoke-interface {p1, v0}, Lcom/windmill/gdt/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 6

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onRenderFail---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    move-object v2, v1

    check-cast v2, Lcom/windmill/gdt/b;

    invoke-virtual {v2}, Lcom/windmill/gdt/b;->getExpressAdView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v3, v3, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v3

    iget-object v4, v2, Lcom/windmill/gdt/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    const-string v5, "gdt ad onRenderFail"

    invoke-virtual {v4, v5}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/windmill/gdt/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    invoke-interface {v2, v3, v4}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v3

    const-string v4, "gdt onRenderFail"

    invoke-direct {v2, v3, v4}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v3, v3, Lcom/windmill/gdt/f;->c:Lcom/windmill/gdt/d$a;

    invoke-interface {v3, v1, v2}, Lcom/windmill/gdt/d$a;->onRenderFail(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 5

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onRenderSuccess---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v0, v0, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v1, v1, Lcom/windmill/gdt/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/gdt/b;

    invoke-virtual {v1}, Lcom/windmill/gdt/b;->getExpressAdView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/windmill/gdt/f$1;->b:Lcom/windmill/gdt/f;

    iget-object v2, v2, Lcom/windmill/gdt/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v2

    iget-object v1, v1, Lcom/windmill/gdt/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
