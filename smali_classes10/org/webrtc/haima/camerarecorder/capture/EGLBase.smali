.class public Lorg/webrtc/haima/camerarecorder/capture/EGLBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Ljava/lang/String; = "EGLBase"


# instance fields
.field private defaultContext:Landroid/opengl/EGLContext;

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method constructor <init>(Landroid/opengl/EGLContext;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 7
    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->defaultContext:Landroid/opengl/EGLContext;

    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->init(Landroid/opengl/EGLContext;ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ": EGL error: 0x"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method private createContext(Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x3038

    .line 3
    .line 4
    const/16 v2, 0x3098

    .line 5
    .line 6
    filled-new-array {v2, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglConfig:Landroid/opengl/EGLConfig;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "eglCreateContext"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->checkEglError(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method private destroyContext()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "eglDestroyContex:"

    .line 10
    .line 11
    const-string v2, " context: "

    .line 12
    .line 13
    const-string v3, "display:"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 54
    .line 55
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 56
    .line 57
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->defaultContext:Landroid/opengl/EGLContext;

    .line 58
    .line 59
    if-eq v4, v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 62
    .line 63
    invoke-static {v0, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->defaultContext:Landroid/opengl/EGLContext;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 106
    .line 107
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->defaultContext:Landroid/opengl/EGLContext;

    .line 108
    .line 109
    :cond_2
    return-void
.end method

.method private getConfig(ZZ)Landroid/opengl/EGLConfig;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v2, v0, [I

    .line 4
    .line 5
    fill-array-data v2, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x3025

    .line 15
    .line 16
    aput p1, v2, v1

    .line 17
    .line 18
    const/16 p1, 0xb

    .line 19
    .line 20
    aput v0, v2, p1

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x1

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    add-int/lit8 p2, v1, 0x1

    .line 28
    .line 29
    const/16 v3, 0x3142

    .line 30
    .line 31
    aput v3, v2, v1

    .line 32
    .line 33
    add-int/lit8 v1, p2, 0x1

    .line 34
    .line 35
    aput p1, v2, p2

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-lt v0, v1, :cond_2

    .line 38
    .line 39
    const/16 p2, 0x3038

    .line 40
    .line 41
    aput p2, v2, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-array p2, p1, [Landroid/opengl/EGLConfig;

    .line 47
    .line 48
    new-array v7, p1, [I

    .line 49
    .line 50
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v6, 0x1

    .line 56
    move-object v4, p2

    .line 57
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    return-object p1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    aget-object p1, p2, p1

    .line 67
    .line 68
    return-object p1

    .line 69
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method private init(Landroid/opengl/EGLContext;ZZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    if-ne v0, v1, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    if-eq v1, v2, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 34
    .line 35
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 36
    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p2, p3}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->getConfig(ZZ)Landroid/opengl/EGLConfig;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglConfig:Landroid/opengl/EGLConfig;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->createContext(Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string p2, "chooseConfig failed"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    :goto_1
    new-array p1, v3, [I

    .line 63
    .line 64
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 65
    .line 66
    iget-object p3, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 67
    .line 68
    const/16 v1, 0x3098

    .line 69
    .line 70
    invoke-static {p2, p3, v1, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->makeDefault()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 79
    .line 80
    new-instance p1, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    const-string p2, "eglInitialize failed"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    const-string p2, "eglGetDisplay failed"

    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    const-string p2, "EGL already set up"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method


# virtual methods
.method createFromSurface(Ljava/lang/Object;)Lorg/webrtc/haima/camerarecorder/capture/EglSurface;
    .locals 1

    .line 1
    new-instance v0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;-><init>(Lorg/webrtc/haima/camerarecorder/capture/EGLBase;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->makeCurrent()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x3038

    .line 2
    .line 3
    filled-new-array {v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglConfig:Landroid/opengl/EGLConfig;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return-object p1
.end method

.method destroyWindowSurface(Landroid/opengl/EGLSurface;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 8
    .line 9
    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    return-void
.end method

.method public getContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 2
    .line 3
    return-object v0
.end method

.method makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 12
    .line 13
    invoke-static {v0, p1, p1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "eglMakeCurrent:"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 40
    .line 41
    .line 42
    return v1
.end method

.method makeDefault()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 6
    .line 7
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "makeDefault"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 8
    .line 9
    .line 10
    aget p1, v0, v2

    .line 11
    .line 12
    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->destroyContext()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 21
    .line 22
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglContext:Landroid/opengl/EGLContext;

    .line 25
    .line 26
    return-void
.end method

.method swap(Landroid/opengl/EGLSurface;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/16 p1, 0x3000

    .line 15
    .line 16
    return p1
.end method
