.class final Lcom/windmill/sigmob/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sigmob/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/f;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/f;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object p2, p2, Lcom/windmill/sigmob/f;->c:Lcom/windmill/sigmob/d$a;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/windmill/sigmob/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

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

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/natives/WindNativeAdData;

    new-instance v1, Lcom/windmill/sigmob/e;

    iget-object v2, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object v2, v2, Lcom/windmill/sigmob/f;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {v1, v2, v0}, Lcom/windmill/sigmob/e;-><init>(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)V

    iget-object v0, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object v0, v0, Lcom/windmill/sigmob/f;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object p2, p1, Lcom/windmill/sigmob/f;->c:Lcom/windmill/sigmob/d$a;

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/windmill/sigmob/f;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/windmill/sigmob/f;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    invoke-virtual {p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getEcpm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/windmill/sigmob/d$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object p1, p1, Lcom/windmill/sigmob/f;->c:Lcom/windmill/sigmob/d$a;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "list is null or size be 0 "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/windmill/sigmob/f$1;->a:Lcom/windmill/sigmob/f;

    iget-object p2, p2, Lcom/windmill/sigmob/f;->c:Lcom/windmill/sigmob/d$a;

    invoke-interface {p2, p1}, Lcom/windmill/sigmob/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_4
    return-void
.end method
