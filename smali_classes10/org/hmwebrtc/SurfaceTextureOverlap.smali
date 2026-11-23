.class public Lorg/hmwebrtc/SurfaceTextureOverlap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureOverlap"


# instance fields
.field private mCaptreId:I

.field private mCaptureIdDrawer:Lorg/hmwebrtc/GlWatermarkDrawer;

.field private mCaptureIdObserver:Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;

.field mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

.field private mFrameHeight:I

.field private mFrameInterval:I

.field private mFrameNum:I

.field private mFrameWidth:I

.field private mFreezeMode:Z

.field private mFreezeModeFinishMs:J

.field private mHandler:Landroid/os/Handler;

.field private mInputEglBase:Lorg/hmwebrtc/EglBase;

.field private mMirror:Z

.field private final mOesTextureId:I

.field private mOutputEglBase:Lorg/hmwebrtc/EglBase;

.field private final mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mViewportHeight:I

.field private mViewportWidth:I

.field private mViewportX:I

.field private mViewportY:I


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;Landroid/graphics/SurfaceTexture;Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput p4, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameInterval:I

    .line 7
    .line 8
    sget-object p3, Lorg/hmwebrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 9
    .line 10
    invoke-static {p1, p3}, Lorg/hmwebrtc/h;->d(Lorg/hmwebrtc/EglBase$Context;[I)Lorg/hmwebrtc/EglBase;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    iput-object p3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    :try_start_0
    invoke-interface {p3}, Lorg/hmwebrtc/EglBase;->createDummyPbufferSurface()V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 21
    .line 22
    invoke-interface {p3}, Lorg/hmwebrtc/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    iget-object p3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 27
    .line 28
    invoke-interface {p3}, Lorg/hmwebrtc/EglBase;->release()V

    .line 29
    .line 30
    .line 31
    iput-object p4, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 32
    .line 33
    :goto_0
    const p3, 0x8d65

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Lorg/hmwebrtc/GlUtil;->generateTexture(I)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    iput p3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOesTextureId:I

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 43
    .line 44
    invoke-direct {v0, p3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    .line 49
    invoke-static {v0, p0, p4}, Lorg/hmwebrtc/SurfaceTextureOverlap;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    sget-object p3, Lorg/hmwebrtc/EglBase;->CONFIG_RECORDABLE:[I

    .line 53
    .line 54
    invoke-static {p1, p3}, Lorg/hmwebrtc/h;->d(Lorg/hmwebrtc/EglBase$Context;[I)Lorg/hmwebrtc/EglBase;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 59
    .line 60
    new-instance p3, Landroid/view/Surface;

    .line 61
    .line 62
    invoke-direct {p3, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, p3}, Lorg/hmwebrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lorg/hmwebrtc/GlRectDrawer;

    .line 69
    .line 70
    invoke-direct {p1}, Lorg/hmwebrtc/GlRectDrawer;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 74
    .line 75
    new-instance p1, Lorg/hmwebrtc/GlWatermarkDrawer;

    .line 76
    .line 77
    invoke-direct {p1}, Lorg/hmwebrtc/GlWatermarkDrawer;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptureIdDrawer:Lorg/hmwebrtc/GlWatermarkDrawer;

    .line 81
    .line 82
    return-void
.end method

.method private readInput()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->updateTexImage()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private updateMode()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeModeFinishMs:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-ltz v4, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeModeFinishMs:J

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeMode:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private updateTexImage()V
    .locals 5

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglBase;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    const-string v2, "SurfaceTextureOverlap"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "updateTexImage error!"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method

.method private writeOutput()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    new-array v3, v0, [F

    .line 17
    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 24
    .line 25
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x4000

    .line 29
    .line 30
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 34
    .line 35
    iget v2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOesTextureId:I

    .line 36
    .line 37
    iget v4, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameWidth:I

    .line 38
    .line 39
    iget v5, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameHeight:I

    .line 40
    .line 41
    iget v6, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportX:I

    .line 42
    .line 43
    iget v7, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportY:I

    .line 44
    .line 45
    iget v8, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportWidth:I

    .line 46
    .line 47
    iget v9, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportHeight:I

    .line 48
    .line 49
    invoke-interface/range {v1 .. v9}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameInterval:I

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget v2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameNum:I

    .line 58
    .line 59
    add-int/lit8 v3, v2, 0x1

    .line 60
    .line 61
    iput v3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameNum:I

    .line 62
    .line 63
    rem-int/2addr v2, v0

    .line 64
    if-ne v2, v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptreId:I

    .line 70
    .line 71
    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptreId:I

    .line 73
    .line 74
    const/16 v2, 0x1b

    .line 75
    .line 76
    if-lt v0, v2, :cond_3

    .line 77
    .line 78
    iput v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptreId:I

    .line 79
    .line 80
    :cond_3
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptreId:I

    .line 81
    .line 82
    :goto_1
    iget v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameNum:I

    .line 83
    .line 84
    const/16 v2, 0x3e8

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    if-ne v1, v2, :cond_4

    .line 88
    .line 89
    iput v3, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameNum:I

    .line 90
    .line 91
    :cond_4
    iget v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportHeight:I

    .line 92
    .line 93
    div-int/lit8 v10, v1, 0xa

    .line 94
    .line 95
    iget v2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportWidth:I

    .line 96
    .line 97
    div-int/lit8 v4, v2, 0x14

    .line 98
    .line 99
    mul-int/lit8 v5, v10, 0x2

    .line 100
    .line 101
    sub-int v8, v1, v5

    .line 102
    .line 103
    iget-boolean v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mMirror:Z

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    mul-int/lit8 v1, v4, 0x3

    .line 108
    .line 109
    mul-int/lit8 v1, v1, 0x2

    .line 110
    .line 111
    sub-int/2addr v3, v1

    .line 112
    if-gez v3, :cond_5

    .line 113
    .line 114
    add-int/2addr v3, v2

    .line 115
    :cond_5
    move v7, v3

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    const/4 v7, 0x0

    .line 118
    :goto_2
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->updateMode()V

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeMode:Z

    .line 122
    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    if-ltz v0, :cond_8

    .line 126
    .line 127
    :cond_7
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptureIdDrawer:Lorg/hmwebrtc/GlWatermarkDrawer;

    .line 128
    .line 129
    iget v5, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptreId:I

    .line 130
    .line 131
    mul-int/lit8 v4, v4, 0x3

    .line 132
    .line 133
    mul-int/lit8 v9, v4, 0x2

    .line 134
    .line 135
    iget-boolean v11, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mMirror:Z

    .line 136
    .line 137
    const/4 v6, 0x3

    .line 138
    move-object v4, v1

    .line 139
    invoke-virtual/range {v4 .. v11}, Lorg/hmwebrtc/GlWatermarkDrawer;->drawCaptureId(IIIIIIZ)V

    .line 140
    .line 141
    .line 142
    :cond_8
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 143
    .line 144
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->swapBuffers()V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptureIdObserver:Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;

    .line 148
    .line 149
    if-eqz v1, :cond_9

    .line 150
    .line 151
    invoke-interface {v1, v0}, Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;->onCaptureIdChanged(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "SurfaceTextureOverlap"

    .line 157
    .line 158
    const-string v2, "encodeTexture failed"

    .line 159
    .line 160
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->readInput()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->writeOutput()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOesTextureId:I

    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 18
    .line 19
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->release()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mInputEglBase:Lorg/hmwebrtc/EglBase;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 26
    .line 27
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->release()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mOutputEglBase:Lorg/hmwebrtc/EglBase;

    .line 31
    .line 32
    return-void
.end method

.method public setCaptureIdObserver(Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mCaptureIdObserver:Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;

    .line 2
    .line 3
    return-void
.end method

.method public setFreezeModeDuration(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeMode:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeMode:Z

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    add-long/2addr v0, p1

    .line 19
    iput-wide v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFreezeModeFinishMs:J

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mMirror:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameWidth:I

    .line 10
    .line 11
    iput p2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mFrameHeight:I

    .line 12
    .line 13
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportWidth:I

    .line 14
    .line 15
    iput p2, p0, Lorg/hmwebrtc/SurfaceTextureOverlap;->mViewportHeight:I

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Texture width must be positive, but was "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method
