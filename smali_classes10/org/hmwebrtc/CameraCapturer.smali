.class abstract Lorg/hmwebrtc/CameraCapturer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lorg/hmwebrtc/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lorg/hmwebrtc/CameraSession$Events;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lorg/hmwebrtc/CapturerObserver;

.field private final createSessionCallback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentSession:Lorg/hmwebrtc/CameraSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private pendingCameraName:Ljava/lang/String;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

.field private switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/hmwebrtc/CameraEnumerator;)V
    .locals 1
    .param p2    # Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/CameraCapturer$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/hmwebrtc/CameraCapturer$1;-><init>(Lorg/hmwebrtc/CameraCapturer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->createSessionCallback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 10
    .line 11
    new-instance v0, Lorg/hmwebrtc/CameraCapturer$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/hmwebrtc/CameraCapturer$2;-><init>(Lorg/hmwebrtc/CameraCapturer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/hmwebrtc/CameraSession$Events;

    .line 17
    .line 18
    new-instance v0, Lorg/hmwebrtc/CameraCapturer$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lorg/hmwebrtc/CameraCapturer$3;-><init>(Lorg/hmwebrtc/CameraCapturer;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v0, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IDLE:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 33
    .line 34
    iput-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    new-instance p2, Lorg/hmwebrtc/CameraCapturer$4;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lorg/hmwebrtc/CameraCapturer$4;-><init>(Lorg/hmwebrtc/CameraCapturer;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->eventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 44
    .line 45
    iput-object p3, p0, Lorg/hmwebrtc/CameraCapturer;->cameraEnumerator:Lorg/hmwebrtc/CameraEnumerator;

    .line 46
    .line 47
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p3}, Lorg/hmwebrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Landroid/os/Handler;

    .line 58
    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_2

    .line 73
    .line 74
    iget-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string p3, "Camera name "

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p3, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p3, " does not match any known camera device."

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    const-string p2, "No cameras attached."

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method static synthetic access$000(Lorg/hmwebrtc/CameraCapturer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/CameraCapturer;->checkIsOnCameraThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraCapturer$SwitchState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->eventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraCapturer$SwitchState;)Lorg/hmwebrtc/CameraCapturer$SwitchState;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lorg/hmwebrtc/CameraCapturer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/CameraCapturer;->firstFrameObserved:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1102(Lorg/hmwebrtc/CameraCapturer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/CameraCapturer;->firstFrameObserved:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraEnumerator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraEnumerator:Lorg/hmwebrtc/CameraEnumerator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1502(Lorg/hmwebrtc/CameraCapturer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1600(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/CameraCapturer;->switchCameraInternal(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lorg/hmwebrtc/CameraCapturer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1710(Lorg/hmwebrtc/CameraCapturer;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$1800(Lorg/hmwebrtc/CameraCapturer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/CameraCapturer;->createSessionInternal(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lorg/hmwebrtc/CameraCapturer;Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraSession$CreateSessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->createSessionCallback:Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2100(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraSession$Events;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/hmwebrtc/CameraSession$Events;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lorg/hmwebrtc/CameraCapturer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2300(Lorg/hmwebrtc/CameraCapturer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/CameraCapturer;->width:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2400(Lorg/hmwebrtc/CameraCapturer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/CameraCapturer;->height:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2500(Lorg/hmwebrtc/CameraCapturer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/CameraCapturer;->framerate:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/CameraCapturer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/CameraCapturer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CapturerObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->capturerObserver:Lorg/hmwebrtc/CapturerObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lorg/hmwebrtc/CameraCapturer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraSession;)Lorg/hmwebrtc/CameraSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;)Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CameraCapturer;->surfaceHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

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
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

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
    const-string v0, "CameraCapturer"

    .line 19
    .line 20
    const-string v1, "Check is on camera thread failed."

    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string v1, "Not on camera thread."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private createSessionInternal(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    add-int/lit16 v2, p1, 0x2710

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lorg/hmwebrtc/CameraCapturer$7;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lorg/hmwebrtc/CameraCapturer$7;-><init>(Lorg/hmwebrtc/CameraCapturer;)V

    .line 16
    .line 17
    .line 18
    int-to-long v2, p1

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1
    .param p2    # Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    const-string v1, "switchCamera internal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraEnumerator:Lorg/hmwebrtc/CameraEnumerator;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/hmwebrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "Attempted to switch to unknown camera device "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p0, p2, p1}, Lorg/hmwebrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 49
    .line 50
    sget-object v2, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IDLE:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 51
    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    const-string p2, "Camera switch already in progress."

    .line 55
    .line 56
    invoke-direct {p0, p2, p1}, Lorg/hmwebrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_1
    iget-boolean v1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    const-string p2, "switchCamera: camera is not running."

    .line 70
    .line 71
    invoke-direct {p0, p2, p1}, Lorg/hmwebrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :cond_2
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    sget-object p1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->PENDING:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 81
    .line 82
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 83
    .line 84
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    .line 85
    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :cond_3
    sget-object p1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 89
    .line 90
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 91
    .line 92
    const-string p1, "CameraCapturer"

    .line 93
    .line 94
    const-string v1, "switchCamera: Stopping session"

    .line 95
    .line 96
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 106
    .line 107
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 108
    .line 109
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance v3, Lorg/hmwebrtc/CameraCapturer$11;

    .line 112
    .line 113
    invoke-direct {v3, p0, v1}, Lorg/hmwebrtc/CameraCapturer$11;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraSession;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 120
    .line 121
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 122
    .line 123
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 125
    .line 126
    iput p1, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    invoke-direct {p0, p1}, Lorg/hmwebrtc/CameraCapturer;->createSessionInternal(I)V

    .line 130
    .line 131
    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const-string p1, "CameraCapturer"

    .line 134
    .line 135
    const-string p2, "switchCamera done"

    .line 136
    .line 137
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw p1
.end method


# virtual methods
.method public synthetic addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/f;->a(Lorg/hmwebrtc/CameraVideoCapturer;Landroid/media/MediaRecorder;Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public changeCaptureFormat(III)V
    .locals 3

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "changeCaptureFormat: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "x"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "@"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lorg/hmwebrtc/CameraCapturer;->stopCapture()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lorg/hmwebrtc/CameraCapturer;->startCapture(III)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method

.method protected abstract createCameraSession(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;Landroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 2

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    const-string v1, "dispose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/hmwebrtc/CameraCapturer;->stopCapture()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public initialize(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/hmwebrtc/CapturerObserver;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lorg/hmwebrtc/CameraCapturer;->capturerObserver:Lorg/hmwebrtc/CapturerObserver;

    .line 4
    .line 5
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->surfaceHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 12
    .line 13
    return-void
.end method

.method public isScreencast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v1, v0

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    const-string v1, "CameraCapturer stack trace:"

    .line 25
    .line 26
    const-string v2, "CameraCapturer"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    array-length v1, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-ge v3, v1, :cond_1

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v2, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public synthetic removeMediaRecorderFromCamera(Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/f;->b(Lorg/hmwebrtc/CameraVideoCapturer;Lorg/hmwebrtc/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public startCapture(III)V
    .locals 3

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startCapture: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "x"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "@"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-boolean v1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/CameraCapturer;->width:I

    .line 56
    .line 57
    iput p2, p0, Lorg/hmwebrtc/CameraCapturer;->height:I

    .line 58
    .line 59
    iput p3, p0, Lorg/hmwebrtc/CameraCapturer;->framerate:I

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 63
    .line 64
    const/4 p1, 0x3

    .line 65
    iput p1, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lorg/hmwebrtc/CameraCapturer;->createSessionInternal(I)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :cond_1
    :goto_0
    const-string p1, "CameraCapturer"

    .line 74
    .line 75
    const-string p2, "Session already open"

    .line 76
    .line 77
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    const-string p2, "CameraCapturer must be initialized before calling startCapture."

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startCapture: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "x"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "@"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraEnumerator:Lorg/hmwebrtc/CameraEnumerator;

    .line 47
    .line 48
    invoke-interface {v1}, Lorg/hmwebrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz p5, :cond_3

    .line 57
    .line 58
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, -0x1

    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const-string v1, "CameraCapturer"

    .line 77
    .line 78
    const-string v2, "Start capture: Waiting for last session to open"

    .line 79
    .line 80
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    :try_start_2
    const-string p1, "CameraCapturer"

    .line 90
    .line 91
    const-string p2, "Start capture interrupted while waiting for the last session to open."

    .line 92
    .line 93
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 101
    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    const-string v1, "CameraCapturer"

    .line 110
    .line 111
    const-string v2, "Stop capture: Nulling session"

    .line 112
    .line 113
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 117
    .line 118
    invoke-virtual {v1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 119
    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 123
    .line 124
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 125
    .line 126
    iget-object v3, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 127
    .line 128
    new-instance v4, Lorg/hmwebrtc/CameraCapturer$6;

    .line 129
    .line 130
    invoke-direct {v4, p0, v2}, Lorg/hmwebrtc/CameraCapturer$6;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraSession;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 137
    .line 138
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->capturerObserver:Lorg/hmwebrtc/CapturerObserver;

    .line 139
    .line 140
    invoke-interface {v1}, Lorg/hmwebrtc/CapturerObserver;->onCapturerStopped()V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const-string v1, "CameraCapturer"

    .line 145
    .line 146
    const-string v2, "Stop capture: No session open"

    .line 147
    .line 148
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    iput p2, p0, Lorg/hmwebrtc/CameraCapturer;->width:I

    .line 152
    .line 153
    iput p3, p0, Lorg/hmwebrtc/CameraCapturer;->height:I

    .line 154
    .line 155
    iput p4, p0, Lorg/hmwebrtc/CameraCapturer;->framerate:I

    .line 156
    .line 157
    iput-object p5, p0, Lorg/hmwebrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 158
    .line 159
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 160
    .line 161
    sget-object p1, Lorg/hmwebrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 162
    .line 163
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer;->switchState:Lorg/hmwebrtc/CameraCapturer$SwitchState;

    .line 164
    .line 165
    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 167
    .line 168
    const/4 p1, 0x3

    .line 169
    iput p1, p0, Lorg/hmwebrtc/CameraCapturer;->openAttemptsRemaining:I

    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lorg/hmwebrtc/CameraCapturer;->createSessionInternal(I)V

    .line 173
    .line 174
    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 177
    :cond_3
    :goto_2
    const-string p2, "CameraCapturer"

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string p4, "Start capture with wrong cameraName: "

    .line 185
    .line 186
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-static {p2, p3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 200
    .line 201
    new-instance p3, Lorg/hmwebrtc/CameraCapturer$5;

    .line 202
    .line 203
    invoke-direct {p3, p0, p1}, Lorg/hmwebrtc/CameraCapturer$5;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 211
    :catchall_0
    move-exception p1

    .line 212
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    throw p1

    .line 214
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 215
    .line 216
    const-string p2, "CameraCapturer must be initialized before calling startCapture."

    .line 217
    .line 218
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
.end method

.method public stopCapture()V
    .locals 5

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    const-string v1, "Stop capture"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/hmwebrtc/CameraCapturer;->sessionOpening:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "CameraCapturer"

    .line 16
    .line 17
    const-string v2, "Stop capture: Waiting for session to open"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    :try_start_2
    const-string v1, "CameraCapturer"

    .line 29
    .line 30
    const-string v2, "Stop capture interrupted while waiting for the session to open."

    .line 31
    .line 32
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const-string v1, "CameraCapturer"

    .line 49
    .line 50
    const-string v2, "Stop capture: Nulling session"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;->release()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->cameraStatistics:Lorg/hmwebrtc/CameraVideoCapturer$CameraStatistics;

    .line 62
    .line 63
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 64
    .line 65
    iget-object v3, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v4, Lorg/hmwebrtc/CameraCapturer$8;

    .line 68
    .line 69
    invoke-direct {v4, p0, v2}, Lorg/hmwebrtc/CameraCapturer$8;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraSession;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->currentSession:Lorg/hmwebrtc/CameraSession;

    .line 76
    .line 77
    iget-object v1, p0, Lorg/hmwebrtc/CameraCapturer;->capturerObserver:Lorg/hmwebrtc/CapturerObserver;

    .line 78
    .line 79
    invoke-interface {v1}, Lorg/hmwebrtc/CapturerObserver;->onCapturerStopped()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-string v1, "CameraCapturer"

    .line 84
    .line 85
    const-string v2, "Stop capture: No session open"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    const-string v0, "CameraCapturer"

    .line 92
    .line 93
    const-string v1, "Stop capture done"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    throw v1
.end method

.method public switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    .line 1
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/hmwebrtc/CameraCapturer$9;

    invoke-direct {v1, p0, p1}, Lorg/hmwebrtc/CameraCapturer$9;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    .line 3
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/hmwebrtc/CameraCapturer$10;

    invoke-direct {v1, p0, p1, p2}, Lorg/hmwebrtc/CameraCapturer$10;-><init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
