.class final Lcom/windmill/kuaishou/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/b;-><init>(Lcom/kwad/sdk/api/KsDrawAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/kuaishou/b;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/b;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    iput-object p2, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "----------onAdClicked-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->a(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->a(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onAdShow()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onAdShow-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->a(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->a(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onVideoPlayEnd()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayComplete"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoPlayError()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayError"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    iget-object v1, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v1}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onVideoPlayPause()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayPause"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public final onVideoPlayResume()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayResume"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayStart"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/b$1;->b:Lcom/windmill/kuaishou/b;

    invoke-static {v0}, Lcom/windmill/kuaishou/b;->b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method
