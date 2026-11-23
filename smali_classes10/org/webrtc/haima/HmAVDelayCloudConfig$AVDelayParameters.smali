.class public Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmAVDelayCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVDelayParameters"
.end annotation


# instance fields
.field public enable:Z

.field public isDebugLog:Z

.field public mAudioCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mAudioDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mAudioEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mAudioPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mNetJitterParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mNetLossParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mVideoCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mVideoDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mVideoEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

.field public videoFromCapToDecodedThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 10
    .line 11
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 17
    .line 18
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 24
    .line 25
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 26
    .line 27
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 31
    .line 32
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 38
    .line 39
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 45
    .line 46
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 52
    .line 53
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 54
    .line 55
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 59
    .line 60
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 61
    .line 62
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetLossParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 66
    .line 67
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 68
    .line 69
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetJitterParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->videoFromCapToDecodedThreshold:I

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetLossParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetJitterParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->reset()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->videoFromCapToDecodedThreshold:I

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "isDebugLog reset:"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "HmAVDelayCloudConfig"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
