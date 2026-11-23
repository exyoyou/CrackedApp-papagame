.class public Lorg/hmwebrtc/PeerConnection$RTCConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTCConfiguration"
.end annotation


# instance fields
.field public activeResetSrtpParams:Z

.field public allowCodecSwitching:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public audioJitterBufferFastAccelerate:Z

.field public audioJitterBufferMaxPackets:I

.field public bundlePolicy:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

.field public candidateNetworkPolicy:Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;

.field public certificate:Lorg/hmwebrtc/RtcCertificatePem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public combinedAudioVideoBwe:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public continualGatheringPolicy:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

.field public countlyObserver:Lorg/hmwebrtc/CountlyObserver;

.field public cryptoOptions:Lorg/hmwebrtc/CryptoOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public disableIPv6OnWifi:Z

.field public disableIpv6:Z

.field public enableCpuOveruseDetection:Z

.field public enableDscp:Z

.field public enableDtlsSrtp:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public enableImplicitRollback:Z

.field public iceBackupCandidatePairPingInterval:I

.field public iceCandidatePoolSize:I

.field public iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iceCheckMinInterval:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iceConnectionReceivingTimeout:I

.field public iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field public iceStableWritableConnectionPingInterval:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iceTransportsType:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

.field public iceUnwritableMinChecks:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public iceUnwritableTimeMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public keyType:Lorg/hmwebrtc/PeerConnection$KeyType;

.field public maxIPv6Networks:I

.field public networkPreference:Lorg/hmwebrtc/PeerConnection$AdapterType;

.field public offerExtmapAllowMixed:Z

.field public presumeWritableWhenFullyRelayed:Z

.field public pruneTurnPorts:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtcBadFrameDetectConfig:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public rtcpMuxPolicy:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

.field public screencastMinBitrate:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public sdpSemantics:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

.field public stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public surfaceIceCandidatesOnIceTransportTypeChanged:Z

.field public suspendBelowMinBitrate:Z

.field public tcpCandidatePolicy:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

.field public turnCustomizer:Lorg/hmwebrtc/TurnCustomizer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public turnLoggingId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public turnPortPrunePolicy:Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;

.field public udpMaxPort:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public udpMinPort:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/hmwebrtc/PeerConnection$IceTransportsType;->ALL:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 7
    .line 8
    sget-object v0, Lorg/hmwebrtc/PeerConnection$BundlePolicy;->BALANCED:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

    .line 11
    .line 12
    sget-object v0, Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

    .line 15
    .line 16
    sget-object v0, Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

    .line 19
    .line 20
    sget-object v0, Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    .line 25
    .line 26
    const/16 p1, 0x32

    .line 27
    .line 28
    iput p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    .line 39
    .line 40
    iput v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 41
    .line 42
    sget-object v1, Lorg/hmwebrtc/PeerConnection$KeyType;->ECDSA:Lorg/hmwebrtc/PeerConnection$KeyType;

    .line 43
    .line 44
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/hmwebrtc/PeerConnection$KeyType;

    .line 45
    .line 46
    sget-object v1, Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

    .line 47
    .line 48
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

    .line 49
    .line 50
    iput p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    .line 51
    .line 52
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 53
    .line 54
    sget-object v1, Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;

    .line 55
    .line 56
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;

    .line 57
    .line 58
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    .line 64
    .line 65
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    .line 66
    .line 67
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    .line 68
    .line 69
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 70
    .line 71
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 72
    .line 73
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    .line 74
    .line 75
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    .line 76
    .line 77
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    .line 78
    .line 79
    const/4 v2, 0x5

    .line 80
    iput v2, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    .line 81
    .line 82
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->disableIpv6:Z

    .line 83
    .line 84
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    iput-boolean v2, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    .line 88
    .line 89
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    .line 90
    .line 91
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    .line 92
    .line 93
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->combinedAudioVideoBwe:Ljava/lang/Boolean;

    .line 94
    .line 95
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    .line 96
    .line 97
    sget-object v3, Lorg/hmwebrtc/PeerConnection$AdapterType;->UNKNOWN:Lorg/hmwebrtc/PeerConnection$AdapterType;

    .line 98
    .line 99
    iput-object v3, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/hmwebrtc/PeerConnection$AdapterType;

    .line 100
    .line 101
    sget-object v3, Lorg/hmwebrtc/PeerConnection$SdpSemantics;->PLAN_B:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

    .line 102
    .line 103
    iput-object v3, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

    .line 104
    .line 105
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    .line 106
    .line 107
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/hmwebrtc/CryptoOptions;

    .line 108
    .line 109
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->allowCodecSwitching:Ljava/lang/Boolean;

    .line 112
    .line 113
    iput-boolean p1, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    .line 114
    .line 115
    iput-boolean v2, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    .line 116
    .line 117
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMinPort:Ljava/lang/Integer;

    .line 118
    .line 119
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMaxPort:Ljava/lang/Integer;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method getActiveResetSrtpParams()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    .line 2
    .line 3
    return v0
.end method

.method getAllowCodecSwitching()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->allowCodecSwitching:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method getAudioJitterBufferFastAccelerate()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    .line 2
    .line 3
    return v0
.end method

.method getAudioJitterBufferMaxPackets()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    .line 2
    .line 3
    return v0
.end method

.method getBundlePolicy()Lorg/hmwebrtc/PeerConnection$BundlePolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getCandidateNetworkPolicy()Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getCertificate()Lorg/hmwebrtc/RtcCertificatePem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->certificate:Lorg/hmwebrtc/RtcCertificatePem;

    .line 2
    .line 3
    return-object v0
.end method

.method getCombinedAudioVideoBwe()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->combinedAudioVideoBwe:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method getContinualGatheringPolicy()Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getCryptoOptions()Lorg/hmwebrtc/CryptoOptions;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/hmwebrtc/CryptoOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method getDisableIPv6OnWifi()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    .line 2
    .line 3
    return v0
.end method

.method getDisableIpv6()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->disableIpv6:Z

    .line 2
    .line 3
    return v0
.end method

.method getEnableCpuOveruseDetection()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    .line 2
    .line 3
    return v0
.end method

.method getEnableDscp()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    .line 2
    .line 3
    return v0
.end method

.method getEnableDtlsSrtp()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method getEnableImplicitRollback()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    .line 2
    .line 3
    return v0
.end method

.method getIceBackupCandidatePairPingInterval()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method getIceCandidatePoolSize()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    .line 2
    .line 3
    return v0
.end method

.method getIceCheckIntervalStrongConnectivity()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceCheckIntervalWeakConnectivity()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceCheckMinInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceConnectionReceivingTimeout()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method getIceServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceStableWritableConnectionPingInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceStableWritableConnectionPingInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceTransportsType()Lorg/hmwebrtc/PeerConnection$IceTransportsType;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceUnwritableMinChecks()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getIceUnwritableTimeout()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getKeyType()Lorg/hmwebrtc/PeerConnection$KeyType;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/hmwebrtc/PeerConnection$KeyType;

    .line 2
    .line 3
    return-object v0
.end method

.method getMaxIPv6Networks()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    .line 2
    .line 3
    return v0
.end method

.method getNetworkPreference()Lorg/hmwebrtc/PeerConnection$AdapterType;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/hmwebrtc/PeerConnection$AdapterType;

    .line 2
    .line 3
    return-object v0
.end method

.method getOfferExtmapAllowMixed()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    .line 2
    .line 3
    return v0
.end method

.method getPresumeWritableWhenFullyRelayed()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    .line 2
    .line 3
    return v0
.end method

.method getPruneTurnPorts()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 2
    .line 3
    return v0
.end method

.method getRtcBadFrameDetectConfig()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->rtcBadFrameDetectConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getRtcpMuxPolicy()Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getScreencastMinBitrate()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getSdpSemantics()Lorg/hmwebrtc/PeerConnection$SdpSemantics;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

    .line 2
    .line 3
    return-object v0
.end method

.method getStableWritableConnectionPingIntervalMs()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getStunCandidateKeepaliveInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getSurfaceIceCandidatesOnIceTransportTypeChanged()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    .line 2
    .line 3
    return v0
.end method

.method getSuspendBelowMinBitrate()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    .line 2
    .line 3
    return v0
.end method

.method getTcpCandidatePolicy()Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getTurnCustomizer()Lorg/hmwebrtc/TurnCustomizer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->turnCustomizer:Lorg/hmwebrtc/TurnCustomizer;

    .line 2
    .line 3
    return-object v0
.end method

.method getTurnLoggingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getTurnPortPrunePolicy()Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method getUdpMaxPort()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMaxPort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getUdpMinPort()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMinPort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method
