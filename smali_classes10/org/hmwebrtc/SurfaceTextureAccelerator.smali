.class public Lorg/hmwebrtc/SurfaceTextureAccelerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TexAcc"


# instance fields
.field mEglContext:Lorg/hmwebrtc/EglBase14$Context;

.field private mFreeTextureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlDrawer:Lorg/hmwebrtc/GlRectDrawer;

.field private mHandler:Landroid/os/Handler;

.field private mLastUsingIndex:I

.field private mLastUsingTimeMs:J

.field private mSize:I

.field private mUsingTextureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

.field private mVideoSink:Lorg/hmwebrtc/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mYuvConverter:Lorg/hmwebrtc/YuvConverter;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/EglBase14$Context;ILandroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/GlRectDrawer;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/hmwebrtc/GlRectDrawer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mGlDrawer:Lorg/hmwebrtc/GlRectDrawer;

    .line 10
    .line 11
    new-instance v0, Lorg/hmwebrtc/VideoFrameDrawer;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/hmwebrtc/VideoFrameDrawer;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 17
    .line 18
    new-instance v0, Lorg/hmwebrtc/YuvConverter;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/hmwebrtc/YuvConverter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mYuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 24
    .line 25
    iput-object p3, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mEglContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    if-ge p2, p1, :cond_0

    .line 45
    .line 46
    const/4 p2, 0x2

    .line 47
    :cond_0
    const/4 p1, 0x5

    .line 48
    if-le p2, p1, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x5

    .line 51
    :cond_1
    iput p2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mSize:I

    .line 52
    .line 53
    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingIndex:I

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    iput-wide v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingTimeMs:J

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p3, "create texinfo size="

    .line 66
    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "TexAcc"

    .line 78
    .line 79
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/SurfaceTextureAccelerator;Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->addFreeTextureInfo(Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/SurfaceTextureAccelerator;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->deliverTextureFrame(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addFreeTextureInfo(Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private createOesTexture(Lorg/hmwebrtc/EglBase14$Context;)Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;
    .locals 4

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglBase;->CONFIG_RECORDABLE:[I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/hmwebrtc/h;->j(Lorg/hmwebrtc/EglBase14$Context;[I)Lorg/hmwebrtc/EglBase14;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v0, 0x8d65

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->generateTexture(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/view/Surface;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Lorg/hmwebrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x320

    .line 32
    .line 33
    const/16 v3, 0x258

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$1;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lorg/hmwebrtc/SurfaceTextureAccelerator$1;-><init>(Lorg/hmwebrtc/SurfaceTextureAccelerator;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 55
    .line 56
    invoke-direct {v2}, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->egl:Lorg/hmwebrtc/EglBase14;

    .line 60
    .line 61
    iput v0, v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->textureId:I

    .line 62
    .line 63
    iput-object v1, v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->surface:Landroid/graphics/SurfaceTexture;

    .line 64
    .line 65
    iput-object p0, v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->owner:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 66
    .line 67
    return-object v2
.end method

.method private deliverTextureFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lorg/hmwebrtc/EglBase;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->findUsingTextureInfo(Landroid/graphics/SurfaceTexture;)Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    if-nez v9, :cond_1

    .line 22
    .line 23
    const-string v0, "TexAcc"

    .line 24
    .line 25
    const-string v1, "not find textureinfo!"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/16 v0, 0x10

    .line 31
    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 38
    .line 39
    .line 40
    move-result-wide v10

    .line 41
    new-instance p1, Lorg/hmwebrtc/TextureBufferImpl;

    .line 42
    .line 43
    iget v2, v9, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->width:I

    .line 44
    .line 45
    iget v3, v9, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->height:I

    .line 46
    .line 47
    sget-object v4, Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 48
    .line 49
    iget v5, v9, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->textureId:I

    .line 50
    .line 51
    invoke-static {v0}, Lorg/hmwebrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v7, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v8, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mYuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    invoke-direct/range {v1 .. v9}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lorg/hmwebrtc/VideoFrame;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p1, v1, v10, v11}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoSink:Lorg/hmwebrtc/VideoSink;

    .line 70
    .line 71
    invoke-interface {p1, v0}, Lorg/hmwebrtc/VideoSink;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    const-string v1, "TexAcc"

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v3, "updateTexImage error!"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p1

    .line 111
    :cond_2
    :goto_1
    return-void
.end method

.method private findUsingTextureInfo(Landroid/graphics/SurfaceTexture;)Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 17
    .line 18
    iget-object v2, v2, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->surface:Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method private getFreeTextureInfo()Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "TexAcc"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "getFreeTextureInfo not find"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget v4, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingIndex:I

    .line 37
    .line 38
    iget v5, v0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->index:I

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    iget-wide v4, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingTimeMs:J

    .line 43
    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    cmp-long v8, v4, v6

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v5, "getFreeTextureInfo index="

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v5, v0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->index:I

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, ",preIndex:"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v5, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingIndex:I

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, ",delayms:"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-wide v5, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingTimeMs:J

    .line 81
    .line 82
    sub-long v5, v2, v5

    .line 83
    .line 84
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget v1, v0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->index:I

    .line 95
    .line 96
    iput v1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingIndex:I

    .line 97
    .line 98
    :cond_2
    iput-wide v2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mLastUsingTimeMs:J

    .line 99
    .line 100
    return-object v0
.end method

.method private isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoSink:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method


# virtual methods
.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->getFreeTextureInfo()Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, v0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->egl:Lorg/hmwebrtc/EglBase14;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0, v2, v3}, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->updateSize(II)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->makeCurrent()V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x4000

    .line 35
    .line 36
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoFrameDrawer:Lorg/hmwebrtc/VideoFrameDrawer;

    .line 40
    .line 41
    iget-object v2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mGlDrawer:Lorg/hmwebrtc/GlRectDrawer;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, p1, v2, v3}, Lorg/hmwebrtc/VideoFrameDrawer;->drawFrame(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->swapBuffers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    return-void
.end method

.method public release()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoSink:Lorg/hmwebrtc/VideoSink;

    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mYuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/hmwebrtc/YuvConverter;->release()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/4 v3, 0x1

    .line 18
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 27
    .line 28
    iget v5, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->textureId:I

    .line 29
    .line 30
    filled-new-array {v5}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v3, v5, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->surface:Landroid/graphics/SurfaceTexture;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 40
    .line 41
    .line 42
    iget-object v3, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->egl:Lorg/hmwebrtc/EglBase14;

    .line 43
    .line 44
    invoke-interface {v3}, Lorg/hmwebrtc/EglBase;->release()V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_1
    if-ge v2, v0, :cond_1

    .line 63
    .line 64
    iget-object v4, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 71
    .line 72
    iget v5, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->textureId:I

    .line 73
    .line 74
    filled-new-array {v5}, [I

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v3, v5, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 79
    .line 80
    .line 81
    iget-object v5, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->surface:Landroid/graphics/SurfaceTexture;

    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->release()V

    .line 84
    .line 85
    .line 86
    iget-object v4, v4, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->egl:Lorg/hmwebrtc/EglBase14;

    .line 87
    .line 88
    invoke-interface {v4}, Lorg/hmwebrtc/EglBase;->release()V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mUsingTextureList:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public startListening(Lorg/hmwebrtc/VideoSink;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mVideoSink:Lorg/hmwebrtc/VideoSink;

    .line 6
    .line 7
    :goto_0
    iget p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mSize:I

    .line 8
    .line 9
    if-ge v0, p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mEglContext:Lorg/hmwebrtc/EglBase14$Context;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->createOesTexture(Lorg/hmwebrtc/EglBase14$Context;)Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iput v0, p1, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->index:I

    .line 21
    .line 22
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator;->mFreeTextureList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method
