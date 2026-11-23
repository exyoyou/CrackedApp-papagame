.class public interface abstract Lorg/hmwebrtc/CameraVideoCapturer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;,
        Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;,
        Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;,
        Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;,
        Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;
    }
.end annotation


# virtual methods
.method public abstract addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeMediaRecorderFromCamera(Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V
.end method

.method public abstract switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
.end method

.method public abstract switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
.end method
