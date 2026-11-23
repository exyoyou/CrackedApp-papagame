.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder;->startPreview(Landroid/graphics/SurfaceTexture;)V
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStart(Landroid/util/Size;Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "previewSize : width "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " height = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 31
    .line 32
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 39
    .line 40
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-direct {v1, v2, v3}, Lorg/webrtc/haima/camerarecorder/Resolution;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setCameraResolution(Lorg/webrtc/haima/camerarecorder/Resolution;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 61
    .line 62
    invoke-static {v0, p2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$202(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Z)Z

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 66
    .line 67
    invoke-static {p2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 74
    .line 75
    invoke-static {p2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 80
    .line 81
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$200(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-interface {p2, v0}, Lorg/webrtc/haima/camerarecorder/CameraRecordListener;->onGetFlashSupport(Z)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    int-to-float p2, p2

    .line 93
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    int-to-float v0, v0

    .line 98
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 99
    .line 100
    invoke-static {v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Landroid/opengl/GLSurfaceView;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;

    .line 105
    .line 106
    invoke-direct {v2, p0, p2, v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2$1;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;FF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 113
    .line 114
    invoke-static {p2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_2

    .line 119
    .line 120
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 121
    .line 122
    invoke-static {p2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->getPreviewTexture()Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p2, v0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 146
    .line 147
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->start()V

    .line 148
    .line 149
    .line 150
    return-void
.end method
