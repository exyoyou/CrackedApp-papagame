.class public Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field private final alphaSize:I

.field private final blueSize:I

.field private final configSpec:[I

.field private final depthSize:I

.field private final greenSize:I

.field private final redSize:I

.field private final stencilSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p5, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p6, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 4
    invoke-direct {p0, v0, p7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->filterConfigSpec([II)[I

    move-result-object p7

    iput-object p7, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->configSpec:[I

    .line 5
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->redSize:I

    .line 6
    iput p2, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->greenSize:I

    .line 7
    iput p3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->blueSize:I

    .line 8
    iput p4, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->alphaSize:I

    .line 9
    iput p5, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->depthSize:I

    .line 10
    iput p6, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->stencilSize:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 8

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    const/16 v5, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move v7, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;-><init>(IIIIIII)V

    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 9
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 10
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    .line 11
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 12
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->depthSize:I

    if-lt v9, v3, :cond_0

    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->stencilSize:I

    if-lt v2, v3, :cond_0

    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 13
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    .line 14
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    .line 15
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    .line 16
    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 17
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->redSize:I

    if-ne v9, v3, :cond_0

    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->greenSize:I

    if-ne v10, v3, :cond_0

    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->blueSize:I

    if-ne v11, v3, :cond_0

    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->alphaSize:I

    if-ne v2, v3, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private filterConfigSpec([II)[I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    return-object p1

    .line 5
    :cond_0
    array-length p2, p1

    .line 6
    add-int/lit8 v0, p2, 0x2

    .line 7
    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    add-int/lit8 v1, p2, -0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x3040

    .line 17
    .line 18
    aput p1, v0, v1

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    aput p1, v0, p2

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    const/16 p1, 0x3038

    .line 26
    .line 27
    aput p1, v0, p2

    .line 28
    .line 29
    return-object v0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->configSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget v5, v0, v1

    if-lez v5, :cond_2

    .line 2
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 3
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->configSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, v7}, Lorg/webrtc/haima/camerarecorder/egl/DefaultConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
