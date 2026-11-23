.class public interface abstract Lorg/webrtc/haima/HmStreamerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;,
        Lorg/webrtc/haima/HmStreamerCallback$MsgId;
    }
.end annotation


# virtual methods
.method public abstract onAccProxyConnectStateChange(I)V
.end method

.method public abstract onCatchExceptionMsg(Ljava/lang/String;Z)V
.end method

.method public abstract onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V
.end method

.method public abstract onConnectFailed(Ljava/lang/String;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onCreateAnswer()V
.end method

.method public abstract onCurrentIpAddress(Lorg/json/JSONObject;)V
.end method

.method public abstract onDisconnect(Ljava/lang/String;)V
.end method

.method public abstract onFrameResolution(JJ)V
.end method

.method public abstract onMessage([B)V
.end method

.method public abstract onRemoteBinMessage([B)V
.end method

.method public abstract onRemoteInputTransportState(I)V
.end method

.method public abstract onRemoteTextMessage(Ljava/lang/String;)V
.end method

.method public abstract onRemoteVideoEncodeAdaptation(Ljava/lang/String;III)V
.end method

.method public abstract onRtcError(Ljava/lang/String;)V
.end method

.method public abstract onSignalConnected()V
.end method

.method public abstract onSignalDisconnected()V
.end method

.method public abstract onSignalReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSignalSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onSignalStatus(Ljava/lang/String;)V
.end method

.method public abstract onSignalV2Connected()V
.end method

.method public abstract onSignalV2Disconnected()V
.end method

.method public abstract onSignalV2RecvOffer()V
.end method

.method public abstract onSignalV2Status(Ljava/lang/String;)V
.end method

.method public abstract onSwitchConnectionCallback(II)V
.end method

.method public abstract onSwitchToRtmpStreaming()V
.end method

.method public abstract onX86InputClose()V
.end method

.method public abstract onX86InputOpen()V
.end method

.method public abstract onX86InputPong(Ljava/lang/String;J)V
.end method
