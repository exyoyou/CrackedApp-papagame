.class Lorg/webrtc/haima/camerarecorder/CameraThread$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$002(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$002(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$002(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/webrtc/haima/camerarecorder/CameraThread;->access$100(Lorg/webrtc/haima/camerarecorder/CameraThread;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
