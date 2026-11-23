.class public interface abstract Lcom/cloudplay/messagesdk/listener/MessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSchedulerMessageHandlerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;
.end method

.method public abstract onBinaryMessage([B)V
.end method

.method public abstract onReady()V
.end method

.method public abstract onTextMessage(Ljava/lang/String;)V
.end method
