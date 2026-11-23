.class final Lcom/windmill/toutiao/g$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/g;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

.field final synthetic b:Lcom/windmill/toutiao/g;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/g;Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/g$8;->b:Lcom/windmill/toutiao/g;

    iput-object p2, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reportVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoFinish()V

    return-void
.end method

.method public final reportVideoError(JII)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoError(JII)V

    return-void
.end method

.method public final reportVideoPause(J)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoPause(J)V

    return-void
.end method

.method public final reportVideoPreload()V
    .locals 0

    return-void
.end method

.method public final reportVideoResume(J)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoContinue(J)V

    return-void
.end method

.method public final reportVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g$8;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoStart()V

    return-void
.end method
