.class public final synthetic Lorg/webrtc/haima/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/h0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    iput-object p2, p0, Lorg/webrtc/haima/h0;->c:Ljava/lang/String;

    iput-wide p3, p0, Lorg/webrtc/haima/h0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/h0;->b:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    iget-object v1, p0, Lorg/webrtc/haima/h0;->c:Ljava/lang/String;

    iget-wide v2, p0, Lorg/webrtc/haima/h0;->d:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;->a(Lorg/webrtc/haima/PeerConnectionClient$DcObserver;Ljava/lang/String;J)V

    return-void
.end method
