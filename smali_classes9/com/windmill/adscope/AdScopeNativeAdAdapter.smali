.class public Lcom/windmill/adscope/AdScopeNativeAdAdapter;
.super Lcom/windmill/sdk/custom/WMCustomNativeAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/adscope/d$a;


# instance fields
.field private a:Lcom/windmill/adscope/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeNativeAdAdapter;->a:Lcom/windmill/adscope/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/adscope/d;->b()V

    :cond_0
    return-void
.end method

.method public getNativeAdDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeNativeAdAdapter;->a:Lcom/windmill/adscope/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/adscope/d;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/windmill/adscope/AdScopeNativeAdAdapter;->a:Lcom/windmill/adscope/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/adscope/d;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getNativeAdType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loadAd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-instance v1, Lcom/windmill/adscope/e;

    invoke-direct {v1, p0, p0}, Lcom/windmill/adscope/e;-><init>(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/adscope/d$a;)V

    iput-object v1, p0, Lcom/windmill/adscope/AdScopeNativeAdAdapter;->a:Lcom/windmill/adscope/d;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/windmill/adscope/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "not support nativeAdType"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " catch throwable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onADClicked(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    return-void
.end method

.method public onADExposure(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    return-void
.end method

.method public onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNativeAdFailToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onNativeAdLoadSuccess(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNativeAdLoadSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/windmill/adscope/AdScopeNativeAdAdapter;->a:Lcom/windmill/adscope/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/adscope/d;->c()V

    :cond_0
    return-void
.end method
