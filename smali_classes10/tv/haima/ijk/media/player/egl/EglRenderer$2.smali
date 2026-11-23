.class Ltv/haima/ijk/media/player/egl/EglRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/egl/EglRenderer;->init(Ltv/haima/ijk/media/player/egl/EglBase$Context;[ILtv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$2;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$2;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 2
    .line 3
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$300(Ltv/haima/ijk/media/player/egl/EglRenderer;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/EglRenderer$2;->this$0:Ltv/haima/ijk/media/player/egl/EglRenderer;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->access$402(Ltv/haima/ijk/media/player/egl/EglRenderer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method
