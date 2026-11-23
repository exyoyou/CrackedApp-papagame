.class public final synthetic Lorg/webrtc/haima/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/listeners/HmPermissionCallback;


# instance fields
.field public final synthetic a:Lorg/webrtc/haima/HmCameraWrapper;

.field public final synthetic b:Lorg/webrtc/haima/HmDCCamera;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/d;->a:Lorg/webrtc/haima/HmCameraWrapper;

    iput-object p2, p0, Lorg/webrtc/haima/d;->b:Lorg/webrtc/haima/HmDCCamera;

    return-void
.end method


# virtual methods
.method public final handlePermissionResult(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/d;->a:Lorg/webrtc/haima/HmCameraWrapper;

    iget-object v1, p0, Lorg/webrtc/haima/d;->b:Lorg/webrtc/haima/HmDCCamera;

    invoke-static {v0, v1, p1}, Lorg/webrtc/haima/HmCameraWrapper;->b(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;Z)V

    return-void
.end method
