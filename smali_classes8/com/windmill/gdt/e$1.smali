.class final Lcom/windmill/gdt/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/e;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/e;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADClicked: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v1}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADError: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v1}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v2}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-virtual {v2, v3}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    new-instance v2, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public final onADExposed()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADExposed: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v1}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onADStatusChanged()V
    .locals 8

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADStatusChanged: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    iget-object v1, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    iget-object v0, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v3, v4, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/windmill/gdt/e$1;->a:Lcom/windmill/gdt/e;

    invoke-static {v0}, Lcom/windmill/gdt/e;->c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_6
    :goto_0
    return-void
.end method
