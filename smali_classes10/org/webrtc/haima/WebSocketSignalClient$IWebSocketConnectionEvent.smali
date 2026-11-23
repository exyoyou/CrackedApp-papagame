.class public interface abstract Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/WebSocketSignalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWebSocketConnectionEvent"
.end annotation


# virtual methods
.method public abstract onWebSocketConnectStatus(Ljava/lang/String;)V
.end method

.method public abstract onWebSocketConnected()V
.end method

.method public abstract onWebSocketDisconnected(I)V
.end method

.method public abstract onWebSocketRecvMessage(Ljava/lang/String;)V
.end method
