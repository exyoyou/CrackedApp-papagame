.class public Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

.field private final frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

.field private frameRotation:I

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Ltv/haima/ijk/media/player/egl/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final oesTextureId:I

.field private pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHeight:I

.field private final textureRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

.field private textureWidth:I


# direct methods
.method private constructor <init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;

    invoke-direct {v0, p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 4
    new-instance v0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$3;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 8
    sget-object p3, Ltv/haima/ijk/media/player/egl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, p3}, Ltv/haima/ijk/media/player/egl/a;->d(Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)Ltv/haima/ijk/media/player/egl/EglBase;

    move-result-object p1

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 9
    :try_start_0
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/EglBase;->createDummyPbufferSurface()V

    .line 10
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 11
    invoke-static {p1}, Ltv/haima/ijk/media/player/egl/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->oesTextureId:I

    .line 12
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 13
    new-instance p1, Ltv/haima/ijk/media/player/egl/k;

    invoke-direct {p1, p0}, Ltv/haima/ijk/media/player/egl/k;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 14
    iget-object p3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    invoke-interface {p3}, Ltv/haima/ijk/media/player/egl/EglBase;->release()V

    .line 15
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 16
    throw p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;-><init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;)V

    return-void
.end method

.method public static synthetic a(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$dispose$5()V

    return-void
.end method

.method static synthetic access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->returnTextureFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Ltv/haima/ijk/media/player/egl/VideoSink;)Ltv/haima/ijk/media/player/egl/VideoSink;
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$402(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Ltv/haima/ijk/media/player/egl/VideoSink;)Ltv/haima/ijk/media/player/egl/VideoSink;
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->listener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->updateTexImage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$setTextureSize$2(II)V

    return-void
.end method

.method public static synthetic c(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$new$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/EglBase$Context;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->create(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/EglBase$Context;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/EglBase$Context;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;

    invoke-direct {v0, p1, v1, p2, p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;-><init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V

    invoke-static {v1, v0}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    return-object p0
.end method

.method public static synthetic d(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$returnTextureFrame$4()V

    return-void
.end method

.method public static synthetic e(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$setFrameRotation$3(I)V

    return-void
.end method

.method public static synthetic f(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->lambda$stopListening$1()V

    return-void
.end method

.method private synthetic lambda$dispose$5()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isQuitting:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 3
    .line 4
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$returnTextureFrame$4()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isQuitting:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->release()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private synthetic lambda$setFrameRotation$3(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->frameRotation:I

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$setTextureSize$2(II)V
    .locals 0

    .line 1
    iput p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureWidth:I

    .line 2
    .line 3
    iput p2, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureHeight:I

    .line 4
    .line 5
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$stopListening$1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->listener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 3
    .line 4
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 5
    .line 6
    return-void
.end method

.method private release()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isQuitting:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->oesTextureId:I

    .line 26
    .line 27
    filled-new-array {v0}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->eglBase:Ltv/haima/ijk/media/player/egl/EglBase;

    .line 42
    .line 43
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/EglBase;->release()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "Unexpected release."

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "Wrong thread."

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method private returnTextureFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ltv/haima/ijk/media/player/egl/m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ltv/haima/ijk/media/player/egl/m;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 11

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_4

    .line 16
    .line 17
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isQuitting:Z

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->listener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureWidth:I

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureHeight:I

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 48
    .line 49
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->updateTexImage()V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x10

    .line 53
    .line 54
    new-array v0, v0, [F

    .line 55
    .line 56
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    new-instance v10, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 68
    .line 69
    iget v4, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureWidth:I

    .line 70
    .line 71
    iget v5, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureHeight:I

    .line 72
    .line 73
    sget-object v6, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;->OES:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

    .line 74
    .line 75
    iget v7, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->oesTextureId:I

    .line 76
    .line 77
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    iget-object v9, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->textureRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 82
    .line 83
    move-object v3, v10

    .line 84
    invoke-direct/range {v3 .. v9}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-interface {v0, v10}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;->onNewBuffer(Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    new-instance v0, Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 95
    .line 96
    iget v3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->frameRotation:I

    .line 97
    .line 98
    invoke-direct {v0, v10, v3, v1, v2}, Ltv/haima/ijk/media/player/egl/VideoFrame;-><init>(Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;IJ)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->listener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 102
    .line 103
    invoke-interface {v1, v0}, Ltv/haima/ijk/media/player/egl/VideoSink;->onFrame(Ltv/haima/ijk/media/player/egl/VideoFrame;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v1, "Wrong thread."

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method private updateTexImage()V
    .locals 4

    .line 1
    sget-object v0, Ltv/haima/ijk/media/player/egl/EglBase;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
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
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "updateTexImage error!"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ltv/haima/ijk/media/player/egl/j;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ltv/haima/ijk/media/player/egl/j;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->isTextureInUse:Z

    .line 2
    .line 3
    return v0
.end method

.method public setFrameRotation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ltv/haima/ijk/media/player/egl/n;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ltv/haima/ijk/media/player/egl/n;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Ltv/haima/ijk/media/player/egl/o;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Ltv/haima/ijk/media/player/egl/o;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Texture height must be positive, but was "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "Texture width must be positive, but was "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p2
.end method

.method public startListening(Ltv/haima/ijk/media/player/egl/VideoSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->listener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->pendingListener:Ltv/haima/ijk/media/player/egl/VideoSink;

    .line 10
    .line 11
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "SurfaceTextureHelper listener has already been set."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Ltv/haima/ijk/media/player/egl/l;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ltv/haima/ijk/media/player/egl/l;-><init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public textureToYuv(Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;)Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;->toI420()Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
