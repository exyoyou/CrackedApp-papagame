.class public Lorg/hmwebrtc/TextureEglRenderer;
.super Lorg/hmwebrtc/EglRenderer;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureEglRenderer"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private mSurface:Ljava/lang/Object;

.field private rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/hmwebrtc/VideoFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isRenderingPaused:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isFirstFrameRendered:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isFirstFrameRendered:Z

    .line 16
    .line 17
    const-string v1, "TextureEglRenderer"

    .line 18
    .line 19
    const-string v2, "Reporting first rendered frame."

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameWidth:I

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    iget v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameHeight:I

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    .line 47
    iget v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->frameRotation:I

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    :cond_2
    const-string v1, "TextureEglRenderer"

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "Reporting frame resolution changed to "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "x"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, " with rotation "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {v3}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-interface {v1, v2, v3, v4}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameWidth:I

    .line 145
    .line 146
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameHeight:I

    .line 151
    .line 152
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iput p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->frameRotation:I

    .line 157
    .line 158
    :cond_4
    monitor-exit v0

    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    throw p1
.end method


# virtual methods
.method public SetRendererEvents(Lorg/hmwebrtc/RendererCommon$RendererEvents;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iput-boolean v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->isFirstFrameRendered:Z

    .line 11
    .line 12
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameWidth:I

    .line 13
    .line 14
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameHeight:I

    .line 15
    .line 16
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->frameRotation:I

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public disableFpsReduction()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isRenderingPaused:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Lorg/hmwebrtc/EglRenderer;->disableFpsReduction()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v1
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iput-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 3
    iget-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->isFirstFrameRendered:Z

    .line 5
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameWidth:I

    .line 6
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameHeight:I

    .line 7
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->frameRotation:I

    .line 8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->mSurface:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/hmwebrtc/EglRenderer;->setEglSurface(Ljava/lang/Object;)V

    .line 10
    invoke-super {p0, p1, p3, p4}, Lorg/hmwebrtc/EglRenderer;->init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/hmwebrtc/TextureEglRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public initWithoutOnMainThread(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 2
    .line 3
    iget-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->isFirstFrameRendered:Z

    .line 8
    .line 9
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameWidth:I

    .line 10
    .line 11
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->rotatedFrameHeight:I

    .line 12
    .line 13
    iput v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->frameRotation:I

    .line 14
    .line 15
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p2, p0, Lorg/hmwebrtc/TextureEglRenderer;->mSurface:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lorg/hmwebrtc/EglRenderer;->setEglSurface(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p3, p4}, Lorg/hmwebrtc/EglRenderer;->init(Lorg/hmwebrtc/EglBase$Context;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/TextureEglRenderer;->updateFrameDimensionsAndReportEvents(Lorg/hmwebrtc/VideoFrame;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/hmwebrtc/EglRenderer;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFrameDs(Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/TextureEglRenderer;->updateFrameDimensionsAndReportEvents(Lorg/hmwebrtc/VideoFrame;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->mSurface:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    const-string p1, "beginning onSurfaceTextureDestroyed(). "

    .line 2
    .line 3
    const-string v0, "TextureEglRenderer"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lorg/hmwebrtc/f0;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Lorg/hmwebrtc/f0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/hmwebrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lorg/hmwebrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lorg/hmwebrtc/TextureEglRenderer;->mSurface:Ljava/lang/Object;

    .line 30
    .line 31
    const-string p1, "ending onSurfaceTextureDestroyed(). "

    .line 32
    .line 33
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "surfaceChanged, size: "

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, "x"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "TextureEglRenderer"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isRenderingPaused:Z

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Lorg/hmwebrtc/EglRenderer;->pauseVideo()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v1
.end method

.method public releaseEglSurface()V
    .locals 3

    .line 1
    const-string v0, "beginning releaseEglSurface(). "

    .line 2
    .line 3
    const-string v1, "TextureEglRenderer"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lorg/hmwebrtc/f0;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lorg/hmwebrtc/f0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lorg/hmwebrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/hmwebrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "ending releaseEglSurface(). "

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    cmpl-float v1, p1, v1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lorg/hmwebrtc/TextureEglRenderer;->isRenderingPaused:Z

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-super {p0, p1}, Lorg/hmwebrtc/EglRenderer;->setFpsReduction(F)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
