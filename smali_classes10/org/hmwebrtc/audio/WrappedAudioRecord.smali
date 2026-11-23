.class public Lorg/hmwebrtc/audio/WrappedAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/IAudioRecord;


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappedAudioRecord"


# instance fields
.field private mAudioFormat:I

.field protected mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioSource:I

.field private mBufferSizeInBytes:I

.field private mChannelConfig:I

.field private mChannelCount:I

.field private mRecordingState:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioSource:I

    .line 5
    .line 6
    iput p2, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mSampleRate:I

    .line 7
    .line 8
    iput p3, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mChannelConfig:I

    .line 9
    .line 10
    iput p4, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioFormat:I

    .line 11
    .line 12
    iput p5, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mBufferSizeInBytes:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mRecordingState:I

    .line 16
    .line 17
    return-void
.end method

.method public static createAudioRecord(IIIII)Landroid/media/AudioRecord;
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->createAudioRecordOnMOrHigher(IIIII)Landroid/media/AudioRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->createAudioRecordOnLowerThanM(IIIII)Landroid/media/AudioRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method private static createAudioRecordOnLowerThanM(IIIII)Landroid/media/AudioRecord;
    .locals 8

    .line 1
    const-string v0, "WrappedAudioRecord"

    .line 2
    .line 3
    const-string v1, "createAudioRecordOnLowerThanM"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/media/AudioRecord;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    move v3, p0

    .line 12
    move v4, p1

    .line 13
    move v5, p2

    .line 14
    move v6, p3

    .line 15
    move v7, p4

    .line 16
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private static createAudioRecordOnMOrHigher(IIIII)Landroid/media/AudioRecord;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    const-string v0, "WrappedAudioRecord"

    .line 2
    .line 3
    const-string v1, "createAudioRecordOnMOrHigher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/hmwebrtc/audio/n0;->a()Landroid/media/AudioRecord$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p0}, Lorg/hmwebrtc/audio/i0;->a(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lorg/hmwebrtc/audio/j0;->a(Landroid/media/AudioRecord$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, p4}, Lorg/hmwebrtc/audio/k0;->a(Landroid/media/AudioRecord$Builder;I)Landroid/media/AudioRecord$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lorg/hmwebrtc/audio/l0;->a(Landroid/media/AudioRecord$Builder;)Landroid/media/AudioRecord;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioFormat:I

    .line 11
    .line 12
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSource()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioSource:I

    .line 11
    .line 12
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/hmwebrtc/audio/m0;->a(Landroid/media/AudioRecord;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mChannelCount:I

    .line 11
    .line 12
    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mRecordingState:I

    .line 11
    .line 12
    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mSampleRate:I

    .line 11
    .line 12
    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getSystemAudioRecord()Landroid/media/AudioRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    return-object v0
.end method

.method public initRecord()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "WrappedAudioRecord"

    .line 7
    .line 8
    const-string v2, "initRecord !"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioSource:I

    .line 14
    .line 15
    iget v2, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mSampleRate:I

    .line 16
    .line 17
    iget v3, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mChannelConfig:I

    .line 18
    .line 19
    iget v4, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioFormat:I

    .line 20
    .line 21
    iget v5, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mBufferSizeInBytes:I

    .line 22
    .line 23
    invoke-static {v0, v2, v3, v4, v5}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->createAudioRecord(IIIII)Landroid/media/AudioRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->getChannelCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mChannelCount:I

    .line 34
    .line 35
    iput v1, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mRecordingState:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1
.end method

.method public isTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMicrophoneMute(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public startRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mRecordingState:I

    .line 10
    .line 11
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lorg/hmwebrtc/audio/WrappedAudioRecord;->mRecordingState:I

    .line 10
    .line 11
    return-void
.end method
