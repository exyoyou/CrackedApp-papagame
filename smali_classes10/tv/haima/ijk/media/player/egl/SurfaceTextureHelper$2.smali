.class Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numCount:J

.field private sumDelay:J

.field final synthetic this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDestroy(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->numCount:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->numCount:J

    .line 7
    .line 8
    iget-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->sumDelay:J

    .line 9
    .line 10
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->getDelayMs()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-long v2, v2

    .line 15
    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->sumDelay:J

    .line 17
    .line 18
    iget-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->numCount:J

    .line 19
    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-lez v4, :cond_0

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->numCount:J

    .line 29
    .line 30
    iput-wide v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->sumDelay:J

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 33
    .line 34
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$200(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 38
    .line 39
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 46
    .line 47
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;->onDestroyBuffer(Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onRelease(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 10
    .line 11
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;->onReleaseBuffer(Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRetain(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 2
    .line 3
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$2;->this$0:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    .line 10
    .line 11
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->access$100(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;->onRetainBuffer(Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
