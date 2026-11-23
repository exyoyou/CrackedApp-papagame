.class public final synthetic Ltv/haima/ijk/media/player/egl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/h;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iput p2, p0, Ltv/haima/ijk/media/player/egl/h;->c:F

    iput p3, p0, Ltv/haima/ijk/media/player/egl/h;->d:F

    iput p4, p0, Ltv/haima/ijk/media/player/egl/h;->e:F

    iput p5, p0, Ltv/haima/ijk/media/player/egl/h;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/h;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iget v1, p0, Ltv/haima/ijk/media/player/egl/h;->c:F

    iget v2, p0, Ltv/haima/ijk/media/player/egl/h;->d:F

    iget v3, p0, Ltv/haima/ijk/media/player/egl/h;->e:F

    iget v4, p0, Ltv/haima/ijk/media/player/egl/h;->f:F

    invoke-static {v0, v1, v2, v3, v4}, Ltv/haima/ijk/media/player/egl/EglRenderer;->g(Ltv/haima/ijk/media/player/egl/EglRenderer;FFFF)V

    return-void
.end method
