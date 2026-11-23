.class public final synthetic Lorg/webrtc/haima/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

.field public final synthetic c:Lorg/hmwebrtc/SessionDescription;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/j0;->b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    iput-object p2, p0, Lorg/webrtc/haima/j0;->c:Lorg/hmwebrtc/SessionDescription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/j0;->b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    iget-object v1, p0, Lorg/webrtc/haima/j0;->c:Lorg/hmwebrtc/SessionDescription;

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->b(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method
