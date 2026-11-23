.class final Lcom/windmill/toutiao/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/b;-><init>(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/b;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/b;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickRetry()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onClickRetry()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public final onVideoAdComplete()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoAdComplete()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoAdContinuePlay()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoAdContinuePlay()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPaused()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoAdPaused()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public final onVideoAdStartPlay()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoAdStartPlay()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public final onVideoError(II)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {p1}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onVideoLoad()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onVideoLoad()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/b$1;->a:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->a(Lcom/windmill/toutiao/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoLoad()V

    :cond_0
    return-void
.end method
