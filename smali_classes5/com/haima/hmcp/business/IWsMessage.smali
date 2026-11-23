.class public interface abstract Lcom/haima/hmcp/business/IWsMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelCountDownTimer(ZLjava/lang/String;)V
.end method

.method public abstract notifyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeSendWsMessage(ZLjava/lang/String;)V
.end method

.method public abstract sendWsMessage(Lcom/haima/hmcp/beans/BaseWsMessage;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
.end method

.method public abstract stopRetrySendWsMessage()V
.end method
