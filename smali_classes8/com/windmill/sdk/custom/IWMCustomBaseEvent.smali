.class public interface abstract Lcom/windmill/sdk/custom/IWMCustomBaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation
.end method

.method public abstract callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation
.end method
