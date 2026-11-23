.class public interface abstract Lcom/windmill/sdk/custom/IWMCustomBannerEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomBaseEvent;


# virtual methods
.method public abstract callBannerAdClick()V
.end method

.method public abstract callBannerAdClosed()V
.end method

.method public abstract callBannerAdShow()V
.end method

.method public abstract callBannerAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation
.end method

.method public abstract callLoadSuccess()V
.end method
