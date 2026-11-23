.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdInteractionListener"
.end annotation


# virtual methods
.method public abstract onADClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "error"
        }
    .end annotation
.end method

.method public abstract onADExposed(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "view",
            "width",
            "height"
        }
    .end annotation
.end method
