.class Lorg/hmwebrtc/EglRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/EglRenderer;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

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
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$600(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/VideoFrame;

    move-result-object v3

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v3, :cond_14

    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 6
    invoke-virtual {v3}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 7
    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$900(Lorg/hmwebrtc/EglRenderer;)I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$900(Lorg/hmwebrtc/EglRenderer;)I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v3}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 9
    :cond_2
    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$1000(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 10
    :try_start_1
    iget-object v5, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v5}, Lorg/hmwebrtc/EglRenderer;->access$1100(Lorg/hmwebrtc/EglRenderer;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v5}, Lorg/hmwebrtc/EglRenderer;->access$1100(Lorg/hmwebrtc/EglRenderer;)F

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v2

    .line 11
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v5

    if-lez v7, :cond_4

    div-float/2addr v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 12
    :goto_1
    iget-object v7, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v7}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 13
    iget-object v7, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v7}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 14
    iget-object v7, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v7}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v8}, Lorg/hmwebrtc/EglRenderer;->access$1300(Lorg/hmwebrtc/EglRenderer;)Z

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v8, :cond_5

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_2

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    iget-object v10, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v10}, Lorg/hmwebrtc/EglRenderer;->access$1400(Lorg/hmwebrtc/EglRenderer;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v4, -0x40800000    # -1.0f

    :cond_6
    invoke-virtual {v7, v8, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 15
    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$1500(Lorg/hmwebrtc/EglRenderer;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 16
    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 17
    :cond_7
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$900(Lorg/hmwebrtc/EglRenderer;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 18
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v2

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 19
    :try_start_2
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 20
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 21
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$1700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/VideoFrameDrawer;

    move-result-object v2

    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$1600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/RendererCommon$GlDrawer;

    move-result-object v4

    iget-object v5, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v5}, Lorg/hmwebrtc/EglRenderer;->access$1200(Lorg/hmwebrtc/EglRenderer;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 22
    invoke-static {v8}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    move-result-object v8

    invoke-interface {v8}, Lorg/hmwebrtc/EglBase;->surfaceWidth()I

    move-result v8

    iget-object v9, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v9}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    move-result-object v9

    invoke-interface {v9}, Lorg/hmwebrtc/EglBase;->surfaceHeight()I

    move-result v9

    const/4 v10, 0x1

    .line 23
    invoke-virtual/range {v2 .. v10}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 25
    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$000(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglBase;

    move-result-object v4

    invoke-interface {v4}, Lorg/hmwebrtc/EglBase;->swapBuffers()V

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 27
    iget-object v6, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v6}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v6}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 28
    :cond_8
    iget-object v6, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/hmwebrtc/EglRenderer;->access$2002(Lorg/hmwebrtc/EglRenderer;J)J

    .line 29
    :cond_9
    iget-object v6, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v6}, Lorg/hmwebrtc/EglRenderer;->access$2100(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 30
    :try_start_3
    iget-object v7, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v7}, Lorg/hmwebrtc/EglRenderer;->access$2204(Lorg/hmwebrtc/EglRenderer;)I

    .line 31
    iget-object v7, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    sub-long v0, v4, v0

    invoke-static {v7, v0, v1}, Lorg/hmwebrtc/EglRenderer;->access$2314(Lorg/hmwebrtc/EglRenderer;J)J

    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    sub-long/2addr v4, v2

    invoke-static {v0, v4, v5}, Lorg/hmwebrtc/EglRenderer;->access$2414(Lorg/hmwebrtc/EglRenderer;J)J

    .line 33
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 35
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v0

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 36
    :cond_a
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_4
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 38
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 39
    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$200(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 41
    :try_start_5
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$3000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$3100(Lorg/hmwebrtc/EglRenderer;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_c

    .line 44
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 45
    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v3}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v3

    int-to-long v3, v3

    .line 46
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_c
    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 48
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 49
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Lorg/hmwebrtc/GlUtil$GlOutOfMemoryException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 50
    :try_start_9
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    const-string v2, "Error while drawing frame"

    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/EglRenderer;->access$2500(Lorg/hmwebrtc/EglRenderer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$2600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 52
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$2600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/hmwebrtc/EglRenderer$ErrorCallback;->onGlOutOfMemory(Ljava/lang/Exception;)V

    .line 53
    :cond_d
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1600(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/RendererCommon$GlDrawer;

    move-result-object v0

    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->release()V

    .line 54
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/VideoFrameDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hmwebrtc/VideoFrameDrawer;->release()V

    .line 55
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$2700(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/GlTextureFrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 56
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 57
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v0

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 58
    :cond_e
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_a
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 60
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 61
    :cond_f
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 62
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$200(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_b
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$3000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$3100(Lorg/hmwebrtc/EglRenderer;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_10

    .line 66
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 67
    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v3}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v3

    int-to-long v3, v3

    .line 68
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    :cond_10
    monitor-exit v1

    :goto_3
    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    .line 70
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1

    .line 71
    :goto_4
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 72
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$1900(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/EglRendererJankStatistics;

    move-result-object v1

    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/hmwebrtc/EglRendererJankStatistics;->onRenderFrame(J)V

    .line 73
    :cond_11
    sget-object v1, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_d
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 75
    iget-object v2, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v2}, Lorg/hmwebrtc/EglRenderer;->access$1800(Lorg/hmwebrtc/EglRenderer;)Lorg/hmwebrtc/FrameRenderDelayCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v3}, Lorg/hmwebrtc/EglRenderer;->access$2000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 76
    :cond_12
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 77
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$200(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 78
    :try_start_e
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 79
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v3}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$3000(Lorg/hmwebrtc/EglRenderer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$3100(Lorg/hmwebrtc/EglRenderer;)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_13

    .line 81
    iget-object v1, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v1}, Lorg/hmwebrtc/EglRenderer;->access$300(Lorg/hmwebrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    .line 82
    invoke-static {v3}, Lorg/hmwebrtc/EglRenderer;->access$2900(Lorg/hmwebrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v4}, Lorg/hmwebrtc/EglRenderer;->access$2800(Lorg/hmwebrtc/EglRenderer;)I

    move-result v4

    int-to-long v4, v4

    .line 83
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_13
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 85
    throw v0

    :catchall_6
    move-exception v0

    .line 86
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_7
    move-exception v0

    .line 87
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :catchall_8
    move-exception v0

    .line 88
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v0

    .line 89
    :cond_14
    :goto_5
    iget-object v0, p0, Lorg/hmwebrtc/EglRenderer$2;->this$0:Lorg/hmwebrtc/EglRenderer;

    invoke-static {v0}, Lorg/hmwebrtc/EglRenderer;->access$800(Lorg/hmwebrtc/EglRenderer;)V

    return-void

    :catchall_9
    move-exception v1

    .line 90
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v1
.end method
