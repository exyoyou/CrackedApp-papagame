.class final Lcom/windmill/gdt/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/c;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoClicked()V
    .locals 0

    return-void
.end method

.method public final onVideoCompleted()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoCompleted: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoError: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

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

    iget-object p1, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {p1}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onVideoInit()V
    .locals 0

    return-void
.end method

.method public final onVideoLoaded(I)V
    .locals 1

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "onVideoLoaded: "

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {p1}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {p1}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoLoad()V

    :cond_0
    return-void
.end method

.method public final onVideoLoading()V
    .locals 0

    return-void
.end method

.method public final onVideoPause()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPause: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public final onVideoReady()V
    .locals 0

    return-void
.end method

.method public final onVideoResume()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoResume: "

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public final onVideoStart()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoStart"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/c$4;->a:Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/c;->e(Lcom/windmill/gdt/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public final onVideoStop()V
    .locals 0

    return-void
.end method
