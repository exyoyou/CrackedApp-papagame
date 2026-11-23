.class final Lcom/windmill/toutiao/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/c$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/c$1;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/c$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    iget-object v0, v0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    iget-object v0, v0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdShow()V

    :cond_0
    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    iget-object v0, v0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClick()V

    :cond_0
    return-void
.end method

.method public final onSkippedVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    iget-object v0, v0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdSkipped()V

    :cond_0
    return-void
.end method

.method public final onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/c$1$1;->a:Lcom/windmill/toutiao/c$1;

    iget-object v0, v0, Lcom/windmill/toutiao/c$1;->a:Lcom/windmill/toutiao/c;

    iget-object v0, v0, Lcom/windmill/toutiao/c;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdPlayComplete()V

    :cond_0
    return-void
.end method
