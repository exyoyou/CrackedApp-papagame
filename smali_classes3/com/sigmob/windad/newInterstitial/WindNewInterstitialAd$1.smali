.class Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videoAd/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object v0, v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object v0, v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    iget-object p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object p1, p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdPreLoadFail(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;->a:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    iget-object v0, v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;->onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V

    return-void
.end method
