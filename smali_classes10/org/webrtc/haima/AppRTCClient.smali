.class public interface abstract Lorg/webrtc/haima/AppRTCClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/AppRTCClient$SignalingEvents;,
        Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;
    }
.end annotation


# virtual methods
.method public abstract connectToRoom(Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;)V
.end method

.method public abstract disconnectFromRoom()V
.end method

.method public abstract sendAnswerSdp(Lorg/hmwebrtc/SessionDescription;)V
.end method

.method public abstract sendJoinMsgToRoom()V
.end method

.method public abstract sendLocalIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
.end method

.method public abstract sendLocalIceCandidateRemovals([Lorg/hmwebrtc/IceCandidate;)V
.end method
