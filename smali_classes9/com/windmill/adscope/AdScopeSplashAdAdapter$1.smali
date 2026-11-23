.class final Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/adscope/AdScopeSplashAdAdapter;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClick()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdClosed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    const-string v2, "no message"

    invoke-direct {v1, p1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdLoaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)Z

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)Lcom/beizi/fusion/SplashAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)Lcom/beizi/fusion/SplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/SplashAd;->getECPM()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    new-instance v2, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess()V

    return-void
.end method

.method public final onAdShown()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;->a:Lcom/windmill/adscope/AdScopeSplashAdAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShow()V

    return-void
.end method

.method public final onAdTick(J)V
    .locals 0

    return-void
.end method
