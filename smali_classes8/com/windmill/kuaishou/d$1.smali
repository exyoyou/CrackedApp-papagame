.class final Lcom/windmill/kuaishou/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/d;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/d;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v1, v1, Lcom/windmill/kuaishou/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v0, v0, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object p1, p1, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    invoke-interface {p1, v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsInterstitialAd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v1, v1, Lcom/windmill/kuaishou/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onInterstitialAdLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/kuaishou/d;->d:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/api/KsInterstitialAd;

    iput-object v2, v0, Lcom/windmill/kuaishou/d;->a:Lcom/kwad/sdk/api/KsInterstitialAd;

    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v2, v0, Lcom/windmill/kuaishou/d;->a:Lcom/kwad/sdk/api/KsInterstitialAd;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/windmill/kuaishou/d;->c:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v0, v0, Lcom/windmill/kuaishou/d;->a:Lcom/kwad/sdk/api/KsInterstitialAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInterstitialAd;->getECPM()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v1, v1, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/windmill/kuaishou/e$a;->adapterDidLoadBiddingPriceSuccess(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v0, v0, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object p1, p1, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "adList is null"

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v0, v0, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    invoke-interface {v0, p1}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_2
    return-void
.end method

.method public final onRequestResult(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object v1, v1, Lcom/windmill/kuaishou/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onRequestResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/d$1;->a:Lcom/windmill/kuaishou/d;

    iget-object p1, p1, Lcom/windmill/kuaishou/d;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdPreLoadSuccess()V

    :cond_0
    return-void
.end method
