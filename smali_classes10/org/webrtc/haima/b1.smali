.class public final synthetic Lorg/webrtc/haima/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/WebSocketRTCClient;

.field public final synthetic c:Lorg/hmwebrtc/IceCandidate;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/b1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    iput-object p2, p0, Lorg/webrtc/haima/b1;->c:Lorg/hmwebrtc/IceCandidate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/b1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    iget-object v1, p0, Lorg/webrtc/haima/b1;->c:Lorg/hmwebrtc/IceCandidate;

    invoke-static {v0, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->c(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/IceCandidate;)V

    return-void
.end method
