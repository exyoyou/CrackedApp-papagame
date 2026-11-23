.class Lorg/hmwebrtc/Camera2Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CameraSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/Camera2Session$CameraCaptureCallback;,
        Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;,
        Lorg/hmwebrtc/Camera2Session$CameraStateCallback;,
        Lorg/hmwebrtc/Camera2Session$SessionState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2Session"

.field private static final camera2ResolutionHistogram:Lorg/hmwebrtc/Histogram;

.field private static final camera2StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

.field private static final camera2StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cameraOrientation:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final constructionTimeNs:J

.field private final events:Lorg/hmwebrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private fpsUnitFactor:I

.field private final framerate:I

.field private final height:I

.field private isCameraFrontFacing:Z

.field private mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

.field private state:Lorg/hmwebrtc/Camera2Session$SessionState;

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "WebRTC.Android.Camera2.StartTimeMs"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x2710

    .line 5
    .line 6
    const/16 v3, 0x32

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Lorg/hmwebrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/hmwebrtc/Histogram;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/hmwebrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 13
    .line 14
    const-string v0, "WebRTC.Android.Camera2.StopTimeMs"

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lorg/hmwebrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/hmwebrtc/Histogram;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lorg/hmwebrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 21
    .line 22
    sget-object v0, Lorg/hmwebrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "WebRTC.Android.Camera2.Resolution"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/hmwebrtc/Histogram;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lorg/hmwebrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/hmwebrtc/Histogram;

    .line 35
    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/hmwebrtc/Camera2Session$SessionState;->RUNNING:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "Create new camera2 session on camera "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Camera2Session"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lorg/hmwebrtc/Camera2Session;->constructionTimeNs:J

    .line 35
    .line 36
    new-instance v0, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->callback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/hmwebrtc/Camera2Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 46
    .line 47
    iput-object p3, p0, Lorg/hmwebrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p4, p0, Lorg/hmwebrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 50
    .line 51
    iput-object p5, p0, Lorg/hmwebrtc/Camera2Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 52
    .line 53
    iput-object p6, p0, Lorg/hmwebrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 54
    .line 55
    iput p7, p0, Lorg/hmwebrtc/Camera2Session;->width:I

    .line 56
    .line 57
    iput p8, p0, Lorg/hmwebrtc/Camera2Session;->height:I

    .line 58
    .line 59
    iput p9, p0, Lorg/hmwebrtc/Camera2Session;->framerate:I

    .line 60
    .line 61
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->start()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/Camera2Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/Camera2Session;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lorg/hmwebrtc/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lorg/hmwebrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lorg/hmwebrtc/Camera2Session;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/Camera2Session;->cameraOrientation:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CaptureIdImageGenerator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/CaptureIdImageGenerator;)Lorg/hmwebrtc/CaptureIdImageGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lorg/hmwebrtc/Camera2Session;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Lorg/hmwebrtc/Camera2Session;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lorg/hmwebrtc/Camera2Session;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/Camera2Session;->firstFrameReported:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1802(Lorg/hmwebrtc/Camera2Session;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/Camera2Session;->firstFrameReported:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1900(Lorg/hmwebrtc/Camera2Session;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/Camera2Session;->constructionTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/Camera2Session$SessionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000()Lorg/hmwebrtc/Histogram;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Camera2Session;->camera2StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$202(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$SessionState;)Lorg/hmwebrtc/Camera2Session$SessionState;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lorg/hmwebrtc/Camera2Session;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->getFrameOrientation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2200(Lorg/hmwebrtc/Camera2Session;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/Camera2Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->stopInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$CreateSessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->callback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$Events;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/hmwebrtc/Camera2Session;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lorg/hmwebrtc/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera2Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Wrong thread"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static create(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 10

    .line 1
    new-instance v0, Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move/from16 v7, p6

    .line 10
    .line 11
    move/from16 v8, p7

    .line 12
    .line 13
    move/from16 v9, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lorg/hmwebrtc/Camera2Session;-><init>(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private findCaptureFormat()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5
    .line 6
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/util/Range;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lorg/hmwebrtc/Camera2Session;->fpsUnitFactor:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/hmwebrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/hmwebrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "Available preview sizes: "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "Camera2Session"

    .line 48
    .line 49
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "Available fps ranges: "

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget v2, p0, Lorg/hmwebrtc/Camera2Session;->framerate:I

    .line 86
    .line 87
    invoke-static {v0, v2}, Lorg/hmwebrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget v2, p0, Lorg/hmwebrtc/Camera2Session;->width:I

    .line 92
    .line 93
    iget v4, p0, Lorg/hmwebrtc/Camera2Session;->height:I

    .line 94
    .line 95
    invoke-static {v1, v2, v4}, Lorg/hmwebrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/hmwebrtc/Size;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sget-object v2, Lorg/hmwebrtc/Camera2Session;->camera2ResolutionHistogram:Lorg/hmwebrtc/Histogram;

    .line 100
    .line 101
    invoke-static {v2, v1}, Lorg/hmwebrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/hmwebrtc/Histogram;Lorg/hmwebrtc/Size;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 105
    .line 106
    iget v4, v1, Lorg/hmwebrtc/Size;->width:I

    .line 107
    .line 108
    iget v1, v1, Lorg/hmwebrtc/Size;->height:I

    .line 109
    .line 110
    invoke-direct {v2, v4, v1, v0}, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lorg/hmwebrtc/Camera2Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v1, "Using capture format: "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    :goto_0
    const-string v0, "No supported capture formats."

    .line 139
    .line 140
    invoke-direct {p0, v0}, Lorg/hmwebrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/e;->b(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lorg/hmwebrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    rsub-int v0, v0, 0x168

    .line 12
    .line 13
    :cond_0
    iget v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraOrientation:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    rem-int/lit16 v1, v1, 0x168

    .line 17
    .line 18
    return v1
.end method

.method private openCamera()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Opening camera "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Camera2Session"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 29
    .line 30
    invoke-interface {v0}, Lorg/hmwebrtc/CameraSession$Events;->onCameraOpening()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 34
    .line 35
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, v3}, Lorg/hmwebrtc/Camera2Session$CameraStateCallback;-><init>(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$1;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Failed to open camera: "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lorg/hmwebrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Error: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Camera2Session"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 31
    .line 32
    sget-object v1, Lorg/hmwebrtc/Camera2Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lorg/hmwebrtc/Camera2Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 40
    .line 41
    iput-object v1, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 42
    .line 43
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->stopInternal()V

    .line 44
    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->callback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 49
    .line 50
    sget-object v1, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    .line 51
    .line 52
    invoke-interface {v0, v1, p1}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 57
    .line 58
    invoke-interface {v0, p0, p1}, Lorg/hmwebrtc/CameraSession$Events;->onCameraError(Lorg/hmwebrtc/CameraSession;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method private start()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    const-string v0, "start"

    .line 5
    .line 6
    const-string v1, "Camera2Session"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraOrientation:I

    .line 34
    .line 35
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 36
    .line 37
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    iput-boolean v0, p0, Lorg/hmwebrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "cameraOrientation: "

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v2, p0, Lorg/hmwebrtc/Camera2Session;->cameraOrientation:I

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", isCameraFrontFacing: "

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v2, p0, Lorg/hmwebrtc/Camera2Session;->isCameraFrontFacing:Z

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->findCaptureFormat()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 92
    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->openCamera()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "getCameraCharacteristics(): "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lorg/hmwebrtc/Camera2Session;->reportError(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private stopInternal()V
    .locals 3

    .line 1
    const-string v0, "Stop internal"

    .line 2
    .line 3
    const-string v1, "Camera2Session"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->stopListening()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lorg/hmwebrtc/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->release()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lorg/hmwebrtc/Camera2Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lorg/hmwebrtc/Camera2Session;->surface:Landroid/view/Surface;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lorg/hmwebrtc/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 52
    .line 53
    :cond_3
    const-string v0, "Stop done"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Stop camera2 session on camera "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session;->cameraId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Camera2Session"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->checkIsOnCameraThread()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 29
    .line 30
    sget-object v1, Lorg/hmwebrtc/Camera2Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-object v1, p0, Lorg/hmwebrtc/Camera2Session;->state:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 39
    .line 40
    invoke-direct {p0}, Lorg/hmwebrtc/Camera2Session;->stopInternal()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v2

    .line 50
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    long-to-int v1, v0

    .line 55
    sget-object v0, Lorg/hmwebrtc/Camera2Session;->camera2StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/Histogram;->addSample(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
