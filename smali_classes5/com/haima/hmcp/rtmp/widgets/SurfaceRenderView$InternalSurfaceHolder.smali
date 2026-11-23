.class final Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of p2, p1, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    check-cast p2, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p2, v0}, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->setMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
