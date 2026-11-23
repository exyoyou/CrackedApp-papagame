.class public final synthetic Lorg/webrtc/haima/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

.field public final synthetic c:Lorg/hmwebrtc/PeerConnection$PeerConnectionState;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;Lorg/hmwebrtc/PeerConnection$PeerConnectionState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/m0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iput-object p2, p0, Lorg/webrtc/haima/m0;->c:Lorg/hmwebrtc/PeerConnection$PeerConnectionState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/m0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iget-object v1, p0, Lorg/webrtc/haima/m0;->c:Lorg/hmwebrtc/PeerConnection$PeerConnectionState;

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PCObserver;->d(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;Lorg/hmwebrtc/PeerConnection$PeerConnectionState;)V

    return-void
.end method
