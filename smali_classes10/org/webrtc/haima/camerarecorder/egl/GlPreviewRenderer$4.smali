.class Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->release()V
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
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

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
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;->this$0:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;

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
    return-void
.end method
