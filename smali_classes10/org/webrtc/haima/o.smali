.class public final synthetic Lorg/webrtc/haima/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/o;->b:Lorg/webrtc/haima/PeerConnectionClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/o;->b:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->k(Lorg/webrtc/haima/PeerConnectionClient;)V

    return-void
.end method
