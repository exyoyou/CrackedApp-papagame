.class public Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/audio/JavaAudioDeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroid/media/AudioAttributes;

.field private audioFormat:I

.field private final audioManager:Landroid/media/AudioManager;

.field private audioRecordErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

.field private audioRecordStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

.field private audioSource:I

.field private audioTrackErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

.field private audioTrackStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

.field private final context:Landroid/content/Context;

.field private inputSampleRate:I

.field private mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

.field private outputSampleRate:I

.field private samplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private useHardwareAcousticEchoCanceler:Z

.field private useHardwareNoiseSuppressor:Z

.field private useLowLatency:Z

.field private useStereoInput:Z

.field private useStereoOutput:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    .line 5
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    .line 6
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    .line 7
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    .line 9
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioManager;->getSampleRate(Landroid/media/AudioManager;)I

    move-result v0

    iput v0, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 10
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioManager;->getSampleRate(Landroid/media/AudioManager;)I

    move-result p1

    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createAudioDeviceModule()Lorg/hmwebrtc/audio/JavaAudioDeviceModule;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "createAudioDeviceModule"

    .line 4
    .line 5
    const-string v2, "JavaAudioDeviceModule"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "HW NS will be used."

    .line 15
    .line 16
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v1, "Overriding default behavior; now using WebRTC NS!"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const-string v1, "HW NS will not be used."

    .line 32
    .line 33
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-boolean v1, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v1, "HW AEC will be used."

    .line 41
    .line 42
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string v1, "Overriding default behavior; now using WebRTC AEC!"

    .line 53
    .line 54
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    const-string v1, "HW AEC will not be used."

    .line 58
    .line 59
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-boolean v1, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v3, 0x1a

    .line 69
    .line 70
    if-lt v1, v3, :cond_4

    .line 71
    .line 72
    const-string v1, "Low latency mode will be used."

    .line 73
    .line 74
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v1, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    .line 79
    if-nez v1, :cond_5

    .line 80
    .line 81
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->newDefaultScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_5
    move-object v4, v1

    .line 86
    new-instance v1, Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 87
    .line 88
    iget-object v3, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v5, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    .line 91
    .line 92
    iget v6, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    .line 93
    .line 94
    iget v7, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    .line 95
    .line 96
    iget-object v8, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 97
    .line 98
    iget-object v9, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    .line 99
    .line 100
    iget-object v10, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->samplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 101
    .line 102
    iget-boolean v11, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    .line 103
    .line 104
    iget-boolean v12, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    .line 105
    .line 106
    iget-object v13, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 107
    .line 108
    move-object v2, v1

    .line 109
    invoke-direct/range {v2 .. v13}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Landroid/media/AudioManager;IILorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;ZZLorg/hmwebrtc/audio/AudioRecordFactory;)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 113
    .line 114
    iget-object v15, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v2, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    .line 117
    .line 118
    iget-object v3, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioAttributes:Landroid/media/AudioAttributes;

    .line 119
    .line 120
    iget-object v4, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 121
    .line 122
    iget-object v5, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    .line 123
    .line 124
    iget-boolean v6, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    .line 125
    .line 126
    move-object v14, v9

    .line 127
    move-object/from16 v16, v2

    .line 128
    .line 129
    move-object/from16 v17, v3

    .line 130
    .line 131
    move-object/from16 v18, v4

    .line 132
    .line 133
    move-object/from16 v19, v5

    .line 134
    .line 135
    move/from16 v20, v6

    .line 136
    .line 137
    invoke-direct/range {v14 .. v20}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;Z)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;

    .line 141
    .line 142
    iget-object v6, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->context:Landroid/content/Context;

    .line 143
    .line 144
    iget-object v7, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioManager:Landroid/media/AudioManager;

    .line 145
    .line 146
    iget v10, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 147
    .line 148
    iget v11, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    .line 149
    .line 150
    iget-boolean v12, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useStereoInput:Z

    .line 151
    .line 152
    iget-boolean v13, v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useStereoOutput:Z

    .line 153
    .line 154
    const/4 v14, 0x0

    .line 155
    move-object v5, v2

    .line 156
    move-object v8, v1

    .line 157
    invoke-direct/range {v5 .. v14}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/WebRtcAudioTrack;IIZZLorg/hmwebrtc/audio/JavaAudioDeviceModule$1;)V

    .line 158
    .line 159
    .line 160
    return-object v2
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioFormat(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioFormat:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioRecordErrorCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioRecordFactory(Lorg/hmwebrtc/audio/AudioRecordFactory;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioRecordStateCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioRecordStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioSource(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioSource:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioTrackErrorCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackErrorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAudioTrackStateCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->audioTrackStateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInputSampleRate(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Input sample rate overridden to: "

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
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 24
    .line 25
    return-object p0
.end method

.method public setOutputSampleRate(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Output sample rate overridden to: "

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
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    .line 24
    .line 25
    return-object p0
.end method

.method public setSampleRate(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Input/Output sample rate overridden to: "

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
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->inputSampleRate:I

    .line 24
    .line 25
    iput p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->outputSampleRate:I

    .line 26
    .line 27
    return-object p0
.end method

.method public setSamplesReadyCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->samplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScheduler(Ljava/util/concurrent/ScheduledExecutorService;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseHardwareAcousticEchoCanceler(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInAcousticEchoCancelerSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "JavaAudioDeviceModule"

    .line 10
    .line 11
    const-string v0, "HW AEC not supported"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :cond_0
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareAcousticEchoCanceler:Z

    .line 18
    .line 19
    return-object p0
.end method

.method public setUseHardwareNoiseSuppressor(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->isBuiltInNoiseSuppressorSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "JavaAudioDeviceModule"

    .line 10
    .line 11
    const-string v0, "HW NS not supported"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :cond_0
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useHardwareNoiseSuppressor:Z

    .line 18
    .line 19
    return-object p0
.end method

.method public setUseLowLatency(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useLowLatency:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseStereoInput(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useStereoInput:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseStereoOutput(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->useStereoOutput:Z

    .line 2
    .line 3
    return-object p0
.end method
