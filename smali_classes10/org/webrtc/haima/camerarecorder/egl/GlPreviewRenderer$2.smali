.class Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$300(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$300(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 16
    .line 17
    invoke-static {v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$400(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;->onCreated(Landroid/graphics/SurfaceTexture;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
