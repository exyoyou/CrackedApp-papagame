.class public Lorg/hmwebrtc/audio/JavaAudioDeviceModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/AudioDeviceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioSamples;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;,
        Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JavaAudioDeviceModule"


# instance fields
.field private final audioInput:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

.field private final audioManager:Landroid/media/AudioManager;

.field private final audioOutput:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

.field private final context:Landroid/content/Context;

.field private final inputSampleRate:I

.field private nativeAudioDeviceModule:J

.field private final nativeLock:Ljava/lang/Object;

.field private final outputSampleRate:I

.field private final useStereoInput:Z

.field private final useStereoOutput:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioManager:Landroid/media/AudioManager;

    .line 6
    iput-object p3, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioInput:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 7
    iput-object p4, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioOutput:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 8
    iput p5, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->inputSampleRate:I

    .line 9
    iput p6, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->outputSampleRate:I

    .line 10
    iput-boolean p7, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->useStereoInput:Z

    .line 11
    iput-boolean p8, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->useStereoOutput:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZLorg/hmwebrtc/audio/JavaAudioDeviceModule$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZ)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;-><init>(Landroid/content/Context;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static isBuiltInAcousticEchoCancelerSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static isBuiltInNoiseSuppressorSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static native nativeCreateAudioDeviceModule(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZ)J
.end method


# virtual methods
.method public getNativeAudioDeviceModulePointer()J
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    iget-object v6, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->context:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v7, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    iget-object v8, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioInput:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 17
    .line 18
    iget-object v9, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioOutput:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 19
    .line 20
    iget v10, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->inputSampleRate:I

    .line 21
    .line 22
    iget v11, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->outputSampleRate:I

    .line 23
    .line 24
    iget-boolean v12, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->useStereoInput:Z

    .line 25
    .line 26
    iget-boolean v13, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->useStereoOutput:Z

    .line 27
    .line 28
    invoke-static/range {v6 .. v13}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeCreateAudioDeviceModule(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 33
    .line 34
    :cond_0
    iget-wide v1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-wide v1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public getWebRtcAudioTrack()Lorg/hmwebrtc/audio/WebRtcAudioTrack;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioOutput:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v2}, Lorg/hmwebrtc/JniCommon;->nativeReleaseRef(J)V

    .line 13
    .line 14
    .line 15
    iput-wide v3, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->nativeAudioDeviceModule:J

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public setMicrophoneMute(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMicrophoneMute: "

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
    const-string v1, "JavaAudioDeviceModule"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioInput:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setPreferredInputDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setPreferredInputDevice: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JavaAudioDeviceModule"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->audioInput:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setSpeakerMute(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSpeakerMute: "

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
    const-string v1, "JavaAudioDeviceModule"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->setSpeakerMute(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
