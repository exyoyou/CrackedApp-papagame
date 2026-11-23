.class Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setVideoEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

.field final synthetic val$encoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->val$encoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$500(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->val$encoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 17
    .line 18
    invoke-static {v3}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$600(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v1, v2, v3}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;->val$encoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$702(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method
