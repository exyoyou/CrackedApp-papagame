.class public Lorg/hmwebrtc/DirectSurfaceVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;,
        Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final H264_SEI_CONTENT_START_OFFSET:I = 0x17

.field private static final H264_SEI_DATA_TOTAL_SIZE:I = 0x2c

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "SurfaceVideoDecoder"

.field private static enableNoOutputFramesRequestKeyFrame:Z = false

.field public static isCloseDecoderLowLatency:Z = false

.field private static isEnableSurfaceSwitch:Z = false

.field private static lossFlag:Z = true

.field private static volatile needToRequireKeyFrame:Z = false

.field private static noOutputFramesIntervalMs:I = 0x7d0

.field private static numOfNotDecodedFramesThreshold:I = 0x1e

.field public static useMediaCodecVideoDecoderLowLatency:Z


# instance fields
.field private callback:Lorg/hmwebrtc/VideoDecoder$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codec:Lorg/hmwebrtc/MediaCodecWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecIsInit:Z

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/hmwebrtc/VideoCodecMimeType;

.field private colorFormat:I

.field private constBuffer:Lorg/hmwebrtc/VideoFrame$TextureBuffer;

.field private decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private final defaultSeiReportInterval:I

.field private final dimensionLock:Ljava/lang/Object;

.field private enableSeiDataReport:Z

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private frameSeiReportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/SeiData;",
            ">;"
        }
    .end annotation
.end field

.field private future:Ljava/util/concurrent/ScheduledFuture;

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private isFallbackSoftDecoder:Z

.field private isHisiDecoder:Z

.field private isReportedError:Z

.field private keyFrameRequired:Z

.field private lastOutFramesTime:J

.field private lastSecond:J

.field private lossRate:Ljava/lang/Double;

.field private mFrameId:J

.field private mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

.field private final mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

.field private outputThread:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private releaseBarrier:Ljava/util/concurrent/CountDownLatch;

.field private renderFps:I

.field private renderLossCount:J

.field private renderLps:I

.field private renderedTextureMetadata:Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rotationDegree:I

.field private volatile running:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private seiDataInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/hmwebrtc/SeiData;",
            ">;"
        }
    .end annotation
.end field

.field private seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

.field private seiReportInterval:I

.field private volatile shutdownException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;ILjava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->defaultSeiReportInterval:I

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastOutFramesTime:J

    .line 17
    .line 18
    invoke-direct {p0, p4}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isSupportedColorFormat(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "ctor name: "

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
    const-string v1, " type: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " color format: "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "SurfaceVideoDecoder"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 63
    .line 64
    iput-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 67
    .line 68
    iput p4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->colorFormat:I

    .line 69
    .line 70
    check-cast p5, Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 71
    .line 72
    iput-object p5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 73
    .line 74
    iput p6, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 75
    .line 76
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 85
    .line 86
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLps:I

    .line 87
    .line 88
    const-wide/16 p1, 0x0

    .line 89
    .line 90
    iput-wide p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastSecond:J

    .line 91
    .line 92
    const-wide/16 p1, 0x0

    .line 93
    .line 94
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string p3, "Unsupported color format: "

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method static synthetic access$000(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Lorg/hmwebrtc/HmDataReportToSaasSdk;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Lorg/hmwebrtc/ThreadUtils$ThreadChecker;)Lorg/hmwebrtc/ThreadUtils$ThreadChecker;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseCodecOnOutputThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;

    .line 2
    .line 3
    const-string v1, "AndroidVideoDecoder.outputThread"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;-><init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private deliverSurfaceFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance p3, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;

    .line 6
    .line 7
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 8
    .line 9
    invoke-direct {p3, v0, v1, p4}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    iget-object p4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 23
    .line 24
    invoke-interface {p4}, Lorg/hmwebrtc/DirectSurfaceHelper;->getRotateDegree()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 29
    .line 30
    if-eq p4, v0, :cond_0

    .line 31
    .line 32
    iget-object p4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {p4, p1, v0}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-interface {p4, p1, v0}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    sub-long/2addr v0, p2

    .line 52
    const-wide/16 p2, 0x5

    .line 53
    .line 54
    add-long/2addr v0, p2

    .line 55
    long-to-int p2, v0

    .line 56
    int-to-long p2, p2

    .line 57
    invoke-interface {p1, p2, p3}, Lorg/hmwebrtc/DirectSurfaceHelper;->setRenderDelayMs(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1
.end method

.method private initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 7

    .line 1
    const-string v0, "OMX.HISI.VIDEO."

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecIsInit:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastOutFramesTime:J

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "initDecodeInternal name: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " type: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " width: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " height: "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "SurfaceVideoDecoder"

    .line 63
    .line 64
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 68
    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    const-string p1, "initDecodeInternal called while the codec is already running"

    .line 72
    .line 73
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 77
    .line 78
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 82
    .line 83
    iput p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 84
    .line 85
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stride:I

    .line 86
    .line 87
    iput p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->sliceHeight:I

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    iput-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->hasDecodedFirstFrame:Z

    .line 91
    .line 92
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->keyFrameRequired:Z

    .line 93
    .line 94
    iput-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 95
    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .line 98
    iput-wide v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mFrameId:J

    .line 99
    .line 100
    :try_start_0
    iget-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 101
    .line 102
    iget-object v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v4, v5}, Lorg/hmwebrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lorg/hmwebrtc/MediaCodecWrapper;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iput-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    :try_start_1
    iget-object v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 112
    .line 113
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    const/4 v5, -0x1

    .line 136
    if-eq p2, v5, :cond_1

    .line 137
    .line 138
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isHisiDecoder:Z

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iput-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isHisiDecoder:Z

    .line 142
    .line 143
    :goto_0
    sget-boolean p2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 144
    .line 145
    if-nez p2, :cond_7

    .line 146
    .line 147
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string v6, "OMX.MTK.VIDEO."

    .line 158
    .line 159
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eq p2, v5, :cond_2

    .line 164
    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " set mtk lowlatency."

    .line 176
    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string p2, "vdec-lowlatency"

    .line 188
    .line 189
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_2
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    const-string v6, "OMX.QCOM.VIDEO."

    .line 205
    .line 206
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    if-eq p2, v5, :cond_3

    .line 211
    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v0, " set qcom lowlatency."

    .line 223
    .line 224
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string p2, "vendor.qti-ext-low-latency.enable"

    .line 235
    .line 236
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .line 242
    const/16 v6, 0x1d

    .line 243
    .line 244
    if-lt p2, v6, :cond_4

    .line 245
    .line 246
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-eq p2, v5, :cond_4

    .line 261
    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v0, " set hisi lowlatency."

    .line 273
    .line 274
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string p2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    .line 285
    .line 286
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    const-string p2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    .line 290
    .line 291
    invoke-virtual {p1, p2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_4
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    const-string v0, "OMX.AMLOGIC."

    .line 306
    .line 307
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-ne p2, v5, :cond_5

    .line 312
    .line 313
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    const-string v0, "C2.AMLOGIC."

    .line 324
    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    if-eq p2, v5, :cond_6

    .line 330
    .line 331
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v0, " set amlogic lowlatency."

    .line 342
    .line 343
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const-string p2, "vendor.low-latency.enable"

    .line 354
    .line 355
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    :cond_6
    :goto_1
    sget-boolean p2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->useMediaCodecVideoDecoderLowLatency:Z

    .line 359
    .line 360
    if-eqz p2, :cond_7

    .line 361
    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v0, " set lowlatency for common."

    .line 373
    .line 374
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string p2, "low-latency"

    .line 385
    .line 386
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    :cond_7
    iget p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 390
    .line 391
    if-eqz p2, :cond_8

    .line 392
    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string v0, " set mediaCodec rotation-degrees:"

    .line 399
    .line 400
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 404
    .line 405
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-string p2, "rotation-degrees"

    .line 416
    .line 417
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 418
    .line 419
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    :cond_8
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 423
    .line 424
    invoke-interface {p2}, Lorg/hmwebrtc/DirectSurfaceHelper;->getSurface()Landroid/view/Surface;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    iput-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->surface:Landroid/view/Surface;

    .line 429
    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v0, "configure with:"

    .line 436
    .line 437
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->surface:Landroid/view/Surface;

    .line 441
    .line 442
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 453
    .line 454
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->surface:Landroid/view/Surface;

    .line 455
    .line 456
    iget-boolean v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isHisiDecoder:Z

    .line 457
    .line 458
    if-eqz v5, :cond_9

    .line 459
    .line 460
    const/4 v5, 0x2

    .line 461
    goto :goto_2

    .line 462
    :cond_9
    const/4 v5, 0x0

    .line 463
    :goto_2
    invoke-interface {p2, p1, v0, v4, v5}, Lorg/hmwebrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 464
    .line 465
    .line 466
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 467
    .line 468
    invoke-interface {p1}, Lorg/hmwebrtc/MediaCodecWrapper;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 469
    .line 470
    .line 471
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 472
    .line 473
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 478
    .line 479
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 480
    .line 481
    .line 482
    invoke-static {}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getInstance()Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 487
    .line 488
    if-eqz p1, :cond_b

    .line 489
    .line 490
    invoke-virtual {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isH264codec()Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 495
    .line 496
    iget-boolean v0, p2, Lorg/hmwebrtc/HmDataReportToSaasSdk;->needToReportSeiData:Z

    .line 497
    .line 498
    if-eqz v0, :cond_a

    .line 499
    .line 500
    if-eqz p1, :cond_a

    .line 501
    .line 502
    const/4 v2, 0x1

    .line 503
    :cond_a
    iput-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 504
    .line 505
    iget p1, p2, Lorg/hmwebrtc/HmDataReportToSaasSdk;->sampleInterval:I

    .line 506
    .line 507
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiReportInterval:I

    .line 508
    .line 509
    :cond_b
    iget-boolean p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 510
    .line 511
    if-eqz p1, :cond_d

    .line 512
    .line 513
    new-instance p1, Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .line 517
    .line 518
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 519
    .line 520
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 521
    .line 522
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 523
    .line 524
    .line 525
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 526
    .line 527
    iget p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiReportInterval:I

    .line 528
    .line 529
    if-gtz p1, :cond_c

    .line 530
    .line 531
    iput v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiReportInterval:I

    .line 532
    .line 533
    :cond_c
    invoke-virtual {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->CreateSeiDataReportThread()V

    .line 534
    .line 535
    .line 536
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    const-string p2, "init direct surface decoder successfully,this:"

    .line 542
    .line 543
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string p2, ",codec name:"

    .line 550
    .line 551
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    const/16 p2, 0x34ad

    .line 564
    .line 565
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const-string p1, "initDecodeInternal done"

    .line 569
    .line 570
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 574
    .line 575
    return-object p1

    .line 576
    :catch_0
    move-exception p1

    .line 577
    goto :goto_3

    .line 578
    :catch_1
    move-exception p1

    .line 579
    goto :goto_3

    .line 580
    :catch_2
    move-exception p1

    .line 581
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    const-string v0, "initDecode failed"

    .line 587
    .line 588
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p2

    .line 602
    const/16 v2, 0x34d1

    .line 603
    .line 604
    invoke-direct {p0, p2, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 605
    .line 606
    .line 607
    invoke-static {v3, v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    .line 609
    .line 610
    :try_start_2
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 611
    .line 612
    invoke-interface {p1}, Lorg/hmwebrtc/MediaCodecWrapper;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 613
    .line 614
    .line 615
    goto :goto_4

    .line 616
    :catch_3
    move-exception p1

    .line 617
    const-string p2, "Media decoder release failed in initDecodeInternal"

    .line 618
    .line 619
    invoke-static {v3, p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .line 621
    .line 622
    :goto_4
    iput-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 623
    .line 624
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 625
    .line 626
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 627
    .line 628
    return-object p1

    .line 629
    :catch_4
    move-exception p1

    .line 630
    goto :goto_5

    .line 631
    :catch_5
    move-exception p1

    .line 632
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .line 636
    .line 637
    const-string v0, "Cannot create media decoder "

    .line 638
    .line 639
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    const/16 p2, 0x34d0

    .line 659
    .line 660
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 661
    .line 662
    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    iget-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 672
    .line 673
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iput-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 684
    .line 685
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 686
    .line 687
    return-object p1
.end method

.method private isSupportedColorFormat(I)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/hmwebrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    .line 10
    if-ne v4, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "SurfaceVideoDecoder"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Decoder format changed: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "crop-left"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v0, "crop-right"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string v0, "crop-bottom"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string v0, "crop-top"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const-string v0, "crop-right"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    const-string v1, "crop-left"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v0, v1

    .line 79
    const-string v1, "crop-bottom"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    const-string v2, "crop-top"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    sub-int/2addr v1, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "width"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const-string v1, "height"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_0
    move v3, v0

    .line 108
    move v4, v1

    .line 109
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->hasDecodedFirstFrame:Z

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 117
    .line 118
    if-ne v1, v3, :cond_1

    .line 119
    .line 120
    iget v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 121
    .line 122
    if-eq v1, v4, :cond_2

    .line 123
    .line 124
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "Unexpected size change. Configured "

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, "*"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, ". New "

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, "*"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 179
    :cond_2
    iput v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 180
    .line 181
    iput v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 182
    .line 183
    new-instance v1, Lorg/hmwebrtc/TextureBufferImpl;

    .line 184
    .line 185
    sget-object v5, Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 186
    .line 187
    const/4 v6, -0x1

    .line 188
    new-instance v7, Landroid/graphics/Matrix;

    .line 189
    .line 190
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    .line 192
    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    new-instance v10, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$3;

    .line 196
    .line 197
    invoke-direct {v10, p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$3;-><init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V

    .line 198
    .line 199
    .line 200
    move-object v2, v1

    .line 201
    invoke-direct/range {v2 .. v10}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    .line 202
    .line 203
    .line 204
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->constBuffer:Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 205
    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v1

    .line 210
    :try_start_1
    const-string v0, "stride"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    const-string v0, "stride"

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iput v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stride:I

    .line 225
    .line 226
    :cond_3
    const-string v0, "slice-height"

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_4

    .line 233
    .line 234
    const-string v0, "slice-height"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->sliceHeight:I

    .line 241
    .line 242
    :cond_4
    const-string p1, "SurfaceVideoDecoder"

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v2, "Frame stride and slice height: "

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stride:I

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, " x "

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->sliceHeight:I

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 277
    .line 278
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stride:I

    .line 279
    .line 280
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->stride:I

    .line 285
    .line 286
    iget p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 287
    .line 288
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->sliceHeight:I

    .line 289
    .line 290
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    iput p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->sliceHeight:I

    .line 295
    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 298
    :catchall_0
    move-exception p1

    .line 299
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    throw p1

    .line 301
    :catchall_1
    move-exception p1

    .line 302
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    throw p1
.end method

.method private reinitDecode(II)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "reinitDecode:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "SurfaceVideoDecoder"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 41
    .line 42
    if-eq v0, v1, :cond_0

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Releasing MediaCodec on output thread"

    .line 7
    .line 8
    const-string v1, "SurfaceVideoDecoder"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v2, "Media decoder stop failed"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 26
    .line 27
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    .line 32
    const-string v2, "Media decoder release failed"

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 38
    .line 39
    :goto_1
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 41
    .line 42
    iget-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseSchedule()V

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v0, "Release on output thread done"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecIsInit:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 5
    .line 6
    const-string v2, "SurfaceVideoDecoder"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v0, "release: Decoder is not running."

    .line 11
    .line 12
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    sget-boolean v3, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isEnableSurfaceSwitch:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-boolean v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 34
    .line 35
    :cond_1
    iput-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 36
    .line 37
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v0, "releaseBarrier awaitUninterruptibly"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseBarrier:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    const-wide/16 v3, 0x3e8

    .line 49
    .line 50
    invoke-static {v0, v3, v4}, Lorg/hmwebrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const-string v0, "releaseBarrier awaitUninterruptibly timeout"

    .line 57
    .line 58
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    :try_start_1
    const-string v0, "joinUninterruptibly"

    .line 67
    .line 68
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 72
    .line 73
    const-wide/16 v3, 0x1388

    .line 74
    .line 75
    invoke-static {v0, v3, v4}, Lorg/hmwebrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    const-string v0, "Media decoder release timeout"

    .line 82
    .line 83
    new-instance v3, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    const-string v0, "Media decoder release error"

    .line 101
    .line 102
    new-instance v3, Ljava/lang/RuntimeException;

    .line 103
    .line 104
    iget-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 113
    .line 114
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_4
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 120
    .line 121
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 122
    .line 123
    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    iput-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 126
    .line 127
    throw v0
.end method

.method private releaseSchedule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private reportErrorToHaimaCountly(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isReportedError:Z

    .line 2
    .line 3
    const-string v1, "SurfaceVideoDecoder"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "Already reported error, so ignore this report. error="

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecIsInit:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "the media codec dcoder has uninitialized. error="

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isReportedError:Z

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, ",frameInfos size:"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ",this:"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, ",codec name:"

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static requestKeyFrame()V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->needToRequireKeyFrame:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "SurfaceVideoDecoder"

    .line 7
    .line 8
    const-string v1, "Force requesting key frame"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->needToRequireKeyFrame:Z

    .line 15
    .line 16
    return-void
.end method

.method public static setEnableSurfaceSwitch(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Set isEnableSurfaceSwitch is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SurfaceVideoDecoder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isEnableSurfaceSwitch:Z

    .line 24
    .line 25
    return-void
.end method

.method public static setLossFrameFlag(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Set setLossFrameFlag is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SurfaceVideoDecoder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lossFlag:Z

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "DirectSurfaceVideoDecoder lossing frame enable:"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/16 v0, 0x34b8

    .line 43
    .line 44
    invoke-static {v0, p0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static setNoOutputFramesIntervalMs(ZII)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Set enableNoOutputFramesRequestKeyFrame is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SurfaceVideoDecoder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Set NoOutputFramesIntervalMs is: "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Set numOfNotDecodedFramesThreshold is: "

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-boolean p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableNoOutputFramesRequestKeyFrame:Z

    .line 64
    .line 65
    sput p1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->noOutputFramesIntervalMs:I

    .line 66
    .line 67
    sput p2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->numOfNotDecodedFramesThreshold:I

    .line 68
    .line 69
    return-void
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 8
    .line 9
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method CreateSeiDataReportThread()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    new-instance v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$1;-><init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x64

    .line 13
    .line 14
    iget v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiReportInterval:I

    .line 15
    .line 16
    mul-int/lit16 v4, v4, 0x3e8

    .line 17
    .line 18
    int-to-long v4, v4

    .line 19
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    return-void
.end method

.method public synthetic createNativeVideoDecoder()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/p0;->a(Lorg/hmwebrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_11

    .line 15
    .line 16
    iget-object v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 17
    .line 18
    if-eqz v2, :cond_11

    .line 19
    .line 20
    iget-boolean v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->running:Z

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v0, "decode() - no input data"

    .line 31
    .line 32
    const/16 v2, 0x34d3

    .line 33
    .line 34
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    iget-boolean v5, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget-object v5, v0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 50
    .line 51
    sget-object v6, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameDelta:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 52
    .line 53
    if-ne v5, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/16 v5, 0x2c

    .line 60
    .line 61
    if-lt v2, v5, :cond_3

    .line 62
    .line 63
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    const/16 v6, 0x17

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    .line 75
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    shr-int/2addr v6, v4

    .line 86
    add-int/lit16 v8, v6, -0xff

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    shr-long v9, v6, v4

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    shr-long v11, v6, v4

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v13

    .line 104
    new-instance v2, Lorg/hmwebrtc/SeiData;

    .line 105
    .line 106
    const-wide/16 v15, 0x0

    .line 107
    .line 108
    move-object v7, v2

    .line 109
    invoke-direct/range {v7 .. v16}, Lorg/hmwebrtc/SeiData;-><init>(IJJJJ)V

    .line 110
    .line 111
    .line 112
    iget-object v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    invoke-interface {v6, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_4

    .line 140
    .line 141
    const-string v0, "decode() - input buffer empty"

    .line 142
    .line 143
    const/16 v2, 0x34d4

    .line 144
    .line 145
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    iput-boolean v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 151
    .line 152
    .line 153
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_4
    iget-object v5, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v5

    .line 159
    :try_start_0
    iget v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 160
    .line 161
    iget v7, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 162
    .line 163
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget v5, v0, Lorg/hmwebrtc/EncodedImage;->encodedWidth:I

    .line 165
    .line 166
    iget v8, v0, Lorg/hmwebrtc/EncodedImage;->encodedHeight:I

    .line 167
    .line 168
    mul-int v9, v5, v8

    .line 169
    .line 170
    if-lez v9, :cond_7

    .line 171
    .line 172
    if-ne v5, v6, :cond_5

    .line 173
    .line 174
    if-eq v8, v7, :cond_7

    .line 175
    .line 176
    :cond_5
    invoke-direct {v1, v5, v8}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reinitDecode(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    sget-object v8, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 181
    .line 182
    if-eq v5, v8, :cond_6

    .line 183
    .line 184
    return-object v5

    .line 185
    :cond_6
    const/4 v5, 0x1

    .line 186
    goto :goto_0

    .line 187
    :cond_7
    const/4 v5, 0x0

    .line 188
    :goto_0
    iget-object v8, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 189
    .line 190
    invoke-interface {v8}, Lorg/hmwebrtc/DirectSurfaceHelper;->getRotateDegree()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    iget v9, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 195
    .line 196
    if-eq v8, v9, :cond_8

    .line 197
    .line 198
    iget-object v8, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 199
    .line 200
    invoke-interface {v8}, Lorg/hmwebrtc/DirectSurfaceHelper;->getRotateDegree()I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    iput v8, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 205
    .line 206
    const-string v8, "SurfaceVideoDecoder"

    .line 207
    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v10, "reinitDecode caused by rotation-degrees:"

    .line 214
    .line 215
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v10, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 219
    .line 220
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-static {v8, v9}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v9, "reinitDecode caused by rotation-degrees:"

    .line 236
    .line 237
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v9, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->rotationDegree:I

    .line 241
    .line 242
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    const/16 v9, 0x34af

    .line 250
    .line 251
    invoke-static {v9, v8}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {v1, v6, v7}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reinitDecode(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    sget-object v7, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 259
    .line 260
    if-eq v6, v7, :cond_8

    .line 261
    .line 262
    return-object v6

    .line 263
    :cond_8
    iget-boolean v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->keyFrameRequired:Z

    .line 264
    .line 265
    if-eqz v6, :cond_9

    .line 266
    .line 267
    iget-object v6, v0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 268
    .line 269
    sget-object v7, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 270
    .line 271
    if-eq v6, v7, :cond_9

    .line 272
    .line 273
    const-string v0, "SurfaceVideoDecoder"

    .line 274
    .line 275
    const-string v2, "decode() - key frame required first"

    .line 276
    .line 277
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 281
    .line 282
    return-object v0

    .line 283
    :cond_9
    :try_start_1
    iget-object v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 284
    .line 285
    const-wide/32 v7, 0x7a120

    .line 286
    .line 287
    .line 288
    invoke-interface {v6, v7, v8}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    .line 289
    .line 290
    .line 291
    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 292
    if-gez v10, :cond_a

    .line 293
    .line 294
    const-string v0, "decode() - no HW buffers available; decoder falling behind"

    .line 295
    .line 296
    const/16 v2, 0x34d6

    .line 297
    .line 298
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    iput-boolean v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 302
    .line 303
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 304
    .line 305
    .line 306
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 307
    .line 308
    return-object v0

    .line 309
    :cond_a
    :try_start_2
    iget-object v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 310
    .line 311
    invoke-interface {v6}, Lorg/hmwebrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    aget-object v6, v6, v10
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-ge v7, v2, :cond_b

    .line 322
    .line 323
    const-string v0, "decode() - HW buffer too small"

    .line 324
    .line 325
    const/16 v2, 0x34d8

    .line 326
    .line 327
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    iput-boolean v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 333
    .line 334
    .line 335
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 336
    .line 337
    return-object v0

    .line 338
    :cond_b
    iget-object v7, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 341
    .line 342
    .line 343
    iget-boolean v7, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isHisiDecoder:Z

    .line 344
    .line 345
    if-eqz v7, :cond_c

    .line 346
    .line 347
    sget-boolean v7, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 348
    .line 349
    if-nez v7, :cond_c

    .line 350
    .line 351
    const/16 v7, 0x12

    .line 352
    .line 353
    new-array v7, v7, [B

    .line 354
    .line 355
    fill-array-data v7, :array_0

    .line 356
    .line 357
    .line 358
    add-int/lit8 v2, v2, 0x12

    .line 359
    .line 360
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 361
    .line 362
    .line 363
    :cond_c
    move v12, v2

    .line 364
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 365
    .line 366
    iget-wide v6, v0, Lorg/hmwebrtc/EncodedImage;->captureTimeNs:J

    .line 367
    .line 368
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 369
    .line 370
    .line 371
    move-result-wide v6

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 373
    .line 374
    .line 375
    move-result-wide v8

    .line 376
    iget-object v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 377
    .line 378
    new-instance v11, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;

    .line 379
    .line 380
    iget v0, v0, Lorg/hmwebrtc/EncodedImage;->rotation:I

    .line 381
    .line 382
    move-object v13, v11

    .line 383
    move-wide v14, v8

    .line 384
    move/from16 v16, v0

    .line 385
    .line 386
    move-wide/from16 v17, v6

    .line 387
    .line 388
    invoke-direct/range {v13 .. v18}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;-><init>(JIJ)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v2, v11}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    :try_start_3
    iget-object v0, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 395
    .line 396
    const/4 v11, 0x0

    .line 397
    const/4 v15, 0x0

    .line 398
    move-wide v13, v8

    .line 399
    move-object v9, v0

    .line 400
    move/from16 p2, v5

    .line 401
    .line 402
    move-wide v4, v13

    .line 403
    move-wide v13, v6

    .line 404
    invoke-interface/range {v9 .. v15}, Lorg/hmwebrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 405
    .line 406
    .line 407
    iget-boolean v0, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->keyFrameRequired:Z

    .line 408
    .line 409
    if-eqz v0, :cond_d

    .line 410
    .line 411
    iput-boolean v3, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->keyFrameRequired:Z

    .line 412
    .line 413
    :cond_d
    sget-boolean v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableNoOutputFramesRequestKeyFrame:Z

    .line 414
    .line 415
    if-eqz v0, :cond_e

    .line 416
    .line 417
    iget-object v0, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 418
    .line 419
    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    sget v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->numOfNotDecodedFramesThreshold:I

    .line 424
    .line 425
    if-le v0, v2, :cond_e

    .line 426
    .line 427
    iget-wide v6, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastOutFramesTime:J

    .line 428
    .line 429
    sub-long v8, v4, v6

    .line 430
    .line 431
    sget v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->noOutputFramesIntervalMs:I

    .line 432
    .line 433
    int-to-long v6, v0

    .line 434
    cmp-long v0, v8, v6

    .line 435
    .line 436
    if-lez v0, :cond_e

    .line 437
    .line 438
    const-string v0, "SurfaceVideoDecoder"

    .line 439
    .line 440
    const-string v2, "MediaCodec decoder no output"

    .line 441
    .line 442
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v2, "no output after a long time,to request a key frame,this:"

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/16 v2, 0x3513

    .line 463
    .line 464
    invoke-static {v2, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iput-wide v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastOutFramesTime:J

    .line 468
    .line 469
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT_AFTER_LONG_TIME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 470
    .line 471
    return-object v0

    .line 472
    :cond_e
    if-eqz p2, :cond_f

    .line 473
    .line 474
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK_AFTER_RESTART:Lorg/hmwebrtc/VideoCodecStatus;

    .line 475
    .line 476
    return-object v0

    .line 477
    :cond_f
    sget-boolean v0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->needToRequireKeyFrame:Z

    .line 478
    .line 479
    if-eqz v0, :cond_10

    .line 480
    .line 481
    sput-boolean v3, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->needToRequireKeyFrame:Z

    .line 482
    .line 483
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->REQUEST_KEYFRAME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 484
    .line 485
    return-object v0

    .line 486
    :cond_10
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 487
    .line 488
    return-object v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string v4, "queueInputBuffer failed"

    .line 496
    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const/16 v3, 0x34d9

    .line 508
    .line 509
    invoke-direct {v1, v0, v3}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 513
    .line 514
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const/4 v2, 0x1

    .line 518
    iput-boolean v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 519
    .line 520
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 521
    .line 522
    .line 523
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 524
    .line 525
    return-object v0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string v4, "getInputBuffers failed"

    .line 533
    .line 534
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    const/16 v3, 0x34d7

    .line 545
    .line 546
    invoke-direct {v1, v0, v3}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 547
    .line 548
    .line 549
    const/4 v2, 0x1

    .line 550
    iput-boolean v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 551
    .line 552
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 553
    .line 554
    .line 555
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 556
    .line 557
    return-object v0

    .line 558
    :catch_2
    move-exception v0

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    const-string v4, "dequeueInputBuffer failed"

    .line 565
    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const/16 v3, 0x34d5

    .line 577
    .line 578
    invoke-direct {v1, v0, v3}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    const/4 v2, 0x1

    .line 582
    iput-boolean v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 583
    .line 584
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 585
    .line 586
    .line 587
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 588
    .line 589
    return-object v0

    .line 590
    :catchall_0
    move-exception v0

    .line 591
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 592
    throw v0

    .line 593
    :cond_11
    :goto_1
    const/4 v2, 0x1

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string v4, "decode uninitalized, codec: "

    .line 600
    .line 601
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    iget-object v4, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 605
    .line 606
    if-eqz v4, :cond_12

    .line 607
    .line 608
    const/4 v3, 0x1

    .line 609
    :cond_12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v2, ", callback: "

    .line 613
    .line 614
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    iget-object v2, v1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 618
    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    const/16 v2, 0x34d2

    .line 627
    .line 628
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 629
    .line 630
    .line 631
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/hmwebrtc/VideoCodecStatus;

    .line 632
    .line 633
    return-object v0

    .line 634
    nop

    .line 635
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1et
        0x48t
        0x53t
        0x50t
        0x49t
        0x43t
        0x45t
        0x4et
        0x44t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method protected deliverDecodedFrame()V
    .locals 14

    .line 1
    const-string v0, "SurfaceVideoDecoder"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->surface:Landroid/view/Surface;

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 15
    .line 16
    invoke-interface {v1}, Lorg/hmwebrtc/DirectSurfaceHelper;->getSurface()Landroid/view/Surface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 37
    .line 38
    const-wide/32 v5, 0x186a0

    .line 39
    .line 40
    .line 41
    invoke-interface {v4, v1, v5, v6}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, -0x2

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 49
    .line 50
    invoke-interface {v2}, Lorg/hmwebrtc/MediaCodecWrapper;->getOutputFormat()Landroid/media/MediaFormat;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {p0, v2}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "MediaCodec INFO_OUTPUT_FORMAT_CHANGED frame pts: "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    if-gez v4, :cond_2

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "dequeueOutputBuffer returned "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    iput-wide v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastOutFramesTime:J

    .line 108
    .line 109
    sget-boolean v5, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lossFlag:Z

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v7, 0x1

    .line 113
    if-ne v5, v7, :cond_5

    .line 114
    .line 115
    iget v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 116
    .line 117
    add-int/2addr v5, v7

    .line 118
    iput v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 119
    .line 120
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    .line 121
    .line 122
    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v8, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 126
    .line 127
    const-wide/16 v9, 0x3e8

    .line 128
    .line 129
    invoke-interface {v8, v5, v9, v10}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    :goto_1
    if-ltz v8, :cond_4

    .line 134
    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v12, "dropping Frame ===: "

    .line 141
    .line 142
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-static {v0, v11}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v11, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 156
    .line 157
    invoke-interface {v11}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    iget-object v11, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 161
    .line 162
    invoke-interface {v11, v4, v6}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 163
    .line 164
    .line 165
    iget v4, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 166
    .line 167
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 168
    .line 169
    iget v4, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 170
    .line 171
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 172
    .line 173
    iget-wide v11, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 174
    .line 175
    iput-wide v11, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 176
    .line 177
    iget v4, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 178
    .line 179
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 180
    .line 181
    iget v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 182
    .line 183
    add-int/2addr v4, v7

    .line 184
    iput v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 185
    .line 186
    iget v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLps:I

    .line 187
    .line 188
    add-int/2addr v4, v7

    .line 189
    iput v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLps:I

    .line 190
    .line 191
    iget-wide v11, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLossCount:J

    .line 192
    .line 193
    add-long/2addr v11, v2

    .line 194
    iput-wide v11, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLossCount:J

    .line 195
    .line 196
    cmp-long v4, v11, v2

    .line 197
    .line 198
    if-nez v4, :cond_3

    .line 199
    .line 200
    const-string v4, "DirectSurfaceVideoDecoder is lossing a frame firstly"

    .line 201
    .line 202
    const/16 v11, 0x34b9

    .line 203
    .line 204
    invoke-static {v11, v4}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    iget-object v4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 208
    .line 209
    invoke-interface {v4, v5, v9, v10}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    move v13, v8

    .line 214
    move v8, v4

    .line 215
    move v4, v13

    .line 216
    goto :goto_1

    .line 217
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v2

    .line 221
    iget-wide v11, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastSecond:J

    .line 222
    .line 223
    sub-long v11, v2, v11

    .line 224
    .line 225
    cmp-long v5, v11, v9

    .line 226
    .line 227
    if-lez v5, :cond_5

    .line 228
    .line 229
    iget v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLps:I

    .line 230
    .line 231
    int-to-double v8, v5

    .line 232
    iget v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 233
    .line 234
    int-to-double v10, v5

    .line 235
    div-double/2addr v8, v10

    .line 236
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    iput-object v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 241
    .line 242
    iput v6, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLps:I

    .line 243
    .line 244
    iput v6, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderFps:I

    .line 245
    .line 246
    iput-wide v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lastSecond:J

    .line 247
    .line 248
    :cond_5
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;

    .line 255
    .line 256
    if-eqz v2, :cond_7

    .line 257
    .line 258
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 259
    .line 260
    const-wide/16 v10, 0x0

    .line 261
    .line 262
    cmp-long v3, v8, v10

    .line 263
    .line 264
    if-gtz v3, :cond_6

    .line 265
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v5, "Changed pts from "

    .line 272
    .line 273
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 277
    .line 278
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v5, " to "

    .line 282
    .line 283
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-wide v8, v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 287
    .line 288
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-wide v8, v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 299
    .line 300
    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 301
    .line 302
    :cond_6
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 303
    .line 304
    iget-wide v10, v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 305
    .line 306
    cmp-long v3, v8, v10

    .line 307
    .line 308
    if-nez v3, :cond_7

    .line 309
    .line 310
    const/4 v3, 0x1

    .line 311
    goto :goto_2

    .line 312
    :cond_7
    const/4 v3, 0x0

    .line 313
    :goto_2
    if-nez v3, :cond_b

    .line 314
    .line 315
    invoke-static {}, Lorg/hmwebrtc/VideoFrame;->getFrameInfoMatchByPts()Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_b

    .line 320
    .line 321
    :cond_8
    :goto_3
    iget-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-lez v3, :cond_b

    .line 328
    .line 329
    iget-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 330
    .line 331
    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;

    .line 336
    .line 337
    if-eqz v3, :cond_8

    .line 338
    .line 339
    iget-wide v8, v3, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 340
    .line 341
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 342
    .line 343
    cmp-long v5, v8, v10

    .line 344
    .line 345
    if-gez v5, :cond_9

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_9
    cmp-long v5, v8, v10

    .line 349
    .line 350
    if-nez v5, :cond_a

    .line 351
    .line 352
    move-object v2, v3

    .line 353
    goto :goto_4

    .line 354
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v5, "New decoded frame pts less than queue item, cur pts: "

    .line 360
    .line 361
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 365
    .line 366
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    .line 378
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 380
    .line 381
    .line 382
    move-result-wide v5

    .line 383
    iget-wide v8, v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    .line 384
    .line 385
    sub-long/2addr v5, v8

    .line 386
    long-to-int v3, v5

    .line 387
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    iget v6, v2, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->rotation:I

    .line 392
    .line 393
    iget-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 394
    .line 395
    if-eqz v2, :cond_d

    .line 396
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 398
    .line 399
    .line 400
    move-result-wide v8

    .line 401
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 402
    .line 403
    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    check-cast v2, Lorg/hmwebrtc/SeiData;

    .line 408
    .line 409
    iget-object v5, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 410
    .line 411
    if-eqz v5, :cond_d

    .line 412
    .line 413
    if-eqz v2, :cond_d

    .line 414
    .line 415
    iput-wide v8, v2, Lorg/hmwebrtc/SeiData;->decodedTimestamp:J

    .line 416
    .line 417
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_c
    const-string v2, "frameInfo is null."

    .line 422
    .line 423
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const/4 v3, 0x0

    .line 427
    :cond_d
    :goto_5
    iput-boolean v7, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->hasDecodedFirstFrame:Z

    .line 428
    .line 429
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 430
    .line 431
    if-eqz v2, :cond_e

    .line 432
    .line 433
    invoke-virtual {v2}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getIFrameCallback()Lorg/hmwebrtc/listener/IFrameCallback;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    if-eqz v2, :cond_e

    .line 438
    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v7

    .line 443
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 444
    .line 445
    invoke-virtual {v2}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getIFrameCallback()Lorg/hmwebrtc/listener/IFrameCallback;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iget-wide v9, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->mFrameId:J

    .line 450
    .line 451
    invoke-interface {v2, v9, v10, v7, v8}, Lorg/hmwebrtc/listener/IFrameCallback;->onFrameDecode(JJ)V

    .line 452
    .line 453
    .line 454
    :cond_e
    invoke-direct {p0, v4, v1, v6, v3}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->deliverSurfaceFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    .line 456
    .line 457
    goto :goto_6

    .line 458
    :catch_1
    move-exception v1

    .line 459
    const-string v2, "deliverDecodedFrame failed"

    .line 460
    .line 461
    invoke-static {v0, v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .line 463
    .line 464
    :goto_6
    return-void
.end method

.method public getDecodedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getDecodedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isReportedError:Z

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "begin to init direct surface decoder,this:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",codec name:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v1, 0x34ae

    .line 39
    .line 40
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 44
    .line 45
    const-string p2, "SurfaceVideoDecoder"

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "initDecode with Direct Surface mode:"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->width:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "x"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->height:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget p2, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->width:I

    .line 80
    .line 81
    iget p1, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->height:I

    .line 82
    .line 83
    invoke-direct {p0, p2, p1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object p1

    .line 88
    :catch_0
    move-exception p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "initDecode Exception: "

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "throwExceptionMsg"

    .line 111
    .line 112
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isFallbackSoftDecoder:Z

    .line 117
    .line 118
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 119
    .line 120
    return-object p1
.end method

.method isH264codec()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "video/avc"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-wide v1, p1, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    .line 6
    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long v1, v1, v3

    .line 10
    .line 11
    new-instance p1, Lorg/hmwebrtc/VideoFrame;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->constBuffer:Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {p1, v3, v4, v1, v2}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    mul-double v1, v1, v3

    .line 28
    .line 29
    double-to-int v1, v1

    .line 30
    iget-wide v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->renderLossCount:J

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2, v3}, Lorg/hmwebrtc/VideoFrame;->setRenderLossInfo(IJ)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v1, p1, v0, v2}, Lorg/hmwebrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/hmwebrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "release:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SurfaceVideoDecoder"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "start to release the surface decoder:"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ",this:"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v2, 0x34b6

    .line 65
    .line 66
    invoke-static {v2, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 75
    .line 76
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 79
    .line 80
    .line 81
    iget-boolean v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->enableSeiDataReport:Z

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-direct {p0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->releaseSchedule()V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 93
    .line 94
    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "return from releasing the surface decoder:"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/16 v2, 0x34b7

    .line 119
    .line 120
    invoke-static {v2, v1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method
