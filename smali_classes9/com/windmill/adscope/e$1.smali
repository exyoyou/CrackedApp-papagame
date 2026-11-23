.class final Lcom/windmill/adscope/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/adscope/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/adscope/e;


# direct methods
.method constructor <init>(Lcom/windmill/adscope/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iput-object p2, p0, Lcom/windmill/adscope/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onAdClick---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v0, v0, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    move-object v2, v1

    check-cast v2, Lcom/windmill/adscope/a;

    iget-object v3, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v3, v3, Lcom/windmill/adscope/e;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/windmill/adscope/a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v2, v2, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/windmill/adscope/d$a;->onADClicked(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onAdClosed---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdClosed(Landroid/view/View;)V
    .locals 4

    .line 2
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "-----------onAdClosed---------"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object p1, p1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/adscope/a;

    iget-object v1, v1, Lcom/windmill/adscope/a;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    if-eqz v1, :cond_0

    const-string v2, "adscope"

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onAdFailed(I)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onAdFailed---------"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v0, v0, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    const-string v1, "onAdFailed"

    invoke-direct {v0, p1, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object p1, p1, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    invoke-interface {p1, v0}, Lcom/windmill/adscope/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onAdLoaded(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-----------onAdLoaded---------"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object p1, p1, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/adscope/e$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v0, v0, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    invoke-interface {v0, p1}, Lcom/windmill/adscope/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v0, v0, Lcom/windmill/adscope/e;->a:Lcom/beizi/fusion/NativeAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/beizi/fusion/NativeAd;->getECPM()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/windmill/adscope/a;

    iget-object v2, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v2, v2, Lcom/windmill/adscope/e;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {v1, p1, v2}, Lcom/windmill/adscope/a;-><init>(Landroid/view/View;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iget-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object p1, p1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, p1, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lcom/windmill/adscope/d$a;->onNativeAdLoadSuccess(Ljava/util/List;I)V

    :cond_3
    return-void
.end method

.method public final onAdShown()V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onAdShown---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v0, v0, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v1, v1, Lcom/windmill/adscope/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    move-object v2, v1

    check-cast v2, Lcom/windmill/adscope/a;

    iget-object v3, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v3, v3, Lcom/windmill/adscope/e;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/windmill/adscope/a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v2, p0, Lcom/windmill/adscope/e$1;->b:Lcom/windmill/adscope/e;

    iget-object v2, v2, Lcom/windmill/adscope/e;->c:Lcom/windmill/adscope/d$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/windmill/adscope/d$a;->onADExposure(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
