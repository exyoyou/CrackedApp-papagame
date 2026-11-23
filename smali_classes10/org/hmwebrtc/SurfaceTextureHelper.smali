.class public Lorg/hmwebrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lorg/hmwebrtc/EglBase;

.field private final frameRefMonitor:Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

.field private frameRotation:I

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lorg/hmwebrtc/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mRefrushGlcurrent:Z

.field private mSharedContext:Lorg/hmwebrtc/EglBase$Context;

.field private final oesTextureId:I

.field private pendingListener:Lorg/hmwebrtc/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHeight:I

.field private final textureRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

.field private textureWidth:I

.field private final timestampAligner:Lorg/hmwebrtc/TimestampAligner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final yuvConverter:Lorg/hmwebrtc/YuvConverter;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/EglBase$Context;Landroid/os/Handler;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/hmwebrtc/SurfaceTextureHelper$2;

    invoke-direct {v0, p0}, Lorg/hmwebrtc/SurfaceTextureHelper$2;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 4
    new-instance v0, Lorg/hmwebrtc/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lorg/hmwebrtc/SurfaceTextureHelper$3;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Lorg/hmwebrtc/TimestampAligner;

    invoke-direct {p3}, Lorg/hmwebrtc/TimestampAligner;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->timestampAligner:Lorg/hmwebrtc/TimestampAligner;

    .line 8
    iput-object p4, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 9
    iput-object p5, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 10
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->mSharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 11
    sget-object p3, Lorg/hmwebrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, p3}, Lorg/hmwebrtc/h;->d(Lorg/hmwebrtc/EglBase$Context;[I)Lorg/hmwebrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 12
    :try_start_0
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->createDummyPbufferSurface()V

    .line 13
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 14
    invoke-static {p1}, Lorg/hmwebrtc/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 15
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    new-instance p1, Lorg/hmwebrtc/h0;

    invoke-direct {p1, p0}, Lorg/hmwebrtc/h0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Lorg/hmwebrtc/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 17
    iget-object p3, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->eglBase:Lorg/hmwebrtc/EglBase;

    invoke-interface {p3}, Lorg/hmwebrtc/EglBase;->release()V

    .line 18
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/EglBase$Context;Landroid/os/Handler;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;Lorg/hmwebrtc/SurfaceTextureHelper$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/hmwebrtc/SurfaceTextureHelper;-><init>(Lorg/hmwebrtc/EglBase$Context;Landroid/os/Handler;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/SurfaceTextureHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$setFrameRotation$4(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->returnTextureFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->pendingListener:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lorg/hmwebrtc/SurfaceTextureHelper;Lorg/hmwebrtc/VideoSink;)Lorg/hmwebrtc/VideoSink;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->pendingListener:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$402(Lorg/hmwebrtc/SurfaceTextureHelper;Lorg/hmwebrtc/VideoSink;)Lorg/hmwebrtc/VideoSink;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->listener:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lorg/hmwebrtc/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lorg/hmwebrtc/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->updateTexImage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$stopListening$1()V

    return-void
.end method

.method public static synthetic c(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$returnTextureFrame$5()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 3

    .line 5
    new-instance v0, Lorg/hmwebrtc/YuvConverter;

    invoke-direct {v0}, Lorg/hmwebrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/hmwebrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;Z)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 2

    .line 6
    new-instance v0, Lorg/hmwebrtc/YuvConverter;

    invoke-direct {v0}, Lorg/hmwebrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/hmwebrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;ZLorg/hmwebrtc/YuvConverter;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, p2, p3, v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/hmwebrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Lorg/hmwebrtc/SurfaceTextureHelper$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v8

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/hmwebrtc/SurfaceTextureHelper$1;-><init>(Lorg/hmwebrtc/EglBase$Context;Landroid/os/Handler;ZLorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lorg/hmwebrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hmwebrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method public static synthetic d(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$dispose$6()V

    return-void
.end method

.method public static synthetic e(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$new$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic f(Lorg/hmwebrtc/SurfaceTextureHelper;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$setTextureSize$2(II)V

    return-void
.end method

.method public static synthetic g(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->lambda$forceFrame$3()V

    return-void
.end method

.method private synthetic lambda$dispose$6()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$forceFrame$3()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "SurfaceTextureHelper"

    .line 6
    .line 7
    const-string v0, "A frame is already pending, dropping frame."

    .line 8
    .line 9
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$returnTextureFrame$5()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->release()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private synthetic lambda$setFrameRotation$4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->frameRotation:I

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$setTextureSize$2(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureHeight:I

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

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
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->listener:Lorg/hmwebrtc/VideoSink;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->pendingListener:Lorg/hmwebrtc/VideoSink;

    .line 5
    .line 6
    return-void
.end method

.method private release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

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
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/hmwebrtc/YuvConverter;->release()V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 31
    .line 32
    filled-new-array {v0}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 47
    .line 48
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->release()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->timestampAligner:Lorg/hmwebrtc/TimestampAligner;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/hmwebrtc/TimestampAligner;->dispose()V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "Unexpected release."

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "Wrong thread."

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method private returnTextureFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/j0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/hmwebrtc/j0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

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
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

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
    if-ne v0, v1, :cond_7

    .line 16
    .line 17
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 18
    .line 19
    if-nez v0, :cond_6

    .line 20
    .line 21
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 26
    .line 27
    if-nez v0, :cond_6

    .line 28
    .line 29
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->listener:Lorg/hmwebrtc/VideoSink;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureWidth:I

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureHeight:I

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
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 48
    .line 49
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->mRefrushGlcurrent:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->eglBase:Lorg/hmwebrtc/EglBase;

    .line 54
    .line 55
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->updateTexImage()V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x10

    .line 62
    .line 63
    new-array v0, v0, [F

    .line 64
    .line 65
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    iget-object v3, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->timestampAligner:Lorg/hmwebrtc/TimestampAligner;

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-virtual {v3, v1, v2}, Lorg/hmwebrtc/TimestampAligner;->translateTimestamp(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    :cond_3
    new-instance v12, Lorg/hmwebrtc/TextureBufferImpl;

    .line 85
    .line 86
    iget v4, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureWidth:I

    .line 87
    .line 88
    iget v5, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureHeight:I

    .line 89
    .line 90
    sget-object v6, Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 91
    .line 92
    iget v7, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 93
    .line 94
    invoke-static {v0}, Lorg/hmwebrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    iget-object v9, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 99
    .line 100
    iget-object v10, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 101
    .line 102
    iget-object v11, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 103
    .line 104
    move-object v3, v12

    .line 105
    invoke-direct/range {v3 .. v11}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-interface {v0, v12}, Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;->onNewBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    new-instance v0, Lorg/hmwebrtc/VideoFrame;

    .line 116
    .line 117
    iget v3, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->frameRotation:I

    .line 118
    .line 119
    invoke-direct {v0, v12, v3, v1, v2}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->listener:Lorg/hmwebrtc/VideoSink;

    .line 123
    .line 124
    invoke-interface {v1, v0}, Lorg/hmwebrtc/VideoSink;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    :goto_0
    const-string v0, "SurfaceTextureHelper"

    .line 132
    .line 133
    const-string v1, "Texture size has not been set."

    .line 134
    .line 135
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    return-void

    .line 139
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string v1, "Wrong thread."

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method private updateTexImage()V
    .locals 5

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglBase;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

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
    const-string v2, "SurfaceTextureHelper"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "updateTexImage error!"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    const-string v0, "SurfaceTextureHelper"

    .line 2
    .line 3
    const-string v1, "dispose()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lorg/hmwebrtc/m0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lorg/hmwebrtc/m0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public forceFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/l0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/hmwebrtc/l0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSharedContext()Lorg/hmwebrtc/EglBase$Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->mSharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 2
    .line 3
    return v0
.end method

.method public refrushGlcurrent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->mRefrushGlcurrent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRotation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/i0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/hmwebrtc/i0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;I)V

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
    if-lez p1, :cond_2

    .line 2
    .line 3
    if-lez p2, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureWidth:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->textureHeight:I

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Lorg/hmwebrtc/g0;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1, p2}, Lorg/hmwebrtc/g0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "Texture height must be positive, but was "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "Texture width must be positive, but was "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2
.end method

.method public startListening(Lorg/hmwebrtc/VideoSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->listener:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->pendingListener:Lorg/hmwebrtc/VideoSink;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->pendingListener:Lorg/hmwebrtc/VideoSink;

    .line 10
    .line 11
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

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
    const-string v0, "SurfaceTextureHelper"

    .line 2
    .line 3
    const-string v1, "stopListening()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lorg/hmwebrtc/k0;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/hmwebrtc/k0;-><init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/hmwebrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public textureToYuv(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/hmwebrtc/VideoFrame$Buffer;->toI420()Lorg/hmwebrtc/VideoFrame$I420Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
