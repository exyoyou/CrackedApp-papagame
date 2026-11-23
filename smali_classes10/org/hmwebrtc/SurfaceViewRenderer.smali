.class public Lorg/hmwebrtc/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/hmwebrtc/VideoSink;
.implements Lorg/hmwebrtc/RendererCommon$RendererEvents;
.implements Lorg/hmwebrtc/DirectSurfaceHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private directSurfaceRenderDelayMs:J

.field private final eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

.field private enableFixedSize:Z

.field private frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

.field public isEglMonochromeOff:Z

.field private isInit:Z

.field public isUseDirectSurface:Z

.field private mConfigAttributes:[I

.field private mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

.field private mDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

.field private mSharedContext:Lorg/hmwebrtc/EglBase$Context;

.field public mSurface:Landroid/view/Surface;

.field private rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

.field private final resourceName:Ljava/lang/String;

.field public rotateDegree:I

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final uiThreadTestsEnable:Z

.field private final videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->uiThreadTestsEnable:Z

    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 5
    new-instance v0, Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->uiThreadTestsEnable:Z

    .line 10
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 11
    new-instance p2, Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-direct {p2, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method private synthetic lambda$onFrameResolutionChanged$0(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 2
    .line 3
    iput p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ": "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "SurfaceViewRenderer"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->enableFixedSize:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v0, v1

    .line 39
    iget v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 40
    .line 41
    int-to-float v2, v1

    .line 42
    iget v3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 43
    .line 44
    int-to-float v4, v3

    .line 45
    div-float/2addr v2, v4

    .line 46
    cmpl-float v2, v2, v0

    .line 47
    .line 48
    if-lez v2, :cond_0

    .line 49
    .line 50
    int-to-float v1, v3

    .line 51
    mul-float v1, v1, v0

    .line 52
    .line 53
    float-to-int v1, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    int-to-float v2, v1

    .line 56
    div-float/2addr v2, v0

    .line 57
    float-to-int v3, v2

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "updateSurfaceSize. Layout size: "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, "x"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, ", frame size: "

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v4, ", requested surface size: "

    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v4, ", old surface size: "

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {p0, v2}, Lorg/hmwebrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 161
    .line 162
    if-ne v0, v2, :cond_1

    .line 163
    .line 164
    iget v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 165
    .line 166
    if-eq v1, v2, :cond_3

    .line 167
    .line 168
    :cond_1
    iput v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 169
    .line 170
    iput v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 182
    .line 183
    iput v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 190
    .line 191
    .line 192
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;F)V

    return-void
.end method

.method public addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/hmwebrtc/EglRenderer;->addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;FLorg/hmwebrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRenderer;->clearImage()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceEglRenderer;->disableFpsReduction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getEglRenderFps()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRenderer;->getEglRenderFps()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRenderDelayMs()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRenderer;->getEglRenderDelayMs()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-wide v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->directSurfaceRenderDelayMs:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public getRenderLayout()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "width: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->viewWidth:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",height: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->viewHeight:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public getRotateDegree()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotateDegree:I

    .line 2
    .line 3
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lorg/hmwebrtc/GlRectDrawer;

    invoke-direct {v1}, Lorg/hmwebrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 3
    iput-object p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 5
    iput p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 6
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 7
    iput-object p3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mConfigAttributes:[I

    .line 8
    iput-object p4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 9
    iget-boolean p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isUseDirectSurface:Z

    if-nez p2, :cond_0

    const-string p2, "SurfaceViewRenderer"

    const-string v0, "Initialize the EGL Render"

    .line 10
    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-virtual {p2, p1, p0, p3, p4}, Lorg/hmwebrtc/SurfaceEglRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    invoke-virtual {p1, p0}, Lorg/hmwebrtc/SurfaceEglRenderer;->SetRendererEvents(Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    :goto_0
    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getTextureId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "SurfaceViewRenderer"

    .line 27
    .line 28
    const-string v2, "onFrame():Initialize the EGL Render becaused of direct surface==null"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 34
    .line 35
    iget-object v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 36
    .line 37
    iget-object v3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mConfigAttributes:[I

    .line 38
    .line 39
    iget-object v4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 40
    .line 41
    invoke-virtual {v0, v2, p0, v3, v4}, Lorg/hmwebrtc/SurfaceEglRenderer;->initWithoutOnMainThread(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iget-object v3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 64
    .line 65
    invoke-virtual {v3, v1, v2}, Lorg/hmwebrtc/FrameRenderDelayCallback;->pushRenderedTime(J)V

    .line 66
    .line 67
    .line 68
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->onFrameDs(Lorg/hmwebrtc/VideoFrame;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1

    .line 78
    :cond_3
    iget-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    const-string v0, "SurfaceViewRenderer"

    .line 83
    .line 84
    const-string v2, "onFrame():Initialize the EGL Render"

    .line 85
    .line 86
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 90
    .line 91
    iget-object v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSharedContext:Lorg/hmwebrtc/EglBase$Context;

    .line 92
    .line 93
    iget-object v3, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mConfigAttributes:[I

    .line 94
    .line 95
    iget-object v4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 96
    .line 97
    invoke-virtual {v0, v2, p0, v3, v4}, Lorg/hmwebrtc/SurfaceEglRenderer;->initWithoutOnMainThread(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;[ILorg/hmwebrtc/RendererCommon$GlDrawer;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    sub-int/2addr p4, p2

    .line 5
    iput p4, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->viewWidth:I

    .line 6
    .line 7
    sub-int/2addr p5, p3

    .line 8
    iput p5, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->viewHeight:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p2, "onLayout: "

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->getRenderLayout()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 p2, 0x33e3

    .line 34
    .line 35
    invoke-static {p2, p1}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 39
    .line 40
    int-to-float p2, p4

    .line 41
    int-to-float p3, p5

    .line 42
    div-float/2addr p2, p3

    .line 43
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/EglRenderer;->setLayoutAspectRatio(F)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    .line 5
    .line 6
    iget v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 7
    .line 8
    iget v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 15
    .line 16
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "onMeasure(). New size: "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "x"

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceEglRenderer;->pauseVideo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRenderer;->release()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/FrameRenderDelayCallback;->setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public releaseEglSurface()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceEglRenderer;->releaseEglSurface()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public releaseFromDirectSurface()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/EglRenderer;->release()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isInit:Z

    .line 8
    .line 9
    return-void
.end method

.method public removeFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->removeFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBlackWhiteDisplay(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isEglMonochromeOff:Z

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget-boolean v2, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isUseDirectSurface:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setBlackWhiteDisplay(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/EglRenderer;->setBlackWhiteDisplay(Z)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_1
    return v1
.end method

.method public setBrightnessRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setBrightnessRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setContrastRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setContrastRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDsSurface(Lorg/hmwebrtc/SurfaceViewDsRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    return-void
.end method

.method protected setDsVideoRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->setVideoRotation(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDsVideoSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->setVideoSize(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEglMonochromeOff(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isEglMonochromeOff:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/EglRenderer;->setBlackWhiteDisplay(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->enableFixedSize:Z

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setErrorCallback(Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setErrorCallback(Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->setFpsReduction(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/EglRenderer;->frameRenderDelayLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/hmwebrtc/FrameRenderDelayCallback;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/hmwebrtc/FrameRenderDelayCallback;->setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->frameRenderDelayCallback:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/EglRenderer;->setFrameCallback(Lorg/hmwebrtc/FrameRenderDelayCallback;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public setFrameInterpolationParameters(ZIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/hmwebrtc/EglRenderer;->setFrameInterpolationParameters(ZIII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setImageAdjustable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setImageAdjustable(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setJankMeasuringTool(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/EglRenderer;->setJankMeasuringTool(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLastFrameCallBack(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setLastFrameCallBack(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setMirror(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderDelayMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->directSurfaceRenderDelayMs:J

    .line 2
    .line 3
    return-void
.end method

.method public setRotateLayout(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setRotateLayout:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x33e3

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x5a

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0xb4

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x10e

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "rotate degree is only 0, 90, 180, 270, but input "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :cond_1
    :goto_0
    iput p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->rotateDegree:I

    .line 61
    .line 62
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setRotateLayout(I)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public setSaturationRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setSaturationRatio(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;Lorg/hmwebrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 4
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 5
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setStretching(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setStretching(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setUnsharpMaskAmount(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setUnsharpMaskAmount(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setUnsharpMaskEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setUnsharpMaskEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setUnsharpMaskThreshold(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setUnsharpMaskThreshold(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setUseDirectSurface(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->isUseDirectSurface:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUseTextureCloningFlag(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setUseTextureCloningFlag():"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/EglRenderer;->setUseTextureCloningFlag(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/hmwebrtc/SurfaceEglRenderer;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 11
    .line 12
    iput v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/hmwebrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 15
    .line 16
    .line 17
    const-string v0, "SurfaceViewRenderer"

    .line 18
    .line 19
    const-string v1, "surfaceCreated"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSurface:Landroid/view/Surface;

    .line 29
    .line 30
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->eglRenderer:Lorg/hmwebrtc/SurfaceEglRenderer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceEglRenderer;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "surfaceDestroyed"

    .line 10
    .line 11
    const-string v0, "SurfaceViewRenderer"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/hmwebrtc/SurfaceViewRenderer;->mSurface:Landroid/view/Surface;

    .line 18
    .line 19
    const-string p1, "surfaceDestroyed done"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
