.class final Lcom/windmill/kuaishou/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/f;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/f;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/f;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/f$9;->a:Lcom/windmill/kuaishou/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$9;->a:Lcom/windmill/kuaishou/f;

    iget-object v0, v0, Lcom/windmill/kuaishou/f;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reportVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$9;->a:Lcom/windmill/kuaishou/f;

    iget-object v0, v0, Lcom/windmill/kuaishou/f;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayEnd()V

    return-void
.end method

.method public final reportVideoError(JII)V
    .locals 0

    return-void
.end method

.method public final reportVideoPause(J)V
    .locals 0

    return-void
.end method

.method public final reportVideoPreload()V
    .locals 0

    return-void
.end method

.method public final reportVideoResume(J)V
    .locals 0

    return-void
.end method

.method public final reportVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$9;->a:Lcom/windmill/kuaishou/f;

    iget-object v0, v0, Lcom/windmill/kuaishou/f;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayStart()V

    return-void
.end method
