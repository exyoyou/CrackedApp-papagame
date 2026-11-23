.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DislikeInteractionCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onSelected(ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "enforce"
        }
    .end annotation
.end method

.method public abstract onShow()V
.end method
