.class public interface abstract Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListenerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMNativeAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeADMediaListenerExt"
.end annotation


# virtual methods
.method public abstract onVideoProgressUpdate(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "duration"
        }
    .end annotation
.end method
