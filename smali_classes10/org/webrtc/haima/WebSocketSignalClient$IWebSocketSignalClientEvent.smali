.class public interface abstract Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/WebSocketSignalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWebSocketSignalClientEvent"
.end annotation


# virtual methods
.method public abstract onWebSocketConnectStatus(Ljava/lang/String;)V
.end method

.method public abstract onWebSocketConnected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWebSocketDisconnected(I)V
.end method

.method public abstract onWebSocketForceDisconnectRTC(Ljava/lang/String;)V
.end method

.method public abstract onWebSocketHandShakeSucceed()V
.end method

.method public abstract onWebSocketRecvExtMessage(Ljava/lang/String;)V
.end method

.method public abstract onWebSocketRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
.end method

.method public abstract onWebSocketRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/String;)V
.end method

.method public abstract onWebSocketSendMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
