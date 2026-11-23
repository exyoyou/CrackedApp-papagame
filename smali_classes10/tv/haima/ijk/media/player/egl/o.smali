.class public final synthetic Ltv/haima/ijk/media/player/egl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/o;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    iput p2, p0, Ltv/haima/ijk/media/player/egl/o;->c:I

    iput p3, p0, Ltv/haima/ijk/media/player/egl/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/o;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    iget v1, p0, Ltv/haima/ijk/media/player/egl/o;->c:I

    iget v2, p0, Ltv/haima/ijk/media/player/egl/o;->d:I

    invoke-static {v0, v1, v2}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->b(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;II)V

    return-void
.end method
