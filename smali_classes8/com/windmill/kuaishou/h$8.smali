.class final Lcom/windmill/kuaishou/h$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/h;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/h;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/h;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/h$8;->a:Lcom/windmill/kuaishou/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h$8;->a:Lcom/windmill/kuaishou/h;

    iget-object v0, v0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reportVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h$8;->a:Lcom/windmill/kuaishou/h;

    iget-object v0, v0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayEnd()V

    :cond_0
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

    iget-object v0, p0, Lcom/windmill/kuaishou/h$8;->a:Lcom/windmill/kuaishou/h;

    iget-object v0, v0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayStart()V

    :cond_0
    return-void
.end method
