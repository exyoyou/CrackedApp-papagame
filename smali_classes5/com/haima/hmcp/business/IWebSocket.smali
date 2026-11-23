.class public interface abstract Lcom/haima/hmcp/business/IWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V
.end method

.method public abstract cleanObserver()V
.end method

.method public abstract connect2Access(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V
.end method

.method public abstract connect2Download(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
.end method

.method public abstract connect2InstanceWsServer(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;)V
.end method

.method public abstract connect2Transfer(Ljava/lang/String;Lcom/haima/hmcp/business/TransferHelper;)V
.end method

.method public abstract connect2Upload(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnect2Access()V
.end method

.method public abstract disconnect2Download()V
.end method

.method public abstract disconnect2InstanceWsServer()V
.end method

.method public abstract disconnect2Transfer()V
.end method

.method public abstract disconnect2Upload()V
.end method

.method public abstract isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z
.end method

.method public abstract isHearBeatNormal(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z
.end method

.method public abstract removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V
.end method

.method public abstract sendBinaryMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;[B)V
.end method

.method public abstract sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
.end method

.method public abstract sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;Z)V
.end method

.method public abstract setConfig(Lcom/haima/hmcp/beans/WebSocketConfig;)V
.end method
