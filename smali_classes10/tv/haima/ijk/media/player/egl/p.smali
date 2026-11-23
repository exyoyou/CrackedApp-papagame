.class public final synthetic Ltv/haima/ijk/media/player/egl/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

.field public final synthetic c:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/p;->b:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/p;->c:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/p;->b:Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/p;->c:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->a(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method
