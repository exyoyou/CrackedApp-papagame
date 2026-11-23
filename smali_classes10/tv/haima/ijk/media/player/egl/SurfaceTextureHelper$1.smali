.class final Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;->create(Ljava/lang/String;Ltv/haima/ijk/media/player/egl/EglBase$Context;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;)Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$sharedContext:Ltv/haima/ijk/media/player/egl/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$sharedContext:Ltv/haima/ijk/media/player/egl/EglBase$Context;

    .line 2
    .line 3
    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    .line 6
    .line 7
    iput-object p4, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->call()Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method

.method public call()Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;

    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$sharedContext:Ltv/haima/ijk/media/player/egl/EglBase$Context;

    iget-object v3, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$frameRefMonitor:Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;

    invoke-direct {v1, v2, v3, v4, v0}, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper;-><init>(Ltv/haima/ijk/media/player/egl/EglBase$Context;Landroid/os/Handler;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$FrameRefMonitor;Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " create failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
