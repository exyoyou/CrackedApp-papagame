.class public Lorg/webrtc/haima/audio/HmAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_TRACK_ID:Ljava/lang/String; = "ARDAMSa0"

.field private static mInstance:Lorg/webrtc/haima/audio/HmAudioManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HmAudioManager"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 14
    .line 15
    return-void
.end method

.method public static getInstance()Lorg/webrtc/haima/audio/HmAudioManager;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/audio/HmAudioManager;->mInstance:Lorg/webrtc/haima/audio/HmAudioManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/webrtc/haima/audio/HmAudioManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/webrtc/haima/audio/HmAudioManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/webrtc/haima/audio/HmAudioManager;->mInstance:Lorg/webrtc/haima/audio/HmAudioManager;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addPeerConnectTrack(Lorg/hmwebrtc/PeerConnection;Lorg/hmwebrtc/MediaConstraints;Lorg/hmwebrtc/PeerConnectionFactory;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ARDAMS_AUDIO"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p3, p2}, Lorg/hmwebrtc/PeerConnectionFactory;->createAudioSource(Lorg/hmwebrtc/MediaConstraints;)Lorg/hmwebrtc/AudioSource;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v1, "ARDAMSa0"

    .line 36
    .line 37
    invoke-virtual {p3, v1, p2}, Lorg/hmwebrtc/PeerConnectionFactory;->createAudioTrack(Ljava/lang/String;Lorg/hmwebrtc/AudioSource;)Lorg/hmwebrtc/AudioTrack;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 p3, 0x1

    .line 42
    invoke-virtual {p2, p3}, Lorg/hmwebrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/PeerConnection;->addTrack(Lorg/hmwebrtc/MediaStreamTrack;Ljava/util/List;)Lorg/hmwebrtc/RtpSender;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public prepare(Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 4
    .line 5
    invoke-direct {p1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mInitMuted:Z

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mRecordType:I

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->setParameters(Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mAudioInputSampleRate:Ljava/lang/Integer;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mAudioInputSampleRate:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setInputSampleRate(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mAudioInputStereo:Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setUseStereoInput(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 52
    .line 53
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mAudioInputAudioFormat:Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p2, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioFormat(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p1, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 67
    .line 68
    iget-object p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAudioFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioRecordFactory(Lorg/hmwebrtc/audio/AudioRecordFactory;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->setInited()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdm(Lorg/hmwebrtc/audio/JavaAudioDeviceModule;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->setAdm(Lorg/hmwebrtc/audio/AudioDeviceModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Microphone mute = false"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mute(Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->mAudioConroller:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mute(Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "Microphone mute = true"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
