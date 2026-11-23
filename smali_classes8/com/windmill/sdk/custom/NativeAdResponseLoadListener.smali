.class public interface abstract Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onNativeAdResponseLoadFail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation
.end method

.method public abstract onNativeAdResponseLoadSuccess(Lcom/windmill/sdk/natives/WMNativeAdData;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeAdData",
            "biddingEcpm"
        }
    .end annotation
.end method
