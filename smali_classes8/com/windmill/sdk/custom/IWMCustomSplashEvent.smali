.class public interface abstract Lcom/windmill/sdk/custom/IWMCustomSplashEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomBaseEvent;


# virtual methods
.method public abstract callLoadSuccess()V
.end method

.method public abstract callSplashAdClick()V
.end method

.method public abstract callSplashAdClosed()V
.end method

.method public abstract callSplashAdShow()V
.end method

.method public abstract callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation
.end method

.method public abstract callSplashAdSkipped()V
.end method
