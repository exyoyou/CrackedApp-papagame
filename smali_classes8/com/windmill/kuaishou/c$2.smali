.class final Lcom/windmill/kuaishou/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/c;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/c;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/c;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAdClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v0, v0, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public final onPageDismiss()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onPageDismiss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v0, v0, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method

.method public final onSkippedVideo()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onSkippedVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onVideoPlayEnd()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoPlayEnd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v0, v0, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoPlayError(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoPlayError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v0, v0, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object p1, p1, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    invoke-interface {p1, v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onVideoPlayStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v1, v1, Lcom/windmill/kuaishou/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoPlayStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/c$2;->a:Lcom/windmill/kuaishou/c;

    iget-object v0, v0, Lcom/windmill/kuaishou/c;->b:Lcom/windmill/kuaishou/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/windmill/kuaishou/e$a;->onInterstitialAdStartPlaying()V

    :cond_0
    return-void
.end method
