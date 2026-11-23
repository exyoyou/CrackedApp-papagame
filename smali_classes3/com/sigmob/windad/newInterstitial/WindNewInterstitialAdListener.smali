.class public interface abstract Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onInterstitialAdClicked(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdClosed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdPreLoadFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdShow(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation
.end method
