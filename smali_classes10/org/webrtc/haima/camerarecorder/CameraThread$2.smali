.class Lorg/webrtc/haima/camerarecorder/CameraThread$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/camerarecorder/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$202(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$300(Lorg/webrtc/haima/camerarecorder/CameraThread;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
