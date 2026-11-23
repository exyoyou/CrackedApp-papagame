.class public interface abstract Lcom/windmill/sdk/banner/WMBannerAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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

.method public abstract onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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

.method public abstract onAdLoadSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation
.end method

.method public abstract onAdShown(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method
