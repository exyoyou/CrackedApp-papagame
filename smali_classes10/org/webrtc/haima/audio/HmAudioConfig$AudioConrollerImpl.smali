.class Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/audio/HmAudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioConrollerImpl"
.end annotation


# instance fields
.field private mAdm:Lorg/hmwebrtc/audio/AudioDeviceModule;

.field mAudioFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

.field mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

.field private mInited:Z

.field private mInputAudioWriter:Lorg/hmwebrtc/audio/InputAudioWriter;

.field private mMuted:Z

.field private mPreMuteSetted:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 6
    .line 7
    return-void
.end method

.method private createFactory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 2
    .line 3
    iget v1, v0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mRecordType:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_2

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAudioFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;

    .line 20
    .line 21
    iget-boolean v0, v0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mInitMuted:Z

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;-><init>(ZZ)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAudioFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;

    .line 30
    .line 31
    invoke-direct {v0}, Lorg/hmwebrtc/audio/InputAudioRecordFactory;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAudioFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 35
    .line 36
    iput-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInputAudioWriter:Lorg/hmwebrtc/audio/InputAudioWriter;

    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public mute(Z)Z
    .locals 2

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mMuted:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mPreMuteSetted:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAdm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lorg/hmwebrtc/audio/AudioDeviceModule;->setMicrophoneMute(Z)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAdm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mPreMuteSetted:Z

    .line 8
    .line 9
    return-void
.end method

.method public setAdm(Lorg/hmwebrtc/audio/AudioDeviceModule;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAdm, mAdm: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAdm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adm: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", mMuted: "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mMuted:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "AudioConrollerImpl"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mAdm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 44
    .line 45
    iget-boolean p1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mMuted:Z

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mute(Z)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public setInited()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 3
    .line 4
    return-void
.end method

.method public setParameters(Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iput-object p1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mConfig:Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mPreMuteSetted:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mInitMuted:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mMuted:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-boolean v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mMuted:Z

    .line 19
    .line 20
    iput-boolean v0, p1, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;->mInitMuted:Z

    .line 21
    .line 22
    :goto_0
    iput-boolean v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mPreMuteSetted:Z

    .line 23
    .line 24
    invoke-direct {p0}, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->createFactory()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public writePcm([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInputAudioWriter:Lorg/hmwebrtc/audio/InputAudioWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/webrtc/haima/audio/HmAudioConfig$AudioConrollerImpl;->mInited:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/hmwebrtc/audio/InputAudioWriter;->write([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 16
    return p1
.end method
