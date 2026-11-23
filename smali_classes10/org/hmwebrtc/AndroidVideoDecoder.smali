.class public Lorg/hmwebrtc/AndroidVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoder;
.implements Lorg/hmwebrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;,
        Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;,
        Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final H264_SEI_CONTENT_START_OFFSET:I = 0x17

.field private static final H264_SEI_DATA_TOTAL_SIZE:I = 0x2c

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_CODEC_RENDER_MODE_SURFACETEXTURE:I = 0x1

.field private static final MEDIA_CODEC_RENDER_MODE_YUV:I = 0x0

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "AndroidVideoDecoder"

.field private static enableNoOutputFramesRequestKeyFrame:Z = false

.field public static isCloseDecoderLowLatency:Z = false

.field public static isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z = false

.field private static lossFlag:Z = true

.field private static mEnableTextureAcc:Z = false

.field private static volatile needToRequireKeyFrame:Z = false

.field private static noOutputFramesIntervalMs:I = 0x7d0

.field private static numOfNotDecodedFramesThreshold:I = 0x1e

.field public static rtcHwDecoderBufferMode:I = 0x0

.field public static useMediaCodecVideoDecoderLowLatency:Z = false

.field private static useSharedContextFlag:I = 0x1


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

.field private decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private final defaultSeiReportInterval:I

.field private final dimensionLock:Ljava/lang/Object;

.field private enableSeiDataReport:Z

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;",
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

.field private isHisiDecoder:Z

.field private isReportedError:Z

.field private isReportedErrorOfExtremelyWrongStrideOrSliceHeight:Z

.field private keyFrameRequired:Z

.field private lastOutFramesTime:J

.field private lastSecond:J

.field private lossRate:Ljava/lang/Double;

.field private mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

.field private mDecodeWaitUs:J

.field private mFrameId:J

.field private mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

.field private final mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

.field private outputThread:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private renderFps:I

.field private renderLossCount:J

.field private renderLps:I

.field private renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final renderedTextureMetadataLock:Ljava/lang/Object;

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

.field private final sharedContext:Lorg/hmwebrtc/EglBase$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

.field private surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/hmwebrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/hmwebrtc/VideoCodecMimeType;Ljava/lang/Integer;Lorg/hmwebrtc/EglBase$Context;)V
    .locals 4
    .param p5    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->defaultSeiReportInterval:I

    .line 20
    .line 21
    const-wide/16 v1, -0x1

    .line 22
    .line 23
    iput-wide v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastOutFramesTime:J

    .line 24
    .line 25
    invoke-direct {p0, p4}, Lorg/hmwebrtc/AndroidVideoDecoder;->isSupportedColorFormat(Ljava/lang/Integer;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "AndroidVideoDecoder"

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "ctor name: "

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " type: "

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, " color format: "

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, " context: "

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 78
    .line 79
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 88
    .line 89
    sget p1, Lorg/hmwebrtc/AndroidVideoDecoder;->useSharedContextFlag:I

    .line 90
    .line 91
    if-ne p1, v0, :cond_0

    .line 92
    .line 93
    iput-object p5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 98
    .line 99
    :goto_0
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string p2, "Set rtcHwDecoderBufferMode="

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sget p2, Lorg/hmwebrtc/AndroidVideoDecoder;->rtcHwDecoderBufferMode:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 130
    .line 131
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLps:I

    .line 132
    .line 133
    const-wide/16 p1, 0x0

    .line 134
    .line 135
    iput-wide p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastSecond:J

    .line 136
    .line 137
    const-wide/16 p1, 0x0

    .line 138
    .line 139
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p5, "unsupported colorformat: "

    .line 152
    .line 153
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p5, " codecName: "

    .line 160
    .line 161
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p2, " codecType: "

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string p3, "Unsupported color format: "

    .line 190
    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1
.end method

.method static synthetic access$000(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/SurfaceTextureAccelerator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/HmDataReportToSaasSdk;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/AndroidVideoDecoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lorg/hmwebrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseCodecOnOutputThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/hmwebrtc/AndroidVideoDecoder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/AndroidVideoDecoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;)Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/MediaCodecWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/ThreadUtils$ThreadChecker;)Lorg/hmwebrtc/ThreadUtils$ThreadChecker;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lorg/hmwebrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->createSwapBuffer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method private copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/hmwebrtc/VideoFrame$Buffer;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move/from16 v6, p4

    .line 8
    .line 9
    move/from16 v7, p5

    .line 10
    .line 11
    rem-int/lit8 v2, v3, 0x2

    .line 12
    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    add-int/lit8 v2, v6, 0x1

    .line 16
    .line 17
    div-int/lit8 v10, v2, 0x2

    .line 18
    .line 19
    rem-int/lit8 v11, v1, 0x2

    .line 20
    .line 21
    if-nez v11, :cond_0

    .line 22
    .line 23
    add-int/lit8 v2, v7, 0x1

    .line 24
    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    div-int/lit8 v2, v7, 0x2

    .line 29
    .line 30
    :goto_0
    move v12, v2

    .line 31
    div-int/lit8 v13, v3, 0x2

    .line 32
    .line 33
    mul-int v2, v3, v7

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    add-int/2addr v2, v4

    .line 37
    mul-int v5, v3, v1

    .line 38
    .line 39
    add-int/lit8 v14, v5, 0x0

    .line 40
    .line 41
    mul-int v5, v13, v12

    .line 42
    .line 43
    add-int v8, v14, v5

    .line 44
    .line 45
    mul-int v9, v13, v1

    .line 46
    .line 47
    div-int/lit8 v9, v9, 0x2

    .line 48
    .line 49
    add-int v15, v14, v9

    .line 50
    .line 51
    add-int v9, v15, v5

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->capacity()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-le v9, v5, :cond_1

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "error res---sliceHeight:"

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ",stride"

    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ",height"

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ",width"

    .line 89
    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ",capacity:"

    .line 97
    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->capacity()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ",vEnd:"

    .line 109
    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v4, "AndroidVideoDecoder"

    .line 121
    .line 122
    invoke-static {v4, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    move-object/from16 v5, p0

    .line 126
    .line 127
    invoke-virtual {v5, v6, v7}, Lorg/hmwebrtc/AndroidVideoDecoder;->allocateI420Buffer(II)Lorg/hmwebrtc/VideoFrame$I420Buffer;

    .line 128
    .line 129
    .line 130
    move-result-object v17

    .line 131
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getStrideY()I

    .line 147
    .line 148
    .line 149
    move-result v16

    .line 150
    move-object/from16 v1, p0

    .line 151
    .line 152
    move/from16 v3, p2

    .line 153
    .line 154
    move/from16 v5, v16

    .line 155
    .line 156
    move/from16 v6, p4

    .line 157
    .line 158
    move/from16 v7, p5

    .line 159
    .line 160
    invoke-virtual/range {v1 .. v7}, Lorg/hmwebrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getStrideU()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    move-object/from16 v3, p0

    .line 182
    .line 183
    move v5, v13

    .line 184
    move v8, v10

    .line 185
    move v1, v9

    .line 186
    move v9, v12

    .line 187
    invoke-virtual/range {v3 .. v9}, Lorg/hmwebrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x1

    .line 191
    if-ne v11, v2, :cond_2

    .line 192
    .line 193
    add-int/lit8 v3, v12, -0x1

    .line 194
    .line 195
    mul-int v3, v3, v13

    .line 196
    .line 197
    add-int/2addr v14, v3

    .line 198
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    .line 200
    .line 201
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getStrideU()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    mul-int v4, v4, v12

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getStrideV()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    move-object/from16 v3, p0

    .line 236
    .line 237
    move v5, v13

    .line 238
    move v8, v10

    .line 239
    move v9, v12

    .line 240
    invoke-virtual/range {v3 .. v9}, Lorg/hmwebrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 241
    .line 242
    .line 243
    if-ne v11, v2, :cond_3

    .line 244
    .line 245
    add-int/lit8 v1, v12, -0x1

    .line 246
    .line 247
    mul-int v13, v13, v1

    .line 248
    .line 249
    add-int/2addr v15, v13

    .line 250
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    .line 252
    .line 253
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-interface/range {v17 .. v17}, Lorg/hmwebrtc/VideoFrame$I420Buffer;->getStrideV()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    mul-int v2, v2, v12

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 267
    .line 268
    .line 269
    :cond_3
    return-object v17

    .line 270
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 271
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v2, "Stride is not divisible by two: "

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    throw v0
.end method

.method private copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/hmwebrtc/VideoFrame$Buffer;
    .locals 8

    .line 1
    new-instance v7, Lorg/hmwebrtc/NV12Buffer;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move v1, p4

    .line 6
    move v2, p5

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/NV12Buffer;-><init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lorg/hmwebrtc/NV12Buffer;->toI420()Lorg/hmwebrtc/VideoFrame$I420Buffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecoder$4;

    .line 2
    .line 3
    const-string v1, "AndroidVideoDecoder.outputThread"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/AndroidVideoDecoder$4;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private createSwapBuffer()V
    .locals 3

    .line 1
    const-wide/32 v0, 0x186a0

    .line 2
    .line 3
    .line 4
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mDecodeWaitUs:J

    .line 5
    .line 6
    invoke-static {}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->HasInjectConfgFile()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Lorg/hmwebrtc/AndroidVideoDecoder;->rtcHwDecoderBufferMode:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;-><init>(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->isEnable()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 36
    .line 37
    new-instance v2, Lorg/hmwebrtc/AndroidVideoDecoder$3;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lorg/hmwebrtc/AndroidVideoDecoder$3;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->getConfig()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->getMode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->createInput(I)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method private deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 5
    .line 6
    iget v6, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 7
    .line 8
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 9
    .line 10
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 14
    .line 15
    mul-int v3, v5, v6

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x3

    .line 18
    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 20
    .line 21
    if-ge v0, v3, :cond_0

    .line 22
    .line 23
    const-string p1, "AndroidVideoDecoder"

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p4, "Insufficient output buffer size: "

    .line 31
    .line 32
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    mul-int v3, v1, v2

    .line 49
    .line 50
    mul-int/lit8 v3, v3, 0x3

    .line 51
    .line 52
    div-int/lit8 v3, v3, 0x2

    .line 53
    .line 54
    if-ge v0, v3, :cond_6

    .line 55
    .line 56
    if-ne v2, v6, :cond_1

    .line 57
    .line 58
    if-le v1, v5, :cond_1

    .line 59
    .line 60
    mul-int/lit8 v0, v0, 0x2

    .line 61
    .line 62
    mul-int/lit8 v1, v6, 0x3

    .line 63
    .line 64
    div-int/2addr v0, v1

    .line 65
    move v3, v0

    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    if-ne v1, v5, :cond_2

    .line 69
    .line 70
    if-le v2, v6, :cond_2

    .line 71
    .line 72
    const-string v0, "AndroidVideoDecoder"

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "report an incorrect sliceHeight:"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ",with stride/width:"

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ",height:"

    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 111
    .line 112
    mul-int/lit8 v0, v0, 0x2

    .line 113
    .line 114
    mul-int/lit8 v2, v5, 0x3

    .line 115
    .line 116
    div-int/2addr v0, v2

    .line 117
    const-string v2, "AndroidVideoDecoder"

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "the repaired sliceHeight:"

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move v4, v0

    .line 140
    move v3, v1

    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_2
    if-le v2, v6, :cond_5

    .line 144
    .line 145
    if-le v1, v5, :cond_5

    .line 146
    .line 147
    const-string v0, "AndroidVideoDecoder"

    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v4, "report an incorrect sliceHeight: "

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v4, " or stide: "

    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v4, ", with width:"

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v4, ", height:"

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v4, " and size: "

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 204
    .line 205
    mul-int/lit8 v3, v0, 0x2

    .line 206
    .line 207
    mul-int/lit8 v4, v2, 0x3

    .line 208
    .line 209
    div-int/2addr v3, v4

    .line 210
    if-le v5, v3, :cond_3

    .line 211
    .line 212
    mul-int/lit8 v2, v0, 0x2

    .line 213
    .line 214
    mul-int/lit8 v3, v1, 0x3

    .line 215
    .line 216
    div-int/2addr v2, v3

    .line 217
    if-le v6, v2, :cond_4

    .line 218
    .line 219
    mul-int/lit8 v0, v0, 0x2

    .line 220
    .line 221
    mul-int/lit8 v1, v5, 0x3

    .line 222
    .line 223
    div-int v2, v0, v1

    .line 224
    .line 225
    move v1, v5

    .line 226
    goto :goto_0

    .line 227
    :cond_3
    move v1, v3

    .line 228
    :cond_4
    :goto_0
    const-string v0, "AndroidVideoDecoder"

    .line 229
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v4, "the repaired stride: "

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v4, ", sliceHeight:"

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_5
    iget-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isReportedErrorOfExtremelyWrongStrideOrSliceHeight:Z

    .line 260
    .line 261
    if-nez v0, :cond_6

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isReportedErrorOfExtremelyWrongStrideOrSliceHeight:Z

    .line 265
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v3, "report an extremely wrong res---sliceHeight: "

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v3, ", stride: "

    .line 280
    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v3, ", height: "

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v3, ", width: "

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, ", capacity:"

    .line 304
    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const/16 v3, 0x34aa

    .line 318
    .line 319
    invoke-static {v3, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v3, "AndroidVideoDecoder"

    .line 323
    .line 324
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_6
    :goto_1
    move v3, v1

    .line 328
    :goto_2
    move v4, v2

    .line 329
    :goto_3
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 330
    .line 331
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    aget-object v0, v0, p1

    .line 336
    .line 337
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    .line 341
    .line 342
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 343
    .line 344
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 345
    .line 346
    add-int/2addr v1, v2

    .line 347
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 355
    .line 356
    const/16 v1, 0x13

    .line 357
    .line 358
    if-ne v0, v1, :cond_7

    .line 359
    .line 360
    move-object v1, p0

    .line 361
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;->copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    goto :goto_4

    .line 366
    :cond_7
    move-object v1, p0

    .line 367
    invoke-direct/range {v1 .. v6}, Lorg/hmwebrtc/AndroidVideoDecoder;->copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_4
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 372
    .line 373
    const/4 v2, 0x0

    .line 374
    invoke-interface {v1, p1, v2}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 375
    .line 376
    .line 377
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 378
    .line 379
    const-wide/16 v1, 0x3e8

    .line 380
    .line 381
    mul-long p1, p1, v1

    .line 382
    .line 383
    new-instance v1, Lorg/hmwebrtc/VideoFrame;

    .line 384
    .line 385
    invoke-direct {v1, v0, p3, p1, p2}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 386
    .line 387
    .line 388
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 391
    .line 392
    .line 393
    move-result-wide p1

    .line 394
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 395
    .line 396
    mul-double p1, p1, v2

    .line 397
    .line 398
    double-to-int p1, p1

    .line 399
    iget-wide p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLossCount:J

    .line 400
    .line 401
    invoke-virtual {v1, p1, p2, p3}, Lorg/hmwebrtc/VideoFrame;->setRenderLossInfo(IJ)V

    .line 402
    .line 403
    .line 404
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 405
    .line 406
    const/4 p2, 0x0

    .line 407
    invoke-interface {p1, v1, p4, p2}, Lorg/hmwebrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/hmwebrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :catchall_0
    move-exception p1

    .line 415
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    throw p1
.end method

.method private deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 5
    .line 6
    iget v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->getInput()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 18
    .line 19
    move v2, p1

    .line 20
    move v5, p3

    .line 21
    move-object v8, p4

    .line 22
    invoke-interface/range {v1 .. v8}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;->onDecodedFrame(IIIIJLjava/lang/Integer;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mDecodeWaitUs:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-interface {p2, p1, p3}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 45
    .line 46
    invoke-virtual {v0, v3, v4}, Lorg/hmwebrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 50
    .line 51
    invoke-virtual {v0, p3}, Lorg/hmwebrtc/SurfaceTextureHelper;->setFrameRotation(I)V

    .line 52
    .line 53
    .line 54
    new-instance p3, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 55
    .line 56
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 57
    .line 58
    invoke-direct {p3, v2, v3, p4}, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 62
    .line 63
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 64
    .line 65
    const/4 p3, 0x1

    .line 66
    invoke-interface {p2, p1, p3}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    :goto_0
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    throw p1
.end method

.method private initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 7

    .line 1
    const-string v0, "OMX.HISI.VIDEO."

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecIsInit:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastOutFramesTime:J

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
    iget-object v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

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
    iget-object v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

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
    const-string v3, "AndroidVideoDecoder"

    .line 63
    .line 64
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

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
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 77
    .line 78
    .line 79
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 83
    .line 84
    iput p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 85
    .line 86
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 87
    .line 88
    iput p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    iput-boolean v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    .line 92
    .line 93
    iput-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 96
    .line 97
    const-wide/16 v4, 0x0

    .line 98
    .line 99
    iput-wide v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mFrameId:J

    .line 100
    .line 101
    :try_start_0
    iget-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lorg/hmwebrtc/MediaCodecWrapperFactory;

    .line 102
    .line 103
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v4, v5}, Lorg/hmwebrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lorg/hmwebrtc/MediaCodecWrapper;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iput-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9

    .line 110
    .line 111
    const/16 v4, 0x34d1

    .line 112
    .line 113
    :try_start_1
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 114
    .line 115
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 124
    .line 125
    if-nez p2, :cond_1

    .line 126
    .line 127
    const-string p2, "color-format"

    .line 128
    .line 129
    iget v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 130
    .line 131
    invoke-virtual {p1, p2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    const/4 v5, -0x1

    .line 149
    if-eq p2, v5, :cond_2

    .line 150
    .line 151
    iput-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isHisiDecoder:Z

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    iput-boolean v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isHisiDecoder:Z

    .line 155
    .line 156
    :goto_0
    sget-boolean p2, Lorg/hmwebrtc/AndroidVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 157
    .line 158
    if-nez p2, :cond_8

    .line 159
    .line 160
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const-string v6, "OMX.MTK.VIDEO."

    .line 171
    .line 172
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-eq p2, v5, :cond_3

    .line 177
    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, " set mtk lowlatency."

    .line 189
    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string p2, "vdec-lowlatency"

    .line 201
    .line 202
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_3
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    const-string v6, "OMX.QCOM.VIDEO."

    .line 218
    .line 219
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eq p2, v5, :cond_4

    .line 224
    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v0, " set qcom lowlatency."

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string p2, "vendor.qti-ext-low-latency.enable"

    .line 248
    .line 249
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 254
    .line 255
    const/16 v6, 0x1d

    .line 256
    .line 257
    if-lt p2, v6, :cond_5

    .line 258
    .line 259
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-eq p2, v5, :cond_5

    .line 274
    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v0, " set hisi lowlatency."

    .line 286
    .line 287
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string p2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    .line 298
    .line 299
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    const-string p2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    .line 303
    .line 304
    invoke-virtual {p1, p2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_5
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    const-string v0, "OMX.AMLOGIC."

    .line 319
    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-ne p2, v5, :cond_6

    .line 325
    .line 326
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    const-string v0, "C2.AMLOGIC."

    .line 337
    .line 338
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    if-eq p2, v5, :cond_7

    .line 343
    .line 344
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v0, " set amlogic lowlatency."

    .line 355
    .line 356
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string p2, "vendor.low-latency.enable"

    .line 367
    .line 368
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 369
    .line 370
    .line 371
    :cond_7
    :goto_1
    sget-boolean p2, Lorg/hmwebrtc/AndroidVideoDecoder;->useMediaCodecVideoDecoderLowLatency:Z

    .line 372
    .line 373
    if-eqz p2, :cond_8

    .line 374
    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v0, " set lowlatency for common."

    .line 386
    .line 387
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string p2, "low-latency"

    .line 398
    .line 399
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 400
    .line 401
    .line 402
    :cond_8
    iget-boolean p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isHisiDecoder:Z

    .line 403
    .line 404
    const/4 v0, 0x0

    .line 405
    if-nez p2, :cond_9

    .line 406
    .line 407
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 408
    .line 409
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 410
    .line 411
    invoke-interface {p2, p1, v5, v0, v2}, Lorg/hmwebrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_6

    .line 412
    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_9
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v5, "initDecode hisi with configure isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = "

    .line 421
    .line 422
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    sget-boolean v5, Lorg/hmwebrtc/AndroidVideoDecoder;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 426
    .line 427
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-static {v3, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 438
    .line 439
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 440
    .line 441
    const/4 v6, 0x2

    .line 442
    invoke-interface {p2, p1, v5, v0, v6}, Lorg/hmwebrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 443
    .line 444
    .line 445
    goto :goto_3

    .line 446
    :catch_0
    move-exception p2

    .line 447
    goto :goto_2

    .line 448
    :catch_1
    move-exception p2

    .line 449
    goto :goto_2

    .line 450
    :catch_2
    move-exception p2

    .line 451
    :goto_2
    :try_start_3
    instance-of v5, p2, Ljava/lang/IllegalArgumentException;

    .line 452
    .line 453
    if-nez v5, :cond_f

    .line 454
    .line 455
    instance-of v5, p2, Landroid/media/MediaCodec$CryptoException;

    .line 456
    .line 457
    if-nez v5, :cond_f

    .line 458
    .line 459
    sget-boolean v5, Lorg/hmwebrtc/AndroidVideoDecoder;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 460
    .line 461
    if-eqz v5, :cond_a

    .line 462
    .line 463
    goto/16 :goto_5

    .line 464
    .line 465
    :cond_a
    const-string v5, "initDecode failed as unsuitable configure flag2, try again with reversed flag0."

    .line 466
    .line 467
    invoke-static {v3, v5}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_6

    .line 468
    .line 469
    .line 470
    :try_start_4
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 471
    .line 472
    iget-object v6, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 473
    .line 474
    invoke-interface {v5, p1, v6, v0, v2}, Lorg/hmwebrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_3

    .line 475
    .line 476
    .line 477
    :goto_3
    :try_start_5
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 478
    .line 479
    invoke-interface {p1}, Lorg/hmwebrtc/MediaCodecWrapper;->start()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_6

    .line 480
    .line 481
    .line 482
    iput-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->running:Z

    .line 483
    .line 484
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 489
    .line 490
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getInstance()Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 498
    .line 499
    if-eqz p1, :cond_c

    .line 500
    .line 501
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->isH264codec()Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 506
    .line 507
    iget-boolean v0, p2, Lorg/hmwebrtc/HmDataReportToSaasSdk;->needToReportSeiData:Z

    .line 508
    .line 509
    if-eqz v0, :cond_b

    .line 510
    .line 511
    if-eqz p1, :cond_b

    .line 512
    .line 513
    const/4 v2, 0x1

    .line 514
    :cond_b
    iput-boolean v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 515
    .line 516
    iget p1, p2, Lorg/hmwebrtc/HmDataReportToSaasSdk;->sampleInterval:I

    .line 517
    .line 518
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiReportInterval:I

    .line 519
    .line 520
    :cond_c
    iget-boolean p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 521
    .line 522
    if-eqz p1, :cond_e

    .line 523
    .line 524
    new-instance p1, Ljava/util/ArrayList;

    .line 525
    .line 526
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .line 528
    .line 529
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 530
    .line 531
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 532
    .line 533
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 534
    .line 535
    .line 536
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 537
    .line 538
    iget p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiReportInterval:I

    .line 539
    .line 540
    if-gtz p1, :cond_d

    .line 541
    .line 542
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiReportInterval:I

    .line 543
    .line 544
    :cond_d
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->CreateSeiDataReportThread()V

    .line 545
    .line 546
    .line 547
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    const-string p2, "init android video decoder successfully,this:"

    .line 553
    .line 554
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string p2, ",codec name:"

    .line 561
    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    const/16 p2, 0x34db

    .line 575
    .line 576
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    const-string p1, "initDecodeInternal done"

    .line 580
    .line 581
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 585
    .line 586
    return-object p1

    .line 587
    :catch_3
    move-exception p1

    .line 588
    goto :goto_4

    .line 589
    :catch_4
    move-exception p1

    .line 590
    goto :goto_4

    .line 591
    :catch_5
    move-exception p1

    .line 592
    :goto_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v1, "initDecode configure failed with flag0"

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    invoke-direct {p0, p1, v4}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    const-string p1, "initDecode failed with flag0"

    .line 617
    .line 618
    invoke-static {v3, p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    .line 620
    .line 621
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseWithCodec()V

    .line 622
    .line 623
    .line 624
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 625
    .line 626
    return-object p1

    .line 627
    :cond_f
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    const-string v0, "initDecode configure failed with flag2"

    .line 633
    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    invoke-direct {p0, p1, v4}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 649
    .line 650
    .line 651
    const-string p1, "initDecode failed with flag2"

    .line 652
    .line 653
    invoke-static {v3, p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    .line 655
    .line 656
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseWithCodec()V

    .line 657
    .line 658
    .line 659
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_6

    .line 660
    .line 661
    return-object p1

    .line 662
    :catch_6
    move-exception p1

    .line 663
    goto :goto_6

    .line 664
    :catch_7
    move-exception p1

    .line 665
    goto :goto_6

    .line 666
    :catch_8
    move-exception p1

    .line 667
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    const-string v0, "initDecode failed 3"

    .line 673
    .line 674
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p2

    .line 688
    invoke-direct {p0, p2, v4}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 689
    .line 690
    .line 691
    const-string p2, "initDecode failed3"

    .line 692
    .line 693
    invoke-static {v3, p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .line 695
    .line 696
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseWithCodec()V

    .line 697
    .line 698
    .line 699
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 700
    .line 701
    return-object p1

    .line 702
    :catch_9
    move-exception p1

    .line 703
    goto :goto_7

    .line 704
    :catch_a
    move-exception p1

    .line 705
    goto :goto_7

    .line 706
    :catch_b
    move-exception p1

    .line 707
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .line 711
    .line 712
    const-string v0, "Cannot create media decoder "

    .line 713
    .line 714
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    const/16 p2, 0x34d0

    .line 734
    .line 735
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 736
    .line 737
    .line 738
    new-instance p1, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 747
    .line 748
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 759
    .line 760
    .line 761
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 762
    .line 763
    return-object p1
.end method

.method private isSupportedColorFormat(Ljava/lang/Integer;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lorg/hmwebrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_2

    .line 10
    .line 11
    aget v4, v1, v3

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-ne v4, v5, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v0
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "AndroidVideoDecoder"

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
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v2

    .line 110
    :try_start_0
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 111
    .line 112
    if-ne v3, v0, :cond_1

    .line 113
    .line 114
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 115
    .line 116
    if-eq v3, v1, :cond_5

    .line 117
    .line 118
    :cond_1
    iget-boolean v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    .line 119
    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "Unexpected size change. Configured "

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, "*"

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v4, ". New "

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, "*"

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    monitor-exit v2

    .line 176
    return-void

    .line 177
    :cond_2
    if-gtz v0, :cond_3

    .line 178
    .line 179
    const-string p1, "AndroidVideoDecoder"

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v3, "Unexpected format width. Configured "

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v3, ". New "

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, ". skip it"

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    monitor-exit v2

    .line 217
    return-void

    .line 218
    :cond_3
    if-gtz v1, :cond_4

    .line 219
    .line 220
    const-string p1, "AndroidVideoDecoder"

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v3, "Unexpected format height. Configured "

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v3, ". New "

    .line 238
    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ". skip it"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    monitor-exit v2

    .line 258
    return-void

    .line 259
    :cond_4
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 260
    .line 261
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 262
    .line 263
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 265
    .line 266
    if-nez v0, :cond_6

    .line 267
    .line 268
    const-string v0, "color-format"

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_6

    .line 275
    .line 276
    const-string v0, "color-format"

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 283
    .line 284
    const-string v0, "AndroidVideoDecoder"

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v2, "Color: 0x"

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 297
    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 313
    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->isSupportedColorFormat(Ljava/lang/Integer;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_6

    .line 323
    .line 324
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v1, "Unsupported color format: "

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->colorFormat:I

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_6
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 353
    .line 354
    monitor-enter v0

    .line 355
    :try_start_1
    const-string v1, "stride"

    .line 356
    .line 357
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_7

    .line 362
    .line 363
    const-string v1, "stride"

    .line 364
    .line 365
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 370
    .line 371
    :cond_7
    const-string v1, "slice-height"

    .line 372
    .line 373
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_8

    .line 378
    .line 379
    const-string v1, "slice-height"

    .line 380
    .line 381
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 386
    .line 387
    :cond_8
    const-string p1, "AndroidVideoDecoder"

    .line 388
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v2, "Frame stride and slice height: "

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v2, " x "

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 422
    .line 423
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 424
    .line 425
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->stride:I

    .line 430
    .line 431
    iget p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 432
    .line 433
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 434
    .line 435
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 440
    .line 441
    monitor-exit v0

    .line 442
    return-void

    .line 443
    :catchall_0
    move-exception p1

    .line 444
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    throw p1

    .line 446
    :catchall_1
    move-exception p1

    .line 447
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    throw p1
.end method

.method private reinitDecode(II)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;

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
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Releasing MediaCodec on output thread"

    .line 7
    .line 8
    const-string v1, "AndroidVideoDecoder"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

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
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

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
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 38
    .line 39
    :goto_1
    iget-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseSchedule()V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v0, "Release on output thread done"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecIsInit:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->running:Z

    .line 5
    .line 6
    const-string v2, "AndroidVideoDecoder"

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
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->running:Z

    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 22
    .line 23
    const-wide/16 v3, 0x1388

    .line 24
    .line 25
    invoke-static {v0, v3, v4}, Lorg/hmwebrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "Media decoder release timeout"

    .line 32
    .line 33
    new-instance v3, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 44
    .line 45
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-string v0, "Media decoder release error"

    .line 53
    .line 54
    new-instance v3, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    iget-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 65
    .line 66
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 69
    .line 70
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 74
    .line 75
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 76
    .line 77
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 78
    .line 79
    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 82
    .line 83
    iput-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 84
    .line 85
    throw v0
.end method

.method private releaseSchedule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->future:Ljava/util/concurrent/ScheduledFuture;

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
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

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
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private releaseWithCodec()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/hmwebrtc/MediaCodecWrapper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "AndroidVideoDecoder"

    .line 9
    .line 10
    const-string v2, "Media decoder release failed in initDecodeInternal"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 20
    .line 21
    return-void
.end method

.method private reportErrorToHaimaCountly(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isReportedError:Z

    .line 2
    .line 3
    const-string v1, "AndroidVideoDecoder"

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
    iget-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecIsInit:Z

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
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isReportedError:Z

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
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

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
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

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
    sget-boolean v0, Lorg/hmwebrtc/AndroidVideoDecoder;->needToRequireKeyFrame:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "AndroidVideoDecoder"

    .line 7
    .line 8
    const-string v1, "requesting key frame"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lorg/hmwebrtc/AndroidVideoDecoder;->needToRequireKeyFrame:Z

    .line 15
    .line 16
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
    const-string v1, "AndroidVideoDecoder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lossFlag:Z

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "AndroidVideoDecoder lossing frame enable:"

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
    const-string v1, "AndroidVideoDecoder"

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
    sput-boolean p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableNoOutputFramesRequestKeyFrame:Z

    .line 64
    .line 65
    sput p1, Lorg/hmwebrtc/AndroidVideoDecoder;->noOutputFramesIntervalMs:I

    .line 66
    .line 67
    sput p2, Lorg/hmwebrtc/AndroidVideoDecoder;->numOfNotDecodedFramesThreshold:I

    .line 68
    .line 69
    return-void
.end method

.method public static setUseSharedContextFlag(I)V
    .locals 3

    .line 1
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->enable:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, v0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->mode:I

    .line 11
    .line 12
    sput v1, Lorg/hmwebrtc/AndroidVideoDecoder;->useSharedContextFlag:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sput p0, Lorg/hmwebrtc/AndroidVideoDecoder;->useSharedContextFlag:I

    .line 16
    .line 17
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "HMConf Set useSharedContextFlg expect:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ",real:"

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget p0, Lorg/hmwebrtc/AndroidVideoDecoder;->useSharedContextFlag:I

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "AndroidVideoDecoder"

    .line 45
    .line 46
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p0, v0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->enable:Z

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    sget v1, Lorg/hmwebrtc/AndroidVideoDecoder;->useSharedContextFlag:I

    .line 55
    .line 56
    if-ne p0, v1, :cond_1

    .line 57
    .line 58
    iget-boolean p0, v0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->texAcc:Z

    .line 59
    .line 60
    sput-boolean p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mEnableTextureAcc:Z

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->running:Z

    .line 8
    .line 9
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

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
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    new-instance v1, Lorg/hmwebrtc/AndroidVideoDecoder$2;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/hmwebrtc/AndroidVideoDecoder$2;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x64

    .line 13
    .line 14
    iget v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiReportInterval:I

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
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    return-void
.end method

.method protected allocateI420Buffer(II)Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/hmwebrtc/JavaI420Buffer;->allocate(II)Lorg/hmwebrtc/JavaI420Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lorg/hmwebrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic createNativeVideoDecoder()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/p0;->a(Lorg/hmwebrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createSurfaceTextureHelper()Lorg/hmwebrtc/SurfaceTextureHelper;
    .locals 2

    .line 1
    const-string v0, "decoder-texture-thread"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_10

    .line 15
    .line 16
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v0, "decode() - no input data"

    .line 27
    .line 28
    const/16 v2, 0x34d3

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    iget-boolean v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    iget-object v5, v0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 41
    .line 42
    sget-object v6, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameDelta:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 43
    .line 44
    if-ne v5, v6, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/16 v5, 0x2c

    .line 51
    .line 52
    if-lt v2, v5, :cond_3

    .line 53
    .line 54
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    const/16 v6, 0x17

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    shr-int/2addr v6, v4

    .line 77
    add-int/lit16 v8, v6, -0xff

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    shr-long v9, v6, v4

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    shr-long v11, v6, v4

    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v13

    .line 95
    new-instance v2, Lorg/hmwebrtc/SeiData;

    .line 96
    .line 97
    const-wide/16 v15, 0x0

    .line 98
    .line 99
    move-object v7, v2

    .line 100
    invoke-direct/range {v7 .. v16}, Lorg/hmwebrtc/SeiData;-><init>(IJJJJ)V

    .line 101
    .line 102
    .line 103
    iget-object v6, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 104
    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    invoke-interface {v6, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v2, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_4

    .line 131
    .line 132
    const-string v0, "decode() - input buffer empty"

    .line 133
    .line 134
    const/16 v2, 0x34d4

    .line 135
    .line 136
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_4
    iget-object v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v5

    .line 145
    :try_start_0
    iget v6, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 146
    .line 147
    iget v7, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 148
    .line 149
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget v5, v0, Lorg/hmwebrtc/EncodedImage;->encodedWidth:I

    .line 151
    .line 152
    iget v8, v0, Lorg/hmwebrtc/EncodedImage;->encodedHeight:I

    .line 153
    .line 154
    mul-int v9, v5, v8

    .line 155
    .line 156
    if-lez v9, :cond_6

    .line 157
    .line 158
    if-ne v5, v6, :cond_5

    .line 159
    .line 160
    if-eq v8, v7, :cond_6

    .line 161
    .line 162
    :cond_5
    invoke-direct {v1, v5, v8}, Lorg/hmwebrtc/AndroidVideoDecoder;->reinitDecode(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v6, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 167
    .line 168
    if-eq v5, v6, :cond_7

    .line 169
    .line 170
    return-object v5

    .line 171
    :cond_6
    const/4 v4, 0x0

    .line 172
    :cond_7
    iget-boolean v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 173
    .line 174
    if-eqz v5, :cond_8

    .line 175
    .line 176
    iget-object v5, v0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 177
    .line 178
    sget-object v6, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 179
    .line 180
    if-eq v5, v6, :cond_8

    .line 181
    .line 182
    const-string v0, "AndroidVideoDecoder"

    .line 183
    .line 184
    const-string v2, "decode() - key frame required first"

    .line 185
    .line 186
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_8
    :try_start_1
    iget-object v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 193
    .line 194
    const-wide/32 v6, 0x7a120

    .line 195
    .line 196
    .line 197
    invoke-interface {v5, v6, v7}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    .line 198
    .line 199
    .line 200
    move-result v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 201
    if-gez v9, :cond_9

    .line 202
    .line 203
    const-string v0, "decode() - no HW buffers available; decoder falling behind"

    .line 204
    .line 205
    const/16 v2, 0x34d6

    .line 206
    .line 207
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_9
    :try_start_2
    iget-object v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 214
    .line 215
    invoke-interface {v5}, Lorg/hmwebrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    aget-object v5, v5, v9
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-ge v6, v2, :cond_a

    .line 226
    .line 227
    const-string v0, "decode() - HW buffer too small"

    .line 228
    .line 229
    const/16 v2, 0x34d8

    .line 230
    .line 231
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_a
    iget-object v6, v0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 240
    .line 241
    .line 242
    iget-boolean v6, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->isHisiDecoder:Z

    .line 243
    .line 244
    if-eqz v6, :cond_b

    .line 245
    .line 246
    sget-boolean v6, Lorg/hmwebrtc/AndroidVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 247
    .line 248
    if-nez v6, :cond_b

    .line 249
    .line 250
    const/16 v6, 0x12

    .line 251
    .line 252
    new-array v6, v6, [B

    .line 253
    .line 254
    fill-array-data v6, :array_0

    .line 255
    .line 256
    .line 257
    add-int/lit8 v2, v2, 0x12

    .line 258
    .line 259
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 260
    .line 261
    .line 262
    :cond_b
    move v11, v2

    .line 263
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    .line 265
    iget-wide v5, v0, Lorg/hmwebrtc/EncodedImage;->captureTimeNs:J

    .line 266
    .line 267
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 268
    .line 269
    .line 270
    move-result-wide v5

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 272
    .line 273
    .line 274
    move-result-wide v7

    .line 275
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 276
    .line 277
    new-instance v10, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;

    .line 278
    .line 279
    iget v15, v0, Lorg/hmwebrtc/EncodedImage;->rotation:I

    .line 280
    .line 281
    move-object v12, v10

    .line 282
    move-wide v13, v7

    .line 283
    move-wide/from16 v16, v5

    .line 284
    .line 285
    invoke-direct/range {v12 .. v17}, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;-><init>(JIJ)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v2, v10}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :try_start_3
    iget-object v0, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 292
    .line 293
    const/4 v10, 0x0

    .line 294
    const/4 v14, 0x0

    .line 295
    move-wide v12, v7

    .line 296
    move-object v8, v0

    .line 297
    move-wide/from16 v18, v12

    .line 298
    .line 299
    move-wide v12, v5

    .line 300
    invoke-interface/range {v8 .. v14}, Lorg/hmwebrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 301
    .line 302
    .line 303
    iget-boolean v0, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 304
    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    iput-boolean v3, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 308
    .line 309
    :cond_c
    sget-boolean v0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableNoOutputFramesRequestKeyFrame:Z

    .line 310
    .line 311
    if-eqz v0, :cond_d

    .line 312
    .line 313
    iget-object v0, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 314
    .line 315
    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    sget v2, Lorg/hmwebrtc/AndroidVideoDecoder;->numOfNotDecodedFramesThreshold:I

    .line 320
    .line 321
    if-le v0, v2, :cond_d

    .line 322
    .line 323
    iget-wide v5, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->lastOutFramesTime:J

    .line 324
    .line 325
    move-wide/from16 v7, v18

    .line 326
    .line 327
    sub-long v5, v7, v5

    .line 328
    .line 329
    sget v0, Lorg/hmwebrtc/AndroidVideoDecoder;->noOutputFramesIntervalMs:I

    .line 330
    .line 331
    int-to-long v9, v0

    .line 332
    cmp-long v0, v5, v9

    .line 333
    .line 334
    if-lez v0, :cond_d

    .line 335
    .line 336
    const-string v0, "AndroidVideoDecoder"

    .line 337
    .line 338
    const-string v2, "MediaCodec decoder no output"

    .line 339
    .line 340
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v2, "no output after a long time,to request a key frame,this:"

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/16 v2, 0x3513

    .line 361
    .line 362
    invoke-static {v2, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iput-wide v7, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->lastOutFramesTime:J

    .line 366
    .line 367
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT_AFTER_LONG_TIME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 368
    .line 369
    return-object v0

    .line 370
    :cond_d
    if-eqz v4, :cond_e

    .line 371
    .line 372
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK_AFTER_RESTART:Lorg/hmwebrtc/VideoCodecStatus;

    .line 373
    .line 374
    return-object v0

    .line 375
    :cond_e
    sget-boolean v0, Lorg/hmwebrtc/AndroidVideoDecoder;->needToRequireKeyFrame:Z

    .line 376
    .line 377
    if-eqz v0, :cond_f

    .line 378
    .line 379
    sput-boolean v3, Lorg/hmwebrtc/AndroidVideoDecoder;->needToRequireKeyFrame:Z

    .line 380
    .line 381
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->REQUEST_KEYFRAME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 382
    .line 383
    return-object v0

    .line 384
    :cond_f
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 385
    .line 386
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v3, "queueInputBuffer failed"

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    const/16 v2, 0x34d9

    .line 406
    .line 407
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 411
    .line 412
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 416
    .line 417
    return-object v0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v3, "getInputBuffers failed"

    .line 425
    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const/16 v2, 0x34d7

    .line 437
    .line 438
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 439
    .line 440
    .line 441
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 442
    .line 443
    return-object v0

    .line 444
    :catch_2
    move-exception v0

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v3, "dequeueInputBuffer failed"

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/16 v2, 0x34d5

    .line 463
    .line 464
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 468
    .line 469
    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    throw v0

    .line 473
    :cond_10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v2, "decode uninitalized, codec: "

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 484
    .line 485
    if-eqz v2, :cond_11

    .line 486
    .line 487
    const/4 v3, 0x1

    .line 488
    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v2, ", callback: "

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    iget-object v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 497
    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const/16 v2, 0x34d2

    .line 506
    .line 507
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/AndroidVideoDecoder;->reportErrorToHaimaCountly(Ljava/lang/String;I)V

    .line 508
    .line 509
    .line 510
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/hmwebrtc/VideoCodecStatus;

    .line 511
    .line 512
    return-object v0

    .line 513
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
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->outputThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mDecodeWaitUs:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/32 v2, 0x186a0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v1, v0, v2, v3}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x2

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 31
    .line 32
    invoke-interface {v1}, Lorg/hmwebrtc/MediaCodecWrapper;->getOutputFormat()Landroid/media/MediaFormat;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p0, v1}, Lorg/hmwebrtc/AndroidVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "AndroidVideoDecoder"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "MediaCodec INFO_OUTPUT_FORMAT_CHANGED frame pts: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const/4 v2, -0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x1

    .line 67
    if-ne v1, v2, :cond_4

    .line 68
    .line 69
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    :try_start_2
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->getInput()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;->onDecodedTimeout()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mDecodeWaitUs:J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    throw v1

    .line 100
    :cond_4
    if-gez v1, :cond_5

    .line 101
    .line 102
    const-string v0, "AndroidVideoDecoder"

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "dequeueOutputBuffer returned "

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    iput-wide v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastOutFramesTime:J

    .line 130
    .line 131
    sget-boolean v2, Lorg/hmwebrtc/AndroidVideoDecoder;->lossFlag:Z

    .line 132
    .line 133
    if-ne v2, v4, :cond_8

    .line 134
    .line 135
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 136
    .line 137
    add-int/2addr v2, v4

    .line 138
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 139
    .line 140
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    .line 141
    .line 142
    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 146
    .line 147
    const-wide/16 v6, 0x3e8

    .line 148
    .line 149
    invoke-interface {v5, v2, v6, v7}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    :goto_1
    if-ltz v5, :cond_7

    .line 154
    .line 155
    const-string v8, "AndroidVideoDecoder"

    .line 156
    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v10, "dropping Frame ===: "

    .line 163
    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v8, v9}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 178
    .line 179
    invoke-interface {v8}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 183
    .line 184
    invoke-interface {v8, v1, v3}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 185
    .line 186
    .line 187
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 188
    .line 189
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 190
    .line 191
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 192
    .line 193
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 194
    .line 195
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 196
    .line 197
    iput-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 198
    .line 199
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 200
    .line 201
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 202
    .line 203
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 204
    .line 205
    add-int/2addr v1, v4

    .line 206
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 207
    .line 208
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLps:I

    .line 209
    .line 210
    add-int/2addr v1, v4

    .line 211
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLps:I

    .line 212
    .line 213
    iget-wide v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLossCount:J

    .line 214
    .line 215
    const-wide/16 v10, 0x1

    .line 216
    .line 217
    add-long/2addr v8, v10

    .line 218
    iput-wide v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLossCount:J

    .line 219
    .line 220
    cmp-long v1, v8, v10

    .line 221
    .line 222
    if-nez v1, :cond_6

    .line 223
    .line 224
    const-string v1, "DirectSurfaceVideoDecoder is lossing a frame firstly"

    .line 225
    .line 226
    const/16 v8, 0x34b9

    .line 227
    .line 228
    invoke-static {v8, v1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codec:Lorg/hmwebrtc/MediaCodecWrapper;

    .line 232
    .line 233
    invoke-interface {v1, v2, v6, v7}, Lorg/hmwebrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    move v12, v5

    .line 238
    move v5, v1

    .line 239
    move v1, v12

    .line 240
    goto :goto_1

    .line 241
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 242
    .line 243
    .line 244
    move-result-wide v8

    .line 245
    iget-wide v10, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastSecond:J

    .line 246
    .line 247
    sub-long v10, v8, v10

    .line 248
    .line 249
    cmp-long v2, v10, v6

    .line 250
    .line 251
    if-lez v2, :cond_8

    .line 252
    .line 253
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLps:I

    .line 254
    .line 255
    int-to-double v5, v2

    .line 256
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 257
    .line 258
    int-to-double v10, v2

    .line 259
    div-double/2addr v5, v10

    .line 260
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 265
    .line 266
    iput v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLps:I

    .line 267
    .line 268
    iput v3, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderFps:I

    .line 269
    .line 270
    iput-wide v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lastSecond:J

    .line 271
    .line 272
    :cond_8
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 273
    .line 274
    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;

    .line 279
    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 283
    .line 284
    const-wide/16 v7, 0x0

    .line 285
    .line 286
    cmp-long v9, v5, v7

    .line 287
    .line 288
    if-gtz v9, :cond_9

    .line 289
    .line 290
    const-string v5, "AndroidVideoDecoder"

    .line 291
    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v7, "Changed pts from "

    .line 298
    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 303
    .line 304
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v7, " to "

    .line 308
    .line 309
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-wide v7, v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 313
    .line 314
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-wide v5, v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 325
    .line 326
    iput-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 327
    .line 328
    :cond_9
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 329
    .line 330
    iget-wide v7, v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 331
    .line 332
    cmp-long v9, v5, v7

    .line 333
    .line 334
    if-nez v9, :cond_a

    .line 335
    .line 336
    const/4 v5, 0x1

    .line 337
    goto :goto_2

    .line 338
    :cond_a
    const/4 v5, 0x0

    .line 339
    :goto_2
    if-nez v5, :cond_e

    .line 340
    .line 341
    invoke-static {}, Lorg/hmwebrtc/VideoFrame;->getFrameInfoMatchByPts()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_e

    .line 346
    .line 347
    :cond_b
    :goto_3
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 348
    .line 349
    invoke-interface {v5}, Ljava/util/concurrent/BlockingDeque;->size()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-lez v5, :cond_e

    .line 354
    .line 355
    iget-object v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 356
    .line 357
    invoke-interface {v5}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;

    .line 362
    .line 363
    if-eqz v5, :cond_b

    .line 364
    .line 365
    iget-wide v6, v5, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 366
    .line 367
    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 368
    .line 369
    cmp-long v10, v6, v8

    .line 370
    .line 371
    if-gez v10, :cond_c

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_c
    cmp-long v10, v6, v8

    .line 375
    .line 376
    if-nez v10, :cond_d

    .line 377
    .line 378
    move-object v2, v5

    .line 379
    goto :goto_4

    .line 380
    :cond_d
    const-string v5, "AndroidVideoDecoder"

    .line 381
    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v7, "New decoded frame pts less than queue item, cur pts: "

    .line 388
    .line 389
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 393
    .line 394
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    .line 406
    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 408
    .line 409
    .line 410
    move-result-wide v5

    .line 411
    iget-wide v7, v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    .line 412
    .line 413
    sub-long/2addr v5, v7

    .line 414
    long-to-int v3, v5

    .line 415
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iget v2, v2, Lorg/hmwebrtc/AndroidVideoDecoder$FrameInfo;->rotation:I

    .line 420
    .line 421
    iget-boolean v5, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 422
    .line 423
    if-eqz v5, :cond_10

    .line 424
    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    .line 427
    .line 428
    move-result-wide v5

    .line 429
    iget-object v7, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 430
    .line 431
    invoke-interface {v7}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    check-cast v7, Lorg/hmwebrtc/SeiData;

    .line 436
    .line 437
    iget-object v8, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameSeiReportList:Ljava/util/List;

    .line 438
    .line 439
    if-eqz v8, :cond_10

    .line 440
    .line 441
    if-eqz v7, :cond_10

    .line 442
    .line 443
    iput-wide v5, v7, Lorg/hmwebrtc/SeiData;->decodedTimestamp:J

    .line 444
    .line 445
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_f
    const-string v2, "AndroidVideoDecoder"

    .line 450
    .line 451
    const-string v5, "frameInfo is null."

    .line 452
    .line 453
    invoke-static {v2, v5}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    move-object v3, v2

    .line 458
    const/4 v2, 0x0

    .line 459
    :cond_10
    :goto_5
    iput-boolean v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    .line 460
    .line 461
    iget-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 462
    .line 463
    if-eqz v4, :cond_11

    .line 464
    .line 465
    invoke-virtual {v4}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getIFrameCallback()Lorg/hmwebrtc/listener/IFrameCallback;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    if-eqz v4, :cond_11

    .line 470
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    iget-object v6, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataReport:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 476
    .line 477
    invoke-virtual {v6}, Lorg/hmwebrtc/HmDataReportToSaasSdk;->getIFrameCallback()Lorg/hmwebrtc/listener/IFrameCallback;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    iget-wide v7, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mFrameId:J

    .line 482
    .line 483
    invoke-interface {v6, v7, v8, v4, v5}, Lorg/hmwebrtc/listener/IFrameCallback;->onFrameDecode(JJ)V

    .line 484
    .line 485
    .line 486
    :cond_11
    iget-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 487
    .line 488
    if-eqz v4, :cond_12

    .line 489
    .line 490
    invoke-direct {p0, v1, v0, v2, v3}, Lorg/hmwebrtc/AndroidVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    .line 491
    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_12
    invoke-direct {p0, v1, v0, v2, v3}, Lorg/hmwebrtc/AndroidVideoDecoder;->deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :catch_0
    move-exception v0

    .line 499
    const-string v1, "AndroidVideoDecoder"

    .line 500
    .line 501
    const-string v2, "deliverDecodedFrame failed"

    .line 502
    .line 503
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    :goto_6
    return-void
.end method

.method public getDecodedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getDecodedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->decoderThreadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->isReportedError:Z

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "begin to init android video decoder,this:"

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
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

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
    const/16 v1, 0x34da

    .line 39
    .line 40
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 44
    .line 45
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->createSurfaceTextureHelper()Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 54
    .line 55
    new-instance p2, Landroid/view/Surface;

    .line 56
    .line 57
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 67
    .line 68
    sget-boolean p2, Lorg/hmwebrtc/AndroidVideoDecoder;->mEnableTextureAcc:Z

    .line 69
    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 73
    .line 74
    instance-of p2, p2, Lorg/hmwebrtc/EglBase14$Context;

    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/hmwebrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 85
    .line 86
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->sharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 87
    .line 88
    check-cast v1, Lorg/hmwebrtc/EglBase14$Context;

    .line 89
    .line 90
    const/4 v2, 0x4

    .line 91
    invoke-direct {v0, v1, v2, p2}, Lorg/hmwebrtc/SurfaceTextureAccelerator;-><init>(Lorg/hmwebrtc/EglBase14$Context;ILandroid/os/Handler;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 95
    .line 96
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecoder$1;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lorg/hmwebrtc/AndroidVideoDecoder$1;-><init>(Lorg/hmwebrtc/AndroidVideoDecoder;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p2, v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->refrushGlcurrent(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 111
    .line 112
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->startListening(Lorg/hmwebrtc/VideoSink;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 119
    .line 120
    invoke-virtual {p2, p0}, Lorg/hmwebrtc/SurfaceTextureHelper;->startListening(Lorg/hmwebrtc/VideoSink;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    :goto_0
    iget p2, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->width:I

    .line 124
    .line 125
    iget p1, p1, Lorg/hmwebrtc/VideoDecoder$Settings;->height:I

    .line 126
    .line 127
    invoke-direct {p0, p2, p1}, Lorg/hmwebrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lorg/hmwebrtc/VideoCodecStatus;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v0, "initDecode Exception: "

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p2, "throwExceptionMsg"

    .line 155
    .line 156
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 160
    .line 161
    return-object p1
.end method

.method isH264codec()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

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
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->codecType:Lorg/hmwebrtc/VideoCodecMimeType;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p1, "AndroidVideoDecoder"

    .line 9
    .line 10
    const-string v1, "Rendered texture metadata was null in onTextureFrameAvailable."

    .line 11
    .line 12
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v2, v1, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    .line 18
    .line 19
    const-wide/16 v4, 0x3e8

    .line 20
    .line 21
    mul-long v2, v2, v4

    .line 22
    .line 23
    iget-object v1, v1, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    iput-object v4, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mAndroidVideoDecodeSwapBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->getInput()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;->onRenderComplete()V

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance v0, Lorg/hmwebrtc/VideoFrame;

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-direct {v0, v5, p1, v2, v3}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->lossRate:Ljava/lang/Double;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 60
    .line 61
    mul-double v2, v2, v5

    .line 62
    .line 63
    double-to-int p1, v2

    .line 64
    iget-wide v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderLossCount:J

    .line 65
    .line 66
    invoke-virtual {v0, p1, v2, v3}, Lorg/hmwebrtc/VideoFrame;->setRenderLossInfo(IJ)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 70
    .line 71
    invoke-interface {p1, v0, v1, v4}, Lorg/hmwebrtc/VideoDecoder$Callback;->onDecodedFrame(Lorg/hmwebrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1
.end method

.method public release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start to release the android video decoder:"

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
    const-string v1, ",this:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0x34dc

    .line 35
    .line 36
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "AndroidVideoDecoder"

    .line 40
    .line 41
    const-string v1, "release"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseInternal()Lorg/hmwebrtc/VideoCodecStatus;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseSurface()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 61
    .line 62
    invoke-virtual {v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->stopListening()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/hmwebrtc/SurfaceTextureHelper;->dispose()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 71
    .line 72
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->release()V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->mSurfaceTextureAcc:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 80
    .line 81
    :cond_1
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v1

    .line 84
    :try_start_0
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 85
    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->callback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 88
    .line 89
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->enableSeiDataReport:Z

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecoder;->releaseSchedule()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->seiDataInfos:Ljava/util/concurrent/BlockingDeque;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 106
    .line 107
    .line 108
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "return from releasing the android video decoder:"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, ",this:"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const/16 v2, 0x34dd

    .line 134
    .line 135
    invoke-static {v2, v1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw v0
.end method

.method protected releaseSurface()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
