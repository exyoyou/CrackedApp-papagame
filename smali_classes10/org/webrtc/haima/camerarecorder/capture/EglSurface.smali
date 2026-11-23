.class public Lorg/webrtc/haima/camerarecorder/capture/EglSurface;
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

.field private static final TAG:Ljava/lang/String; = "EGLBase"


# instance fields
.field private final egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/capture/EGLBase;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    instance-of v0, p2, Landroid/view/SurfaceView;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    instance-of v0, p2, Landroid/view/Surface;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p2, Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "unsupported surface"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 40
    .line 41
    const/16 v0, 0x3057

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->querySurface(Landroid/opengl/EGLSurface;I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->width:I

    .line 48
    .line 49
    iget-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 50
    .line 51
    const/16 v0, 0x3056

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->querySurface(Landroid/opengl/EGLSurface;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->height:I

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public getContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->getContext()Landroid/opengl/EGLContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->makeDefault()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->destroyWindowSurface(Landroid/opengl/EGLSurface;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    return-void
.end method

.method public swap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->egl:Lorg/webrtc/haima/camerarecorder/capture/EGLBase;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/camerarecorder/capture/EGLBase;->swap(Landroid/opengl/EGLSurface;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
