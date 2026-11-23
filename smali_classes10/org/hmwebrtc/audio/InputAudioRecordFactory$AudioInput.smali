.class Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/IAudioRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/audio/InputAudioRecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioInput"
.end annotation


# instance fields
.field mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

.field private mAudioFormat:I

.field private mAudioSource:I

.field private mBufferSizeInBytes:I

.field private mChannelConfig:I

.field private mSampleRate:I

.field mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(IIIIILorg/hmwebrtc/audio/InputAudioBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioSource:I

    .line 5
    .line 6
    iput p2, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mSampleRate:I

    .line 7
    .line 8
    iput p3, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mChannelConfig:I

    .line 9
    .line 10
    iput p4, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioFormat:I

    .line 11
    .line 12
    iput p5, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mBufferSizeInBytes:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    iput-object p6, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioSource:I

    .line 2
    .line 3
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mBufferSizeInBytes:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mChannelConfig:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecordingState()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSystemAudioRecord()Landroid/media/AudioRecord;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/audio/InputAudioBuffer;->read(Ljava/nio/ByteBuffer;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMicrophoneMute(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->start()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
