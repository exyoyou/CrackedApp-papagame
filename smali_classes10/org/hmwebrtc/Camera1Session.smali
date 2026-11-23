.class Lorg/hmwebrtc/Camera1Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lorg/hmwebrtc/Histogram;

.field private static final camera1StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

.field private static final camera1StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lorg/hmwebrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

.field private state:Lorg/hmwebrtc/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "WebRTC.Android.Camera1.StartTimeMs"

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
    sput-object v0, Lorg/hmwebrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 13
    .line 14
    const-string v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lorg/hmwebrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/hmwebrtc/Histogram;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lorg/hmwebrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;

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
    const-string v1, "WebRTC.Android.Camera1.Resolution"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/hmwebrtc/Histogram;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lorg/hmwebrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/hmwebrtc/Histogram;

    .line 35
    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/hmwebrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;JLorg/hmwebrtc/CaptureIdImageGenerator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new camera1 session on camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/Camera1Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 5
    iput-boolean p2, p0, Lorg/hmwebrtc/Camera1Session;->captureToTexture:Z

    .line 6
    iput-object p3, p0, Lorg/hmwebrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lorg/hmwebrtc/Camera1Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 8
    iput p5, p0, Lorg/hmwebrtc/Camera1Session;->cameraId:I

    .line 9
    iput-object p6, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 10
    iput-object p7, p0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 11
    iput-object p8, p0, Lorg/hmwebrtc/Camera1Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 12
    iput-wide p9, p0, Lorg/hmwebrtc/Camera1Session;->constructionTimeNs:J

    .line 13
    iput-object p11, p0, Lorg/hmwebrtc/Camera1Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 14
    iget p1, p8, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget p2, p8, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p4, p1, p2}, Lorg/hmwebrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 15
    iget-object p1, p0, Lorg/hmwebrtc/Camera1Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    if-eqz p1, :cond_1

    .line 16
    iget p2, p8, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget p3, p8, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    iget p4, p7, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3, p5}, Lorg/hmwebrtc/CaptureIdImageGenerator;->init(IIZ)V

    .line 17
    :cond_1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->startCapturing()V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/Camera1Session;Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/Camera1Session;->lambda$listenForTextureFrames$0(Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/Camera1Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->stopInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/Camera1Session;)Lorg/hmwebrtc/CameraSession$Events;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera1Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/Camera1Session;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/Camera1Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/hmwebrtc/Camera1Session;)Landroid/hardware/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/Camera1Session;)Lorg/hmwebrtc/Camera1Session$SessionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/Camera1Session;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/Camera1Session;->firstFrameReported:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lorg/hmwebrtc/Camera1Session;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/Camera1Session;->firstFrameReported:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lorg/hmwebrtc/Camera1Session;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/Camera1Session;->constructionTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$700()Lorg/hmwebrtc/Histogram;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$800(Lorg/hmwebrtc/Camera1Session;)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/Camera1Session;->captureFormat:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/hmwebrtc/Camera1Session;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->getFrameOrientation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
    iget-object v1, p0, Lorg/hmwebrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

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

.method public static create(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 15

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", res: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "fps: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Camera1Session"

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/hmwebrtc/CameraSession$Events;->onCameraOpening()V

    .line 4
    :try_start_0
    invoke-static/range {p5 .. p5}, Lorg/hmwebrtc/Camera1Enumerator;->getCameraIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    :try_start_1
    invoke-static {v7}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v8, :cond_0

    .line 6
    sget-object v0, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.open returned null for camera id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v5, Lorg/hmwebrtc/CaptureIdImageGenerator;

    move-object/from16 v6, p4

    invoke-direct {v5, v6}, Lorg/hmwebrtc/CaptureIdImageGenerator;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 8
    invoke-virtual {v5}, Lorg/hmwebrtc/CaptureIdImageGenerator;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    if-nez v9, :cond_1

    .line 9
    invoke-virtual/range {p4 .. p4}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    const/4 v5, 0x0

    :cond_1
    move-object v13, v5

    .line 10
    :try_start_2
    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 11
    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v9}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 12
    invoke-static {v7, v9}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 13
    :try_start_3
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 14
    invoke-static {v5, v2, v3, v4}, Lorg/hmwebrtc/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v10

    .line 15
    invoke-static {v5, v2, v3}, Lorg/hmwebrtc/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/hmwebrtc/Size;

    move-result-object v2

    .line 16
    invoke-static {v8, v5, v10, v2, v0}, Lorg/hmwebrtc/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/hmwebrtc/Size;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {v10}, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 18
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_2
    :try_start_4
    invoke-virtual {v8, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 21
    new-instance v14, Lorg/hmwebrtc/Camera1Session;

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v13}, Lorg/hmwebrtc/Camera1Session;-><init>(Lorg/hmwebrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;JLorg/hmwebrtc/CaptureIdImageGenerator;)V

    invoke-interface {p0, v14}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/hmwebrtc/CameraSession;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 22
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 23
    sget-object v0, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 25
    sget-object v2, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 26
    :goto_1
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 27
    sget-object v2, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 28
    sget-object v0, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 29
    sget-object v0, Lorg/hmwebrtc/CameraSession$FailureType;->ERROR:Lorg/hmwebrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/hmwebrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/hmwebrtc/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Available fps ranges: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Camera1Session"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p3}, Lorg/hmwebrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lorg/hmwebrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/hmwebrtc/Size;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object p1, Lorg/hmwebrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/hmwebrtc/Histogram;

    .line 48
    .line 49
    invoke-static {p1, p0}, Lorg/hmwebrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/hmwebrtc/Histogram;Lorg/hmwebrtc/Size;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;

    .line 53
    .line 54
    iget p2, p0, Lorg/hmwebrtc/Size;->width:I

    .line 55
    .line 56
    iget p0, p0, Lorg/hmwebrtc/Size;->height:I

    .line 57
    .line 58
    invoke-direct {p1, p2, p0, p3}, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/hmwebrtc/Size;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/hmwebrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/hmwebrtc/Size;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private getFrameOrientation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/e;->b(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 8
    .line 9
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    rsub-int v0, v0, 0x168

    .line 14
    .line 15
    :cond_0
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 16
    .line 17
    add-int/2addr v1, v0

    .line 18
    rem-int/lit16 v1, v1, 0x168

    .line 19
    .line 20
    return v1
.end method

.method private synthetic lambda$listenForTextureFrames$0(Lorg/hmwebrtc/VideoFrame;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 7
    .line 8
    sget-object v2, Lorg/hmwebrtc/Camera1Session$SessionState;->RUNNING:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 9
    .line 10
    const-string v3, "Camera1Session"

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, "Texture frame captured but camera is no longer running."

    .line 15
    .line 16
    invoke-static {v3, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v1, v0, Lorg/hmwebrtc/Camera1Session;->firstFrameReported:Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, v0, Lorg/hmwebrtc/Camera1Session;->constructionTimeNs:J

    .line 32
    .line 33
    sub-long/2addr v4, v6

    .line 34
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    long-to-int v1, v4

    .line 39
    sget-object v4, Lorg/hmwebrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Lorg/hmwebrtc/Histogram;->addSample(I)V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, v0, Lorg/hmwebrtc/Camera1Session;->firstFrameReported:Z

    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->getCaptureId()Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :goto_0
    const/4 v4, 0x0

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "mCaptureId:"

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v6, v1, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mCaptureId:I

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v6, " , mTrackId:"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v6, v1, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mTrackId:I

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, ",mirror:"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v6, v0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 90
    .line 91
    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 92
    .line 93
    if-ne v6, v2, :cond_3

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v6, 0x0

    .line 98
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, ",rotation:"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/Camera1Session;->getFrameOrientation()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v3, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v5, v0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 121
    .line 122
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 123
    .line 124
    if-ne v5, v2, :cond_5

    .line 125
    .line 126
    sget v5, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera1:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    sget v5, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera1:I

    .line 130
    .line 131
    :goto_2
    sub-int/2addr v5, v4

    .line 132
    rem-int/lit16 v5, v5, 0x168

    .line 133
    .line 134
    new-instance v15, Lorg/hmwebrtc/VideoFrame;

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Lorg/hmwebrtc/TextureBufferImpl;

    .line 141
    .line 142
    iget-object v7, v0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 143
    .line 144
    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 145
    .line 146
    if-ne v7, v2, :cond_7

    .line 147
    .line 148
    sget-boolean v7, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera1:Z

    .line 149
    .line 150
    if-nez v7, :cond_6

    .line 151
    .line 152
    const/4 v7, 0x1

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    const/4 v7, 0x0

    .line 155
    goto :goto_3

    .line 156
    :cond_7
    sget-boolean v7, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera1:Z

    .line 157
    .line 158
    :goto_3
    invoke-static {v6, v7, v5}, Lorg/hmwebrtc/e;->a(Lorg/hmwebrtc/TextureBufferImpl;ZI)Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/Camera1Session;->getFrameOrientation()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-virtual/range {p1 .. p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 167
    .line 168
    .line 169
    move-result-wide v9

    .line 170
    const/4 v5, -0x1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    iget v6, v1, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mTrackId:I

    .line 174
    .line 175
    move v11, v6

    .line 176
    goto :goto_4

    .line 177
    :cond_8
    const/4 v11, -0x1

    .line 178
    :goto_4
    if-eqz v1, :cond_9

    .line 179
    .line 180
    iget v1, v1, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mCaptureId:I

    .line 181
    .line 182
    move v12, v1

    .line 183
    goto :goto_5

    .line 184
    :cond_9
    const/4 v12, -0x1

    .line 185
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/hmwebrtc/VideoFrame;->getInputTimestampMs()J

    .line 186
    .line 187
    .line 188
    move-result-wide v13

    .line 189
    move-object v6, v15

    .line 190
    invoke-direct/range {v6 .. v14}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJIIJ)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v1}, Lorg/hmwebrtc/e;->b(Landroid/content/Context;)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v6, "DeviceOrientation: "

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, "cameraOrientation: "

    .line 213
    .line 214
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 218
    .line 219
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 220
    .line 221
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, "getFrameOrientation: "

    .line 225
    .line 226
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/Camera1Session;->getFrameOrientation()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", isCameraFrontFacing: "

    .line 237
    .line 238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 242
    .line 243
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 244
    .line 245
    if-eqz v1, :cond_a

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_a
    const/4 v2, 0x0

    .line 249
    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v3, v1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lorg/hmwebrtc/Camera1Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 260
    .line 261
    invoke-interface {v1, v0, v15}, Lorg/hmwebrtc/CameraSession$Events;->onFrameCaptured(Lorg/hmwebrtc/CameraSession;Lorg/hmwebrtc/VideoFrame;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/Camera1Session$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/hmwebrtc/Camera1Session$2;-><init>(Lorg/hmwebrtc/Camera1Session;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/hmwebrtc/a;-><init>(Lorg/hmwebrtc/Camera1Session;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->startListening(Lorg/hmwebrtc/VideoSink;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private startCapturing()V
    .locals 2

    .line 1
    const-string v0, "Camera1Session"

    .line 2
    .line 3
    const-string v1, "Start capturing"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/hmwebrtc/Camera1Session$SessionState;->RUNNING:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 12
    .line 13
    iput-object v0, p0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 16
    .line 17
    new-instance v1, Lorg/hmwebrtc/Camera1Session$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/hmwebrtc/Camera1Session$1;-><init>(Lorg/hmwebrtc/Camera1Session;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/hmwebrtc/Camera1Session;->captureToTexture:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->listenForTextureFrames()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->listenForBytebufferFrames()V

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->stopInternal()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/hmwebrtc/Camera1Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v1, p0, v0}, Lorg/hmwebrtc/CameraSession$Events;->onCameraError(Lorg/hmwebrtc/CameraSession;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private stopInternal()V
    .locals 3

    .line 1
    const-string v0, "Stop internal"

    .line 2
    .line 3
    const-string v1, "Camera1Session"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 12
    .line 13
    sget-object v2, Lorg/hmwebrtc/Camera1Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const-string v0, "Camera is already stopped"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-object v2, p0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 24
    .line 25
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->stopListening()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->release()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/hmwebrtc/Camera1Session;->mCaptureIdGenerator:Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->events:Lorg/hmwebrtc/CameraSession$Events;

    .line 51
    .line 52
    invoke-interface {v0, p0}, Lorg/hmwebrtc/CameraSession$Events;->onCameraClosed(Lorg/hmwebrtc/CameraSession;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "Stop done"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/hmwebrtc/Size;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p2, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 6
    .line 7
    iget v2, v1, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    .line 8
    .line 9
    iget v1, v1, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    .line 10
    .line 11
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 12
    .line 13
    .line 14
    iget v1, p2, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    .line 15
    .line 16
    iget p2, p2, Lorg/hmwebrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    .line 17
    .line 18
    invoke-virtual {p1, v1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 19
    .line 20
    .line 21
    iget p2, p3, Lorg/hmwebrtc/Size;->width:I

    .line 22
    .line 23
    iget p3, p3, Lorg/hmwebrtc/Size;->height:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 26
    .line 27
    .line 28
    if-nez p4, :cond_0

    .line 29
    .line 30
    const/16 p2, 0x11

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const-string p2, "continuous-video"

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    const-string p4, "Camera1Session"

    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "SupportedColorEffects: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p4, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "none"

    .line 87
    .line 88
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p3, "ColorEffect is set to EFFECT_NONE."

    .line 98
    .line 99
    invoke-static {p4, p3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "SupportedFocusModes: "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {p4, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-eqz p3, :cond_4

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string p2, "FocusMode is set to FOCUS_MODE_CONTINUOUS_VIDEO."

    .line 138
    .line 139
    invoke-static {p4, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    new-instance p3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v0, "SupportedWhiteBalance: "

    .line 154
    .line 155
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-static {p4, p3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string p3, "shade"

    .line 169
    .line 170
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_5

    .line 175
    .line 176
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string p2, "WhiteBalance is set to WHITE_BALANCE_SHADE."

    .line 180
    .line 181
    invoke-static {p4, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    const/4 p2, 0x0

    .line 185
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    if-eqz p3, :cond_6

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 195
    .line 196
    .line 197
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    if-eqz p3, :cond_7

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 204
    .line 205
    .line 206
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    iget p4, p3, Landroid/hardware/Camera$Size;->width:I

    .line 211
    .line 212
    if-lez p4, :cond_8

    .line 213
    .line 214
    iget p3, p3, Landroid/hardware/Camera$Size;->height:I

    .line 215
    .line 216
    if-lez p3, :cond_8

    .line 217
    .line 218
    invoke-virtual {p1, p4, p3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 219
    .line 220
    .line 221
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    if-eqz p3, :cond_9

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 228
    .line 229
    .line 230
    :cond_9
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Stop camera1 session on camera "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lorg/hmwebrtc/Camera1Session;->cameraId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Camera1Session"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/Camera1Session;->state:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 29
    .line 30
    sget-object v1, Lorg/hmwebrtc/Camera1Session$SessionState;->STOPPED:Lorg/hmwebrtc/Camera1Session$SessionState;

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-direct {p0}, Lorg/hmwebrtc/Camera1Session;->stopInternal()V

    .line 39
    .line 40
    .line 41
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    sub-long/2addr v3, v0

    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    long-to-int v1, v0

    .line 53
    sget-object v0, Lorg/hmwebrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/hmwebrtc/Histogram;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/Histogram;->addSample(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
