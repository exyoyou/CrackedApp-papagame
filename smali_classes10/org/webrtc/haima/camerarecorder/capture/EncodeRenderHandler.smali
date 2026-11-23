.class public Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRecorder"


# instance fields
.field private MVPMatrix:[F

.field private STMatrix:[F

.field private final XMatrixScale:F

.field private final YMatrixScale:F

.field private aspectRatio:F

.field private egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

.field private final fileHeight:F

.field private final fileWidth:F

.field private filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

.field private framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

.field private glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

.field private inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

.field private isRecordable:Z

.field private normalFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

.field private previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

.field private final recordNoFilter:Z

.field private requestDraw:I

.field private requestRelease:Z

.field private requestSetEglContext:Z

.field private sharedContext:Landroid/opengl/EGLContext;

.field private surface:Ljava/lang/Object;

.field private final sync:Ljava/lang/Object;

.field private texId:I


# direct methods
.method private constructor <init>(ZZFFFFZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->texId:I

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    new-array v2, v1, [F

    .line 17
    .line 18
    iput-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->MVPMatrix:[F

    .line 19
    .line 20
    new-array v1, v1, [F

    .line 21
    .line 22
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->STMatrix:[F

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->aspectRatio:F

    .line 27
    .line 28
    iput p5, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileWidth:F

    .line 29
    .line 30
    iput p6, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileHeight:F

    .line 31
    .line 32
    iput-boolean p7, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->recordNoFilter:Z

    .line 33
    .line 34
    iput-object p8, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 35
    .line 36
    const/4 p5, 0x1

    .line 37
    cmpl-float p6, p3, p4

    .line 38
    .line 39
    if-nez p6, :cond_2

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    :goto_0
    int-to-float p2, v0

    .line 46
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->XMatrixScale:F

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/high16 v1, -0x40800000    # -1.0f

    .line 51
    .line 52
    :cond_1
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->YMatrixScale:F

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_2
    const-string p6, " YMatrixScale :"

    .line 56
    .line 57
    const-string p7, "cameraAspect: "

    .line 58
    .line 59
    cmpg-float p8, p3, p4

    .line 60
    .line 61
    if-gez p8, :cond_5

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    const/4 p2, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 p2, 0x1

    .line 68
    :goto_1
    int-to-float p2, p2

    .line 69
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->XMatrixScale:F

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v0, 0x1

    .line 75
    :goto_2
    int-to-float p1, v0

    .line 76
    div-float p2, p4, p3

    .line 77
    .line 78
    mul-float p1, p1, p2

    .line 79
    .line 80
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->YMatrixScale:F

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_5
    if-eqz p2, :cond_6

    .line 101
    .line 102
    const/4 p2, -0x1

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    const/4 p2, 0x1

    .line 105
    :goto_3
    int-to-float p2, p2

    .line 106
    div-float/2addr p3, p4

    .line 107
    mul-float p2, p2, p3

    .line 108
    .line 109
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->XMatrixScale:F

    .line 110
    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    const/4 v0, 0x1

    .line 115
    :goto_4
    int-to-float p1, v0

    .line 116
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->YMatrixScale:F

    .line 117
    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " XMatrixScale :"

    .line 136
    .line 137
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :goto_5
    return-void
.end method

.method static createHandler(Ljava/lang/String;ZZFFFZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fileAspect:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    div-float v5, p5, p4

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " viewAcpect: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move v1, p3

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move v3, p1

    .line 29
    move v4, p2

    .line 30
    move v6, p3

    .line 31
    move v7, p4

    .line 32
    move/from16 v8, p5

    .line 33
    .line 34
    move/from16 v9, p6

    .line 35
    .line 36
    move-object/from16 v10, p7

    .line 37
    .line 38
    invoke-direct/range {v2 .. v10}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;-><init>(ZZFFFFZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    .line 45
    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    move-object v3, p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v3, "CameraRecorder"

    .line 55
    .line 56
    :goto_0
    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object v2, v0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :try_start_2
    monitor-exit v1

    .line 68
    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw v0
.end method

.method private internalPrepare()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->internalRelease()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sharedContext:Landroid/opengl/EGLContext;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iget-boolean v3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->isRecordable:Z

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;-><init>(Landroid/opengl/EGLContext;ZZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->surface:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->createFromSurface(Ljava/lang/Object;)Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->makeCurrent()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 28
    .line 29
    const v1, 0x8d65

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->setup()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->isRecordFilter()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 52
    .line 53
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileWidth:F

    .line 54
    .line 55
    float-to-int v1, v1

    .line 56
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileHeight:F

    .line 57
    .line 58
    float-to-int v2, v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->setup(II)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 63
    .line 64
    invoke-direct {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 68
    .line 69
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileWidth:F

    .line 70
    .line 71
    float-to-int v1, v1

    .line 72
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->fileHeight:F

    .line 73
    .line 74
    float-to-int v2, v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->setup(II)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 79
    .line 80
    invoke-direct {v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->normalFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setup()V

    .line 86
    .line 87
    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->surface:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private internalRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->release()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->release()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->normalFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->release()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->normalFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->release()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->release()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method private isRecordFilter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->recordNoFilter:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public final draw(I[F[FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

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
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->texId:I

    .line 11
    .line 12
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->STMatrix:[F

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->MVPMatrix:[F

    .line 21
    .line 22
    invoke-static {p3, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->MVPMatrix:[F

    .line 26
    .line 27
    iget p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->XMatrixScale:F

    .line 28
    .line 29
    iget p3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->YMatrixScale:F

    .line 30
    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    invoke-static {p1, v2, p2, p3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 34
    .line 35
    .line 36
    iput p4, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->aspectRatio:F

    .line 37
    .line 38
    iget p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 43
    .line 44
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method final prepareDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

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
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

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
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

    .line 12
    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw v1
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestSetEglContext:Z

    .line 8
    .line 9
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 10
    .line 11
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    monitor-exit v2

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestSetEglContext:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestSetEglContext:Z

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->internalPrepare()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 38
    .line 39
    if-lez v0, :cond_3

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-eqz v4, :cond_4

    .line 45
    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestDraw:I

    .line 49
    .line 50
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    if-eqz v4, :cond_7

    .line 52
    .line 53
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->texId:I

    .line 58
    .line 59
    if-ltz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->makeCurrent()V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x4000

    .line 67
    .line 68
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->isRecordFilter()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->enable()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->enable()V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->previewShader:Lorg/webrtc/haima/camerarecorder/egl/GlPreview;

    .line 88
    .line 89
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->texId:I

    .line 90
    .line 91
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->MVPMatrix:[F

    .line 92
    .line 93
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->STMatrix:[F

    .line 94
    .line 95
    iget v5, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->aspectRatio:F

    .line 96
    .line 97
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->draw(I[F[FF)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->isRecordFilter()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 107
    .line 108
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->enable()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->glFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 112
    .line 113
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->filterFramebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 114
    .line 115
    invoke-virtual {v2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getTexName()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->draw(ILorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;)V

    .line 122
    .line 123
    .line 124
    const v0, 0x8d40

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 137
    .line 138
    invoke-virtual {v2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 143
    .line 144
    .line 145
    const/16 v0, 0x4100

    .line 146
    .line 147
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->normalFilter:Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;

    .line 151
    .line 152
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->framebufferObject:Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;

    .line 153
    .line 154
    invoke-virtual {v2}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->getTexName()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    const/4 v3, 0x0

    .line 159
    invoke-virtual {v0, v2, v3}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->draw(ILorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->inputSurface:Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 163
    .line 164
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->swap()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_7
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 170
    .line 171
    monitor-enter v0

    .line 172
    :try_start_2
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_3
    monitor-exit v0

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :catchall_0
    move-exception v1

    .line 181
    goto :goto_3

    .line 182
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :goto_2
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter v1

    .line 186
    :try_start_4
    iput-boolean v3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

    .line 187
    .line 188
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->internalRelease()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 194
    .line 195
    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    throw v0

    .line 201
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    throw v1

    .line 203
    :catchall_2
    move-exception v0

    .line 204
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 205
    throw v0

    .line 206
    :catchall_3
    move-exception v1

    .line 207
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 208
    throw v1
.end method

.method final setEglContext(Landroid/opengl/EGLContext;ILjava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p3, Landroid/view/Surface;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p3, Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p3, Landroid/view/SurfaceHolder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "unsupported window type:"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestRelease:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :cond_2
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sharedContext:Landroid/opengl/EGLContext;

    .line 47
    .line 48
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->texId:I

    .line 49
    .line 50
    iput-object p3, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->surface:Ljava/lang/Object;

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->isRecordable:Z

    .line 54
    .line 55
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->requestSetEglContext:Z

    .line 56
    .line 57
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->sync:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p1
.end method
