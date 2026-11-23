.class public final synthetic Lorg/webrtc/haima/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/webrtc/haima/camera/HmCameraManager;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/haima/camera/HmCameraManager;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/haima/camera/b;->b:Lorg/webrtc/haima/camera/HmCameraManager;

    iput p2, p0, Lorg/webrtc/haima/camera/b;->c:I

    iput p3, p0, Lorg/webrtc/haima/camera/b;->d:I

    iput p4, p0, Lorg/webrtc/haima/camera/b;->e:I

    iput-boolean p5, p0, Lorg/webrtc/haima/camera/b;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/b;->b:Lorg/webrtc/haima/camera/HmCameraManager;

    iget v1, p0, Lorg/webrtc/haima/camera/b;->c:I

    iget v2, p0, Lorg/webrtc/haima/camera/b;->d:I

    iget v3, p0, Lorg/webrtc/haima/camera/b;->e:I

    iget-boolean v4, p0, Lorg/webrtc/haima/camera/b;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/webrtc/haima/camera/HmCameraManager;->a(Lorg/webrtc/haima/camera/HmCameraManager;IIIZ)V

    return-void
.end method
