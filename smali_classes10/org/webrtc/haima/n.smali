.class public final synthetic Lorg/webrtc/haima/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/PeerConnectionClient;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/n;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iput-object p2, p0, Lorg/webrtc/haima/n;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/webrtc/haima/n;->d:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    iput-object p4, p0, Lorg/webrtc/haima/n;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/n;->b:Lorg/webrtc/haima/PeerConnectionClient;

    iget-object v1, p0, Lorg/webrtc/haima/n;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/webrtc/haima/n;->d:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    iget-object v3, p0, Lorg/webrtc/haima/n;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/haima/PeerConnectionClient;->d(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V

    return-void
.end method
