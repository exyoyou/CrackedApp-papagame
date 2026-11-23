.class public final synthetic Lorg/webrtc/haima/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;

.field public final synthetic c:[B

.field public final synthetic d:Lorg/webrtc/haima/HaimaDataChannel$Listener;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;[BLorg/webrtc/haima/HaimaDataChannel$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/x;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iput-object p2, p0, Lorg/webrtc/haima/x;->c:[B

    iput-object p3, p0, Lorg/webrtc/haima/x;->d:Lorg/webrtc/haima/HaimaDataChannel$Listener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/x;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iget-object v1, p0, Lorg/webrtc/haima/x;->c:[B

    iget-object v2, p0, Lorg/webrtc/haima/x;->d:Lorg/webrtc/haima/HaimaDataChannel$Listener;

    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->i(Lorg/webrtc/haima/PeerConnectionClient;[BLorg/webrtc/haima/HaimaDataChannel$Listener;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
