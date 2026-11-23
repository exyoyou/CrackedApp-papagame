.class public final synthetic Ltv/haima/ijk/media/player/egl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/f;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/f;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/f;->d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/f;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/f;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/f;->d:Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;

    invoke-static {v0, v1, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->d(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;)V

    return-void
.end method
