.class public interface abstract Lorg/hmwebrtc/VideoCapturer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeCaptureFormat(III)V
.end method

.method public abstract dispose()V
.end method

.method public abstract initialize(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/hmwebrtc/CapturerObserver;)V
.end method

.method public abstract isScreencast()Z
.end method

.method public abstract startCapture(III)V
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
