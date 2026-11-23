.class Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;
.super Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiThreadInput"
.end annotation


# instance fields
.field private mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

.field private mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->capacity()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    const-string v1, "MultiThreadInput buffer must greater than 0!"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lorg/hmwebrtc/utils/Assert;->that(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "new MultiThreadInput:"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "VideoDecodeSwapBuffer"

    .line 48
    .line 49
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 63
    .line 64
    const-string v0, "renderThread"

    .line 65
    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    invoke-direct {p1, v0, v1, v2}, Lorg/hmwebrtc/utils/SimpleWorkThread;-><init>(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 72
    .line 73
    return-void
.end method

.method static synthetic access$1300(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->nextRender()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private nextRender()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1700(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$900(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 21
    .line 22
    iget v4, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 23
    .line 24
    iget v5, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 25
    .line 26
    iget v6, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 27
    .line 28
    iget v7, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 29
    .line 30
    iget-wide v8, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 31
    .line 32
    iget-object v10, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-static/range {v3 .. v10}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 41
    .line 42
    iget v0, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public onDecodedFrame(IIIIJLjava/lang/Integer;)J
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p7}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->onDecodedFrame(IIIIJLjava/lang/Integer;)J

    .line 3
    .line 4
    .line 5
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 6
    .line 7
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1500(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/32 v2, 0x186a0

    .line 12
    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 17
    .line 18
    iget-object v4, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 19
    .line 20
    move v5, p1

    .line 21
    move v6, p2

    .line 22
    move/from16 v7, p3

    .line 23
    .line 24
    move/from16 v8, p4

    .line 25
    .line 26
    move-wide/from16 v9, p5

    .line 27
    .line 28
    move-object/from16 v11, p7

    .line 29
    .line 30
    invoke-static/range {v4 .. v11}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1000(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eq v1, v4, :cond_1

    .line 35
    .line 36
    return-wide v2

    .line 37
    :cond_0
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 38
    .line 39
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1600(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 46
    .line 47
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1700(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v4, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 54
    .line 55
    invoke-static {v4, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1200(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v5, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 59
    .line 60
    move v6, p1

    .line 61
    move v7, p2

    .line 62
    move/from16 v8, p3

    .line 63
    .line 64
    move/from16 v9, p4

    .line 65
    .line 66
    move-wide/from16 v10, p5

    .line 67
    .line 68
    move-object/from16 v12, p7

    .line 69
    .line 70
    invoke-static/range {v5 .. v12}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1800(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;IIIIJLjava/lang/Integer;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/hmwebrtc/utils/SimpleWorkThread;->setEvent()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 83
    .line 84
    move v4, p1

    .line 85
    invoke-static {v1, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-wide v2
.end method

.method public onDecodedTimeout()J
    .locals 2

    const-wide/32 v0, 0x186a0

    return-wide v0
.end method

.method public onRenderComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$1500(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->setEvent()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method start()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 12
    .line 13
    new-instance v1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/SimpleWorkThread;->start(Lorg/hmwebrtc/utils/SimpleWorkThread$Work;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v2
.end method

.method stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->mRenderThread:Lorg/hmwebrtc/utils/SimpleWorkThread;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/hmwebrtc/utils/SimpleWorkThread;->stop()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
