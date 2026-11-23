.class public final synthetic Lorg/webrtc/haima/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/i0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    iput-object p2, p0, Lorg/webrtc/haima/i0;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/i0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    iget-object v1, p0, Lorg/webrtc/haima/i0;->c:[B

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->c(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;[B)V

    return-void
.end method
