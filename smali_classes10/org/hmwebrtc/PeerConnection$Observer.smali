.class public interface abstract Lorg/hmwebrtc/PeerConnection$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onAccProxyConnectStateChange(I)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onAddStream(Lorg/hmwebrtc/MediaStream;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onAddTrack(Lorg/hmwebrtc/RtpReceiver;[Lorg/hmwebrtc/MediaStream;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onConnectionChange(Lorg/hmwebrtc/PeerConnection$PeerConnectionState;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onDataChannel(Lorg/hmwebrtc/DataChannel;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onGetPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onIceConnectionChange(Lorg/hmwebrtc/PeerConnection$IceConnectionState;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onIceConnectionReceivingChange(Z)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onIceGatheringChange(Lorg/hmwebrtc/PeerConnection$IceGatheringState;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onRemoteVideoEncodeAdaptation(Ljava/lang/String;III)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onRemoveStream(Lorg/hmwebrtc/MediaStream;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onRemoveTrack(Lorg/hmwebrtc/RtpReceiver;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onRenegotiationNeeded()V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onSelectedCandidatePairChanged(Lorg/hmwebrtc/CandidatePairChangeEvent;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onSignalingChange(Lorg/hmwebrtc/PeerConnection$SignalingState;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onStandardizedIceConnectionChange(Lorg/hmwebrtc/PeerConnection$IceConnectionState;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onSwitchConnectionCallback(II)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onTrack(Lorg/hmwebrtc/RtpTransceiver;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method

.method public abstract onUdpProtocolUnavailable(ILjava/lang/String;)V
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "Observer"
    .end annotation
.end method
