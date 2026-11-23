.class final Lcom/windmill/sigmob/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/c;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/c;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/c;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    return-void
.end method

.method public final onVideoError(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {p1}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    return-void
.end method

.method public final onVideoLoad()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoLoad()V

    return-void
.end method

.method public final onVideoPause()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    return-void
.end method

.method public final onVideoResume()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    return-void
.end method

.method public final onVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$3;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    return-void
.end method
