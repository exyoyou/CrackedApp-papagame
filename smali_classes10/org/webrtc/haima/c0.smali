.class public final synthetic Lorg/webrtc/haima/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$CountlyController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/c0;->b:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    iput-boolean p2, p0, Lorg/webrtc/haima/c0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/c0;->b:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    iget-boolean v1, p0, Lorg/webrtc/haima/c0;->c:Z

    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->a(Lorg/webrtc/haima/PeerConnectionClient$CountlyController;Z)V

    return-void
.end method
