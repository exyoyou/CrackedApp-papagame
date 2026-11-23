.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->onStart(Landroid/util/Size;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

.field final synthetic val$previewHeight:F

.field final synthetic val$previewWidth:F


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 2
    .line 3
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->val$previewWidth:F

    .line 4
    .line 5
    iput p3, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->val$previewHeight:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 4
    .line 5
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 20
    .line 21
    iget-object v1, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 22
    .line 23
    invoke-static {v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$400(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setAngle(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->val$previewWidth:F

    .line 39
    .line 40
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->val$previewHeight:F

    .line 41
    .line 42
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;->this$1:Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 43
    .line 44
    iget-object v3, v3, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 45
    .line 46
    invoke-static {v3}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$500(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->onStartPreview(FFZ)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
