.class public Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;
.super Lorg/webrtc/haima/camerarecorder/egl/GlFrameBufferObjectRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlPreviewRenderer"


# instance fields
.field private MMatrix:[F

.field private MVPMatrix:[F

.field private ProjMatrix:[F

.field private STMatrix:[F

.field private VMatrix:[F

.field private angle:I

.field private aspectRatio:F

.field private cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

.field private customCameraDistance:F

.field private defautCameraDistance:F

.field private defautLookAtDistance:F

.field private drawScale:F

.field private filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

.field private gestureScale:F

.field private glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

.field private final glView:Landroid/opengl/GLSurfaceView;

.field private final handler:Landroid/os/Handler;

.field private isNewShader:Z

.field private final mLock:Ljava/lang/Object;

.field private previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

.field private previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

.field private scaleRatio:F

.field private surfaceCreateListener:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;

.field private texName:I

.field private updateTexImageCompare:I

.field private updateTexImageCounter:I

.field private videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/GlFrameBufferObjectRenderer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v1, v0, [F

    .line 14
    .line 15
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MVPMatrix:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->ProjMatrix:[F

    .line 20
    .line 21
    new-array v1, v0, [F

    .line 22
    .line 23
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 24
    .line 25
    new-array v1, v0, [F

    .line 26
    .line 27
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->VMatrix:[F

    .line 28
    .line 29
    new-array v0, v0, [F

    .line 30
    .line 31
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->STMatrix:[F

    .line 32
    .line 33
    const/high16 v0, 0x40a00000    # 5.0f

    .line 34
    .line 35
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->defautLookAtDistance:F

    .line 36
    .line 37
    const/high16 v0, 0x40e00000    # 7.0f

    .line 38
    .line 39
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->defautCameraDistance:F

    .line 40
    .line 41
    const/high16 v0, 0x41200000    # 10.0f

    .line 42
    .line 43
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->customCameraDistance:F

    .line 44
    .line 45
    new-instance v0, Ljava/lang/Object;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 53
    .line 54
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/GLES20ConfigChooser;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GLES20ConfigChooser;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/GLES20ContextFactory;

    .line 64
    .line 65
    invoke-direct {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20ContextFactory;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->initValue()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->STMatrix:[F

    .line 81
    .line 82
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->isNewShader:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->surfaceCreateListener:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->texName:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 2
    .line 3
    return-object p1
.end method

.method private initValue()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->aspectRatio:F

    .line 4
    .line 5
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->scaleRatio:F

    .line 6
    .line 7
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->drawScale:F

    .line 8
    .line 9
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->gestureScale:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->angle:I

    .line 13
    .line 14
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCounter:I

    .line 15
    .line 16
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCompare:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getFilter()Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviewTexture()Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDrawFrame(Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->drawScale:F

    .line 2
    .line 3
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->gestureScale:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    div-float v0, v1, v0

    .line 13
    .line 14
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 15
    .line 16
    invoke-static {v3, v2, v0, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->gestureScale:F

    .line 20
    .line 21
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->drawScale:F

    .line 22
    .line 23
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 24
    .line 25
    invoke-static {v3, v2, v0, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCompare:I

    .line 32
    .line 33
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCounter:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_1

    .line 36
    .line 37
    :goto_0
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCompare:I

    .line 38
    .line 39
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCounter:I

    .line 40
    .line 41
    if-eq v1, v3, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->updateTexImage()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 49
    .line 50
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->STMatrix:[F

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getTransformMatrix([F)V

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCompare:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCompare:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->isNewShader:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setup()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 75
    .line 76
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0, v1, v3}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setFrameSize(II)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iput-boolean v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->isNewShader:Z

    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->enable()V

    .line 96
    .line 97
    .line 98
    :cond_4
    const/16 v0, 0x4000

    .line 99
    .line 100
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MVPMatrix:[F

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->VMatrix:[F

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 113
    .line 114
    .line 115
    iget-object v11, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MVPMatrix:[F

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    iget-object v9, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->ProjMatrix:[F

    .line 119
    .line 120
    const/4 v10, 0x0

    .line 121
    const/4 v12, 0x0

    .line 122
    move-object v7, v11

    .line 123
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 127
    .line 128
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->texName:I

    .line 129
    .line 130
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MVPMatrix:[F

    .line 131
    .line 132
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->STMatrix:[F

    .line 133
    .line 134
    iget v5, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->aspectRatio:F

    .line 135
    .line 136
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->draw(I[F[FF)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->enable()V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 150
    .line 151
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 152
    .line 153
    invoke-virtual {v1}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getTexName()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v0, v1, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->draw(ILorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->mLock:Ljava/lang/Object;

    .line 161
    .line 162
    monitor-enter p1

    .line 163
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->videoEncoder:Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;

    .line 164
    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->texName:I

    .line 168
    .line 169
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->STMatrix:[F

    .line 170
    .line 171
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MVPMatrix:[F

    .line 172
    .line 173
    iget v4, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->aspectRatio:F

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->frameAvailableSoon(I[F[FF)V

    .line 176
    .line 177
    .line 178
    :cond_6
    monitor-exit p1

    .line 179
    return-void

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw v0

    .line 183
    :catchall_1
    move-exception p1

    .line 184
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    throw p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCounter:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->updateTexImageCounter:I

    .line 6
    .line 7
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStartPreview(FFZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->angle:I

    .line 11
    .line 12
    neg-int v0, v0

    .line 13
    int-to-float v4, v0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/high16 v7, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 19
    .line 20
    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne p3, v2, :cond_0

    .line 38
    .line 39
    div-float p3, p1, p2

    .line 40
    .line 41
    div-float/2addr p2, p1

    .line 42
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 47
    .line 48
    mul-float p1, p1, v0

    .line 49
    .line 50
    invoke-static {p2, v1, p1, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    div-float/2addr p3, p1

    .line 62
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    div-float/2addr p1, p2

    .line 70
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 75
    .line 76
    mul-float p1, p1, v0

    .line 77
    .line 78
    invoke-static {p2, v1, p1, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    int-to-float p3, p3

    .line 89
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    div-float/2addr p3, v2

    .line 97
    div-float/2addr p1, p2

    .line 98
    cmpl-float p2, p3, p1

    .line 99
    .line 100
    if-ltz p2, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 103
    .line 104
    invoke-static {p1, v1, v0, v0, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    div-float/2addr p1, p3

    .line 109
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->MMatrix:[F

    .line 110
    .line 111
    mul-float p1, p1, v0

    .line 112
    .line 113
    invoke-static {p2, v1, p1, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->setup(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setFrameSize(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setFrameSize(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    int-to-float p1, p1

    .line 19
    int-to-float p2, p2

    .line 20
    div-float/2addr p1, p2

    .line 21
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->scaleRatio:F

    .line 22
    .line 23
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lorg/webrtc/haima/HmCameraWrapper;->getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "lensfacing:"

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    iget p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->defautCameraDistance:F

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sget-object v0, Lorg/webrtc/haima/camerarecorder/LensFacing;->BACK:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    iget p2, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->customCameraDistance:F

    .line 67
    .line 68
    :cond_2
    move v7, p2

    .line 69
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->ProjMatrix:[F

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->scaleRatio:F

    .line 73
    .line 74
    neg-float v2, v3

    .line 75
    const/high16 v4, -0x40800000    # -1.0f

    .line 76
    .line 77
    const/high16 v5, 0x3f800000    # 1.0f

    .line 78
    .line 79
    const/high16 v6, 0x40a00000    # 5.0f

    .line 80
    .line 81
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 14
    .line 15
    .line 16
    aget v4, v2, v3

    .line 17
    .line 18
    iput v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->texName:I

    .line 19
    .line 20
    new-instance v5, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 21
    .line 22
    invoke-direct {v5, v4}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v5, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 26
    .line 27
    invoke-virtual {v5, v0}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 31
    .line 32
    invoke-virtual {v4}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getTextureTarget()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v5, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->texName:I

    .line 37
    .line 38
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 42
    .line 43
    invoke-virtual {v4}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getTextureTarget()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x2601

    .line 48
    .line 49
    const/16 v6, 0x2600

    .line 50
    .line 51
    invoke-static {v4, v5, v6}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->setupSampler(III)V

    .line 52
    .line 53
    .line 54
    const/16 v4, 0xde1

    .line 55
    .line 56
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 60
    .line 61
    invoke-direct {v4}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 65
    .line 66
    new-instance v4, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 67
    .line 68
    iget-object v5, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewTexture:Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;

    .line 69
    .line 70
    invoke-virtual {v5}, Lorg/webrtc/haima/camerarecorder/egl/GlSurfaceTexture;->getTextureTarget()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-direct {v4, v5}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 78
    .line 79
    invoke-virtual {v4}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->setup()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lorg/webrtc/haima/HmCameraWrapper;->getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget v5, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->defautLookAtDistance:F

    .line 91
    .line 92
    if-eqz v4, :cond_0

    .line 93
    .line 94
    invoke-virtual {v4}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sget-object v6, Lorg/webrtc/haima/camerarecorder/LensFacing;->BACK:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 99
    .line 100
    invoke-virtual {v6}, Lorg/webrtc/haima/camerarecorder/LensFacing;->getFacing()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-ne v4, v6, :cond_0

    .line 105
    .line 106
    iget v5, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->customCameraDistance:F

    .line 107
    .line 108
    :cond_0
    move v10, v5

    .line 109
    iget-object v6, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->VMatrix:[F

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    const/high16 v15, 0x3f800000    # 1.0f

    .line 119
    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 126
    .line 127
    if-eqz v4, :cond_1

    .line 128
    .line 129
    iput-boolean v1, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->isNewShader:Z

    .line 130
    .line 131
    :cond_1
    const/16 v1, 0xd33

    .line 132
    .line 133
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->handler:Landroid/os/Handler;

    .line 137
    .line 138
    new-instance v2, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$2;-><init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$4;-><init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAngle(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->angle:I

    .line 2
    .line 3
    const/16 v0, 0x5a

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x10e

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/Resolution;->height()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-float p1, p1

    .line 19
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/Resolution;->width()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr p1, v0

    .line 27
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->aspectRatio:F

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/webrtc/haima/camerarecorder/Resolution;->width()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/Resolution;->height()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    div-float/2addr p1, v0

    .line 45
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->aspectRatio:F

    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method public setCameraResolution(Lorg/webrtc/haima/camerarecorder/Resolution;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->cameraResolution:Lorg/webrtc/haima/camerarecorder/Resolution;

    .line 2
    .line 3
    return-void
.end method

.method public setGestureScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->gestureScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setGlFilter(Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$1;-><init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSurfaceCreateListener(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->surfaceCreateListener:Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$SurfaceCreateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;->glView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer$3;-><init>(Lorg/webrtc/haima/camerarecorder/egl/GlPreviewRenderer;Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
