.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPrepared:encoder="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    instance-of v0, p1, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 27
    .line 28
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast p1, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setVideoEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onStopped(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStopped:encoder="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    instance-of p1, p1, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 19
    .line 20
    invoke-static {p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 27
    .line 28
    invoke-static {p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setVideoEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
