.class public interface abstract Lcom/haima/hmcp/business/IMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract removeSendMessage(Lcom/haima/hmcp/beans/Message;)Lcom/haima/hmcp/listeners/OnSendMessageListener;
.end method

.method public abstract removeSendMessage(ZLcom/haima/hmcp/beans/Message;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
.end method

.method public abstract stopRetrySendMessage()V
.end method
