.class public final synthetic Lorg/webrtc/haima/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;

.field public final synthetic c:Lorg/hmwebrtc/PeerConnectionFactory$Options;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/PeerConnectionFactory$Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/s;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iput-object p2, p0, Lorg/webrtc/haima/s;->c:Lorg/hmwebrtc/PeerConnectionFactory$Options;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/s;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iget-object v1, p0, Lorg/webrtc/haima/s;->c:Lorg/hmwebrtc/PeerConnectionFactory$Options;

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->m(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/PeerConnectionFactory$Options;)V

    return-void
.end method
