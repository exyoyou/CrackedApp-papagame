.class final Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RenderThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;",
        "Ljava/lang/Thread;",
        "<init>",
        "(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V",
        "run",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;->this$0:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;->this$0:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->access$isRendering$p(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;->this$0:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->access$drawOneFrame(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x10

    .line 18
    .line 19
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
