.class final Lcom/windmill/gdt/GDTInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/GDTInterstitialAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/GDTInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/GDTInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADClicked()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onADClosed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADClosed()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->c(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->d(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onADExposure()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADExposure()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdShow()V

    return-void
.end method

.method public final onADLeftApplication()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADLeftApplication()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onADOpened()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADOpened()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onADReceive()V
    .locals 3

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v2}, Lcom/windmill/gdt/GDTInterstitialAdapter;->b(Lcom/windmill/gdt/GDTInterstitialAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---onADReceive() eCpm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    new-instance v2, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->b(Lcom/windmill/gdt/GDTInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onNoAD() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNoAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

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

    iget-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {p1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->h(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {p1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->i(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    iget-object p1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRenderFail()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->b(Lcom/windmill/gdt/GDTInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onRenderFail() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->h(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    move-result v0

    const-string v1, "onRenderFail"

    if-eqz v0, :cond_1

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_1
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onRenderSuccess()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->b(Lcom/windmill/gdt/GDTInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onRenderSuccess() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->e(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->f(Lcom/windmill/gdt/GDTInterstitialAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTInterstitialAdapter;->g(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/comm/compliance/DownloadConfirmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->setDownloadConfirmListener(Lcom/qq/e/comm/compliance/DownloadConfirmListener;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTInterstitialAdapter;->a(Lcom/windmill/gdt/GDTInterstitialAdapter;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVideoCached()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTInterstitialAdapter$1;->a:Lcom/windmill/gdt/GDTInterstitialAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoCached()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method
