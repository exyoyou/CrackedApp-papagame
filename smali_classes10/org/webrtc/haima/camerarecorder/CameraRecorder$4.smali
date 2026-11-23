.class Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/CameraRecorder;->start()V
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

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
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 4
    .line 5
    new-instance v2, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$800(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lorg/webrtc/haima/HmCameraWrapper;

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;-><init>(Lorg/webrtc/haima/HmCameraWrapper;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$702(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 21
    .line 22
    .line 23
    new-instance v4, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 24
    .line 25
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 32
    .line 33
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$900(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 38
    .line 39
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1000(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 44
    .line 45
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1200(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 56
    .line 57
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 62
    .line 63
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Landroid/opengl/GLSurfaceView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-float v11, v0

    .line 72
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 73
    .line 74
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Landroid/opengl/GLSurfaceView;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v12, v0

    .line 83
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 84
    .line 85
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1400(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 90
    .line 91
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1500(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 96
    .line 97
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 102
    .line 103
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->getFilter()Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 108
    .line 109
    .line 110
    move-result-object v16

    .line 111
    invoke-direct/range {v4 .. v16}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;-><init>(Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;IIZZFFIIZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 115
    .line 116
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->prepare()V

    .line 121
    .line 122
    .line 123
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 124
    .line 125
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->startRecording()V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 133
    .line 134
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    .line 140
    iget-object v0, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 141
    .line 142
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecordListener;->onRecordStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    iget-object v2, v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;->this$0:Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 152
    .line 153
    invoke-static {v2, v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->access$1700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    :cond_0
    :goto_0
    return-void
.end method
