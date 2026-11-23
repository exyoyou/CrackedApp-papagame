.class public final synthetic Lorg/webrtc/haima/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/l0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

    iput p2, p0, Lorg/webrtc/haima/l0;->c:I

    iput-wide p3, p0, Lorg/webrtc/haima/l0;->d:J

    iput-object p5, p0, Lorg/webrtc/haima/l0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/l0;->b:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

    iget v1, p0, Lorg/webrtc/haima/l0;->c:I

    iget-wide v2, p0, Lorg/webrtc/haima/l0;->d:J

    iget-object v4, p0, Lorg/webrtc/haima/l0;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;->a(Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;IJLjava/lang/String;)V

    return-void
.end method
