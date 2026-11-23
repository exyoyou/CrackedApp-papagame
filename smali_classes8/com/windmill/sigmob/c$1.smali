.class final Lcom/windmill/sigmob/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/c;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    return-void
.end method

.method public final onAdDetailDismiss()V
    .locals 0

    return-void
.end method

.method public final onAdDetailShow()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    return-void
.end method

.method public final onAdError(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {p1}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    return-void
.end method

.method public final onAdExposed()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c$1;->a:Lcom/windmill/sigmob/c;

    invoke-static {v0}, Lcom/windmill/sigmob/c;->a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    return-void
.end method
