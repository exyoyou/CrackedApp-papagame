.class final Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/haima/ijk/media/player/ISurfaceTextureHost;

.field private mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ltv/haima/ijk/media/player/ISurfaceTextureHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/haima/ijk/media/player/ISurfaceTextureHost;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;

    .line 9
    .line 10
    invoke-interface {p1}, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->access$100(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;)Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->getCloseStream()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->access$200(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->access$202(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Z)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    if-eqz p2, :cond_5

    .line 76
    .line 77
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

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
    new-instance v0, Landroid/view/Surface;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
