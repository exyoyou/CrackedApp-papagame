.class public final synthetic Lorg/webrtc/haima/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/k0;->b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/k0;->b:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->a(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;)V

    return-void
.end method
