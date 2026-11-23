.class public interface abstract Lcom/windmill/kuaishou/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/kuaishou/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
.end method

.method public abstract onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
