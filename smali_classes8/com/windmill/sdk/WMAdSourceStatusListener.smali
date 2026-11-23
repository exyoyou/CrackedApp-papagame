.class public interface abstract Lcom/windmill/sdk/WMAdSourceStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdSourceBiddingSuccess(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onAdSourceLoadSuccess(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method
