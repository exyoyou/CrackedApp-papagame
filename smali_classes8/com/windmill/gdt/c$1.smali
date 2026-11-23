.class final Lcom/windmill/gdt/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/c;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/c;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/c;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADClicked: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    return-void
.end method

.method public final onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADError: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

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

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {p1}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onADExposed()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADExposed: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->a(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    return-void
.end method

.method public final onADStatusChanged()V
    .locals 8

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADStatusChanged: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->b(Lcom/windmill/gdt/c;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->b(Lcom/windmill/gdt/c;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-result-object v0

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
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v3, v4, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/windmill/gdt/c$1;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->c(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_6
    :goto_0
    return-void
.end method
