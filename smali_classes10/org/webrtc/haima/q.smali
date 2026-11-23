.class public final synthetic Lorg/webrtc/haima/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/q;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iput-object p2, p0, Lorg/webrtc/haima/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/q;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iget-object v1, p0, Lorg/webrtc/haima/q;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->b(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V

    return-void
.end method
