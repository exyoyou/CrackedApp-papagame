.class public interface abstract Lorg/webrtc/haima/AppRTCClient$SignalingEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/AppRTCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalingEvents"
.end annotation


# virtual methods
.method public abstract forceDisconnectRTC(Ljava/lang/String;)V
.end method

.method public abstract onChannelClose()V
.end method

.method public abstract onChannelConnectStatus(Ljava/lang/String;)V
.end method

.method public abstract onChannelConnected()V
.end method

.method public abstract onChannelError(Ljava/lang/String;)V
.end method

.method public abstract onChannelSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onConnectedToRoom(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
.end method

.method public abstract onRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
.end method

.method public abstract onRemoteIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;)V
.end method

.method public abstract onReportEvent(ILjava/lang/String;)V
.end method

.method public abstract onThrowSignalExceptionMsg(Ljava/lang/String;)V
.end method
