.class Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->setGlFilter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

.field final synthetic val$filter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->val$filter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$000(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$000(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->release()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->val$filter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$002(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$102(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

    .line 32
    .line 33
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->access$200(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Landroid/opengl/GLSurfaceView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
