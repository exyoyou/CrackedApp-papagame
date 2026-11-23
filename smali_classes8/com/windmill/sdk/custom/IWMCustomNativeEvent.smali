.class public interface abstract Lcom/windmill/sdk/custom/IWMCustomNativeEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomBaseEvent;


# virtual methods
.method public abstract callLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
        }
    .end annotation
.end method

.method public abstract callNativeAdLangPageShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
        }
    .end annotation
.end method

.method public abstract callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
        }
    .end annotation
.end method

.method public abstract callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adData",
            "adapterError"
        }
    .end annotation
.end method
