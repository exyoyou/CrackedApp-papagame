.class public Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private bitrate:I

.field private cameraHeight:I

.field private cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

.field private cameraWidth:I

.field private fileHeight:I

.field private fileWidth:I

.field private flipHorizontal:Z

.field private flipVertical:Z

.field private fps:I

.field private glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private hmDCCameraWrapper:Lorg/webrtc/haima/HmCameraWrapper;

.field private lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

.field private mute:Z

.field private recordNoFilter:Z

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/webrtc/haima/camerarecorder/LensFacing;->FRONT:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 7
    .line 8
    const/16 v0, 0x2d0

    .line 9
    .line 10
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileWidth:I

    .line 11
    .line 12
    const/16 v1, 0x500

    .line 13
    .line 14
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileHeight:I

    .line 15
    .line 16
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraWidth:I

    .line 17
    .line 18
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraHeight:I

    .line 19
    .line 20
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->activity:Landroid/app/Activity;

    .line 21
    .line 22
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->resources:Landroid/content/res/Resources;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public build()Lorg/webrtc/haima/camerarecorder/CameraRecorder;
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    const-string v2, "camera"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v15, v1

    .line 16
    check-cast v15, Landroid/hardware/camera2/CameraManager;

    .line 17
    .line 18
    new-instance v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder;

    .line 19
    .line 20
    move-object v2, v1

    .line 21
    iget-object v3, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 22
    .line 23
    iget-object v4, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 24
    .line 25
    iget v5, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileWidth:I

    .line 26
    .line 27
    iget v6, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileHeight:I

    .line 28
    .line 29
    iget v7, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraWidth:I

    .line 30
    .line 31
    iget v8, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraHeight:I

    .line 32
    .line 33
    iget v9, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fps:I

    .line 34
    .line 35
    iget v10, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->bitrate:I

    .line 36
    .line 37
    iget-object v11, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 38
    .line 39
    iget-boolean v12, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->flipHorizontal:Z

    .line 40
    .line 41
    iget-boolean v13, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->flipVertical:Z

    .line 42
    .line 43
    iget-boolean v14, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->mute:Z

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    move-object/from16 v19, v1

    .line 50
    .line 51
    iget-boolean v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->recordNoFilter:Z

    .line 52
    .line 53
    move/from16 v18, v1

    .line 54
    .line 55
    invoke-direct/range {v2 .. v18}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;Landroid/opengl/GLSurfaceView;IIIIIILorg/webrtc/haima/camerarecorder/LensFacing;ZZZLandroid/hardware/camera2/CameraManager;ZIZ)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 59
    .line 60
    move-object/from16 v2, v19

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->setFilter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->hmDCCameraWrapper:Lorg/webrtc/haima/HmCameraWrapper;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->setHmDCCarmera(Lorg/webrtc/haima/HmCameraWrapper;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->activity:Landroid/app/Activity;

    .line 72
    .line 73
    iput-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->resources:Landroid/content/res/Resources;

    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v2, "glSurfaceView and windowManager, multiVideoEffects is NonNull !!"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1
.end method

.method public cameraRecordListener(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public cameraSize(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->cameraHeight:I

    .line 4
    .line 5
    return-object p0
.end method

.method public filter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public flipHorizontal(Z)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->flipHorizontal:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public flipVertical(Z)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->flipVertical:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public fpsAndBitrate(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->bitrate:I

    .line 2
    .line 3
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fps:I

    .line 4
    .line 5
    return-object p0
.end method

.method public haimaCameraWrapper(Lorg/webrtc/haima/HmCameraWrapper;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->hmDCCameraWrapper:Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public lensFacing(Lorg/webrtc/haima/camerarecorder/LensFacing;)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 2
    .line 3
    return-object p0
.end method

.method public mute(Z)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->mute:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public recordNoFilter(Z)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->recordNoFilter:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public videoSize(II)Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorderBuilder;->fileHeight:I

    .line 4
    .line 5
    return-object p0
.end method
