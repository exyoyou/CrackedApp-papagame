.class Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Ltv/haima/ijk/media/player/egl/TextureBufferImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

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
    .locals 0

    .line 1
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 2
    .line 3
    invoke-static {p1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->access$000(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;->onRelease(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRetain(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 2
    .line 3
    invoke-static {p1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->access$000(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;->this$0:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;->onRetain(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
