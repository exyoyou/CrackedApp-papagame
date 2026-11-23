.class public Lorg/hmwebrtc/PeerConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/PeerConnection$RTCConfiguration;,
        Lorg/hmwebrtc/PeerConnection$SdpSemantics;,
        Lorg/hmwebrtc/PeerConnection$PortPrunePolicy;,
        Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;,
        Lorg/hmwebrtc/PeerConnection$KeyType;,
        Lorg/hmwebrtc/PeerConnection$AdapterType;,
        Lorg/hmwebrtc/PeerConnection$CandidateNetworkPolicy;,
        Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;,
        Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;,
        Lorg/hmwebrtc/PeerConnection$BundlePolicy;,
        Lorg/hmwebrtc/PeerConnection$IceTransportsType;,
        Lorg/hmwebrtc/PeerConnection$IceServer;,
        Lorg/hmwebrtc/PeerConnection$Observer;,
        Lorg/hmwebrtc/PeerConnection$SignalingState;,
        Lorg/hmwebrtc/PeerConnection$TlsCertPolicy;,
        Lorg/hmwebrtc/PeerConnection$PeerConnectionState;,
        Lorg/hmwebrtc/PeerConnection$IceConnectionState;,
        Lorg/hmwebrtc/PeerConnection$IceGatheringState;
    }
.end annotation


# instance fields
.field private final localStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private final nativePeerConnection:J

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end field

.field private transceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 7
    iput-wide p1, p0, Lorg/hmwebrtc/PeerConnection;->nativePeerConnection:J

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/NativePeerConnectionFactory;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/hmwebrtc/NativePeerConnectionFactory;->createNativePeerConnection()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/PeerConnection;-><init>(J)V

    return-void
.end method

.method public static EnableNetAccelerate(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/PeerConnection;->nativeEnableNetAccelerate(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createNativePeerConnectionObserver(Lorg/hmwebrtc/PeerConnection$Observer;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/PeerConnection;->nativeCreatePeerConnectionObserver(Lorg/hmwebrtc/PeerConnection$Observer;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static enableNativeSrtpCipherReport(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/PeerConnection;->nativeEnableSrtpCipherReport(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private native nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private native nativeAddIceCandidateWithObserver(Ljava/lang/String;ILjava/lang/String;Lorg/hmwebrtc/AddIceObserver;)V
.end method

.method private native nativeAddLocalStream(J)Z
.end method

.method private native nativeAddTrack(JLjava/util/List;)Lorg/hmwebrtc/RtpSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hmwebrtc/RtpSender;"
        }
    .end annotation
.end method

.method private native nativeAddTransceiverOfType(Lorg/hmwebrtc/MediaStreamTrack$MediaType;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;
.end method

.method private native nativeAddTransceiverWithTrack(JLorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;
.end method

.method private native nativeClose()V
.end method

.method private native nativeConnectAccPorxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeConnectionState()Lorg/hmwebrtc/PeerConnection$PeerConnectionState;
.end method

.method private native nativeCreateAnswer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V
.end method

.method private native nativeCreateDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;
.end method

.method private native nativeCreateOffer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V
.end method

.method private static native nativeCreatePeerConnectionObserver(Lorg/hmwebrtc/PeerConnection$Observer;)J
.end method

.method private native nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/hmwebrtc/RtpSender;
.end method

.method private native nativeDisconnectAccPorxy()V
.end method

.method private static native nativeEnableCountlyEventRecord(Z)V
.end method

.method private static native nativeEnableNetAccelerate(Z)V
.end method

.method private static native nativeEnableSrtpCipherReport(Z)V
.end method

.method private static native nativeFreeOwnedPeerConnection(J)V
.end method

.method private native nativeGetCertificate()Lorg/hmwebrtc/RtcCertificatePem;
.end method

.method private native nativeGetLocalDescription()Lorg/hmwebrtc/SessionDescription;
.end method

.method private native nativeGetNativePeerConnection()J
.end method

.method private native nativeGetReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetRemoteDescription()Lorg/hmwebrtc/SessionDescription;
.end method

.method private native nativeGetSenders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetTransceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeIceConnectionState()Lorg/hmwebrtc/PeerConnection$IceConnectionState;
.end method

.method private native nativeIceGatheringState()Lorg/hmwebrtc/PeerConnection$IceGatheringState;
.end method

.method private native nativeNewGetStats(Lorg/hmwebrtc/RTCStatsCollectorCallback;)V
.end method

.method private native nativeOldGetStats(Lorg/hmwebrtc/StatsObserver;J)Z
.end method

.method private native nativeRemoveIceCandidates([Lorg/hmwebrtc/IceCandidate;)Z
.end method

.method private native nativeRemoveLocalStream(J)V
.end method

.method private native nativeRemoveTrack(J)Z
.end method

.method private native nativeRestartIce()V
.end method

.method private native nativeSetAudioPlayout(Z)V
.end method

.method private native nativeSetAudioRecording(Z)V
.end method

.method private native nativeSetBadFrameDetectParams(Ljava/lang/String;)V
.end method

.method private native nativeSetBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method private native nativeSetConfiguration(Lorg/hmwebrtc/PeerConnection$RTCConfiguration;)Z
.end method

.method private static native nativeSetFECParams(II)V
.end method

.method private static native nativeSetHaimaCloudId(Ljava/lang/String;)V
.end method

.method private native nativeSetLocalDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V
.end method

.method private native nativeSetLocalDescriptionAutomatically(Lorg/hmwebrtc/SdpObserver;)V
.end method

.method private native nativeSetPropertyLong(Ljava/lang/String;J)Z
.end method

.method private native nativeSetPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSetRemoteDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V
.end method

.method private static native nativeSetStunRequestResendParams(II)V
.end method

.method private native nativeSignalingState()Lorg/hmwebrtc/PeerConnection$SignalingState;
.end method

.method private native nativeStartRtcEventLog(II)Z
.end method

.method private native nativeStopRtcEventLog()V
.end method

.method private native nativeSwitchToCellularConnection(Z)V
.end method

.method public static setNativeFecParams(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetFECParams(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNativeHaimaCloudId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/PeerConnection;->nativeSetHaimaCloudId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNativeSetStunRequestResendParams(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetStunRequestResendParams(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ConnectAccPorxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/PeerConnection;->nativeConnectAccPorxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public DisconnectAccPorxy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeDisconnectAccPorxy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public SwitchToCellularConnection(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSwitchToCellularConnection(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public addIceCandidate(Lorg/hmwebrtc/IceCandidate;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/hmwebrtc/PeerConnection;->addIceCandidate(Lorg/hmwebrtc/IceCandidate;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HM_RET_OK"

    return-object p1

    :cond_0
    const-string p1, "unknown_error"

    return-object p1
.end method

.method public addIceCandidate(Lorg/hmwebrtc/IceCandidate;Lorg/hmwebrtc/AddIceObserver;)V
    .locals 2

    .line 3
    iget-object v0, p1, Lorg/hmwebrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p1, Lorg/hmwebrtc/IceCandidate;->sdpMLineIndex:I

    iget-object p1, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeAddIceCandidateWithObserver(Ljava/lang/String;ILjava/lang/String;Lorg/hmwebrtc/AddIceObserver;)V

    return-void
.end method

.method public addIceCandidate(Lorg/hmwebrtc/IceCandidate;I)Z
    .locals 1

    .line 1
    iget-object p2, p1, Lorg/hmwebrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v0, p1, Lorg/hmwebrtc/IceCandidate;->sdpMLineIndex:I

    iget-object p1, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addStream(Lorg/hmwebrtc/MediaStream;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaStream;->getNativeMediaStream()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/PeerConnection;->nativeAddLocalStream(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public addTrack(Lorg/hmwebrtc/MediaStreamTrack;)Lorg/hmwebrtc/RtpSender;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/hmwebrtc/PeerConnection;->addTrack(Lorg/hmwebrtc/MediaStreamTrack;Ljava/util/List;)Lorg/hmwebrtc/RtpSender;

    move-result-object p1

    return-object p1
.end method

.method public addTrack(Lorg/hmwebrtc/MediaStreamTrack;Ljava/util/List;)Lorg/hmwebrtc/RtpSender;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/MediaStreamTrack;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hmwebrtc/RtpSender;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeAddTrack(JLjava/util/List;)Lorg/hmwebrtc/RtpSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTrack failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaStreamTrack specified in addTrack."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransceiver(Lorg/hmwebrtc/MediaStreamTrack$MediaType;)Lorg/hmwebrtc/RtpTransceiver;
    .locals 1

    .line 7
    new-instance v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {v0}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/hmwebrtc/PeerConnection;->addTransceiver(Lorg/hmwebrtc/MediaStreamTrack$MediaType;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;

    move-result-object p1

    return-object p1
.end method

.method public addTransceiver(Lorg/hmwebrtc/MediaStreamTrack$MediaType;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;
    .locals 0
    .param p2    # Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {p2}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeAddTransceiverOfType(Lorg/hmwebrtc/MediaStreamTrack$MediaType;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p2, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTransceiver failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaType specified for addTransceiver."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransceiver(Lorg/hmwebrtc/MediaStreamTrack;)Lorg/hmwebrtc/RtpTransceiver;
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {v0}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/hmwebrtc/PeerConnection;->addTransceiver(Lorg/hmwebrtc/MediaStreamTrack;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;

    move-result-object p1

    return-object p1
.end method

.method public addTransceiver(Lorg/hmwebrtc/MediaStreamTrack;Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;
    .locals 2
    .param p2    # Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {p2}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeAddTransceiverWithTrack(JLorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;)Lorg/hmwebrtc/RtpTransceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTransceiver failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaStreamTrack specified for addTransceiver."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeClose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public connectionState()Lorg/hmwebrtc/PeerConnection$PeerConnectionState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeConnectionState()Lorg/hmwebrtc/PeerConnection$PeerConnectionState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public createAnswer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeCreateAnswer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeCreateDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public createOffer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeCreateOffer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createSender(Ljava/lang/String;Ljava/lang/String;)Lorg/hmwebrtc/RtpSender;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/hmwebrtc/RtpSender;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p1
.end method

.method public dispose()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/PeerConnection;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/hmwebrtc/MediaStream;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/hmwebrtc/MediaStream;->getNativeMediaStream()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-direct {p0, v2, v3}, Lorg/hmwebrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/hmwebrtc/MediaStream;->dispose()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lorg/hmwebrtc/RtpSender;

    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpSender;->dispose()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lorg/hmwebrtc/RtpReceiver;

    .line 82
    .line 83
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpReceiver;->dispose()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lorg/hmwebrtc/RtpTransceiver;

    .line 104
    .line 105
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->dispose()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    .line 118
    .line 119
    iget-wide v0, p0, Lorg/hmwebrtc/PeerConnection;->nativePeerConnection:J

    .line 120
    .line 121
    invoke-static {v0, v1}, Lorg/hmwebrtc/PeerConnection;->nativeFreeOwnedPeerConnection(J)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public getCertificate()Lorg/hmwebrtc/RtcCertificatePem;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetCertificate()Lorg/hmwebrtc/RtcCertificatePem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLocalDescription()Lorg/hmwebrtc/SessionDescription;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetLocalDescription()Lorg/hmwebrtc/SessionDescription;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method getNativeOwnedPeerConnection()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/PeerConnection;->nativePeerConnection:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNativePeerConnection()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetNativePeerConnection()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpReceiver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/hmwebrtc/RtpReceiver;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpReceiver;->dispose()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetReceivers()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getRemoteDescription()Lorg/hmwebrtc/SessionDescription;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetRemoteDescription()Lorg/hmwebrtc/SessionDescription;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSenders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpSender;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/hmwebrtc/RtpSender;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpSender;->dispose()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetSenders()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->senders:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getStats(Lorg/hmwebrtc/RTCStatsCollectorCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeNewGetStats(Lorg/hmwebrtc/RTCStatsCollectorCallback;)V

    return-void
.end method

.method public getStats(Lorg/hmwebrtc/StatsObserver;Lorg/hmwebrtc/MediaStreamTrack;)Z
    .locals 2
    .param p2    # Lorg/hmwebrtc/MediaStreamTrack;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lorg/hmwebrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/hmwebrtc/PeerConnection;->nativeOldGetStats(Lorg/hmwebrtc/StatsObserver;J)Z

    move-result p1

    return p1
.end method

.method public getTransceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/hmwebrtc/RtpTransceiver;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->dispose()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeGetTransceivers()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/hmwebrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public iceConnectionState()Lorg/hmwebrtc/PeerConnection$IceConnectionState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeIceConnectionState()Lorg/hmwebrtc/PeerConnection$IceConnectionState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public iceGatheringState()Lorg/hmwebrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeIceGatheringState()Lorg/hmwebrtc/PeerConnection$IceGatheringState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public removeIceCandidates([Lorg/hmwebrtc/IceCandidate;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeRemoveIceCandidates([Lorg/hmwebrtc/IceCandidate;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public removeStream(Lorg/hmwebrtc/MediaStream;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/MediaStream;->getNativeMediaStream()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public removeTrack(Lorg/hmwebrtc/RtpSender;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/hmwebrtc/RtpSender;->getNativeRtpSender()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/PeerConnection;->nativeRemoveTrack(J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string v0, "No RtpSender specified for removeTrack."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public restartIce()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeRestartIce()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAudioPlayout(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetAudioPlayout(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAudioRecording(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetAudioRecording(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/hmwebrtc/PeerConnection;->nativeSetBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setConfiguration(Lorg/hmwebrtc/PeerConnection$RTCConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetConfiguration(Lorg/hmwebrtc/PeerConnection$RTCConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setLocalDescription(Lorg/hmwebrtc/SdpObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetLocalDescriptionAutomatically(Lorg/hmwebrtc/SdpObserver;)V

    return-void
.end method

.method public setLocalDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeSetLocalDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method public setNativeBadFrameDetectParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnection;->nativeSetBadFrameDetectParams(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPropertyLong(Ljava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/hmwebrtc/PeerConnection;->nativeSetPropertyLong(Ljava/lang/String;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeSetPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setRemoteDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeSetRemoteDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public signalingState()Lorg/hmwebrtc/PeerConnection$SignalingState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeSignalingState()Lorg/hmwebrtc/PeerConnection$SignalingState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public startRtcEventLog(II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnection;->nativeStartRtcEventLog(II)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public stopRtcEventLog()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/PeerConnection;->nativeStopRtcEventLog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
