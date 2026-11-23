.class public final synthetic Ltv/haima/ijk/media/player/egl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;

.field public final synthetic c:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

.field public final synthetic d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

.field public final synthetic e:F

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/i;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/i;->c:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/i;->d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    iput p4, p0, Ltv/haima/ijk/media/player/egl/i;->e:F

    iput-boolean p5, p0, Ltv/haima/ijk/media/player/egl/i;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/i;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/i;->c:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/i;->d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    iget v3, p0, Ltv/haima/ijk/media/player/egl/i;->e:F

    iget-boolean v4, p0, Ltv/haima/ijk/media/player/egl/i;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->a(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FZ)V

    return-void
.end method
