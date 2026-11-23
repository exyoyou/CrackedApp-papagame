.class public interface abstract Lcom/windmill/sdk/custom/IWMCustomVideoEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomBaseEvent;


# virtual methods
.method public abstract callLoadSuccess()V
.end method

.method public abstract callVideoAdClick()V
.end method

.method public abstract callVideoAdClickDownload()V
.end method

.method public abstract callVideoAdClosed()V
.end method

.method public abstract callVideoAdPlayComplete()V
.end method

.method public abstract callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation
.end method

.method public abstract callVideoAdReward(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReward"
        }
    .end annotation
.end method

.method public abstract callVideoAdShow()V
.end method

.method public abstract callVideoAdSkipped()V
.end method
