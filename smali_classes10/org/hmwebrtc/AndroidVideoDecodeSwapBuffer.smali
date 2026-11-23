.class public Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;,
        Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
    }
.end annotation


# static fields
.field private static final HMRTC_HWDECODE_BUFFER_V1_CFG:Ljava/lang/String; = "enable:false,mode:1,bufferSize:1,stat:false"

.field private static final HMRTC_HWDECODE_BUFFER_V1_CFG_FILENAME:Ljava/lang/String; = "HMRTC-Hw-Swapbuffer-V1.cfg"

.field private static final KDebug:Z = false

.field private static final K_BUFFER_MAX_SIZE:I = 0x3

.field private static final K_DECODE_TIMEOUT_FAST_US:J = 0x64L

.field private static final K_DECODE_TIMEOUT_US:J = 0x186a0L

.field public static final MODE_MAX_VALUE:I = 0x3

.field public static final MODE_MULTI_THREAD_SWAP:I = 0x2

.field public static final MODE_SINGLE_THREAD_SWAP:I = 0x1

.field public static final MODE_STANDARD_SWAP:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VideoDecodeSwapBuffer"


# instance fields
.field private mConfig:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

.field private mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

.field private mFrameDropStat:Lorg/hmwebrtc/utils/TimeDiff;

.field private mFrameRenderStat:Lorg/hmwebrtc/utils/TimeDiff;

.field private mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

.field private mInputDiffStat:Lorg/hmwebrtc/utils/TimeDiff;

.field private mLastLogTimeMs:J

.field private mOutput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;


# direct methods
.method public constructor <init>(ILorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;Z)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AndroidVideoDecodeSwapBuffer buffersize must >=0"

    .line 6
    invoke-static {v1, v2}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 7
    new-instance v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->access$102(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;I)I

    .line 9
    invoke-static {v1, p3}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->access$202(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;Z)Z

    .line 10
    iput-boolean v0, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->enable:Z

    .line 11
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mOutput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;

    .line 12
    invoke-direct {p0, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->initialize(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AndroidVideoDecodeSwapBuffer config is null!"

    .line 2
    invoke-static {v0, v1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 3
    iput-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mOutput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;

    .line 4
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->initialize(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->renderDecodedFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->cancelDecodedFrame(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->cancelDecodedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->syncFrameBufferSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1600(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->syncFrameBufferIsFull()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1700(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->syncReadFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->syncWriteFrame(IIIIJLjava/lang/Integer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/utils/TimeDiff;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInputDiffStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->getStats()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mConfig:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->renderDecodedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private cancelDecodedFrame(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mOutput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;

    invoke-interface {v0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;->dropFrame(I)V

    .line 3
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameDropStat:Lorg/hmwebrtc/utils/TimeDiff;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/hmwebrtc/utils/TimeDiff;->add()V

    :cond_0
    return-void
.end method

.method private cancelDecodedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)V
    .locals 0

    .line 1
    iget p1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->cancelDecodedFrame(I)V

    return-void
.end method

.method private getStats()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mLastLogTimeMs:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mLastLogTimeMs:J

    .line 14
    .line 15
    :cond_0
    iget-wide v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mLastLogTimeMs:J

    .line 16
    .line 17
    const-wide/16 v4, 0x2710

    .line 18
    .line 19
    add-long/2addr v2, v4

    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-ltz v4, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInputDiffStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/hmwebrtc/utils/TimeDiff;->ToString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "VideoDecodeSwapBuffer"

    .line 31
    .line 32
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameRenderStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/hmwebrtc/utils/TimeDiff;->ToString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameDropStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/hmwebrtc/utils/TimeDiff;->ToString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mLastLogTimeMs:J

    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private initialize(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mConfig:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 2
    .line 3
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 4
    .line 5
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->access$100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 13
    .line 14
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->access$200(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lorg/hmwebrtc/utils/TimeDiff;

    .line 21
    .line 22
    const-string v0, "HMRtc.swapbuffer.input"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lorg/hmwebrtc/utils/TimeDiff;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInputDiffStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 28
    .line 29
    new-instance p1, Lorg/hmwebrtc/utils/TimeDiff;

    .line 30
    .line 31
    const-string v0, "HMRtc.swapbuffer.drop"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lorg/hmwebrtc/utils/TimeDiff;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameDropStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 37
    .line 38
    new-instance p1, Lorg/hmwebrtc/utils/TimeDiff;

    .line 39
    .line 40
    const-string v0, "HMRtc.swapbuffer.render"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lorg/hmwebrtc/utils/TimeDiff;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameRenderStat:Lorg/hmwebrtc/utils/TimeDiff;

    .line 46
    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mLastLogTimeMs:J

    .line 50
    .line 51
    return-void
.end method

.method private renderDecodedFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mOutput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;->renderFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameRenderStat:Lorg/hmwebrtc/utils/TimeDiff;

    if-eqz p2, :cond_0

    sget-object p3, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_RENDER:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    if-ne p1, p3, :cond_0

    .line 4
    invoke-virtual {p2}, Lorg/hmwebrtc/utils/TimeDiff;->add()V

    :cond_0
    return-object p1
.end method

.method private renderDecodedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
    .locals 8

    .line 1
    iget v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    iget v2, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    iget v3, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    iget v4, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    iget-wide v5, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    iget-object v7, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->renderDecodedFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    move-result-object p1

    return-object p1
.end method

.method private syncFrameBufferIsFull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->isFull()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method private syncFrameBufferSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method private syncReadFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getReadedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method private syncWriteFrame(IIIIJLjava/lang/Integer;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->getWritedFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iput p1, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 16
    .line 17
    iput p2, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 18
    .line 19
    iput p3, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 20
    .line 21
    iput p4, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 22
    .line 23
    iput-wide p5, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 24
    .line 25
    iput-object p7, v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method


# virtual methods
.method public createInput(I)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "createInput mode\uff1a"

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
    const-string v1, " capacity:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->capacity()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "VideoDecodeSwapBuffer"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mFrameBuffer:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_0
    const-string p1, "standard mode buffer size must = 0 !"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-ne v2, p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$SingleThreadInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x2

    .line 74
    if-ne v2, p1, :cond_3

    .line 75
    .line 76
    const-string p1, "createInput MultiThreadInput"

    .line 77
    .line 78
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const-string p1, " createInput mode invalid!"

    .line 90
    .line 91
    invoke-static {v0, p1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 95
    .line 96
    return-object p1
.end method

.method public getConfig()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mConfig:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInput()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, " input must not null!"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->start()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, " input must not null!"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->mInput:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->stop()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
