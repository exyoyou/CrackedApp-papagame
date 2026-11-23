.class public interface abstract Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE_CANNOT_CONNECT:I = 0x2

.field public static final CLOSE_CONNECTION_LOST:I = 0x3

.field public static final CLOSE_INTERNAL_ERROR:I = 0x5

.field public static final CLOSE_NORMAL:I = 0x1

.field public static final CLOSE_PROTOCOL_ERROR:I = 0x4

.field public static final CLOSE_RECONNECT:I = 0x7

.field public static final CLOSE_SERVER_ERROR:I = 0x6


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onConnect(Lcom/cloudplay/messagesdk/socket/b/h/a;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onMessage([BZ)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onPing()V
.end method

.method public abstract onPing([B)V
.end method

.method public abstract onPong()V
.end method

.method public abstract onPong([B)V
.end method

.method public abstract setConnection(Lcom/cloudplay/messagesdk/socket/b/d;)V
.end method
