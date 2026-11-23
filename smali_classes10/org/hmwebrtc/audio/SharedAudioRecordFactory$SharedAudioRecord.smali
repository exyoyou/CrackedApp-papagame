.class Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;
.super Lorg/hmwebrtc/audio/WrappedAudioRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/audio/SharedAudioRecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedAudioRecord"
.end annotation


# instance fields
.field private mIsTimeout:Z

.field private mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSignalObj:Ljava/lang/Object;

.field private mSupportTimeout:Z


# direct methods
.method public constructor <init>(IIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/hmwebrtc/audio/WrappedAudioRecord;-><init>(IIIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSignalObj:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mIsTimeout:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean p7, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSupportTimeout:Z

    .line 25
    .line 26
    if-nez p6, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->initRecord()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private CheckReCreate()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "muted: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", systemAudioRecord: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "SharedAudioRecordFactory"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-super {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->stop()V

    .line 56
    .line 57
    .line 58
    invoke-super {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->release()V

    .line 59
    .line 60
    .line 61
    const-string v0, "mute release record!"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->initRecord()Z

    .line 81
    .line 82
    .line 83
    invoke-super {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->startRecording()V

    .line 84
    .line 85
    .line 86
    const-string v0, "mute startRecording record!"

    .line 87
    .line 88
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method private notifyCheck()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSignalObj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSignalObj:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method


# virtual methods
.method public isTimeout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSupportTimeout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mIsTimeout:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->CheckReCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mIsTimeout:Z

    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSignalObj:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object p2, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mSignalObj:Ljava/lang/Object;

    .line 19
    .line 20
    const-wide/16 v0, 0xa

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 23
    .line 24
    .line 25
    monitor-exit p1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p2

    .line 28
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    :goto_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mIsTimeout:Z

    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    return p1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public setMicrophoneMute(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMicrophoneMute "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SharedAudioRecordFactory"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->mMuteAudio:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;->notifyCheck()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1
.end method
