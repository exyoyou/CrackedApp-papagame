.class public Lcom/vincent/videocompressor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final o:I = 0x4

.field private static final p:I = 0x3098


# instance fields
.field private b:Ljavax/microedition/khronos/egl/EGL10;

.field private c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private d:Ljavax/microedition/khronos/egl/EGLContext;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:Landroid/view/Surface;

.field private final h:Ljava/lang/Object;

.field private i:Z

.field private j:Lcom/vincent/videocompressor/f;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 18
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 19
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/vincent/videocompressor/d;->m:I

    .line 22
    invoke-direct {p0}, Lcom/vincent/videocompressor/d;->j()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "rotate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 4
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/vincent/videocompressor/d;->m:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 7
    iput p1, p0, Lcom/vincent/videocompressor/d;->k:I

    .line 8
    iput p2, p0, Lcom/vincent/videocompressor/d;->l:I

    .line 9
    iput p3, p0, Lcom/vincent/videocompressor/d;->m:I

    mul-int p3, p1, p2

    mul-int/lit8 p3, p3, 0x4

    .line 10
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/vincent/videocompressor/d;->n:Ljava/nio/ByteBuffer;

    .line 11
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/vincent/videocompressor/d;->e(II)V

    .line 13
    invoke-virtual {p0}, Lcom/vincent/videocompressor/d;->h()V

    .line 14
    invoke-direct {p0}, Lcom/vincent/videocompressor/d;->j()V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x3000

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v0, "EGL error encountered (see log)"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method private e(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    .line 9
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 16
    .line 17
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 18
    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0xd

    .line 31
    .line 32
    new-array v3, v0, [I

    .line 33
    .line 34
    fill-array-data v3, :array_0

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 39
    .line 40
    new-array v6, v0, [I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    move-object v4, v7

    .line 48
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x3098

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    const/16 v2, 0x3038

    .line 58
    .line 59
    filled-new-array {v0, v1, v2}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    aget-object v5, v7, v4

    .line 69
    .line 70
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 71
    .line 72
    invoke-interface {v1, v3, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 77
    .line 78
    const-string v0, "eglCreateContext"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/vincent/videocompressor/d;->c(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    const/16 v0, 0x3057

    .line 88
    .line 89
    const/16 v1, 0x3056

    .line 90
    .line 91
    filled-new-array {v0, p1, v1, p2, v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 98
    .line 99
    aget-object v1, v7, v4

    .line 100
    .line 101
    invoke-interface {p2, v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 106
    .line 107
    const-string p1, "eglCreatePbufferSurface"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/vincent/videocompressor/d;->c(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 113
    .line 114
    if-eqz p1, :cond_0

    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    .line 119
    const-string p2, "surface was null"

    .line 120
    .line 121
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    const-string p2, "null context"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    const-string p2, "unable to find RGB888+pbuffer EGL config"

    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_3
    iput-object v2, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 142
    .line 143
    new-instance p1, Ljava/lang/RuntimeException;

    .line 144
    .line 145
    const-string p2, "unable to initialize EGL10"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 152
    .line 153
    const-string p2, "unable to get EGL10 display"

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vincent/videocompressor/f;

    .line 2
    .line 3
    iget v1, p0, Lcom/vincent/videocompressor/d;->m:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/vincent/videocompressor/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/vincent/videocompressor/f;->g()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/vincent/videocompressor/f;->e()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->f:Landroid/graphics/SurfaceTexture;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/view/Surface;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->f:Landroid/graphics/SurfaceTexture;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->g:Landroid/view/Surface;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/vincent/videocompressor/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    .line 9
    .line 10
    const-wide/16 v2, 0x1388

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/vincent/videocompressor/d;->i:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v2, "Surface frame wait timed out"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/vincent/videocompressor/d;->i:Z

    .line 37
    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 40
    .line 41
    const-string v1, "before updateTexImage"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/vincent/videocompressor/f;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->f:Landroid/graphics/SurfaceTexture;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentShader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vincent/videocompressor/f;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invert"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->f:Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/vincent/videocompressor/f;->d(Landroid/graphics/SurfaceTexture;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->n:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    iget v3, p0, Lcom/vincent/videocompressor/d;->k:I

    .line 9
    .line 10
    iget v4, p0, Lcom/vincent/videocompressor/d;->l:I

    .line 11
    .line 12
    const/16 v5, 0x1908

    .line 13
    .line 14
    const/16 v6, 0x1401

    .line 15
    .line 16
    iget-object v7, p0, Lcom/vincent/videocompressor/d;->n:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->n:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    return-object v0
.end method

.method public g()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->g:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "before makeCurrent"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/vincent/videocompressor/d;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 17
    .line 18
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string v1, "eglMakeCurrent failed"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v1, "not configured for makeCurrent"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 20
    .line 21
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 22
    .line 23
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->g:Landroid/view/Surface;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->j:Lcom/vincent/videocompressor/f;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->g:Landroid/view/Surface;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/vincent/videocompressor/d;->f:Landroid/graphics/SurfaceTexture;

    .line 65
    .line 66
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "st"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/vincent/videocompressor/d;->i:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/vincent/videocompressor/d;->i:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/vincent/videocompressor/d;->h:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v1, "mFrameAvailable already set, frame could be dropped"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method
