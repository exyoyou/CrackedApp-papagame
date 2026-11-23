.class public interface abstract Lorg/hmwebrtc/DataChannel$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onBufferedAmountChange(J)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onStateChange()V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onWritableState(Z)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method
