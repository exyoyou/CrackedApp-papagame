.class public Lorg/hmwebrtc/audio/InputAudioBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/InputAudioWriter;


# static fields
.field private static final MIN_CAPACITY_BYTES:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "InputAudioBuffe"


# instance fields
.field private mCapacity:I

.field private mDataBuffer:[B

.field private mDataLock:Ljava/lang/Object;

.field private mDelayBytes:I

.field private mFirstRead:Z

.field private mReadPos:I

.field private mSize:I

.field private mStarted:Z

.field private mWritePos:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

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
    iput-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 13
    .line 14
    iput v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 15
    .line 16
    iput v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 17
    .line 18
    if-lez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    iput p2, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDelayBytes:I

    .line 23
    .line 24
    iput v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 25
    .line 26
    const/16 p2, 0xa0

    .line 27
    .line 28
    if-ge p1, p2, :cond_1

    .line 29
    .line 30
    const/16 p1, 0xa0

    .line 31
    .line 32
    :cond_1
    iput p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 33
    .line 34
    new-array p1, p1, [B

    .line 35
    .line 36
    iput-object p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 40
    .line 41
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    const-string v0, "Expected condition to be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private onErrorReport(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "error report: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "InputAudioBuffe"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private onReadUnderrun()V
    .locals 2

    .line 1
    const-string v0, "InputAudioBuffe"

    .line 2
    .line 3
    const-string v1, "read underrun!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private onWriteOverrun()V
    .locals 2

    .line 1
    const-string v0, "InputAudioBuffe"

    .line 2
    .line 3
    const-string v1, "write overrun!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->assertTrue(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v2, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return v3

    .line 22
    :cond_1
    move v2, p2

    .line 23
    :cond_2
    iget-boolean v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    iget v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDelayBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 v4, 0x0

    .line 31
    :goto_1
    :try_start_1
    iget v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 32
    .line 33
    add-int/2addr v4, p2

    .line 34
    if-ge v5, v4, :cond_4

    .line 35
    .line 36
    iget-object v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 42
    .line 43
    if-lt v5, v4, :cond_6

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    iget v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 49
    .line 50
    add-int v5, v4, p2

    .line 51
    .line 52
    iget v6, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 53
    .line 54
    if-gt v5, v6, :cond_5

    .line 55
    .line 56
    iget-object v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 57
    .line 58
    invoke-virtual {p1, v5, v4, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    sub-int v2, v6, v4

    .line 63
    .line 64
    iget-object v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 65
    .line 66
    invoke-virtual {p1, v5, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 70
    .line 71
    sub-int v5, p2, v2

    .line 72
    .line 73
    invoke-virtual {p1, v4, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move v2, p2

    .line 77
    :goto_2
    iget v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 78
    .line 79
    add-int/2addr v4, p2

    .line 80
    iget v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 81
    .line 82
    rem-int/2addr v4, v5

    .line 83
    iput v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 84
    .line 85
    iget v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 86
    .line 87
    sub-int/2addr v4, p2

    .line 88
    iput v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :catch_0
    move-exception v4

    .line 92
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v6, "read "

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-direct {p0, v4}, Lorg/hmwebrtc/audio/InputAudioBuffer;->onErrorReport(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-boolean v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 117
    .line 118
    if-nez v4, :cond_2

    .line 119
    .line 120
    :goto_3
    iget-boolean p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    iput-boolean v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 125
    .line 126
    move v3, v2

    .line 127
    :cond_7
    monitor-exit v0

    .line 128
    return v3

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    throw p1
.end method

.method public resize(I)Z
    .locals 3

    .line 1
    const/16 v0, 0xa0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v2, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :cond_1
    iput p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 21
    .line 22
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 23
    .line 24
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 25
    .line 26
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public start()V
    .locals 2

    .line 1
    const-string v0, "InputAudioBuffe"

    .line 2
    .line 3
    const-string v1, "start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    iput-boolean v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "InputAudioBuffe"

    .line 2
    .line 3
    const-string v1, "stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-boolean v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 13
    .line 14
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 15
    .line 16
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 17
    .line 18
    iput v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mFirstRead:Z

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public write([BII)I
    .locals 6

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge p3, v0, :cond_0

    .line 6
    .line 7
    if-lez p3, :cond_0

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
    invoke-static {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->assertTrue(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v3, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mStarted:Z

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    const/4 p1, -0x1

    .line 24
    return p1

    .line 25
    :cond_1
    iget v3, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    add-int v4, v3, p3

    .line 30
    .line 31
    iget v5, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 32
    .line 33
    if-gt v4, v5, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sub-int/2addr v5, v3

    .line 37
    iget-object v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 38
    .line 39
    invoke-static {p1, p2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p2, v5

    .line 43
    iget-object v3, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 44
    .line 45
    sub-int v4, p3, v5

    .line 46
    .line 47
    invoke-static {p1, p2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataBuffer:[B

    .line 52
    .line 53
    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iget p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 57
    .line 58
    add-int/2addr p1, p3

    .line 59
    iget p2, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mCapacity:I

    .line 60
    .line 61
    rem-int/2addr p1, p2

    .line 62
    iput p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mWritePos:I

    .line 63
    .line 64
    iget v3, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 65
    .line 66
    add-int/2addr v3, p3

    .line 67
    iput v3, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 68
    .line 69
    if-lt v3, p2, :cond_4

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    :cond_4
    if-eqz v2, :cond_5

    .line 73
    .line 74
    iput p2, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mSize:I

    .line 75
    .line 76
    add-int/2addr p1, v1

    .line 77
    add-int/2addr p1, p2

    .line 78
    rem-int/2addr p1, p2

    .line 79
    iput p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mReadPos:I

    .line 80
    .line 81
    invoke-direct {p0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->onWriteOverrun()V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object p1, p0, Lorg/hmwebrtc/audio/InputAudioBuffer;->mDataLock:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 87
    .line 88
    .line 89
    monitor-exit v0

    .line 90
    return p3

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p1
.end method
