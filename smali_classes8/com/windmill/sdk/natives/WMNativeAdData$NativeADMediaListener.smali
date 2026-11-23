.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeADMediaListener"
.end annotation


# virtual methods
.method public abstract onVideoCompleted()V
.end method

.method public abstract onVideoError(Lcom/windmill/sdk/WindMillError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onVideoLoad()V
.end method

.method public abstract onVideoPause()V
.end method

.method public abstract onVideoResume()V
.end method

.method public abstract onVideoStart()V
.end method
