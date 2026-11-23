.class public final synthetic Lorg/webrtc/haima/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/r;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iput-object p2, p0, Lorg/webrtc/haima/r;->c:Ljava/lang/String;

    iput p3, p0, Lorg/webrtc/haima/r;->d:I

    iput-object p4, p0, Lorg/webrtc/haima/r;->e:Ljava/lang/String;

    iput-object p5, p0, Lorg/webrtc/haima/r;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/r;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iget-object v1, p0, Lorg/webrtc/haima/r;->c:Ljava/lang/String;

    iget v2, p0, Lorg/webrtc/haima/r;->d:I

    iget-object v3, p0, Lorg/webrtc/haima/r;->e:Ljava/lang/String;

    iget-object v4, p0, Lorg/webrtc/haima/r;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/webrtc/haima/PeerConnectionClient;->n(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
