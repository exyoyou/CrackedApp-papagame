.class Lorg/hmwebrtc/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;,
        Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;
    }
.end annotation


# static fields
.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"

.field private static final VIDEO_AVC_LEVEL_3:I = 0x100

.field private static final VIDEO_AVC_PROFILE_HIGH:I = 0x8

.field private static final VIDEO_ControlRateConstant:I = 0x2


# instance fields
.field private adjustedBitrate:I

.field private automaticResizeOn:Z

.field private final bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

.field private callback:Lorg/hmwebrtc/VideoEncoder$Callback;

.field private codec:Lorg/hmwebrtc/MediaCodecWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/hmwebrtc/VideoCodecMimeType;

.field private configBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private continuousTimesEncoderQueueOverfilled:I

.field private final encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private final forcedKeyFrameNs:J

.field private height:I

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameNs:J

.field private final mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

.field private nextPresentationTimestampUs:J

.field private outputBuffers:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

.field private final outputBuilders:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/hmwebrtc/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private final sharedContext:Lorg/hmwebrtc/EglBase14$Context;

.field private volatile shutdownException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceColorFormat:Ljava/lang/Integer;

.field private final textureDrawer:Lorg/hmwebrtc/GlRectDrawer;

.field private textureEglBase:Lorg/hmwebrtc/EglBase14;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textureInputSurface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useSurfaceMode:Z

.field private final videoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

.field private width:I

.field private final yuvColorFormat:Ljava/lang/Integer;

.field private final yuvFormat:Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILorg/hmwebrtc/BitrateAdjuster;Lorg/hmwebrtc/EglBase14$Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/MediaCodecWrapperFactory;",
            "Ljava/lang/String;",
            "Lorg/hmwebrtc/VideoCodecMimeType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lorg/hmwebrtc/BitrateAdjuster;",
            "Lorg/hmwebrtc/EglBase14$Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/hmwebrtc/GlRectDrawer;

    invoke-direct {v0}, Lorg/hmwebrtc/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureDrawer:Lorg/hmwebrtc/GlRectDrawer;

    .line 3
    new-instance v0, Lorg/hmwebrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lorg/hmwebrtc/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 5
    new-instance v0, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 6
    new-instance v1, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 7
    new-instance v1, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;-><init>(Lorg/hmwebrtc/HardwareVideoEncoder$1;)V

    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    .line 8
    iput-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 9
    iput-object p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 11
    iput-object p4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    .line 12
    iput-object p5, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;->valueOf(I)Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->yuvFormat:Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;

    .line 14
    iput-object p6, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 15
    iput p7, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 16
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p2, p8

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 17
    iput-object p9, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 18
    iput-object p10, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 19
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/HardwareVideoEncoder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/HardwareVideoEncoder;->lambda$deliverEncodedImage$0(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/HardwareVideoEncoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/HardwareVideoEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canUseSurface()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/HardwareVideoEncoder$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/hmwebrtc/HardwareVideoEncoder$1;-><init>(Lorg/hmwebrtc/HardwareVideoEncoder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private encodeByteBuffer(Lorg/hmwebrtc/VideoFrame;JLorg/hmwebrtc/VideoFrame$Buffer;I)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 10

    .line 1
    const-string p1, "HardwareVideoEncoder"

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    .line 13
    .line 14
    .line 15
    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne v4, v0, :cond_0

    .line 18
    .line 19
    const-string p2, "Dropped frame, no input buffers available"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    aget-object v0, v0, v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    invoke-virtual {p0, v0, p4}, Lorg/hmwebrtc/HardwareVideoEncoder;->fillInputBuffer(Ljava/nio/ByteBuffer;Lorg/hmwebrtc/VideoFrame$Buffer;)V

    .line 36
    .line 37
    .line 38
    :try_start_2
    iget-object v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move v6, p5

    .line 43
    move-wide v7, p2

    .line 44
    invoke-interface/range {v3 .. v9}, Lorg/hmwebrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .line 46
    .line 47
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 48
    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p2

    .line 51
    const-string p3, "queueInputBuffer failed"

    .line 52
    .line 53
    invoke-static {p1, p3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 57
    .line 58
    return-object p1

    .line 59
    :catch_1
    move-exception p2

    .line 60
    const-string p3, "getInputBuffers failed"

    .line 61
    .line 62
    invoke-static {p1, p3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 66
    .line 67
    return-object p1

    .line 68
    :catch_2
    move-exception p2

    .line 69
    const-string p3, "dequeueInputBuffer failed"

    .line 70
    .line 71
    invoke-static {p1, p3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 75
    .line 76
    return-object p1
.end method

.method private encodeTextureBuffer(Lorg/hmwebrtc/VideoFrame;J)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x4000

    .line 7
    .line 8
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/hmwebrtc/VideoFrame;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-direct {v0, v1, p1, v2, v3}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureDrawer:Lorg/hmwebrtc/GlRectDrawer;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 34
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide p2

    .line 41
    invoke-interface {p1, p2, p3}, Lorg/hmwebrtc/EglBase;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 45
    .line 46
    return-object p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string p2, "HardwareVideoEncoder"

    .line 49
    .line 50
    const-string p3, "encodeTexture failed"

    .line 51
    .line 52
    invoke-static {p2, p3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 56
    .line 57
    return-object p1
.end method

.method private initEncodeInternal()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 7

    .line 1
    const-string v0, "HardwareVideoEncoder"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    iput-wide v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lorg/hmwebrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lorg/hmwebrtc/MediaCodecWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    iget-boolean v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :try_start_1
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 40
    .line 41
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->width:I

    .line 46
    .line 47
    iget v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->height:I

    .line 48
    .line 49
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "bitrate"

    .line 54
    .line 55
    iget v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 56
    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    const-string v3, "bitrate-mode"

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string v3, "color-format"

    .line 67
    .line 68
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v1, "frame-rate"

    .line 72
    .line 73
    iget-object v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 74
    .line 75
    invoke-interface {v3}, Lorg/hmwebrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    double-to-float v3, v3

    .line 80
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 81
    .line 82
    .line 83
    const-string v1, "i-frame-interval"

    .line 84
    .line 85
    iget v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 86
    .line 87
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 91
    .line 92
    sget-object v3, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    if-ne v1, v3, :cond_6

    .line 96
    .line 97
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 98
    .line 99
    const-string v3, "profile-level-id"

    .line 100
    .line 101
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    const-string v3, "42e01f"

    .line 108
    .line 109
    if-nez v1, :cond_1

    .line 110
    .line 111
    move-object v1, v3

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const v6, 0x5bab3b7e

    .line 117
    .line 118
    .line 119
    if-eq v5, v6, :cond_3

    .line 120
    .line 121
    const v3, 0x5f19c386

    .line 122
    .line 123
    .line 124
    if-eq v5, v3, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string v3, "640c1f"

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    :goto_1
    const/4 v3, -0x1

    .line 146
    :goto_2
    if-eqz v3, :cond_5

    .line 147
    .line 148
    if-eq v3, v4, :cond_6

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v5, "Unknown profile level id: "

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    const-string v1, "profile"

    .line 172
    .line 173
    const/16 v3, 0x8

    .line 174
    .line 175
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    const-string v1, "level"

    .line 179
    .line 180
    const/16 v3, 0x100

    .line 181
    .line 182
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v3, "Format: "

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 206
    .line 207
    const/4 v3, 0x0

    .line 208
    invoke-interface {v1, v2, v3, v3, v4}, Lorg/hmwebrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 209
    .line 210
    .line 211
    iget-boolean v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 212
    .line 213
    if-eqz v1, :cond_7

    .line 214
    .line 215
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->sharedContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 216
    .line 217
    sget-object v2, Lorg/hmwebrtc/EglBase;->CONFIG_RECORDABLE:[I

    .line 218
    .line 219
    invoke-static {v1, v2}, Lorg/hmwebrtc/h;->j(Lorg/hmwebrtc/EglBase14$Context;[I)Lorg/hmwebrtc/EglBase14;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 224
    .line 225
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 226
    .line 227
    invoke-interface {v1}, Lorg/hmwebrtc/MediaCodecWrapper;->createInputSurface()Landroid/view/Surface;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 232
    .line 233
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 234
    .line 235
    invoke-interface {v2, v1}, Lorg/hmwebrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 239
    .line 240
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 241
    .line 242
    .line 243
    :cond_7
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 244
    .line 245
    invoke-interface {v1}, Lorg/hmwebrtc/MediaCodecWrapper;->start()V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 249
    .line 250
    invoke-interface {v1}, Lorg/hmwebrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    .line 256
    iput-boolean v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->running:Z

    .line 257
    .line 258
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 259
    .line 260
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 261
    .line 262
    .line 263
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 270
    .line 271
    .line 272
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 273
    .line 274
    return-object v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    const-string v2, "initEncodeInternal failed"

    .line 277
    .line 278
    invoke-static {v0, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 282
    .line 283
    .line 284
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 285
    .line 286
    return-object v0

    .line 287
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v2, "Cannot create media encoder "

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 310
    .line 311
    return-object v0
.end method

.method private synthetic lambda$deliverEncodedImage$0(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    const-string v0, "HardwareVideoEncoder"

    .line 10
    .line 11
    const-string v1, "releaseOutputBuffer failed"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;->decrement()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Releasing MediaCodec on output thread"

    .line 7
    .line 8
    const-string v1, "HardwareVideoEncoder"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 19
    .line 20
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v2, "Media encoder stop failed"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 31
    .line 32
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception v0

    .line 37
    const-string v2, "Media encoder release failed"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    .line 43
    .line 44
    :goto_1
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    const-string v0, "Release on output thread done"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private requestKeyFrame(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "request-sync"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lorg/hmwebrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    iput-wide p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const-string p2, "HardwareVideoEncoder"

    .line 27
    .line 28
    const-string v0, "requestKeyFrame failed"

    .line 29
    .line 30
    invoke-static {p2, v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private resetCodec(IIZ)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->width:I

    .line 16
    .line 17
    iput p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->height:I

    .line 18
    .line 19
    iput-boolean p3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->initEncodeInternal()Lorg/hmwebrtc/VideoCodecStatus;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    iget-wide v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 15
    .line 16
    add-long/2addr v2, v0

    .line 17
    cmp-long v0, p1, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private updateBitrate()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/hmwebrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "video-bitrate"

    .line 20
    .line 21
    iget v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lorg/hmwebrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "HardwareVideoEncoder"

    .line 36
    .line 37
    const-string v2, "updateBitrate failed"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method public synthetic createNativeVideoEncoder()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/s0;->a(Lorg/hmwebrtc/VideoEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected deliverEncodedImage()V
    .locals 7

    .line 1
    const-string v0, "HardwareVideoEncoder"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 14
    .line 15
    const-wide/32 v3, 0x186a0

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v1, v3, v4}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-gez v2, :cond_1

    .line 23
    .line 24
    const/4 v1, -0x3

    .line 25
    if-ne v2, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 33
    .line 34
    invoke-interface {v1}, Lorg/hmwebrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    aget-object v3, v3, v2

    .line 44
    .line 45
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 51
    .line 52
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 53
    .line 54
    add-int/2addr v4, v5

    .line 55
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 59
    .line 60
    and-int/lit8 v4, v4, 0x2

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "Config frame generated. Offset: "

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, ". Size: "

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 97
    .line 98
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_2
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 110
    .line 111
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 112
    .line 113
    invoke-interface {v4, v5}, Lorg/hmwebrtc/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 114
    .line 115
    .line 116
    iget v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 117
    .line 118
    iget-object v5, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 119
    .line 120
    invoke-interface {v5}, Lorg/hmwebrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eq v4, v5, :cond_3

    .line 125
    .line 126
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->updateBitrate()Lorg/hmwebrtc/VideoCodecStatus;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 130
    .line 131
    const/4 v5, 0x1

    .line 132
    and-int/2addr v4, v5

    .line 133
    if-eqz v4, :cond_4

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    const/4 v5, 0x0

    .line 137
    :goto_0
    if-eqz v5, :cond_5

    .line 138
    .line 139
    const-string v4, "Sync frame generated"

    .line 140
    .line 141
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    if-eqz v5, :cond_7

    .line 145
    .line 146
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 147
    .line 148
    sget-object v6, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 149
    .line 150
    if-eq v4, v6, :cond_6

    .line 151
    .line 152
    sget-object v6, Lorg/hmwebrtc/VideoCodecMimeType;->H265:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 153
    .line 154
    if-ne v4, v6, :cond_7

    .line 155
    .line 156
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v6, "Prepending config frame of size "

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v6, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v6, " to output buffer with offset "

    .line 176
    .line 177
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 181
    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v6, ", size "

    .line 186
    .line 187
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 191
    .line 192
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 203
    .line 204
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    add-int/2addr v1, v4

    .line 211
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    .line 219
    .line 220
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_1
    if-eqz v5, :cond_8

    .line 237
    .line 238
    sget-object v3, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_8
    sget-object v3, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameDelta:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 242
    .line 243
    :goto_2
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;

    .line 244
    .line 245
    invoke-virtual {v4}, Lorg/hmwebrtc/HardwareVideoEncoder$BusyCount;->increment()V

    .line 246
    .line 247
    .line 248
    iget-object v4, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 249
    .line 250
    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    check-cast v4, Lorg/hmwebrtc/EncodedImage$Builder;

    .line 255
    .line 256
    new-instance v5, Lorg/hmwebrtc/u;

    .line 257
    .line 258
    invoke-direct {v5, p0, v2}, Lorg/hmwebrtc/u;-><init>(Lorg/hmwebrtc/HardwareVideoEncoder;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v1, v5}, Lorg/hmwebrtc/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1, v3}, Lorg/hmwebrtc/EncodedImage$Builder;->setFrameType(Lorg/hmwebrtc/EncodedImage$FrameType;)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lorg/hmwebrtc/EncodedImage$Builder;->createEncodedImage()Lorg/hmwebrtc/EncodedImage;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->callback:Lorg/hmwebrtc/VideoEncoder$Callback;

    .line 274
    .line 275
    new-instance v3, Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;

    .line 276
    .line 277
    invoke-direct {v3}, Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-interface {v2, v1, v3}, Lorg/hmwebrtc/VideoEncoder$Callback;->onEncodedFrame(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Lorg/hmwebrtc/EncodedImage;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    const-string v2, "deliverOutput failed"

    .line 289
    .line 290
    invoke-static {v0, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_3
    return-void
.end method

.method public encode(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoEncoder$EncodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/hmwebrtc/VideoCodecStatus;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    instance-of v0, v4, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->canUseSurface()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->width:I

    .line 49
    .line 50
    const-string v7, ", failed with status = "

    .line 51
    .line 52
    const-string v8, ", succeed with status = "

    .line 53
    .line 54
    const-string v9, "x"

    .line 55
    .line 56
    const-string v10, "resetCodec res: "

    .line 57
    .line 58
    const-string v11, "HardwareVideoEncoder"

    .line 59
    .line 60
    if-ne v1, v3, :cond_2

    .line 61
    .line 62
    iget v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->height:I

    .line 63
    .line 64
    if-ne v2, v3, :cond_2

    .line 65
    .line 66
    iget-boolean v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 67
    .line 68
    if-eq v0, v3, :cond_4

    .line 69
    .line 70
    :cond_2
    invoke-direct {p0, v1, v2, v0}, Lorg/hmwebrtc/HardwareVideoEncoder;->resetCodec(IIZ)Lorg/hmwebrtc/VideoCodecStatus;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    sget-object v12, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 75
    .line 76
    if-eq v3, v12, :cond_3

    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v11, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v3

    .line 109
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v11, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/4 v12, 0x2

    .line 146
    if-le v3, v12, :cond_7

    .line 147
    .line 148
    iget v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->continuousTimesEncoderQueueOverfilled:I

    .line 149
    .line 150
    add-int/2addr v3, v5

    .line 151
    iput v3, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->continuousTimesEncoderQueueOverfilled:I

    .line 152
    .line 153
    if-gt v3, v12, :cond_5

    .line 154
    .line 155
    const-string p1, "Dropped frame, encoder queue full"

    .line 156
    .line 157
    invoke-static {v11, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_5
    invoke-direct {p0, v1, v2, v0}, Lorg/hmwebrtc/HardwareVideoEncoder;->resetCodec(IIZ)Lorg/hmwebrtc/VideoCodecStatus;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sget-object v3, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 168
    .line 169
    if-eq v0, v3, :cond_6

    .line 170
    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v11, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v0

    .line 202
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v11, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    iput v6, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->continuousTimesEncoderQueueOverfilled:I

    .line 233
    .line 234
    iget-object p2, p2, Lorg/hmwebrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 235
    .line 236
    array-length v0, p2

    .line 237
    const/4 v1, 0x0

    .line 238
    :goto_1
    if-ge v6, v0, :cond_9

    .line 239
    .line 240
    aget-object v2, p2, v6

    .line 241
    .line 242
    sget-object v3, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 243
    .line 244
    if-ne v2, v3, :cond_8

    .line 245
    .line 246
    const-string v1, "requestedKeyFrame"

    .line 247
    .line 248
    invoke-static {v11, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const/4 v1, 0x1

    .line 252
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_9
    if-nez v1, :cond_a

    .line 256
    .line 257
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    if-eqz p2, :cond_b

    .line 266
    .line 267
    :cond_a
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 272
    .line 273
    .line 274
    :cond_b
    invoke-interface {v4}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    invoke-interface {v4}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    mul-int p2, p2, v0

    .line 283
    .line 284
    mul-int/lit8 p2, p2, 0x3

    .line 285
    .line 286
    div-int/lit8 v5, p2, 0x2

    .line 287
    .line 288
    invoke-static {}, Lorg/hmwebrtc/EncodedImage;->builder()Lorg/hmwebrtc/EncodedImage$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    invoke-virtual {p2, v0, v1}, Lorg/hmwebrtc/EncodedImage$Builder;->setCaptureTimeNs(J)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-virtual {p2, v0}, Lorg/hmwebrtc/EncodedImage$Builder;->setEncodedWidth(I)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-virtual {p2, v0}, Lorg/hmwebrtc/EncodedImage$Builder;->setEncodedHeight(I)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {p2, v0}, Lorg/hmwebrtc/EncodedImage$Builder;->setRotation(I)Lorg/hmwebrtc/EncodedImage$Builder;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 333
    .line 334
    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    iget-wide v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 338
    .line 339
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 340
    .line 341
    const-wide/16 v0, 0x1

    .line 342
    .line 343
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 344
    .line 345
    .line 346
    move-result-wide v0

    .line 347
    long-to-double v0, v0

    .line 348
    iget-object p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 349
    .line 350
    invoke-interface {p2}, Lorg/hmwebrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    .line 351
    .line 352
    .line 353
    move-result-wide v6

    .line 354
    div-double/2addr v0, v6

    .line 355
    double-to-long v0, v0

    .line 356
    iget-wide v6, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 357
    .line 358
    add-long/2addr v6, v0

    .line 359
    iput-wide v6, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 360
    .line 361
    iget-boolean p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 362
    .line 363
    if-eqz p2, :cond_c

    .line 364
    .line 365
    invoke-direct {p0, p1, v2, v3}, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeTextureBuffer(Lorg/hmwebrtc/VideoFrame;J)Lorg/hmwebrtc/VideoCodecStatus;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    goto :goto_2

    .line 370
    :cond_c
    move-object v0, p0

    .line 371
    move-object v1, p1

    .line 372
    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeByteBuffer(Lorg/hmwebrtc/VideoFrame;JLorg/hmwebrtc/VideoFrame$Buffer;I)Lorg/hmwebrtc/VideoCodecStatus;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    :goto_2
    sget-object p2, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 377
    .line 378
    if-eq p1, p2, :cond_d

    .line 379
    .line 380
    iget-object p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 381
    .line 382
    invoke-interface {p2}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    :cond_d
    return-object p1
.end method

.method protected fillInputBuffer(Ljava/nio/ByteBuffer;Lorg/hmwebrtc/VideoFrame$Buffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->yuvFormat:Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/HardwareVideoEncoder$YuvFormat;->fillBuffer(Ljava/nio/ByteBuffer;Lorg/hmwebrtc/VideoFrame$Buffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    const-string v0, "HWEncoder"

    return-object v0
.end method

.method public synthetic getResolutionBitrateLimits()[Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/s0;->b(Lorg/hmwebrtc/VideoEncoder;)[Lorg/hmwebrtc/VideoEncoder$ResolutionBitrateLimits;

    move-result-object v0

    return-object v0
.end method

.method public getScalingSettings()Lorg/hmwebrtc/VideoEncoder$ScalingSettings;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 11
    .line 12
    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    const/16 v2, 0x5f

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    new-instance v0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;

    .line 31
    .line 32
    const/16 v1, 0x18

    .line 33
    .line 34
    const/16 v2, 0x25

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    sget-object v0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;->OFF:Lorg/hmwebrtc/VideoEncoder$ScalingSettings;

    .line 41
    .line 42
    return-object v0
.end method

.method public initEncode(Lorg/hmwebrtc/VideoEncoder$Settings;Lorg/hmwebrtc/VideoEncoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->callback:Lorg/hmwebrtc/VideoEncoder$Callback;

    .line 7
    .line 8
    iget-boolean p2, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    .line 9
    .line 10
    iput-boolean p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 11
    .line 12
    iget p2, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->width:I

    .line 13
    .line 14
    iput p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->width:I

    .line 15
    .line 16
    iget p2, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->height:I

    .line 17
    .line 18
    iput p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->height:I

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->canUseSurface()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput-boolean p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 25
    .line 26
    iget p2, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->startBitrate:I

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget v0, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->maxFramerate:I

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 35
    .line 36
    mul-int/lit16 p2, p2, 0x3e8

    .line 37
    .line 38
    int-to-double v2, v0

    .line 39
    invoke-interface {v1, p2, v2, v3}, Lorg/hmwebrtc/BitrateAdjuster;->setTargets(ID)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 43
    .line 44
    invoke-interface {p2}, Lorg/hmwebrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "initEncode: "

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->width:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " x "

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->height:I

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ". @ "

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v0, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->startBitrate:I

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "kbps. Fps: "

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget p1, p1, Lorg/hmwebrtc/VideoEncoder$Settings;->maxFramerate:I

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " Use surface mode: "

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-boolean p1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "HardwareVideoEncoder"

    .line 110
    .line 111
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lorg/hmwebrtc/HardwareVideoEncoder;->initEncodeInternal()Lorg/hmwebrtc/VideoCodecStatus;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method

.method public synthetic isHardwareEncoder()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/s0;->c(Lorg/hmwebrtc/VideoEncoder;)Z

    move-result v0

    return v0
.end method

.method public release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->running:Z

    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 17
    .line 18
    const-wide/16 v1, 0x1388

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lorg/hmwebrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, "HardwareVideoEncoder"

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "Media encoder release timeout"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "Media encoder release exception"

    .line 41
    .line 42
    iget-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 51
    .line 52
    :goto_0
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureDrawer:Lorg/hmwebrtc/GlRectDrawer;

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/hmwebrtc/GlRectDrawer;->release()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/hmwebrtc/VideoFrameDrawer;->release()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->release()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureEglBase:Lorg/hmwebrtc/EglBase14;

    .line 71
    .line 72
    :cond_3
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 80
    .line 81
    :cond_4
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 87
    .line 88
    iput-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    iput-object v2, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 91
    .line 92
    iget-object v1, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 93
    .line 94
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public setRateAllocation(Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;I)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x1e

    .line 7
    .line 8
    if-le p2, v0, :cond_0

    .line 9
    .line 10
    const/16 p2, 0x1e

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;->getSum()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-double v1, p2

    .line 19
    invoke-interface {v0, p1, v1, v2}, Lorg/hmwebrtc/BitrateAdjuster;->setTargets(ID)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 23
    .line 24
    return-object p1
.end method

.method public setRates(Lorg/hmwebrtc/VideoEncoder$RateControlParameters;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/hmwebrtc/BitrateAdjuster;

    .line 7
    .line 8
    iget-object v1, p1, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->bitrate:Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;->getSum()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-wide v2, p1, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    .line 15
    .line 16
    invoke-interface {v0, v1, v2, v3}, Lorg/hmwebrtc/BitrateAdjuster;->setTargets(ID)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 20
    .line 21
    return-object p1
.end method
