.class Lorg/hmwebrtc/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDestroy(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$200(Lorg/hmwebrtc/SurfaceTextureHelper;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;->onDestroyBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;->onReleaseBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureHelper$2;->this$0:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->access$100(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/hmwebrtc/SurfaceTextureHelper$FrameRefMonitor;->onRetainBuffer(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
