.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;Landroid/opengl/GLSurfaceView;IIIIIILorg/webrtc/haima/camerarecorder/LensFacing;ZZZLandroid/hardware/camera2/CameraManager;ZIZ)V
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$1;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$000(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
