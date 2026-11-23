.class final Lcom/windmill/sigmob/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/e;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/e;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/e;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoError(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {p1}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {p1}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public final onVideoLoad()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoLoad()V

    :cond_0
    return-void
.end method

.method public final onVideoPause()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public final onVideoResume()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public final onVideoStart()V
    .locals 5

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v0}, Lcom/windmill/sigmob/e;->d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sigmob/e$4;->a:Lcom/windmill/sigmob/e;

    invoke-static {v1}, Lcom/windmill/sigmob/e;->a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getVideoDuration()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->onVideoStart(J)V

    :cond_0
    return-void
.end method
