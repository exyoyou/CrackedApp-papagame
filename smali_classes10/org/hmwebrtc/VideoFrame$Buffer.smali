.class public interface abstract Lorg/hmwebrtc/VideoFrame$Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Buffer"
.end annotation


# virtual methods
.method public abstract cropAndScale(IIIIII)Lorg/hmwebrtc/VideoFrame$Buffer;
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract getBufferType()I
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract getHeight()I
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract getWidth()I
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract release()V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract retain()V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method

.method public abstract toI420()Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Buffer"
    .end annotation
.end method
