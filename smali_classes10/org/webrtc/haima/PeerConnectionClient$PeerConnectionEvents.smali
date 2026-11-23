.class public interface abstract Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeerConnectionEvents"
.end annotation


# virtual methods
.method public abstract onAccProxyConnectStateChange(ILjava/lang/Object;)V
.end method

.method public abstract onConnected(Ljava/lang/Object;)V
.end method

.method public abstract onCountlyCallback(IJLjava/lang/String;)V
.end method

.method public abstract onCreatePeerConnectionSuccess(Ljava/lang/Object;)V
.end method

.method public abstract onDcJsonMessage([BLjava/lang/Object;)V
.end method

.method public abstract onDisconnected(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
.end method

.method public abstract onIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
.end method

.method public abstract onIceConnected(Ljava/lang/Object;)V
.end method

.method public abstract onIceDisconnected(Ljava/lang/Object;)V
.end method

.method public abstract onLocalDescriptionCreated(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
.end method

.method public abstract onLocalDescriptionSet(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
.end method

.method public abstract onMessage([BLjava/lang/Object;)V
.end method

.method public abstract onPeerConnectionError(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onPeerConnectionStatsReady(Lorg/hmwebrtc/RTCStatsReport;Ljava/lang/Object;)V
.end method

.method public abstract onPeerConnectionStatsReady([Lorg/hmwebrtc/StatsReport;[[Lorg/hmwebrtc/StatsReport$Value;Ljava/lang/Object;)V
.end method

.method public abstract onReConnected(Ljava/lang/Object;)V
.end method

.method public abstract onRemoteVideoEncodeAdaptation(Ljava/lang/String;IIILjava/lang/Object;)V
.end method

.method public abstract onSDPError(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onSwitchConnectionCallback(IILjava/lang/Object;)V
.end method

.method public abstract onSwitchToRtmpStreaming(Ljava/lang/Object;)V
.end method

.method public abstract onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onX86DataChannelClose(Ljava/lang/Object;)V
.end method

.method public abstract onX86DataChannelOpen(Ljava/lang/Object;)V
.end method

.method public abstract onX86DataChannelPong(Ljava/lang/String;JLjava/lang/Object;)V
.end method
