.class Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameListenerAndParams"
.end annotation


# instance fields
.field public final applyFpsReduction:Z

.field public final drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

.field public final listener:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

.field public final scale:F


# direct methods
.method public constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;FLtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->listener:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    .line 5
    .line 6
    iput p2, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->scale:F

    .line 7
    .line 8
    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->drawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 9
    .line 10
    iput-boolean p4, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    .line 11
    .line 12
    return-void
.end method
