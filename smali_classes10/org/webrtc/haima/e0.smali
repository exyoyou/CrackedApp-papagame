.class public final synthetic Lorg/webrtc/haima/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/e0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/e0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->b(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;)V

    return-void
.end method
