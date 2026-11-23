.class public final synthetic Lorg/webrtc/haima/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

.field public final synthetic c:[Lorg/hmwebrtc/IceCandidate;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;[Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/n0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iput-object p2, p0, Lorg/webrtc/haima/n0;->c:[Lorg/hmwebrtc/IceCandidate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/n0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iget-object v1, p0, Lorg/webrtc/haima/n0;->c:[Lorg/hmwebrtc/IceCandidate;

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PCObserver;->e(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;[Lorg/hmwebrtc/IceCandidate;)V

    return-void
.end method
