.class public Ltv/haima/ijk/media/player/egl/EglRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$HandlerWithExceptionCallback;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;,
        Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final BUFFER_SIZE:I

.field private final bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

.field private buffer:[J

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eglBase:Ltv/haima/ijk/media/player/egl/EglBase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

.field private enableLastFrame:Z

.field private volatile errorCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

.field private frameHeight:I

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private frameWidth:I

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private hasCreatedEglEnv:Z

.field private isLastFrame:Z

.field private lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

.field private minRenderPeriodNs:J

.field private mirrorHorizontally:Z

.field private mirrorVertically:Z

.field protected final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private popIndex:I

.field private pushIndex:I

.field private renderDataThread:Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;

.field private renderFps:F

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeNs:J

.field private renderedTimeMs:J

.field private rotateLayout:I

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private textureCloneHelper:Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

.field private usePresentationTimeStamp:Z

.field private useTextureCloning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    invoke-direct {v0}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, p1, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;-><init>(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 12
    new-instance v0, Ltv/haima/ijk/media/player/egl/EglRenderer$1;

    invoke-direct {v0, p0}, Ltv/haima/ijk/media/player/egl/EglRenderer$1;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglRenderer$1;)V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    const/16 v0, 0x78

    .line 14
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->BUFFER_SIZE:I

    new-array v0, v0, [J

    .line 15
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->buffer:[J

    .line 16
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    return-void
.end method

.method public static synthetic a(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$addFrameListener$3(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V

    return-void
.end method

.method static synthetic access$000(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglBase;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Ltv/haima/ijk/media/player/egl/EglRenderer;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->buffer:[J

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Ltv/haima/ijk/media/player/egl/EglRenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->hasCreatedEglEnv:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Ltv/haima/ijk/media/player/egl/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logStatistics()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Ltv/haima/ijk/media/player/egl/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Ltv/haima/ijk/media/player/egl/EglRenderer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Ltv/haima/ijk/media/player/egl/EglRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->popIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Ltv/haima/ijk/media/player/egl/EglRenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->popIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Ltv/haima/ijk/media/player/egl/EglRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushIndex:I

    .line 2
    .line 3
    return p0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 4

    .line 1
    if-gtz p3, :cond_0

    .line 2
    .line 3
    const-string p1, "NA"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    int-to-long v2, p3

    .line 14
    div-long/2addr p1, v2

    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " us"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    return-object p1
.end method

.method public static synthetic b(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$releaseEglSurface$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Ltv/haima/ijk/media/player/egl/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->hasSurface()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->hasCreatedEglEnv:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "clearSurface"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x4000

    .line 24
    .line 25
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 29
    .line 30
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/EglBase;->swapBuffers()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private createLastFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->hasSurface()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->hasCreatedEglEnv:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "frame is null, don\'t create lastFrame."

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameWidth:I

    .line 37
    .line 38
    if-ne v2, v0, :cond_3

    .line 39
    .line 40
    iget v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameHeight:I

    .line 41
    .line 42
    if-eq v2, v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "frameWidth:"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameWidth:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, " frameHeight:"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameHeight:I

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " createLastFrame w:"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, " h:"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, " r:"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotation()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {p0, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 109
    .line 110
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotation()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getTimestampNs()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    invoke-direct {v2, v3, v4, v5, v6}, Ltv/haima/ijk/media/player/egl/VideoFrame;-><init>(Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;IJ)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 126
    .line 127
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameWidth:I

    .line 128
    .line 129
    iput v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameHeight:I

    .line 130
    .line 131
    :goto_1
    return-void

    .line 132
    :cond_4
    :goto_2
    const-string p1, "createLastFrame, No surface, don\'t create frame."

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static synthetic d(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$removeFrameListener$4(Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V

    return-void
.end method

.method public static synthetic e(Ltv/haima/ijk/media/player/egl/EglRenderer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$release$2(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic f(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$init$0(Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V

    return-void
.end method

.method public static synthetic g(Ltv/haima/ijk/media/player/egl/EglRenderer;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$clearImage$6(FFFF)V

    return-void
.end method

.method public static synthetic h(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->lambda$release$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private synthetic lambda$addFrameListener$3(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v1, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;

    .line 11
    .line 12
    invoke-direct {v1, p2, p3, p1, p4}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->onFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method private synthetic lambda$clearImage$6(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$init$0(Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "EglBase10.create context"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ltv/haima/ijk/media/player/egl/a;->g([I)Ltv/haima/ijk/media/player/egl/EglBase10;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "EglBase.create shared context"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ltv/haima/ijk/media/player/egl/a;->d(Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)Ltv/haima/ijk/media/player/egl/EglBase;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private synthetic lambda$release$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;->release()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;->release()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->release()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "eglBase detach and release."

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 35
    .line 36
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->detachCurrent()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 40
    .line 41
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->release()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private synthetic lambda$release$2(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const-string v0, "Quitting render thread."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$releaseEglSurface$5(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->detachCurrent()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 9
    .line 10
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->releaseSurface()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$removeFrameListener$4(Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;

    .line 21
    .line 22
    iget-object v0, v0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->listener:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    .line 23
    .line 24
    if-ne v0, p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private logStatistics()V
    .locals 11

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "#.0"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-wide v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsStartTimeNs:J

    .line 16
    .line 17
    sub-long v4, v1, v4

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    cmp-long v8, v4, v6

    .line 22
    .line 23
    if-lez v8, :cond_1

    .line 24
    .line 25
    iget-wide v6, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 26
    .line 27
    const-wide v8, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v10, v6, v8

    .line 33
    .line 34
    if-nez v10, :cond_0

    .line 35
    .line 36
    iget v6, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesReceived:I

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_0
    iget v6, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 43
    .line 44
    int-to-long v6, v6

    .line 45
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    const-wide/16 v9, 0x1

    .line 48
    .line 49
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    mul-long v6, v6, v8

    .line 54
    .line 55
    long-to-float v6, v6

    .line 56
    long-to-float v7, v4

    .line 57
    div-float/2addr v6, v7

    .line 58
    iput v6, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderFps:F

    .line 59
    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v7, "Duration: "

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    .line 72
    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, " ms. Frames received: "

    .line 80
    .line 81
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesReceived:I

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ". Dropped: "

    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesDropped:I

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v4, ". Rendered: "

    .line 100
    .line 101
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 105
    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ". Render fps: "

    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderFps:F

    .line 115
    .line 116
    float-to-double v4, v4

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ". Average render time: "

    .line 125
    .line 126
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-wide v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderTimeNs:J

    .line 130
    .line 131
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 132
    .line 133
    invoke-direct {p0, v4, v5, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ". Average swapBuffer time: "

    .line 141
    .line 142
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-wide v4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 146
    .line 147
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 148
    .line 149
    invoke-direct {p0, v4, v5, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, "."

    .line 157
    .line 158
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v1, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetStatistics(J)V

    .line 169
    .line 170
    .line 171
    monitor-exit v3

    .line 172
    return-void

    .line 173
    :cond_1
    :goto_0
    monitor-exit v3

    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    throw v0
.end method

.method private logW(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private notifyCallbacks(Ltv/haima/ijk/media/player/egl/VideoFrame;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    const/high16 v2, 0x3f000000    # 0.5f

    .line 19
    .line 20
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    iget-boolean v2, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorHorizontally:Z

    .line 26
    .line 27
    const/high16 v3, -0x40800000    # -1.0f

    .line 28
    .line 29
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/high16 v2, -0x40800000    # -1.0f

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    .line 38
    :goto_0
    iget-boolean v5, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorVertically:Z

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const/high16 v5, -0x40800000    # -1.0f

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 51
    .line 52
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 56
    .line 57
    const/high16 v2, -0x41000000    # -0.5f

    .line 58
    .line 59
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;

    .line 79
    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    iget-boolean v3, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    .line 83
    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 88
    .line 89
    .line 90
    iget v3, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->scale:F

    .line 91
    .line 92
    invoke-virtual/range {p1 .. p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    int-to-float v4, v4

    .line 97
    mul-float v3, v3, v4

    .line 98
    .line 99
    float-to-int v3, v3

    .line 100
    iget v4, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->scale:F

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    int-to-float v5, v5

    .line 107
    mul-float v4, v4, v5

    .line 108
    .line 109
    float-to-int v12, v4

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    if-nez v12, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object v4, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 116
    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object v4, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 121
    .line 122
    invoke-virtual {v4, v3, v12}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->setSize(II)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 126
    .line 127
    invoke-virtual {v4}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->getFrameBufferId()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const v13, 0x8d40

    .line 132
    .line 133
    .line 134
    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 135
    .line 136
    .line 137
    iget-object v4, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 138
    .line 139
    invoke-virtual {v4}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->getTextureId()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    const v5, 0x8ce0

    .line 144
    .line 145
    .line 146
    const/16 v6, 0xde1

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    invoke-static {v13, v5, v6, v4, v14}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 154
    .line 155
    .line 156
    const/16 v4, 0x4000

    .line 157
    .line 158
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 159
    .line 160
    .line 161
    iget-object v4, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    .line 162
    .line 163
    iget-object v6, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 164
    .line 165
    iget-object v7, v0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    move-object/from16 v5, p1

    .line 170
    .line 171
    move v10, v3

    .line 172
    move v11, v12

    .line 173
    invoke-virtual/range {v4 .. v11}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;->drawFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 174
    .line 175
    .line 176
    mul-int v4, v3, v12

    .line 177
    .line 178
    mul-int/lit8 v4, v4, 0x4

    .line 179
    .line 180
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-static {v14, v14, v3, v12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 185
    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    const/16 v8, 0x1908

    .line 190
    .line 191
    const/16 v9, 0x1401

    .line 192
    .line 193
    move v6, v3

    .line 194
    move v7, v12

    .line 195
    move-object v10, v11

    .line 196
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 200
    .line 201
    .line 202
    const-string v4, "EglRenderer.notifyCallbacks"

    .line 203
    .line 204
    invoke-static {v4}, Ltv/haima/ijk/media/player/egl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 208
    .line 209
    invoke-static {v3, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->listener:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    .line 217
    .line 218
    invoke-interface {v2, v3}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_6
    :goto_3
    iget-object v2, v2, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->listener:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    invoke-interface {v2, v3}, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_7
    return-void
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method private pushRenderedTime(J)V
    .locals 3

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->buffer:[J

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    add-int/lit8 v2, v2, -0x1

    .line 7
    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushIndex:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushIndex:I

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    iput v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushIndex:I

    .line 18
    .line 19
    aput-wide p1, v1, v0

    .line 20
    .line 21
    return-void
.end method

.method private renderFrameOnRenderThread()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    monitor-exit v2

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    monitor-exit v2

    .line 26
    return-void

    .line 27
    :cond_1
    iput-object v3, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 28
    .line 29
    :cond_2
    move-object v12, v0

    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 31
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 32
    .line 33
    if-eqz v0, :cond_1c

    .line 34
    .line 35
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->hasSurface()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1c

    .line 40
    .line 41
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->hasCreatedEglEnv:Z

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    goto/16 :goto_11

    .line 46
    .line 47
    :cond_3
    iget-object v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_1
    iget-wide v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 51
    .line 52
    const-wide v6, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    const/4 v8, 0x0

    .line 59
    cmp-long v9, v4, v6

    .line 60
    .line 61
    if-nez v9, :cond_4

    .line 62
    .line 63
    :goto_0
    const/4 v13, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    cmp-long v9, v4, v6

    .line 68
    .line 69
    if-gtz v9, :cond_5

    .line 70
    .line 71
    :goto_1
    const/4 v13, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    iget-wide v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->nextFrameTimeNs:J

    .line 78
    .line 79
    cmp-long v9, v4, v6

    .line 80
    .line 81
    if-gez v9, :cond_6

    .line 82
    .line 83
    const-string v4, "Skipping frame rendering - fps reduction is active."

    .line 84
    .line 85
    invoke-direct {v1, v4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget-wide v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 90
    .line 91
    add-long/2addr v6, v9

    .line 92
    iput-wide v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->nextFrameTimeNs:J

    .line 93
    .line 94
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    iput-wide v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->nextFrameTimeNs:J

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v14

    .line 106
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    int-to-float v2, v2

    .line 111
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    int-to-float v4, v4

    .line 116
    div-float/2addr v2, v4

    .line 117
    iget v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->rotateLayout:I

    .line 118
    .line 119
    const/16 v5, 0x5a

    .line 120
    .line 121
    if-eq v4, v5, :cond_7

    .line 122
    .line 123
    const/16 v5, 0x10e

    .line 124
    .line 125
    if-ne v4, v5, :cond_8

    .line 126
    .line 127
    :cond_7
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    int-to-float v2, v2

    .line 132
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    int-to-float v4, v4

    .line 137
    div-float/2addr v2, v4

    .line 138
    :cond_8
    iget-object v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v4

    .line 141
    :try_start_2
    iget v5, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutAspectRatio:F

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    cmpl-float v7, v5, v6

    .line 145
    .line 146
    if-eqz v7, :cond_9

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_9
    move v5, v2

    .line 150
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 151
    const/high16 v4, 0x3f800000    # 1.0f

    .line 152
    .line 153
    cmpl-float v7, v2, v5

    .line 154
    .line 155
    if-lez v7, :cond_a

    .line 156
    .line 157
    div-float/2addr v5, v2

    .line 158
    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_a
    div-float/2addr v2, v5

    .line 162
    const/high16 v5, 0x3f800000    # 1.0f

    .line 163
    .line 164
    :goto_4
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 165
    .line 166
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 167
    .line 168
    .line 169
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 170
    .line 171
    const/high16 v9, 0x3f000000    # 0.5f

    .line 172
    .line 173
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 174
    .line 175
    .line 176
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 177
    .line 178
    iget-boolean v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorHorizontally:Z

    .line 179
    .line 180
    const/high16 v10, -0x40800000    # -1.0f

    .line 181
    .line 182
    if-eqz v9, :cond_b

    .line 183
    .line 184
    const/high16 v9, -0x40800000    # -1.0f

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    const/high16 v9, 0x3f800000    # 1.0f

    .line 188
    .line 189
    :goto_5
    iget-boolean v11, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorVertically:Z

    .line 190
    .line 191
    if-eqz v11, :cond_c

    .line 192
    .line 193
    const/high16 v4, -0x40800000    # -1.0f

    .line 194
    .line 195
    :cond_c
    invoke-virtual {v7, v9, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 199
    .line 200
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 201
    .line 202
    .line 203
    iget-object v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 204
    .line 205
    iget v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->rotateLayout:I

    .line 206
    .line 207
    int-to-float v4, v4

    .line 208
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 209
    .line 210
    .line 211
    iget-object v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 212
    .line 213
    const/high16 v4, -0x41000000    # -0.5f

    .line 214
    .line 215
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 216
    .line 217
    .line 218
    :try_start_3
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    instance-of v2, v2, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;
    :try_end_3
    .catch Ltv/haima/ijk/media/player/egl/GlUtil$GlOutOfMemoryException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    .line 224
    :try_start_4
    iget-boolean v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 225
    .line 226
    if-eqz v4, :cond_d

    .line 227
    .line 228
    if-eqz v2, :cond_d

    .line 229
    .line 230
    iget-boolean v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 231
    .line 232
    if-nez v4, :cond_d

    .line 233
    .line 234
    iget-object v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->textureCloneHelper:Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

    .line 235
    .line 236
    invoke-virtual {v4, v12}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->renderToTexture(Ltv/haima/ijk/media/player/egl/VideoFrame;)Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-boolean v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 241
    .line 242
    if-eqz v4, :cond_d

    .line 243
    .line 244
    invoke-direct {v1, v3}, Ltv/haima/ijk/media/player/egl/EglRenderer;->createLastFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V

    .line 245
    .line 246
    .line 247
    :cond_d
    if-eqz v13, :cond_11

    .line 248
    .line 249
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 250
    .line 251
    .line 252
    const/16 v4, 0x4000

    .line 253
    .line 254
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 255
    .line 256
    .line 257
    iget-boolean v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 258
    .line 259
    if-eqz v4, :cond_e

    .line 260
    .line 261
    if-eqz v2, :cond_e

    .line 262
    .line 263
    iget-boolean v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 264
    .line 265
    if-nez v4, :cond_e

    .line 266
    .line 267
    iget-object v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    .line 268
    .line 269
    iget-object v5, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 270
    .line 271
    iget-object v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 272
    .line 273
    const/16 v20, 0x0

    .line 274
    .line 275
    const/16 v21, 0x0

    .line 276
    .line 277
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 278
    .line 279
    invoke-interface {v7}, Ltv/haima/ijk/media/player/egl/EglBase;->surfaceWidth()I

    .line 280
    .line 281
    .line 282
    move-result v22

    .line 283
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 284
    .line 285
    invoke-interface {v7}, Ltv/haima/ijk/media/player/egl/EglBase;->surfaceHeight()I

    .line 286
    .line 287
    .line 288
    move-result v23

    .line 289
    move-object/from16 v16, v4

    .line 290
    .line 291
    move-object/from16 v17, v3

    .line 292
    .line 293
    move-object/from16 v18, v5

    .line 294
    .line 295
    move-object/from16 v19, v6

    .line 296
    .line 297
    invoke-virtual/range {v16 .. v23}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;->drawFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_e
    iget-object v4, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    .line 302
    .line 303
    iget-object v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 304
    .line 305
    iget-object v7, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 306
    .line 307
    const/4 v8, 0x0

    .line 308
    const/4 v9, 0x0

    .line 309
    iget-object v5, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 310
    .line 311
    invoke-interface {v5}, Ltv/haima/ijk/media/player/egl/EglBase;->surfaceWidth()I

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    iget-object v5, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 316
    .line 317
    invoke-interface {v5}, Ltv/haima/ijk/media/player/egl/EglBase;->surfaceHeight()I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    move-object v5, v12

    .line 322
    invoke-virtual/range {v4 .. v11}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;->drawFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 323
    .line 324
    .line 325
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 326
    .line 327
    .line 328
    move-result-wide v4

    .line 329
    iget-boolean v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->usePresentationTimeStamp:Z

    .line 330
    .line 331
    if-eqz v6, :cond_f

    .line 332
    .line 333
    iget-object v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 334
    .line 335
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getTimestampNs()J

    .line 336
    .line 337
    .line 338
    move-result-wide v7

    .line 339
    invoke-interface {v6, v7, v8}, Ltv/haima/ijk/media/player/egl/EglBase;->swapBuffers(J)V

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_f
    iget-object v6, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 344
    .line 345
    invoke-interface {v6}, Ltv/haima/ijk/media/player/egl/EglBase;->swapBuffers()V

    .line 346
    .line 347
    .line 348
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 349
    .line 350
    .line 351
    move-result-wide v6

    .line 352
    iget-object v8, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 353
    .line 354
    if-eqz v8, :cond_10

    .line 355
    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 357
    .line 358
    .line 359
    move-result-wide v8

    .line 360
    iput-wide v8, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderedTimeMs:J

    .line 361
    .line 362
    :cond_10
    iget-object v8, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 363
    .line 364
    monitor-enter v8
    :try_end_4
    .catch Ltv/haima/ijk/media/player/egl/GlUtil$GlOutOfMemoryException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 365
    :try_start_5
    iget v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 366
    .line 367
    add-int/2addr v9, v0

    .line 368
    iput v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 369
    .line 370
    iget-wide v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderTimeNs:J

    .line 371
    .line 372
    sub-long v14, v6, v14

    .line 373
    .line 374
    add-long/2addr v9, v14

    .line 375
    iput-wide v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderTimeNs:J

    .line 376
    .line 377
    iget-wide v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 378
    .line 379
    sub-long/2addr v6, v4

    .line 380
    add-long/2addr v9, v6

    .line 381
    iput-wide v9, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 382
    .line 383
    monitor-exit v8

    .line 384
    goto :goto_8

    .line 385
    :catchall_0
    move-exception v0

    .line 386
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 387
    :try_start_6
    throw v0

    .line 388
    :cond_11
    :goto_8
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 389
    .line 390
    if-eqz v0, :cond_12

    .line 391
    .line 392
    if-eqz v2, :cond_12

    .line 393
    .line 394
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 395
    .line 396
    if-nez v0, :cond_12

    .line 397
    .line 398
    invoke-direct {v1, v3, v13}, Ltv/haima/ijk/media/player/egl/EglRenderer;->notifyCallbacks(Ltv/haima/ijk/media/player/egl/VideoFrame;Z)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_12
    invoke-direct {v1, v12, v13}, Ltv/haima/ijk/media/player/egl/EglRenderer;->notifyCallbacks(Ltv/haima/ijk/media/player/egl/VideoFrame;Z)V
    :try_end_6
    .catch Ltv/haima/ijk/media/player/egl/GlUtil$GlOutOfMemoryException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 403
    .line 404
    .line 405
    :goto_9
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 406
    .line 407
    if-eqz v0, :cond_13

    .line 408
    .line 409
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 410
    .line 411
    if-eqz v0, :cond_13

    .line 412
    .line 413
    invoke-direct/range {p0 .. p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetLastFrame()V

    .line 414
    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_13
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 418
    .line 419
    if-eqz v0, :cond_14

    .line 420
    .line 421
    if-eqz v2, :cond_14

    .line 422
    .line 423
    invoke-virtual {v3}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_14
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 428
    .line 429
    .line 430
    :goto_a
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 431
    .line 432
    if-eqz v0, :cond_18

    .line 433
    .line 434
    :goto_b
    iget-wide v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderedTimeMs:J

    .line 435
    .line 436
    invoke-direct {v1, v2, v3}, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushRenderedTime(J)V

    .line 437
    .line 438
    .line 439
    goto :goto_e

    .line 440
    :catchall_1
    move-exception v0

    .line 441
    move v8, v2

    .line 442
    goto :goto_f

    .line 443
    :catch_0
    move-exception v0

    .line 444
    move v8, v2

    .line 445
    goto :goto_c

    .line 446
    :catchall_2
    move-exception v0

    .line 447
    goto :goto_f

    .line 448
    :catch_1
    move-exception v0

    .line 449
    :goto_c
    :try_start_7
    const-string v2, "Error while drawing frame"

    .line 450
    .line 451
    invoke-direct {v1, v2, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->errorCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;

    .line 455
    .line 456
    if-eqz v0, :cond_15

    .line 457
    .line 458
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;->onGlOutOfMemory()V

    .line 459
    .line 460
    .line 461
    :cond_15
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 462
    .line 463
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;->release()V

    .line 464
    .line 465
    .line 466
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameDrawer:Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;

    .line 467
    .line 468
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;->release()V

    .line 469
    .line 470
    .line 471
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->bitmapTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 472
    .line 473
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 474
    .line 475
    .line 476
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 477
    .line 478
    if-eqz v0, :cond_16

    .line 479
    .line 480
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 481
    .line 482
    if-eqz v0, :cond_16

    .line 483
    .line 484
    invoke-direct/range {p0 .. p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetLastFrame()V

    .line 485
    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_16
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 489
    .line 490
    if-eqz v0, :cond_17

    .line 491
    .line 492
    if-eqz v8, :cond_17

    .line 493
    .line 494
    invoke-virtual {v3}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 495
    .line 496
    .line 497
    goto :goto_d

    .line 498
    :cond_17
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 499
    .line 500
    .line 501
    :goto_d
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 502
    .line 503
    if-eqz v0, :cond_18

    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_18
    :goto_e
    return-void

    .line 507
    :goto_f
    iget-boolean v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 508
    .line 509
    if-eqz v2, :cond_19

    .line 510
    .line 511
    iget-boolean v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 512
    .line 513
    if-eqz v2, :cond_19

    .line 514
    .line 515
    invoke-direct/range {p0 .. p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetLastFrame()V

    .line 516
    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_19
    iget-boolean v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 520
    .line 521
    if-eqz v2, :cond_1a

    .line 522
    .line 523
    if-eqz v8, :cond_1a

    .line 524
    .line 525
    invoke-virtual {v3}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 526
    .line 527
    .line 528
    goto :goto_10

    .line 529
    :cond_1a
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 530
    .line 531
    .line 532
    :goto_10
    iget-object v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 533
    .line 534
    if-eqz v2, :cond_1b

    .line 535
    .line 536
    iget-wide v2, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderedTimeMs:J

    .line 537
    .line 538
    invoke-direct {v1, v2, v3}, Ltv/haima/ijk/media/player/egl/EglRenderer;->pushRenderedTime(J)V

    .line 539
    .line 540
    .line 541
    :cond_1b
    throw v0

    .line 542
    :catchall_3
    move-exception v0

    .line 543
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 544
    throw v0

    .line 545
    :catchall_4
    move-exception v0

    .line 546
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 547
    throw v0

    .line 548
    :cond_1c
    :goto_11
    iget-object v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 549
    .line 550
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->hasSurface()Z

    .line 551
    .line 552
    .line 553
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 554
    .line 555
    if-eqz v0, :cond_1d

    .line 556
    .line 557
    iget-boolean v0, v1, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 558
    .line 559
    if-eqz v0, :cond_1d

    .line 560
    .line 561
    invoke-direct/range {p0 .. p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetLastFrame()V

    .line 562
    .line 563
    .line 564
    goto :goto_12

    .line 565
    :cond_1d
    invoke-virtual {v12}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 566
    .line 567
    .line 568
    :goto_12
    return-void

    .line 569
    :catchall_5
    move-exception v0

    .line 570
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 571
    throw v0
.end method

.method private resetLastFrame()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->lastFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 6
    .line 7
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameWidth:I

    .line 8
    .line 9
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameHeight:I

    .line 10
    .line 11
    return-void
.end method

.method private resetStatistics(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-wide p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsStartTimeNs:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesReceived:I

    .line 8
    .line 9
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesDropped:I

    .line 10
    .line 11
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesRendered:I

    .line 12
    .line 13
    const-wide/16 p1, 0x0

    .line 14
    .line 15
    iput-wide p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderTimeNs:J

    .line 16
    .line 17
    iput-wide p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method


# virtual methods
.method public addFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->addFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->addFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V
    .locals 7
    .param p3    # Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v6, Ltv/haima/ijk/media/player/egl/i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ltv/haima/ijk/media/player/egl/i;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Ltv/haima/ijk/media/player/egl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 2
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v8, Ltv/haima/ijk/media/player/egl/h;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Ltv/haima/ijk/media/player/egl/h;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->setFpsReduction(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getEglRenderFps()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderFps:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public init(Ltv/haima/ijk/media/player/egl/EglBase$Context;[ILtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1    # Ltv/haima/ijk/media/player/egl/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, p3, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->init(Ltv/haima/ijk/media/player/egl/EglBase$Context;[ILtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Ltv/haima/ijk/media/player/egl/EglBase$Context;[ILtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V
    .locals 3
    .param p1    # Ltv/haima/ijk/media/player/egl/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "Initializing EglRenderer"

    .line 3
    invoke-direct {p0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 5
    iput-boolean p4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->usePresentationTimeStamp:Z

    .line 6
    invoke-static {p3}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->create(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

    move-result-object p3

    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->textureCloneHelper:Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

    .line 7
    new-instance p3, Landroid/os/HandlerThread;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EglRenderer"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance p4, Ltv/haima/ijk/media/player/egl/EglRenderer$HandlerWithExceptionCallback;

    .line 10
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v1, Ltv/haima/ijk/media/player/egl/EglRenderer$2;

    invoke-direct {v1, p0}, Ltv/haima/ijk/media/player/egl/EglRenderer$2;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    invoke-direct {p4, p3, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer$HandlerWithExceptionCallback;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object p4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 11
    new-instance p3, Ltv/haima/ijk/media/player/egl/g;

    invoke-direct {p3, p0, p1, p2}, Ltv/haima/ijk/media/player/egl/g;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V

    invoke-static {p4, p3}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 14
    invoke-direct {p0, p1, p2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetStatistics(J)V

    .line 15
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 16
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 17
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    monitor-exit v0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesReceived:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesReceived:I

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 11
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p1, "Dropping frame - Not initialized or already released."

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v3}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v3, v3, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;

    .line 45
    .line 46
    iget-boolean v5, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 47
    .line 48
    if-eqz v5, :cond_6

    .line 49
    .line 50
    iget-boolean v5, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    iget-boolean v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 61
    .line 62
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->retain()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v3, Ltv/haima/ijk/media/player/egl/b;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Ltv/haima/ijk/media/player/egl/b;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-boolean v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->isLastFrame:Z

    .line 77
    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 81
    .line 82
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->retain()V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->createLastFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 89
    .line 90
    new-instance v3, Ltv/haima/ijk/media/player/egl/b;

    .line 91
    .line 92
    invoke-direct {v3, p0}, Ltv/haima/ijk/media/player/egl/b;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 100
    .line 101
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->retain()V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 105
    .line 106
    new-instance v3, Ltv/haima/ijk/media/player/egl/b;

    .line 107
    .line 108
    invoke-direct {v3, p0}, Ltv/haima/ijk/media/player/egl/b;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter p1

    .line 121
    :try_start_4
    iget v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesDropped:I

    .line 122
    .line 123
    add-int/2addr v0, v2

    .line 124
    iput v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->framesDropped:I

    .line 125
    .line 126
    monitor-exit p1

    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    throw v0

    .line 131
    :cond_7
    :goto_2
    return-void

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    :try_start_6
    throw p1

    .line 135
    :catchall_2
    move-exception p1

    .line 136
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 137
    throw p1

    .line 138
    :catchall_3
    move-exception p1

    .line 139
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 140
    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->setFpsReduction(F)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    const-string v2, "EglRenderer stack trace:"

    .line 28
    .line 29
    invoke-direct {p0, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logW(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_1
    if-ge v3, v2, :cond_1

    .line 35
    .line 36
    aget-object v4, v1, v3

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {p0, v4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logW(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method

.method public release()V
    .locals 5

    .line 1
    const-string v0, "Releasing."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->textureCloneHelper:Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v0, "Already released"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v3, Ltv/haima/ijk/media/player/egl/c;

    .line 41
    .line 42
    invoke-direct {v3, p0, v0}, Ltv/haima/ijk/media/player/egl/c;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v4, Ltv/haima/ijk/media/player/egl/d;

    .line 57
    .line 58
    invoke-direct {v4, p0, v2}, Ltv/haima/ijk/media/player/egl/d;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 66
    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v0

    .line 74
    :try_start_1
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->pendingFrame:Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 82
    .line 83
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderDataThread:Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 89
    .line 90
    .line 91
    :cond_3
    iput-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 92
    .line 93
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->resetLastFrame()V

    .line 98
    .line 99
    .line 100
    :cond_4
    const-string v0, "Releasing done."

    .line 101
    .line 102
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw v1

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->eglSurfaceCreationRunnable:Ltv/haima/ijk/media/player/egl/EglRenderer$EglSurfaceCreation;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v2, Ltv/haima/ijk/media/player/egl/e;

    .line 22
    .line 23
    invoke-direct {v2, p0, p1}, Ltv/haima/ijk/media/player/egl/e;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public removeFrameListener(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    new-instance v2, Ltv/haima/ijk/media/player/egl/f;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0, p1}, Ltv/haima/ijk/media/player/egl/f;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v0, "removeFrameListener must not be called on the render thread."

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method public setErrorCallback(Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->errorCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$ErrorCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setFpsReduction: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-wide v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    cmpg-float v3, p1, v3

    .line 28
    .line 29
    if-gtz v3, :cond_0

    .line 30
    .line 31
    const-wide v3, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iput-wide v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    const-wide/16 v4, 0x1

    .line 42
    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    long-to-float v3, v3

    .line 48
    div-float/2addr v3, p1

    .line 49
    float-to-long v3, v3

    .line 50
    iput-wide v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 51
    .line 52
    :goto_0
    iget-wide v3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->minRenderPeriodNs:J

    .line 53
    .line 54
    cmp-long p1, v3, v1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    iput-wide v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->nextFrameTimeNs:J

    .line 63
    .line 64
    :cond_1
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1
.end method

.method public setFrameCallback(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mFrameCallback:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameCallback;

    .line 2
    .line 3
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderDataThread:Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;-><init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglRenderer$1;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->renderDataThread:Ltv/haima/ijk/media/player/egl/EglRenderer$RenderDataThread;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setLastFrameCallBack(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setLastFrameCallBack: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->enableLastFrame:Z

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setLayoutAspectRatio: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutAspectRatio:F

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setMirror(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMirrorHorizontally: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorHorizontally:Z

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setMirrorVertically(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMirrorVertically: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->mirrorVertically:Z

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setRotateLayout(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setRotateLayout: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->rotateLayout:I

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setUseTextureCloningFlag(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setUseTextureCloningFlag():"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer;->useTextureCloning:Z

    .line 15
    .line 16
    return-void
.end method
