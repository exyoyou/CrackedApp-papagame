.class public final synthetic Ltv/haima/ijk/media/player/egl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/k;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/k;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    invoke-static {v0, p1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->c(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
