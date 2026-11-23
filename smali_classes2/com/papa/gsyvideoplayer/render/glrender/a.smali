.class public abstract Lcom/papa/gsyvideoplayer/render/glrender/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Lw7/a;

.field protected d:Landroid/opengl/GLSurfaceView;

.field protected e:[F

.field protected f:[F

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Lw7/b;

.field protected n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->b:Z

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v2, v1, [F

    .line 10
    .line 11
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 12
    .line 13
    new-array v1, v1, [F

    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->f:[F

    .line 16
    .line 17
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->g:I

    .line 18
    .line 19
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->h:I

    .line 20
    .line 21
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->i:I

    .line 22
    .line 23
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->l:Z

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->n:Landroid/os/Handler;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ": glError "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->n:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v2, Lcom/papa/gsyvideoplayer/render/glrender/a$b;

    .line 33
    .line 34
    invoke-direct {v2, p0, p1, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a$b;-><init>(Lcom/papa/gsyvideoplayer/render/glrender/a;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected b(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    move/from16 v8, p3

    .line 2
    .line 3
    move/from16 v9, p4

    .line 4
    .line 5
    mul-int v0, v8, v9

    .line 6
    .line 7
    new-array v10, v0, [I

    .line 8
    .line 9
    new-array v11, v0, [I

    .line 10
    .line 11
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    const/4 v12, 0x0

    .line 16
    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    const/16 v5, 0x1908

    .line 20
    .line 21
    const/16 v6, 0x1401

    .line 22
    .line 23
    move-object/from16 v0, p5

    .line 24
    .line 25
    move v1, p1

    .line 26
    move v2, p2

    .line 27
    move/from16 v3, p3

    .line 28
    .line 29
    move/from16 v4, p4

    .line 30
    .line 31
    :try_start_0
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-ge v0, v9, :cond_1

    .line 36
    .line 37
    mul-int v1, v0, v8

    .line 38
    .line 39
    sub-int v2, v9, v0

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    mul-int v2, v2, v8

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_1
    if-ge v3, v8, :cond_0

    .line 47
    .line 48
    add-int v4, v1, v3

    .line 49
    .line 50
    aget v4, v10, v4

    .line 51
    .line 52
    shr-int/lit8 v5, v4, 0x10

    .line 53
    .line 54
    and-int/lit16 v5, v5, 0xff

    .line 55
    .line 56
    shl-int/lit8 v6, v4, 0x10

    .line 57
    .line 58
    const/high16 v7, 0xff0000

    .line 59
    .line 60
    and-int/2addr v6, v7

    .line 61
    const v7, -0xff0100

    .line 62
    .line 63
    .line 64
    and-int/2addr v4, v7

    .line 65
    or-int/2addr v4, v6

    .line 66
    or-int/2addr v4, v5

    .line 67
    add-int v5, v2, v3

    .line 68
    .line 69
    aput v4, v11, v5
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-object v0, p0

    .line 78
    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/render/glrender/a;->b:Z

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 83
    .line 84
    invoke-static {v11, v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    return-object v1

    .line 89
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 90
    .line 91
    invoke-static {v11, v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    return-object v1

    .line 96
    :catch_0
    move-object v0, p0

    .line 97
    const/4 v1, 0x0

    .line 98
    return-object v1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const v0, 0x8b31

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->k(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const v1, 0x8b30

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, p2}, Lcom/papa/gsyvideoplayer/render/glrender/a;->k(ILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 29
    .line 30
    .line 31
    const-string p1, "glAttachShader"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    new-array p2, p1, [I

    .line 47
    .line 48
    const v2, 0x8b82

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 52
    .line 53
    .line 54
    aget p2, p2, v0

    .line 55
    .line 56
    if-eq p2, p1, :cond_2

    .line 57
    .line 58
    const-string p1, "Could not link program: "

    .line 59
    .line 60
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v1

    .line 75
    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public j()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->g:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->h:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v0, v2

    .line 20
    iget v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->h:I

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    div-float/2addr v2, v3

    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v1, v4, v0, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method protected k(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    new-array p2, p2, [I

    .line 15
    .line 16
    const v1, 0x8b81

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 21
    .line 22
    .line 23
    aget p2, p2, v2

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "Could not compile shader "

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ":"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    :cond_0
    return v0
.end method

.method public abstract l()V
.end method

.method public m(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->n:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/gsyvideoplayer/render/glrender/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a$a;-><init>(Lcom/papa/gsyvideoplayer/render/glrender/a;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s(Lw7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->c:Lw7/a;

    .line 2
    .line 3
    return-void
.end method

.method public t(Lw7/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->m:Lw7/b;

    .line 2
    .line 3
    return-void
.end method

.method public u(Lv7/e;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public v([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 2
    .line 3
    return-void
.end method

.method public w(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    return-void
.end method
