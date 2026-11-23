.class public Lorg/hmwebrtc/EglRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;,
        Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;,
        Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;,
        Lorg/hmwebrtc/EglRenderer$ErrorCallback;,
        Lorg/hmwebrtc/EglRenderer$FrameCallback;,
        Lorg/hmwebrtc/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "EglRenderer"

.field public static final frameRenderDelayLock:Ljava/lang/Object;


# instance fields
.field private averageRenderTimeMs:J

.field private final bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

.field private brightnessRatio:F

.field private contrastRatio:F

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eglBase:Lorg/hmwebrtc/EglBase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

.field private enableBlackWhiteDisplay:Z

.field private enableFrameInterpolation:Z

.field private enableLastFrame:Z

.field private volatile errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

.field private firstFrameInterpolationInterval:I

.field private firstFrameRendered:Z

.field private followingFrameInterpolationInterval:I

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

.field private frameHeight:I

.field private frameInterpolationTopLimit:I

.field private frameInterpolationbeginningTime:J

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

.field private frameWidth:I

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private imageAdjustable:Z

.field private final interpolateFrameOnRenderThread:Ljava/lang/Runnable;

.field private isLastFrame:Z

.field private isStretching:Z

.field private lastFrame:Lorg/hmwebrtc/VideoFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

.field private minRenderPeriodNs:J

.field private mirrorHorizontally:Z

.field private mirrorVertically:Z

.field protected final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lorg/hmwebrtc/VideoFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderFps:F

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeNs:J

.field private renderedTimeMs:J

.field private rotateLayout:I

.field private saturationRatio:F

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private textureCloneHelper:Lorg/hmwebrtc/TextureCloneHelper;

.field private unsharpAmount:F

.field private unsharpMarkStatus:Z

.field private unsharpThreshold:F

.field private usePresentationTimeStamp:Z

.field private useTextureCloning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lorg/hmwebrtc/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/EglRenderer;-><init>(Ljava/lang/String;Lorg/hmwebrtc/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/VideoFrameDrawer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lorg/hmwebrtc/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Lorg/hmwebrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    const/16 v0, 0x64

    .line 12
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    const/16 v0, 0x21

    .line 13
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->followingFrameInterpolationInterval:I

    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->frameInterpolationTopLimit:I

    .line 15
    new-instance v0, Lorg/hmwebrtc/EglRenderer$1;

    invoke-direct {v0, p0}, Lorg/hmwebrtc/EglRenderer$1;-><init>(Lorg/hmwebrtc/EglRenderer;)V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;-><init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglRenderer$1;)V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->contrastRatio:F

    .line 18
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->saturationRatio:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 19
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->unsharpAmount:F

    .line 20
    new-instance v0, Lorg/hmwebrtc/EglRenderer$2;

    invoke-direct {v0, p0}, Lorg/hmwebrtc/EglRenderer$2;-><init>(Lorg/hmwebrtc/EglRenderer;)V

    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    .line 21
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/EglRenderer;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$setUnsharpMaskAmount$10(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/EglRenderer;->logStatistics()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lorg/hmwebrtc/EglRenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/EglRenderer;->layoutAspectRatio:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lorg/hmwebrtc/EglRenderer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/EglRenderer;->mirrorHorizontally:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lorg/hmwebrtc/EglRenderer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/EglRenderer;->mirrorVertically:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Lorg/hmwebrtc/EglRenderer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/EglRenderer;->isStretching:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/RendererCommon$GlDrawer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/VideoFrameDrawer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lorg/hmwebrtc/EglRenderer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$2002(Lorg/hmwebrtc/EglRenderer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2100(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2204(Lorg/hmwebrtc/EglRenderer;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$2314(Lorg/hmwebrtc/EglRenderer;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 5
    .line 6
    return-wide v0
.end method

.method static synthetic access$2414(Lorg/hmwebrtc/EglRenderer;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 5
    .line 6
    return-wide v0
.end method

.method static synthetic access$2500(Lorg/hmwebrtc/EglRenderer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRenderer$ErrorCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/GlTextureFrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2800(Lorg/hmwebrtc/EglRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/EglRenderer;->followingFrameInterpolationInterval:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lorg/hmwebrtc/EglRenderer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->frameInterpolationbeginningTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$3100(Lorg/hmwebrtc/EglRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/EglRenderer;->frameInterpolationTopLimit:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/VideoFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lorg/hmwebrtc/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lorg/hmwebrtc/EglRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/EglRenderer;->rotateLayout:I

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

.method public static synthetic b(Lorg/hmwebrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$release$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic c(Lorg/hmwebrtc/EglRenderer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$setBlackWhiteDisplay$7(Z)V

    return-void
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->hasSurface()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "clearSurface"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x4000

    .line 20
    .line 21
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 25
    .line 26
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->swapBuffers()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private createLastFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->hasSurface()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-string p1, "frame is null, don\'t create lastFrame."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iget v2, p0, Lorg/hmwebrtc/EglRenderer;->frameWidth:I

    .line 33
    .line 34
    if-ne v2, v0, :cond_3

    .line 35
    .line 36
    iget v2, p0, Lorg/hmwebrtc/EglRenderer;->frameHeight:I

    .line 37
    .line 38
    if-eq v2, v1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "frameWidth:"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v3, p0, Lorg/hmwebrtc/EglRenderer;->frameWidth:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " frameHeight:"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v3, p0, Lorg/hmwebrtc/EglRenderer;->frameHeight:I

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " createLastFrame w:"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, " h:"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, " r:"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {p0, v2}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lorg/hmwebrtc/VideoFrame;

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 119
    .line 120
    .line 121
    iput-object v2, p0, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    .line 122
    .line 123
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->frameWidth:I

    .line 124
    .line 125
    iput v1, p0, Lorg/hmwebrtc/EglRenderer;->frameHeight:I

    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    :cond_4
    :goto_2
    const-string p1, "createLastFrame, No surface, don\'t create frame."

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static synthetic d(Lorg/hmwebrtc/EglRenderer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$setUnsharpMaskEnabled$8(Z)V

    return-void
.end method

.method public static synthetic e(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglBase$Context;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->lambda$init$0(Lorg/hmwebrtc/EglBase$Context;[I)V

    return-void
.end method

.method public static synthetic f(Lorg/hmwebrtc/EglRenderer;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$setUnsharpMaskThreshold$9(F)V

    return-void
.end method

.method public static synthetic g(Lorg/hmwebrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/hmwebrtc/EglRenderer$FrameListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->lambda$removeFrameListener$4(Ljava/util/concurrent/CountDownLatch;Lorg/hmwebrtc/EglRenderer$FrameListener;)V

    return-void
.end method

.method public static synthetic h(Lorg/hmwebrtc/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method public static synthetic i(Lorg/hmwebrtc/EglRenderer;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/EglRenderer;->lambda$clearImage$6(FFFF)V

    return-void
.end method

.method public static synthetic j(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/EglRenderer;->lambda$addFrameListener$3(Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V

    return-void
.end method

.method public static synthetic k(Lorg/hmwebrtc/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$releaseEglSurface$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic l(Lorg/hmwebrtc/EglRenderer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->lambda$release$2(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$addFrameListener$3(Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, "EglRenderer"

    .line 8
    .line 9
    const-string p2, "addFrameListener: drawer=null!"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v1, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;

    .line 18
    .line 19
    invoke-direct {v1, p2, p3, p1, p4}, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;-><init>(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/hmwebrtc/EglRenderer;->renderFrameOnRenderThread()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method private synthetic lambda$clearImage$6(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$init$0(Lorg/hmwebrtc/EglBase$Context;[I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "EglBase10.create context"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lorg/hmwebrtc/h;->h([I)Lorg/hmwebrtc/EglBase10;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "EglBase.create shared context"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lorg/hmwebrtc/h;->d(Lorg/hmwebrtc/EglBase$Context;[I)Lorg/hmwebrtc/EglBase;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private synthetic lambda$release$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglBase;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->release()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->textureCloneHelper:Lorg/hmwebrtc/TextureCloneHelper;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureCloneHelper;->release()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoFrameDrawer;->release()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->release()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "eglBase detach and release."

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 46
    .line 47
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->detachCurrent()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 51
    .line 52
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->release()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method private synthetic lambda$release$2(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const-string v0, "Quitting render thread."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

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
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->detachCurrent()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->releaseSurface()V

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

.method private synthetic lambda$removeFrameListener$4(Ljava/util/concurrent/CountDownLatch;Lorg/hmwebrtc/EglRenderer$FrameListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

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
    check-cast v0, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/hmwebrtc/EglRenderer$FrameListener;

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

.method private synthetic lambda$setBlackWhiteDisplay$7(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setBlackWhiteDisplay(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$setUnsharpMaskAmount$10(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskAmount(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$setUnsharpMaskEnabled$8(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$setUnsharpMaskThreshold$9(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskThreshold(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "EglRenderer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "EglRenderer"

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private logStatistics()V
    .locals 12

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
    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-wide v4, p0, Lorg/hmwebrtc/EglRenderer;->statisticsStartTimeNs:J

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
    if-lez v8, :cond_2

    .line 24
    .line 25
    iget-wide v6, p0, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

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
    iget v6, p0, Lorg/hmwebrtc/EglRenderer;->framesReceived:I

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    iget v6, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

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
    iput v6, p0, Lorg/hmwebrtc/EglRenderer;->renderFps:F

    .line 59
    .line 60
    iget v6, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 61
    .line 62
    if-gtz v6, :cond_1

    .line 63
    .line 64
    const-wide/16 v6, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    iget-wide v8, p0, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 70
    .line 71
    int-to-long v10, v6

    .line 72
    div-long/2addr v8, v10

    .line 73
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    :goto_0
    iput-wide v6, p0, Lorg/hmwebrtc/EglRenderer;->averageRenderTimeMs:J

    .line 78
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v7, "Duration: "

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    .line 91
    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, " ms. Frames received: "

    .line 99
    .line 100
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v4, p0, Lorg/hmwebrtc/EglRenderer;->framesReceived:I

    .line 104
    .line 105
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, ". Dropped: "

    .line 109
    .line 110
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v4, p0, Lorg/hmwebrtc/EglRenderer;->framesDropped:I

    .line 114
    .line 115
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v4, ". Rendered: "

    .line 119
    .line 120
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget v4, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 124
    .line 125
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, ". Render fps: "

    .line 129
    .line 130
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v4, p0, Lorg/hmwebrtc/EglRenderer;->renderFps:F

    .line 134
    .line 135
    float-to-double v4, v4

    .line 136
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, ". Average render time: "

    .line 144
    .line 145
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-wide v4, p0, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 149
    .line 150
    iget v0, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 151
    .line 152
    invoke-direct {p0, v4, v5, v0}, Lorg/hmwebrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, ". Average swapBuffer time: "

    .line 160
    .line 161
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-wide v4, p0, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 165
    .line 166
    iget v0, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 167
    .line 168
    invoke-direct {p0, v4, v5, v0}, Lorg/hmwebrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, "."

    .line 176
    .line 177
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v1, v2}, Lorg/hmwebrtc/EglRenderer;->resetStatistics(J)V

    .line 188
    .line 189
    .line 190
    monitor-exit v3

    .line 191
    return-void

    .line 192
    :cond_2
    :goto_1
    monitor-exit v3

    .line 193
    return-void

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
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
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "EglRenderer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private notifyCallbacks(Lorg/hmwebrtc/VideoFrame;ZZ)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    const/high16 v2, 0x3f000000    # 0.5f

    .line 20
    .line 21
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    iget-boolean v2, v1, Lorg/hmwebrtc/EglRenderer;->mirrorHorizontally:Z

    .line 27
    .line 28
    const/high16 v3, -0x40800000    # -1.0f

    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/high16 v2, -0x40800000    # -1.0f

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    :goto_0
    iget-boolean v5, v1, Lorg/hmwebrtc/EglRenderer;->mirrorVertically:Z

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/high16 v5, -0x40800000    # -1.0f

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 57
    .line 58
    const/high16 v2, -0x41000000    # -0.5f

    .line 59
    .line 60
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_d

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    iget-boolean v10, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    .line 90
    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    :goto_3
    const/4 v9, 0x0

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 96
    .line 97
    .line 98
    iget v10, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->scale:F

    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    int-to-float v11, v11

    .line 105
    mul-float v10, v10, v11

    .line 106
    .line 107
    float-to-int v10, v10

    .line 108
    iget v11, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->scale:F

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    int-to-float v12, v12

    .line 115
    mul-float v11, v11, v12

    .line 116
    .line 117
    float-to-int v15, v11

    .line 118
    if-eqz v10, :cond_c

    .line 119
    .line 120
    if-nez v15, :cond_4

    .line 121
    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_4
    iget-object v11, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 125
    .line 126
    if-nez v11, :cond_5

    .line 127
    .line 128
    const-string v9, "EglRenderer"

    .line 129
    .line 130
    const-string v10, "notifyCallbacks: drawer=null!"

    .line 131
    .line 132
    invoke-static {v9, v10}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    if-nez v0, :cond_7

    .line 137
    .line 138
    if-ne v10, v5, :cond_6

    .line 139
    .line 140
    if-eq v15, v6, :cond_7

    .line 141
    .line 142
    :cond_6
    move v5, v10

    .line 143
    move v6, v15

    .line 144
    const/4 v7, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    :cond_7
    if-nez v7, :cond_b

    .line 147
    .line 148
    mul-int v0, v10, v15

    .line 149
    .line 150
    mul-int/lit8 v0, v0, 0x4

    .line 151
    .line 152
    const/16 v7, 0x34ba

    .line 153
    .line 154
    const/16 v20, 0x1

    .line 155
    .line 156
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/16 v21, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    move-object v11, v0

    .line 165
    const-string v0, "allocateDirect failed: "

    .line 166
    .line 167
    invoke-direct {v1, v0, v11}, Lorg/hmwebrtc/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    const-string v0, "allocateDirect failed"

    .line 171
    .line 172
    invoke-static {v7, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    const/16 v21, 0x0

    .line 177
    .line 178
    :goto_4
    if-eqz v21, :cond_8

    .line 179
    .line 180
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 181
    .line 182
    invoke-virtual {v11, v10, v15}, Lorg/hmwebrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 183
    .line 184
    .line 185
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 186
    .line 187
    invoke-virtual {v11}, Lorg/hmwebrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    const v14, 0x8d40

    .line 192
    .line 193
    .line 194
    invoke-static {v14, v11}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 195
    .line 196
    .line 197
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 198
    .line 199
    invoke-virtual {v11}, Lorg/hmwebrtc/GlTextureFrameBuffer;->getTextureId()I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    const v12, 0x8ce0

    .line 204
    .line 205
    .line 206
    const/16 v13, 0xde1

    .line 207
    .line 208
    invoke-static {v14, v12, v13, v11, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 209
    .line 210
    .line 211
    const/4 v11, 0x0

    .line 212
    invoke-static {v11, v11, v11, v11}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 213
    .line 214
    .line 215
    const/16 v11, 0x4000

    .line 216
    .line 217
    invoke-static {v11}, Landroid/opengl/GLES20;->glClear(I)V

    .line 218
    .line 219
    .line 220
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 221
    .line 222
    iget-object v13, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 223
    .line 224
    iget-object v12, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 225
    .line 226
    const/16 v16, 0x0

    .line 227
    .line 228
    const/16 v17, 0x0

    .line 229
    .line 230
    move-object/from16 v18, v12

    .line 231
    .line 232
    move-object/from16 v12, p1

    .line 233
    .line 234
    const v3, 0x8d40

    .line 235
    .line 236
    .line 237
    move-object/from16 v14, v18

    .line 238
    .line 239
    move/from16 v22, v15

    .line 240
    .line 241
    move/from16 v15, v16

    .line 242
    .line 243
    move/from16 v16, v17

    .line 244
    .line 245
    move/from16 v17, v10

    .line 246
    .line 247
    move/from16 v18, v22

    .line 248
    .line 249
    move/from16 v19, p3

    .line 250
    .line 251
    invoke-virtual/range {v11 .. v19}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    .line 252
    .line 253
    .line 254
    move/from16 v15, v22

    .line 255
    .line 256
    invoke-static {v4, v4, v10, v15}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 257
    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    const/4 v12, 0x0

    .line 261
    const/16 v16, 0x1908

    .line 262
    .line 263
    const/16 v17, 0x1401

    .line 264
    .line 265
    move v13, v10

    .line 266
    move v14, v15

    .line 267
    move v7, v15

    .line 268
    move/from16 v15, v16

    .line 269
    .line 270
    move/from16 v16, v17

    .line 271
    .line 272
    move-object/from16 v17, v0

    .line 273
    .line 274
    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_9

    .line 285
    .line 286
    const/16 v21, 0x0

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_8
    move v7, v15

    .line 290
    :cond_9
    :goto_5
    if-eqz v21, :cond_a

    .line 291
    .line 292
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 293
    .line 294
    invoke-static {v10, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :catchall_1
    move-exception v0

    .line 303
    const-string v3, "createBitmap or copyPixelsFromBuffer failed: "

    .line 304
    .line 305
    invoke-direct {v1, v3, v0}, Lorg/hmwebrtc/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    const-string v0, "createBitmap or copyPixelsFromBuffer failed"

    .line 309
    .line 310
    const/16 v3, 0x34ba

    .line 311
    .line 312
    invoke-static {v3, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const/4 v8, 0x0

    .line 316
    :cond_a
    :goto_6
    xor-int/lit8 v0, v21, 0x1

    .line 317
    .line 318
    const/4 v7, 0x1

    .line 319
    :cond_b
    iget-object v3, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/hmwebrtc/EglRenderer$FrameListener;

    .line 320
    .line 321
    invoke-interface {v3, v8}, Lorg/hmwebrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_c
    :goto_7
    iget-object v3, v9, Lorg/hmwebrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/hmwebrtc/EglRenderer$FrameListener;

    .line 327
    .line 328
    const/4 v9, 0x0

    .line 329
    invoke-interface {v3, v9}, Lorg/hmwebrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_d
    const-string v0, "EglRenderer.notifyCallbacks"

    .line 335
    .line 336
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

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

.method private renderFrameOnRenderThread()V
    .locals 27

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableFrameInterpolation:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    if-lez v0, :cond_1

    .line 3
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v5, v1, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 5
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 6
    iget-object v6, v1, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v6

    .line 7
    :try_start_1
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    .line 11
    monitor-exit v6

    return-void

    .line 12
    :cond_4
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    if-nez v0, :cond_5

    .line 13
    monitor-exit v6

    return-void

    .line 14
    :cond_5
    iput-object v2, v1, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    :goto_1
    move-object v15, v0

    .line 15
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 16
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_15

    .line 17
    :cond_6
    iget-object v6, v1, Lorg/hmwebrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 18
    :try_start_2
    iget-wide v7, v1, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_8

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    .line 19
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 20
    iget-wide v9, v1, Lorg/hmwebrtc/EglRenderer;->nextFrameTimeNs:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_9

    const-string v0, "Skipping frame rendering - fps reduction is active."

    .line 21
    invoke-direct {v1, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_9
    iget-wide v11, v1, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v9, v11

    iput-wide v9, v1, Lorg/hmwebrtc/EglRenderer;->nextFrameTimeNs:J

    .line 23
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lorg/hmwebrtc/EglRenderer;->nextFrameTimeNs:J

    goto :goto_3

    .line 24
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 26
    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 27
    iget v7, v1, Lorg/hmwebrtc/EglRenderer;->rotateLayout:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_a

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_b

    .line 28
    :cond_a
    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 29
    :cond_b
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v7

    .line 30
    :try_start_3
    iget v8, v1, Lorg/hmwebrtc/EglRenderer;->layoutAspectRatio:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_c

    goto :goto_5

    :cond_c
    move v8, v6

    .line 31
    :goto_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v10, v6, v8

    if-lez v10, :cond_d

    div-float/2addr v8, v6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_d
    div-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 32
    :goto_6
    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 33
    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v10, v11, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 34
    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    iget-boolean v11, v1, Lorg/hmwebrtc/EglRenderer;->mirrorHorizontally:Z

    const/high16 v12, -0x40800000    # -1.0f

    if-eqz v11, :cond_e

    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_7

    :cond_e
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_7
    iget-boolean v13, v1, Lorg/hmwebrtc/EglRenderer;->mirrorVertically:Z

    if-eqz v13, :cond_f

    const/high16 v7, -0x40800000    # -1.0f

    :cond_f
    invoke-virtual {v10, v11, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 35
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isStretching:Z

    if-nez v7, :cond_10

    .line 36
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 37
    :cond_10
    iget-object v6, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    iget v7, v1, Lorg/hmwebrtc/EglRenderer;->rotateLayout:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 38
    iget-object v6, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v7, -0x41000000    # -0.5f

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/16 v6, 0x34ac

    .line 39
    :try_start_4
    invoke-virtual {v15}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    move-result-object v7

    instance-of v4, v7, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 40
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    if-nez v7, :cond_11

    if-eqz v5, :cond_13

    :cond_11
    if-eqz v4, :cond_13

    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-nez v7, :cond_13

    .line 41
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->textureCloneHelper:Lorg/hmwebrtc/TextureCloneHelper;

    invoke-virtual {v7, v15}, Lorg/hmwebrtc/TextureCloneHelper;->renderToTexture(Lorg/hmwebrtc/VideoFrame;)Lorg/hmwebrtc/VideoFrame;

    move-result-object v2

    .line 42
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-nez v7, :cond_12

    if-eqz v5, :cond_14

    .line 43
    :cond_12
    invoke-direct {v1, v2}, Lorg/hmwebrtc/EglRenderer;->createLastFrame(Lorg/hmwebrtc/VideoFrame;)V

    goto :goto_8

    .line 44
    :cond_13
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-eqz v7, :cond_14

    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-nez v7, :cond_14

    .line 45
    invoke-direct {v1, v15}, Lorg/hmwebrtc/EglRenderer;->createLastFrame(Lorg/hmwebrtc/VideoFrame;)V
    :try_end_4
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_14
    :goto_8
    if-eqz v0, :cond_1a

    .line 46
    :try_start_5
    invoke-static {v9, v9, v9, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v7, 0x4000

    .line 47
    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 48
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z
    :try_end_5
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v7, :cond_15

    if-eqz v5, :cond_16

    :cond_15
    if-eqz v4, :cond_16

    :try_start_6
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-nez v7, :cond_16

    .line 49
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    iget-object v8, v1, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    iget-object v9, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 50
    invoke-interface {v10}, Lorg/hmwebrtc/EglBase;->surfaceWidth()I

    move-result v24

    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    invoke-interface {v10}, Lorg/hmwebrtc/EglBase;->surfaceHeight()I

    move-result v25

    iget-boolean v10, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v26, v10

    .line 51
    invoke-virtual/range {v18 .. v26}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V
    :try_end_6
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v19, v15

    goto :goto_9

    .line 52
    :cond_16
    :try_start_7
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    iget-object v9, v1, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    iget-object v10, v1, Lorg/hmwebrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v8, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 53
    invoke-interface {v8}, Lorg/hmwebrtc/EglBase;->surfaceWidth()I

    move-result v13

    iget-object v8, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    invoke-interface {v8}, Lorg/hmwebrtc/EglBase;->surfaceHeight()I

    move-result v14

    iget-boolean v8, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z
    :try_end_7
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v18, v8

    move-object v8, v15

    move-object/from16 v19, v15

    move/from16 v15, v18

    .line 54
    :try_start_8
    invoke-virtual/range {v7 .. v15}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    .line 55
    :goto_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 56
    iget-boolean v9, v1, Lorg/hmwebrtc/EglRenderer;->usePresentationTimeStamp:Z

    if-eqz v9, :cond_17

    .line 57
    iget-object v9, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    invoke-virtual/range {v19 .. v19}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v10

    invoke-interface {v9, v10, v11}, Lorg/hmwebrtc/EglBase;->swapBuffers(J)V

    goto :goto_a

    .line 58
    :cond_17
    iget-object v9, v1, Lorg/hmwebrtc/EglRenderer;->eglBase:Lorg/hmwebrtc/EglBase;

    invoke-interface {v9}, Lorg/hmwebrtc/EglBase;->swapBuffers()V

    .line 59
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 60
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    if-nez v11, :cond_18

    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    if-eqz v11, :cond_19

    .line 61
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    .line 62
    :cond_19
    iget-object v11, v1, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_8
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 63
    :try_start_9
    iget v12, v1, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    add-int/2addr v12, v3

    iput v12, v1, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 64
    iget-wide v12, v1, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    sub-long v14, v9, v16

    add-long/2addr v12, v14

    iput-wide v12, v1, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 65
    iget-wide v12, v1, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long/2addr v9, v7

    add-long/2addr v12, v9

    iput-wide v12, v1, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 66
    monitor-exit v11

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v19, v15

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v19, v15

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v19, v15

    .line 67
    :goto_b
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    if-nez v7, :cond_1b

    if-eqz v5, :cond_1c

    :cond_1b
    if-eqz v4, :cond_1c

    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-nez v7, :cond_1c

    .line 68
    invoke-direct {v1, v2, v0, v7}, Lorg/hmwebrtc/EglRenderer;->notifyCallbacks(Lorg/hmwebrtc/VideoFrame;ZZ)V

    move-object/from16 v8, v19

    goto :goto_c

    .line 69
    :cond_1c
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z
    :try_end_a
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v8, v19

    :try_start_b
    invoke-direct {v1, v8, v0, v7}, Lorg/hmwebrtc/EglRenderer;->notifyCallbacks(Lorg/hmwebrtc/VideoFrame;ZZ)V
    :try_end_b
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 70
    :goto_c
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-eqz v0, :cond_1d

    .line 71
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    goto :goto_d

    .line 72
    :cond_1d
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    if-nez v0, :cond_1e

    if-eqz v5, :cond_1f

    :cond_1e
    if-eqz v4, :cond_1f

    if-eqz v2, :cond_1f

    .line 73
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoFrame;->release()V

    goto :goto_d

    .line 74
    :cond_1f
    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 75
    :goto_d
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    if-nez v0, :cond_20

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EglRenderer has rendered the first frame,timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 77
    iput-boolean v3, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    .line 78
    :cond_20
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    if-eqz v0, :cond_21

    .line 79
    iget-wide v2, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v0, v2, v3}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 80
    :cond_21
    sget-object v7, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v7

    .line 81
    :try_start_c
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    if-eqz v0, :cond_22

    .line 82
    iget-wide v2, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v0, v2, v3}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 83
    :cond_22
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 84
    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_d
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableFrameInterpolation:Z

    if-eqz v0, :cond_23

    iget v0, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    if-lez v0, :cond_23

    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/hmwebrtc/EglRenderer;->frameInterpolationbeginningTime:J

    .line 87
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v3, v1, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    iget v4, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_23
    monitor-exit v2

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 89
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catch_1
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    :goto_e
    move-object/from16 v8, v19

    goto/16 :goto_13

    :catch_2
    move-exception v0

    :goto_f
    move-object/from16 v8, v19

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v8, v15

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v8, v15

    :goto_10
    :try_start_f
    const-string v7, "Error while drawing frame"

    .line 90
    invoke-direct {v1, v7, v0}, Lorg/hmwebrtc/EglRenderer;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iget-object v7, v1, Lorg/hmwebrtc/EglRenderer;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    if-eqz v7, :cond_24

    .line 92
    invoke-interface {v7, v0}, Lorg/hmwebrtc/EglRenderer$ErrorCallback;->onGlOutOfMemory(Ljava/lang/Exception;)V

    .line 93
    :cond_24
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->release()V

    .line 94
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->frameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lorg/hmwebrtc/VideoFrameDrawer;->release()V

    .line 95
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->release()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 96
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-eqz v0, :cond_25

    .line 97
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    goto :goto_11

    .line 98
    :cond_25
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    if-nez v0, :cond_26

    if-eqz v5, :cond_27

    :cond_26
    if-eqz v4, :cond_27

    if-eqz v2, :cond_27

    .line 99
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoFrame;->release()V

    goto :goto_11

    .line 100
    :cond_27
    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 101
    :goto_11
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    if-nez v0, :cond_28

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EglRenderer has rendered the first frame,timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 103
    iput-boolean v3, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    .line 104
    :cond_28
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    if-eqz v0, :cond_29

    .line 105
    iget-wide v2, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v0, v2, v3}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 106
    :cond_29
    sget-object v7, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v7

    .line 107
    :try_start_10
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    if-eqz v0, :cond_2a

    .line 108
    iget-wide v2, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v0, v2, v3}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 109
    :cond_2a
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 110
    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_11
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableFrameInterpolation:Z

    if-eqz v0, :cond_2b

    iget v0, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    if-lez v0, :cond_2b

    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/hmwebrtc/EglRenderer;->frameInterpolationbeginningTime:J

    .line 113
    iget-object v0, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v3, v1, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    iget v4, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_2b
    monitor-exit v2

    :goto_12
    return-void

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    :catchall_7
    move-exception v0

    .line 115
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0

    :catchall_8
    move-exception v0

    .line 116
    :goto_13
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-eqz v7, :cond_2c

    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-eqz v7, :cond_2c

    .line 117
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    goto :goto_14

    .line 118
    :cond_2c
    iget-boolean v7, v1, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    if-nez v7, :cond_2d

    if-eqz v5, :cond_2e

    :cond_2d
    if-eqz v4, :cond_2e

    if-eqz v2, :cond_2e

    .line 119
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoFrame;->release()V

    goto :goto_14

    .line 120
    :cond_2e
    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 121
    :goto_14
    iget-boolean v2, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    if-nez v2, :cond_2f

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EglRenderer has rendered the first frame,timestamp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 123
    iput-boolean v3, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameRendered:Z

    .line 124
    :cond_2f
    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    if-eqz v2, :cond_30

    .line 125
    iget-wide v3, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v2, v3, v4}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 126
    :cond_30
    sget-object v2, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_13
    iget-object v3, v1, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    if-eqz v3, :cond_31

    .line 128
    iget-wide v4, v1, Lorg/hmwebrtc/EglRenderer;->renderedTimeMs:J

    invoke-virtual {v3, v4, v5}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 129
    :cond_31
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 130
    iget-object v3, v1, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_14
    iget-boolean v2, v1, Lorg/hmwebrtc/EglRenderer;->enableFrameInterpolation:Z

    if-eqz v2, :cond_32

    iget v2, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    if-lez v2, :cond_32

    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_32

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lorg/hmwebrtc/EglRenderer;->frameInterpolationbeginningTime:J

    .line 133
    iget-object v2, v1, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v4, v1, Lorg/hmwebrtc/EglRenderer;->interpolateFrameOnRenderThread:Ljava/lang/Runnable;

    iget v5, v1, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_32
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 135
    throw v0

    :catchall_9
    move-exception v0

    .line 136
    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :catchall_a
    move-exception v0

    .line 137
    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v0

    :catchall_b
    move-exception v0

    .line 138
    :try_start_17
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :catchall_c
    move-exception v0

    .line 139
    :try_start_18
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    throw v0

    :cond_33
    :goto_15
    move-object v8, v15

    .line 140
    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    if-eqz v0, :cond_34

    iget-boolean v0, v1, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    if-eqz v0, :cond_34

    .line 141
    invoke-direct/range {p0 .. p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    goto :goto_16

    .line 142
    :cond_34
    invoke-virtual {v8}, Lorg/hmwebrtc/VideoFrame;->release()V

    :goto_16
    return-void

    :catchall_d
    move-exception v0

    .line 143
    :try_start_19
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    throw v0

    :catchall_e
    move-exception v0

    .line 144
    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    throw v0
.end method

.method private resetLastFrame()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/EglRenderer;->isLastFrame:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/hmwebrtc/EglRenderer;->lastFrame:Lorg/hmwebrtc/VideoFrame;

    .line 6
    .line 7
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->frameWidth:I

    .line 8
    .line 9
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->frameHeight:I

    .line 10
    .line 11
    return-void
.end method

.method private resetStatistics(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-wide p1, p0, Lorg/hmwebrtc/EglRenderer;->statisticsStartTimeNs:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->framesReceived:I

    .line 8
    .line 9
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->framesDropped:I

    .line 10
    .line 11
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->framesRendered:I

    .line 12
    .line 13
    const-wide/16 p1, 0x0

    .line 14
    .line 15
    iput-wide p1, p0, Lorg/hmwebrtc/EglRenderer;->renderTimeNs:J

    .line 16
    .line 17
    iput-wide p1, p0, Lorg/hmwebrtc/EglRenderer;->renderSwapBufferTimeNs:J

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
.method public addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/hmwebrtc/EglRenderer;->addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/hmwebrtc/EglRenderer;->addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;Z)V
    .locals 7
    .param p3    # Lorg/hmwebrtc/RendererCommon$GlDrawer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v6, Lorg/hmwebrtc/s;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/s;-><init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/RendererCommon$GlDrawer;Lorg/hmwebrtc/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lorg/hmwebrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/hmwebrtc/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v8, Lorg/hmwebrtc/r;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/hmwebrtc/r;-><init>(Lorg/hmwebrtc/EglRenderer;FFFF)V

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
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/EglRenderer;->setFpsReduction(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getEglRenderDelayMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EglRenderer;->averageRenderTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEglRenderFps()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EglRenderer;->renderFps:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/hmwebrtc/EglRenderer;->init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;Z)V
    .locals 3
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v1, "Initializing EglRenderer"

    .line 3
    invoke-direct {p0, v1}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 5
    iput-boolean p4, p0, Lorg/hmwebrtc/EglRenderer;->usePresentationTimeStamp:Z

    if-eqz p3, :cond_0

    .line 6
    iget-boolean p4, p0, Lorg/hmwebrtc/EglRenderer;->imageAdjustable:Z

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setImageAdjustable(Z)V

    .line 7
    iget p4, p0, Lorg/hmwebrtc/EglRenderer;->brightnessRatio:F

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setBrightnessRatio(F)V

    .line 8
    iget p4, p0, Lorg/hmwebrtc/EglRenderer;->contrastRatio:F

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setContrastRatio(F)V

    .line 9
    iget p4, p0, Lorg/hmwebrtc/EglRenderer;->saturationRatio:F

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setSaturationRatio(F)V

    .line 10
    iget-boolean p4, p0, Lorg/hmwebrtc/EglRenderer;->enableBlackWhiteDisplay:Z

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setBlackWhiteDisplay(Z)V

    .line 11
    iget-boolean p4, p0, Lorg/hmwebrtc/EglRenderer;->unsharpMarkStatus:Z

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskEnabled(Z)V

    .line 12
    iget p4, p0, Lorg/hmwebrtc/EglRenderer;->unsharpAmount:F

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskAmount(F)V

    .line 13
    iget p4, p0, Lorg/hmwebrtc/EglRenderer;->unsharpThreshold:F

    invoke-interface {p3, p4}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setUnsharpMaskThreshold(F)V

    .line 14
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/TextureCloneHelper;->create()Lorg/hmwebrtc/TextureCloneHelper;

    move-result-object p3

    iput-object p3, p0, Lorg/hmwebrtc/EglRenderer;->textureCloneHelper:Lorg/hmwebrtc/TextureCloneHelper;

    .line 15
    iget-object p3, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p3}, Lorg/hmwebrtc/EglRendererJankStatistics;->start()Z

    .line 17
    :cond_1
    new-instance p3, Landroid/os/HandlerThread;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EglRenderer"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance p4, Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;

    .line 20
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    invoke-direct {p4, p3, v1}, Lorg/hmwebrtc/EglRenderer$HandlerWithExceptionCallback;-><init>(Landroid/os/Looper;Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V

    iput-object p4, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 21
    new-instance p3, Lorg/hmwebrtc/q;

    invoke-direct {p3, p0, p1, p2}, Lorg/hmwebrtc/q;-><init>(Lorg/hmwebrtc/EglRenderer;Lorg/hmwebrtc/EglBase$Context;[I)V

    invoke-static {p4, p3}, Lorg/hmwebrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->resetStatistics(J)V

    .line 25
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lorg/hmwebrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 26
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 27
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    monitor-exit v0

    return-void

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/hmwebrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/hmwebrtc/EglRenderer;->framesReceived:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, p0, Lorg/hmwebrtc/EglRenderer;->framesReceived:I

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/hmwebrtc/EglRendererJankStatistics;->onReceiveFrame(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p1, "Dropping frame - Not initialized or already released."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->retain()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v3, Lorg/hmwebrtc/n;

    .line 59
    .line 60
    invoke-direct {v3, p0}, Lorg/hmwebrtc/n;-><init>(Lorg/hmwebrtc/EglRenderer;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lorg/hmwebrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter p1

    .line 73
    :try_start_4
    iget v0, p0, Lorg/hmwebrtc/EglRenderer;->framesDropped:I

    .line 74
    .line 75
    add-int/2addr v0, v2

    .line 76
    iput v0, p0, Lorg/hmwebrtc/EglRenderer;->framesDropped:I

    .line 77
    .line 78
    monitor-exit p1

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    throw v0

    .line 83
    :cond_4
    :goto_1
    return-void

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    :try_start_6
    throw p1

    .line 87
    :catchall_2
    move-exception p1

    .line 88
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 89
    throw p1

    .line 90
    :catchall_3
    move-exception p1

    .line 91
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 92
    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/hmwebrtc/EglRenderer;->setFpsReduction(F)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

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
    invoke-direct {p0, v2}, Lorg/hmwebrtc/EglRenderer;->logW(Ljava/lang/String;)V

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
    invoke-direct {p0, v4}, Lorg/hmwebrtc/EglRenderer;->logW(Ljava/lang/String;)V

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v0, "Already released"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v3, Lorg/hmwebrtc/l;

    .line 34
    .line 35
    invoke-direct {v3, p0, v0}, Lorg/hmwebrtc/l;-><init>(Lorg/hmwebrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v4, Lorg/hmwebrtc/m;

    .line 50
    .line 51
    invoke-direct {v4, p0, v2}, Lorg/hmwebrtc/m;-><init>(Lorg/hmwebrtc/EglRenderer;Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 59
    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    const-wide/16 v3, 0x7d0

    .line 62
    .line 63
    invoke-static {v0, v3, v4}, Lorg/hmwebrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    const-string v0, "eglBase detaching and releasing timeout"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logW(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lorg/hmwebrtc/EglRenderer;->pendingFrame:Lorg/hmwebrtc/VideoFrame;

    .line 85
    .line 86
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRendererJankStatistics;->stop()V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 95
    .line 96
    :cond_3
    iget-boolean v0, p0, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-direct {p0}, Lorg/hmwebrtc/EglRenderer;->resetLastFrame()V

    .line 101
    .line 102
    .line 103
    :cond_4
    const-string v0, "Releasing done."

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw v1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v2, Lorg/hmwebrtc/j;

    .line 22
    .line 23
    invoke-direct {v2, p0, p1}, Lorg/hmwebrtc/j;-><init>(Lorg/hmwebrtc/EglRenderer;Ljava/lang/Runnable;)V

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

.method public removeFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;)V
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
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

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
    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

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
    new-instance v2, Lorg/hmwebrtc/k;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0, p1}, Lorg/hmwebrtc/k;-><init>(Lorg/hmwebrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/hmwebrtc/EglRenderer$FrameListener;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Lorg/hmwebrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v0}, Lorg/hmwebrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

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

.method public setBlackWhiteDisplay(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->enableBlackWhiteDisplay:Z

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lorg/hmwebrtc/t;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lorg/hmwebrtc/t;-><init>(Lorg/hmwebrtc/EglRenderer;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public setBrightnessRatio(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->brightnessRatio:F

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setBrightnessRatio(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setContrastRatio(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->contrastRatio:F

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setContrastRatio(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setEglSurface(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setErrorCallback(Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->errorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-wide v1, p0, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

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
    iput-wide v3, p0, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

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
    iput-wide v3, p0, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

    .line 51
    .line 52
    :goto_0
    iget-wide v3, p0, Lorg/hmwebrtc/EglRenderer;->minRenderPeriodNs:J

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
    iput-wide v1, p0, Lorg/hmwebrtc/EglRenderer;->nextFrameTimeNs:J

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

.method public setFrameCallback(Lorg/hmwebrtc/FrameRenderDelayCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method setFrameInterpolationParameters(ZIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setFrameInterpolationParameters():enable "

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
    const-string v1, ",firstInterval "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ",followingInterval "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ",topLimit "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->enableFrameInterpolation:Z

    .line 49
    .line 50
    iput p2, p0, Lorg/hmwebrtc/EglRenderer;->firstFrameInterpolationInterval:I

    .line 51
    .line 52
    iput p3, p0, Lorg/hmwebrtc/EglRenderer;->followingFrameInterpolationInterval:I

    .line 53
    .line 54
    if-lez p4, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const p4, 0x7fffffff

    .line 58
    .line 59
    .line 60
    :goto_0
    iput p4, p0, Lorg/hmwebrtc/EglRenderer;->frameInterpolationTopLimit:I

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public setImageAdjustable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->imageAdjustable:Z

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setImageAdjustable(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setJankMeasuringTool(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v0, Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, v1}, Lorg/hmwebrtc/EglRendererJankStatistics;-><init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/hmwebrtc/EglRenderer;->mJankStatistics:Lorg/hmwebrtc/EglRendererJankStatistics;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "EglRenderer"

    .line 26
    .line 27
    const-string p2, "setJankMeasuringTool failed!"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->enableLastFrame:Z

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->layoutAspectRatio:F

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->mirrorHorizontally:Z

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->mirrorVertically:Z

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
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->rotateLayout:I

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

.method public setSaturationRatio(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->saturationRatio:F

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->drawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->setSaturationRatio(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setStretching(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->isStretching:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUnsharpMaskAmount(F)V
    .locals 3

    .line 1
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->unsharpAmount:F

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lorg/hmwebrtc/i;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lorg/hmwebrtc/i;-><init>(Lorg/hmwebrtc/EglRenderer;F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public setUnsharpMaskEnabled(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->unsharpMarkStatus:Z

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lorg/hmwebrtc/p;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lorg/hmwebrtc/p;-><init>(Lorg/hmwebrtc/EglRenderer;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public setUnsharpMaskThreshold(F)V
    .locals 3

    .line 1
    iput p1, p0, Lorg/hmwebrtc/EglRenderer;->unsharpThreshold:F

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lorg/hmwebrtc/o;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lorg/hmwebrtc/o;-><init>(Lorg/hmwebrtc/EglRenderer;F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lorg/hmwebrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lorg/hmwebrtc/EglRenderer;->useTextureCloning:Z

    .line 22
    .line 23
    return-void
.end method
