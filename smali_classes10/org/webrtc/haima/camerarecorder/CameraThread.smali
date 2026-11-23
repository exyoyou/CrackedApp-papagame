.class public Lorg/webrtc/haima/camerarecorder/CameraThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraThread"


# instance fields
.field private cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private cameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private cameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

.field private cameraSize:Landroid/util/Size;

.field private flashSupport:Z

.field private handler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

.field private isFlashTorch:Z

.field volatile isRunning:Z

.field private final lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

.field private final listener:Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;

.field private final readyFence:Ljava/lang/Object;

.field private requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private sensorArraySize:Landroid/graphics/Rect;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/CameraRecordListener;Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;Landroid/graphics/SurfaceTexture;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/haima/camerarecorder/LensFacing;)V
    .locals 1

    .line 1
    const-string v0, "Camera thread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Lorg/webrtc/haima/camerarecorder/CameraThread$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/webrtc/haima/camerarecorder/CameraThread$1;-><init>(Lorg/webrtc/haima/camerarecorder/CameraThread;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 19
    .line 20
    new-instance v0, Lorg/webrtc/haima/camerarecorder/CameraThread$2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lorg/webrtc/haima/camerarecorder/CameraThread$2;-><init>(Lorg/webrtc/haima/camerarecorder/CameraThread;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 26
    .line 27
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->listener:Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;

    .line 28
    .line 29
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 30
    .line 31
    iput-object p3, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    .line 33
    iput-object p4, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 34
    .line 35
    iput-object p5, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$002(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/haima/camerarecorder/CameraThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/CameraThread;->createCaptureSession()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$202(Lorg/webrtc/haima/camerarecorder/CameraThread;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lorg/webrtc/haima/camerarecorder/CameraThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/CameraThread;->updatePreview()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createCaptureSession()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/view/Surface;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->listener:Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;

    .line 62
    .line 63
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 64
    .line 65
    iget-boolean v2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->flashSupport:Z

    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/CameraThread$OnStartPreviewListener;->onStart(Landroid/util/Size;Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private static getClosestSupportedSize(Ljava/util/List;II)Landroid/util/Size;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;II)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/webrtc/haima/camerarecorder/CameraThread$3;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/webrtc/haima/camerarecorder/CameraThread$3;-><init>(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/Size;

    .line 11
    .line 12
    return-object p0
.end method

.method private updatePreview()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    .line 14
    .line 15
    const-string v1, "CameraPreview"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method changeAutoFocus()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 14
    .line 15
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method changeManualFocusPoint(FFII)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    int-to-float p3, p3

    .line 2
    div-float/2addr p1, p3

    .line 3
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->sensorArraySize:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    int-to-float p3, p3

    .line 10
    mul-float p1, p1, p3

    .line 11
    .line 12
    float-to-int p1, p1

    .line 13
    int-to-float p3, p4

    .line 14
    div-float/2addr p2, p3

    .line 15
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->sensorArraySize:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    int-to-float p3, p3

    .line 22
    mul-float p2, p2, p3

    .line 23
    .line 24
    float-to-int p2, p2

    .line 25
    new-instance p3, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 26
    .line 27
    add-int/lit16 p2, p2, -0x190

    .line 28
    .line 29
    const/4 p4, 0x0

    .line 30
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit16 p1, p1, -0x190

    .line 35
    .line 36
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x320

    .line 41
    .line 42
    const/16 v4, 0x320

    .line 43
    .line 44
    const/16 v5, 0x3e7

    .line 45
    .line 46
    move-object v0, p3

    .line 47
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 51
    .line 52
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 60
    .line 61
    aput-object p3, v0, p4

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    :try_start_0
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 68
    .line 69
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 70
    .line 71
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p2, p3, p1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 84
    .line 85
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 86
    .line 87
    invoke-virtual {p2, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 91
    .line 92
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 93
    .line 94
    invoke-virtual {p2, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 98
    .line 99
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 100
    .line 101
    invoke-virtual {p2, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :try_start_1
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 105
    .line 106
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p2, p3, p1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

.method public getHandler()Lorg/webrtc/haima/camerarecorder/CameraHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->handler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 18
    .line 19
    return-object v0

    .line 20
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    throw v1
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camerarecorder/CameraHandler;-><init>(Lorg/webrtc/haima/camerarecorder/CameraThread;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->handler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isRunning:Z

    .line 16
    .line 17
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraRecordListener:Lorg/webrtc/haima/camerarecorder/CameraRecordListener;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Lorg/webrtc/haima/camerarecorder/CameraRecordListener;->onCameraThreadFinish()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->readyFence:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    const/4 v0, 0x0

    .line 37
    :try_start_1
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->handler:Lorg/webrtc/haima/camerarecorder/CameraHandler;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isRunning:Z

    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0

    .line 47
    :catchall_1
    move-exception v1

    .line 48
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    throw v1
.end method

.method final startPreview(II)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v1, :cond_5

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    iget-object v5, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->lensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 54
    .line 55
    invoke-virtual {v7}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v6, v7, :cond_4

    .line 60
    .line 61
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 62
    .line 63
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/graphics/Rect;

    .line 68
    .line 69
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->sensorArraySize:Landroid/graphics/Rect;

    .line 70
    .line 71
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 72
    .line 73
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->flashSupport:Z

    .line 84
    .line 85
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 86
    .line 87
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    const-class v1, Landroid/graphics/SurfaceTexture;

    .line 94
    .line 95
    if-ltz p1, :cond_3

    .line 96
    .line 97
    if-gez p2, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, p1, p2}, Lorg/webrtc/haima/camerarecorder/CameraThread;->getClosestSupportedSize(Ljava/util/List;II)Landroid/util/Size;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    aget-object p1, p1, v2

    .line 120
    .line 121
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 122
    .line 123
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string p2, "cameraSize ="

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraSize:Landroid/util/Size;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/os/HandlerThread;

    .line 139
    .line 140
    const-string p2, "OpenCamera"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 146
    .line 147
    .line 148
    new-instance p2, Landroid/os/Handler;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 158
    .line 159
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 160
    .line 161
    invoke-virtual {p1, v4, v0, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_5
    return-void
.end method

.method stopPreview()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isFlashTorch:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method switchFlashMode()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->flashSupport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isFlashTorch:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isFlashTorch:Z

    .line 12
    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 14
    .line 15
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->isFlashTorch:Z

    .line 27
    .line 28
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 29
    .line 30
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/CameraThread;->requestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method
