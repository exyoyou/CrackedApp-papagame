.class public Lorg/hmwebrtc/audio/FakeAudioInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;
    }
.end annotation


# static fields
.field private static final FILL_INTERVAL_MS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "FakeAudioInput"


# instance fields
.field private mAudioBuffer:[B

.field private mAudioBufferCapacity:I

.field private mAudioFile:Lorg/hmwebrtc/audio/SimplePcmFile;

.field private mAudiohandler:Landroid/os/Handler;

.field private mAudiohandlerThread:Landroid/os/HandlerThread;

.field private mFillData:Ljava/lang/Runnable;

.field private mNextFillTimeMs:J

.field private mOnInputObserver:Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;

.field private mOpenLog:Z


# direct methods
.method public constructor <init>(IIILjava/lang/String;Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/audio/FakeAudioInput$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/hmwebrtc/audio/FakeAudioInput$1;-><init>(Lorg/hmwebrtc/audio/FakeAudioInput;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mFillData:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lorg/hmwebrtc/audio/SimplePcmFile;

    .line 12
    .line 13
    invoke-direct {v0, p4}, Lorg/hmwebrtc/audio/SimplePcmFile;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioFile:Lorg/hmwebrtc/audio/SimplePcmFile;

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Lorg/hmwebrtc/audio/a;->b(III)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    const-wide/16 p3, 0xa

    .line 23
    .line 24
    mul-long p1, p1, p3

    .line 25
    .line 26
    const-wide/16 p3, 0x3e8

    .line 27
    .line 28
    div-long/2addr p1, p3

    .line 29
    long-to-int p2, p1

    .line 30
    iput p2, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBufferCapacity:I

    .line 31
    .line 32
    new-array p1, p2, [B

    .line 33
    .line 34
    iput-object p1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBuffer:[B

    .line 35
    .line 36
    iput-object p5, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mOnInputObserver:Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;

    .line 37
    .line 38
    const-wide/16 p1, 0x0

    .line 39
    .line 40
    iput-wide p1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mNextFillTimeMs:J

    .line 41
    .line 42
    iput-boolean p6, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mOpenLog:Z

    .line 43
    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/audio/FakeAudioInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/audio/FakeAudioInput;->fillPcm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private fillPcm()V
    .locals 8

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioFile:Lorg/hmwebrtc/audio/SimplePcmFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/SimplePcmFile;->getReader()Lorg/hmwebrtc/audio/SimplePcmFile$Reader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "FakeAudioInput"

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v2, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBuffer:[B

    .line 12
    .line 13
    iget v3, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBufferCapacity:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-interface {v0, v2, v4, v3}, Lorg/hmwebrtc/audio/SimplePcmFile$Reader;->read([BII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gez v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/hmwebrtc/audio/SimplePcmFile$Reader;->seekBegin()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBufferCapacity:I

    .line 27
    .line 28
    if-ne v2, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mOnInputObserver:Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v3, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioBuffer:[B

    .line 35
    .line 36
    invoke-interface {v2, v3, v4, v0}, Lorg/hmwebrtc/audio/FakeAudioInput$OnInputObserver;->OnAudio([BII)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "FakeAudioInput read error!  size="

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iget-wide v4, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mNextFillTimeMs:J

    .line 68
    .line 69
    const-wide/16 v6, 0xa

    .line 70
    .line 71
    cmp-long v0, v4, v2

    .line 72
    .line 73
    if-gez v0, :cond_4

    .line 74
    .line 75
    sub-long v4, v2, v4

    .line 76
    .line 77
    sub-long/2addr v6, v4

    .line 78
    :cond_4
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    cmp-long v0, v6, v4

    .line 81
    .line 82
    if-gez v0, :cond_5

    .line 83
    .line 84
    move-wide v6, v4

    .line 85
    :cond_5
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mOpenLog:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "FakeAudioInput read pcm  delayedMs:"

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, " jitterMs:"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v4, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mNextFillTimeMs:J

    .line 108
    .line 109
    sub-long v4, v2, v4

    .line 110
    .line 111
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    add-long/2addr v2, v6

    .line 122
    iput-wide v2, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mNextFillTimeMs:J

    .line 123
    .line 124
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandler:Landroid/os/Handler;

    .line 125
    .line 126
    iget-object v1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mFillData:Ljava/lang/Runnable;

    .line 127
    .line 128
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    const-string v0, "FakeAudioInput read error!  reader==null"

    .line 133
    .line 134
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    .line 7
    const-string v1, "audio-input-fake"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandler:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mNextFillTimeMs:J

    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mFillData:Ljava/lang/Runnable;

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mFillData:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudioFile:Lorg/hmwebrtc/audio/SimplePcmFile;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/SimplePcmFile;->close()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/hmwebrtc/audio/FakeAudioInput;->mAudiohandler:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method
