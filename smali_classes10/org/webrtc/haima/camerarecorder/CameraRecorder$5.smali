.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder;->stop()V
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->stopRecording()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$702(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 32
    .line 33
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1800(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
