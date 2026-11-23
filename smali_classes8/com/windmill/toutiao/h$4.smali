.class final Lcom/windmill/toutiao/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/h;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/h;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/h;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {v0, p1, p2}, Lcom/windmill/toutiao/h;->a(Lcom/windmill/toutiao/h;J)J

    iget-object v0, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {v0, p3, p4}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;J)J

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate current:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {v0}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {v0}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public final onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "onVideoAdComplete"

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoAdContinuePlay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoAdPaused:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public final onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 4

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoAdStartPlay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->c(Lcom/windmill/toutiao/h;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->c(Lcom/windmill/toutiao/h;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoDuration()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoStart(J)V

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

    iget-object v0, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {v0}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

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

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoLoad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/h$4;->a:Lcom/windmill/toutiao/h;

    invoke-static {p1}, Lcom/windmill/toutiao/h;->b(Lcom/windmill/toutiao/h;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoLoad()V

    :cond_0
    return-void
.end method
