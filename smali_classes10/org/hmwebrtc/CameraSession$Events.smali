.class public interface abstract Lorg/hmwebrtc/CameraSession$Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract onCameraClosed(Lorg/hmwebrtc/CameraSession;)V
.end method

.method public abstract onCameraDisconnected(Lorg/hmwebrtc/CameraSession;)V
.end method

.method public abstract onCameraError(Lorg/hmwebrtc/CameraSession;Ljava/lang/String;)V
.end method

.method public abstract onCameraOpening()V
.end method

.method public abstract onFrameCaptured(Lorg/hmwebrtc/CameraSession;Lorg/hmwebrtc/VideoFrame;)V
.end method
