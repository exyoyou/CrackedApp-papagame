.class public final synthetic Lorg/webrtc/haima/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/WebSocketRTCClient;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/f1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/f1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    invoke-static {v0}, Lorg/webrtc/haima/WebSocketRTCClient;->e(Lorg/webrtc/haima/WebSocketRTCClient;)V

    return-void
.end method
