.class public final synthetic Lorg/webrtc/haima/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/WebSocketRTCClient;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/WebSocketRTCClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/h1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    iput-object p2, p0, Lorg/webrtc/haima/h1;->c:Landroid/content/Context;

    iput-object p3, p0, Lorg/webrtc/haima/h1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/h1;->b:Lorg/webrtc/haima/WebSocketRTCClient;

    iget-object v1, p0, Lorg/webrtc/haima/h1;->c:Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/haima/h1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->a(Lorg/webrtc/haima/WebSocketRTCClient;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
