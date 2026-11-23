.class Lorg/hmwebrtc/EglRendererJankStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x3c


# instance fields
.field private mReceviedJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

.field private mRecvTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

.field private mRenderJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

.field private mRenderTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

.field private mTmpDataArray:[J

.field private mWorkThread:Lorg/hmwebrtc/utils/SimpleWorkThread;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V
    .locals 1

    const/16 v0, 0x1e

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/EglRendererJankStatistics;-><init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;I)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mReceviedJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    const/4 v0, 0x2

    mul-int/lit8 p3, p3, 0x2

    const/16 v1, 0x3c

    if-le p3, v1, :cond_0

    const/16 p3, 0x3c

    :cond_0
    const/4 v1, 0x1

    if-gt p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p3

    .line 3
    :goto_0
    new-array p3, v0, [J

    iput-object p3, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mTmpDataArray:[J

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    invoke-direct {p1, v0}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;-><init>(I)V

    iput-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRecvTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    .line 5
    :cond_2
    iput-object p2, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    if-eqz p2, :cond_3

    .line 6
    new-instance p1, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    invoke-direct {p1, v0}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;-><init>(I)V

    iput-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/EglRendererJankStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/EglRendererJankStatistics;->process()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private consumeTimstamp(Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mTmpDataArray:[J

    .line 14
    .line 15
    iget-object v4, p1, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->data:[J

    .line 16
    .line 17
    aget-wide v5, v4, v2

    .line 18
    .line 19
    aput-wide v5, v3, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->reset()V

    .line 25
    .line 26
    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_1
    if-ge v1, v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mTmpDataArray:[J

    .line 31
    .line 32
    aget-wide v2, p1, v1

    .line 33
    .line 34
    invoke-virtual {p2, v2, v3}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->onRenderFrameTimestamp(J)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    return-void

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p2
.end method

.method private process()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRecvTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mReceviedJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/EglRendererJankStatistics;->consumeTimstamp(Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/EglRendererJankStatistics;->consumeTimstamp(Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private productioTimstamp(JLorg/hmwebrtc/EglRendererJankStatistics$Buffer;)V
    .locals 0

    .line 1
    monitor-enter p3

    .line 2
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->put(J)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;->GT_Half()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mWorkThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/hmwebrtc/utils/SimpleWorkThread;->setEvent()V

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit p3

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method


# virtual methods
.method public onReceiveFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mReceviedJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRecvTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/EglRendererJankStatistics;->productioTimstamp(JLorg/hmwebrtc/EglRendererJankStatistics$Buffer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRenderFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderTimstampBuffer:Lorg/hmwebrtc/EglRendererJankStatistics$Buffer;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/EglRendererJankStatistics;->productioTimstamp(JLorg/hmwebrtc/EglRendererJankStatistics$Buffer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public start()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mWorkThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mReceviedJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mRenderJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    new-instance v0, Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 17
    .line 18
    const-string v1, "eglrderJankStas"

    .line 19
    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lorg/hmwebrtc/utils/SimpleWorkThread;-><init>(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mWorkThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 26
    .line 27
    new-instance v1, Lorg/hmwebrtc/EglRendererJankStatistics$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lorg/hmwebrtc/EglRendererJankStatistics$1;-><init>(Lorg/hmwebrtc/EglRendererJankStatistics;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/SimpleWorkThread;->start(Lorg/hmwebrtc/utils/SimpleWorkThread$Work;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRendererJankStatistics;->mWorkThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
