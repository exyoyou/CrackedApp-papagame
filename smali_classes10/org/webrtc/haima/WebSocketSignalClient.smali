.class public interface abstract Lorg/webrtc/haima/WebSocketSignalClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;,
        Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;,
        Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;
    }
.end annotation


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract sendMessage(Ljava/lang/String;)V
.end method
