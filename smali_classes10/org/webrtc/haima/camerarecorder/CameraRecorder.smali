.class public Lorg/webrtc/haima/camerarecorder/CameraRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRecorder"


# instance fields
.field private final bitrate:I

.field private cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

.field private final cameraHeight:I

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

.field private final cameraWidth:I

.field private final degrees:I

.field private final fileHeight:I

.field private final fileWidth:I

.field private flashSupport:Z

.field private final flipHorizontal:Z

.field private final flipVertical:Z

.field private final frameRate:I

.field private glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final isLandscapeDevice:Z

.field private final lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

.field private mHmCameraWrapperRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lorg/webrtc/haima/HmCameraWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaEncoderListener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

.field private final mute:Z

.field private muxer:Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

.field private final recordNoFilter:Z

.field private started:Z


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;Landroid/opengl/GLSurfaceView;IIIIIILorg/webrtc/haima/camerarecorder/LensFacing;ZZZLandroid/hardware/camera2/CameraManager;ZIZ)V
    .locals 3

    move-object v0, p0

    move-object v1, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;

    invoke-direct {v2, p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$3;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    iput-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->mediaEncoderListener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    move-object v2, p1

    .line 3
    iput-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p2, v2}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 5
    iput-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    move v2, p3

    .line 6
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->fileWidth:I

    move v2, p4

    .line 7
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->fileHeight:I

    move v2, p5

    .line 8
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraWidth:I

    move v2, p6

    .line 9
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHeight:I

    move v2, p8

    .line 10
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->bitrate:I

    move v2, p7

    .line 11
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->frameRate:I

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    move v2, p10

    .line 13
    iput-boolean v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flipHorizontal:Z

    move v2, p11

    .line 14
    iput-boolean v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flipVertical:Z

    move v2, p12

    .line 15
    iput-boolean v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->mute:Z

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move/from16 v2, p14

    .line 17
    iput-boolean v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->isLandscapeDevice:Z

    move/from16 v2, p15

    .line 18
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->degrees:I

    move/from16 v2, p16

    .line 19
    iput-boolean v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->recordNoFilter:Z

    .line 20
    iget-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    if-nez v2, :cond_0

    .line 21
    new-instance v2, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    invoke-direct {v2, p2}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v2, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 22
    :cond_0
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    new-instance v2, Lorg/webrtc/haima/camerarecorder/CameraRecorder$1;

    invoke-direct {v2, p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$1;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    invoke-virtual {v1, v2}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setSurfaceCreateListener(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->startPreview(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->fileWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->fileHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flipHorizontal:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flipVertical:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->frameRate:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->bitrate:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->recordNoFilter:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->notifyOnError(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->notifyOnDone()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flashSupport:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flashSupport:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/CameraRecordListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->degrees:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->isLandscapeDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->muxer:Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lorg/webrtc/haima/camerarecorder/CameraRecorder;Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;)Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->muxer:Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->mHmCameraWrapperRef:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->mediaEncoderListener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private destroyPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->stopPreview(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private notifyOnDone()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecordListener;->onRecordComplete()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private notifyOnError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lorg/webrtc/haima/camerarecorder/CameraRecordListener;->onError(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/webrtc/haima/camerarecorder/CameraThread;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 9
    .line 10
    new-instance v3, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;

    .line 11
    .line 12
    invoke-direct {v3, p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$2;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 16
    .line 17
    iget-object v6, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    move-object v4, p1

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/webrtc/haima/camerarecorder/CameraThread;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;Landroid/graphics/SurfaceTexture;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/haima/camerarecorder/LensFacing;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraThread;->getHandler()Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 34
    .line 35
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraWidth:I

    .line 36
    .line 37
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHeight:I

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->startPreview(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method


# virtual methods
.method public changeAutoFocus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->changeAutoFocus()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public changeManualFocusPoint(FFII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->changeManualFocusPoint(FFII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isFlashSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flashSupport:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->started:Z

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->muxer:Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->stopRecording()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->muxer:Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    :catch_0
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->destroyPreview()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setFilter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setGlFilter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setGestureScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->glPreviewRenderer:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setGestureScale(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setHmDCCarmera(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->mHmCameraWrapperRef:Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->started:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$4;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->started:Z

    .line 21
    .line 22
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->started:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    .line 7
    .line 8
    new-instance v1, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder$5;-><init>(Lorg/webrtc/haima/camerarecorder/CameraRecorder;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->notifyOnError(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->started:Z

    .line 29
    .line 30
    return-void
.end method

.method public switchFlashMode()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->flashSupport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraRecorder;->cameraHandler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/CameraHandler;->switchFlashMode()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method
