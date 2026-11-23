.class public final synthetic Lorg/webrtc/haima/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/r0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iput p2, p0, Lorg/webrtc/haima/r0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/r0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    iget v1, p0, Lorg/webrtc/haima/r0;->c:I

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PCObserver;->f(Lorg/webrtc/haima/PeerConnectionClient$PCObserver;I)V

    return-void
.end method
