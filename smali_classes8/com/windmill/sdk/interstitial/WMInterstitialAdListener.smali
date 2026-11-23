.class public interface abstract Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onInterstitialAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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
.end method

.method public abstract onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdPlayEnd(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onInterstitialAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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
.end method

.method public abstract onInterstitialAdPlayStart(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method
