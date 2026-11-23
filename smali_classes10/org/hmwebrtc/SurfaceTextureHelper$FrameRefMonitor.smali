.class public interface abstract Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameRefMonitor"
.end annotation


# virtual methods
.method public abstract onDestroyBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onNewBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onReleaseBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V
.end method

.method public abstract onRetainBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V
.end method
