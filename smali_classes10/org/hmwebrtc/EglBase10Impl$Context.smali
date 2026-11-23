.class Lorg/hmwebrtc/EglBase10Impl$Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/EglBase10$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/EglBase10Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context"
.end annotation


# instance fields
.field private final egl:Ljavax/microedition/khronos/egl/EGL10;

.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private final eglContextConfig:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContextConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getNativeEglContext()J
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    .line 9
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 14
    .line 15
    const/16 v3, 0x3059

    .line 16
    .line 17
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 22
    .line 23
    const/16 v4, 0x305a

    .line 24
    .line 25
    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 30
    .line 31
    if-ne v1, v4, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 34
    .line 35
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    :try_start_0
    iget-object v5, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 43
    .line 44
    if-eq v0, v5, :cond_2

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    const/16 v6, 0x3057

    .line 48
    .line 49
    const/16 v7, 0x3056

    .line 50
    .line 51
    const/16 v8, 0x3038

    .line 52
    .line 53
    filled-new-array {v6, v5, v7, v5, v8}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v6, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 58
    .line 59
    iget-object v7, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContextConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 60
    .line 61
    invoke-interface {v6, v1, v7, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 66
    .line 67
    iget-object v6, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 68
    .line 69
    invoke-interface {v5, v1, v4, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v7, "Failed to make temporary EGL surface active: "

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v7, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 89
    .line 90
    invoke-interface {v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v5

    .line 105
    :cond_2
    :goto_0
    invoke-static {}, Lorg/hmwebrtc/EglBase10Impl;->access$000()J

    .line 106
    .line 107
    .line 108
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    iget-object v7, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 112
    .line 113
    invoke-interface {v7, v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 117
    .line 118
    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 119
    .line 120
    .line 121
    :cond_3
    return-wide v5

    .line 122
    :catchall_0
    move-exception v5

    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    iget-object v6, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 126
    .line 127
    invoke-interface {v6, v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 131
    .line 132
    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 133
    .line 134
    .line 135
    :cond_4
    throw v5
.end method

.method public getRawContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EglBase10Impl$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2
    .line 3
    return-object v0
.end method
