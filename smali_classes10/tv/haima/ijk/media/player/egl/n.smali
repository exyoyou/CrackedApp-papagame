.class public final synthetic Ltv/haima/ijk/media/player/egl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/n;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    iput p2, p0, Ltv/haima/ijk/media/player/egl/n;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/n;->b:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    iget v1, p0, Ltv/haima/ijk/media/player/egl/n;->c:I

    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->e(Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;I)V

    return-void
.end method
