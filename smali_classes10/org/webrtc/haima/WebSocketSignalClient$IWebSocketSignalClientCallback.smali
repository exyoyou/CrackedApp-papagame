.class public interface abstract Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/WebSocketSignalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWebSocketSignalClientCallback"
.end annotation


# virtual methods
.method public abstract onCreateWebSocketClient(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;)Lorg/webrtc/haima/WebSocketSignalClient;
.end method

.method public abstract onReleaseWebSocketClient(Lorg/webrtc/haima/WebSocketSignalClient;)V
.end method
