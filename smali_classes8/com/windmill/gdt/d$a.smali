.class public interface abstract Lcom/windmill/gdt/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gdt/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onADClicked(Lcom/windmill/sdk/natives/WMNativeAdData;)V
.end method

.method public abstract onADExposure(Lcom/windmill/sdk/natives/WMNativeAdData;)V
.end method

.method public abstract onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
.end method

.method public abstract onNativeAdLoadSuccess(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onRenderFail(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V
.end method
