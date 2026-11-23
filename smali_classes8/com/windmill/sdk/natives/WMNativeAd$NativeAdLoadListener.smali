.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAd$NativeAdLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdLoadListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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

.method public abstract onFeedAdLoad(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation
.end method
