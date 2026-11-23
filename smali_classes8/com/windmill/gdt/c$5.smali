.class final Lcom/windmill/gdt/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/c;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/e/ads/nativ/CustomizeVideo;

.field final synthetic b:Lcom/windmill/gdt/c;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/c;Lcom/qq/e/ads/nativ/CustomizeVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/c$5;->b:Lcom/windmill/gdt/c;

    iput-object p2, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reportVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoCompleted()V

    return-void
.end method

.method public final reportVideoError(JII)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoError(JII)V

    return-void
.end method

.method public final reportVideoPause(J)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0, p1, p2}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoPause(J)V

    return-void
.end method

.method public final reportVideoPreload()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoPreload()V

    return-void
.end method

.method public final reportVideoResume(J)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0, p1, p2}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoResume(J)V

    return-void
.end method

.method public final reportVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/c$5;->a:Lcom/qq/e/ads/nativ/CustomizeVideo;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/CustomizeVideo;->reportVideoStart()V

    return-void
.end method
