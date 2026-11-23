.class public Lorg/hmwebrtc/FrameRenderDelayCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameRenderDelayCallback"


# instance fields
.field private final BUFFER_SIZE:I

.field private buffer:[J

.field private frameCallbackLock:Ljava/lang/Object;

.field private mFrameCallback:Lorg/hmwebrtc/EglRenderer$FrameCallback;

.field private popIndex:I

.field private pushIndex:I

.field renderDataThread:Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x78

    .line 5
    .line 6
    iput v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->BUFFER_SIZE:I

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    iput-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->buffer:[J

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->frameCallbackLock:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/FrameRenderDelayCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/FrameRenderDelayCallback;->popData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private popData()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->popIndex:I

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushIndex:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-le v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->buffer:[J

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->frameCallbackLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->mFrameCallback:Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v3, v0}, Lorg/hmwebrtc/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 24
    .line 25
    .line 26
    :cond_1
    monitor-exit v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_2
    iget-object v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->buffer:[J

    .line 32
    .line 33
    const/16 v3, 0x77

    .line 34
    .line 35
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->frameCallbackLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_1
    iget-object v3, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->mFrameCallback:Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-interface {v3, v0}, Lorg/hmwebrtc/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 47
    .line 48
    .line 49
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->buffer:[J

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->mFrameCallback:Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-interface {v2, v0}, Lorg/hmwebrtc/EglRenderer$FrameCallback;->onFrameRendered([J)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    iput v1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->popIndex:I

    .line 67
    .line 68
    return-void

    .line 69
    :catchall_1
    move-exception v0

    .line 70
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw v0
.end method


# virtual methods
.method public pushRenderedTime(J)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->buffer:[J

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
    iput v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushIndex:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushIndex:I

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    iput v2, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushIndex:I

    .line 18
    .line 19
    aput-wide p1, v1, v0

    .line 20
    .line 21
    return-void
.end method

.method public setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->frameCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->mFrameCallback:Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->renderDataThread:Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    new-instance p1, Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0}, Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;-><init>(Lorg/hmwebrtc/FrameRenderDelayCallback;Lorg/hmwebrtc/FrameRenderDelayCallback$1;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback;->renderDataThread:Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method
