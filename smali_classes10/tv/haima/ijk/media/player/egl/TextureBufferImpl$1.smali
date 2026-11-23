.class Ltv/haima/ijk/media/player/egl/TextureBufferImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$releaseCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$1;->val$releaseCallback:Ljava/lang/Runnable;

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
    iget-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$1;->val$releaseCallback:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRelease(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 0

    return-void
.end method

.method public onRetain(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V
    .locals 0

    return-void
.end method
