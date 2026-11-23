.class public interface abstract Lcom/sigmob/windad/natives/NativeADEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdDetailDismiss()V
.end method

.method public abstract onAdDetailShow()V
.end method

.method public abstract onAdError(Lcom/sigmob/windad/WindAdError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onAdExposed()V
.end method
