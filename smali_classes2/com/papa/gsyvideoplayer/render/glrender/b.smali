.class public Lcom/papa/gsyvideoplayer/render/glrender/b;
.super Lcom/papa/gsyvideoplayer/render/glrender/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final C:I = 0x4

.field private static final D:I = 0x14

.field private static final E:I = 0x0

.field private static final F:I = 0x3

.field protected static final G:I = 0x8d65


# instance fields
.field private A:Lv7/e;

.field private B:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

.field private final o:[F

.field private final p:Ljava/lang/String;

.field private q:I

.field private r:[I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Ljava/nio/FloatBuffer;

.field private z:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->o:[F

    .line 12
    .line 13
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [I

    .line 19
    .line 20
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Z

    .line 26
    .line 27
    new-instance v2, Lcom/papa/gsyvideoplayer/render/effect/q;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->B:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 33
    .line 34
    array-length v2, v0

    .line 35
    mul-int/lit8 v2, v2, 0x4

    .line 36
    .line 37
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Ljava/nio/FloatBuffer;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->f:[F

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public F()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->f:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public G()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 2
    .line 3
    return-object v0
.end method

.method protected H()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    return-object v0
.end method

.method protected I()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->z()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    .line 21
    .line 22
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x4100

    .line 29
    .line 30
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 34
    .line 35
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 36
    .line 37
    .line 38
    const-string v0, "glUseProgram"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method protected J()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    iget v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    const/16 v4, 0x1406

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x14

    .line 14
    .line 15
    iget-object v7, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Ljava/nio/FloatBuffer;

    .line 16
    .line 17
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "glVertexAttribPointer maPosition"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Ljava/nio/FloatBuffer;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    const/16 v5, 0x1406

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const/16 v7, 0x14

    .line 48
    .line 49
    iget-object v8, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Ljava/nio/FloatBuffer;

    .line 50
    .line 51
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:I

    .line 60
    .line 61
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    .line 78
    .line 79
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->f:[F

    .line 80
    .line 81
    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    const/4 v2, 0x4

    .line 86
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 87
    .line 88
    .line 89
    const-string v0, "glDrawArrays"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method protected K(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lv7/e;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    move-object v1, p0

    .line 27
    move-object v6, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/render/glrender/a;->b(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lv7/e;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lv7/e;->a(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public h()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->B:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->f:[F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    .line 20
    .line 21
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->I()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->y()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->J()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/b;->K(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->H()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->z()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/render/glrender/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p2, "aPosition"

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    .line 25
    .line 26
    const-string p1, "glGetAttribLocation aPosition"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    .line 32
    .line 33
    const/4 p2, -0x1

    .line 34
    if-eq p1, p2, :cond_4

    .line 35
    .line 36
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 37
    .line 38
    const-string v0, "aTextureCoord"

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:I

    .line 45
    .line 46
    const-string p1, "glGetAttribLocation aTextureCoord"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:I

    .line 52
    .line 53
    if-eq p1, p2, :cond_3

    .line 54
    .line 55
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 56
    .line 57
    const-string v0, "uMVPMatrix"

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    .line 64
    .line 65
    const-string p1, "glGetUniformLocation uMVPMatrix"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    .line 71
    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:I

    .line 75
    .line 76
    const-string v0, "uSTMatrix"

    .line 77
    .line 78
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    .line 83
    .line 84
    const-string p1, "glGetUniformLocation uSTMatrix"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    .line 90
    .line 91
    if-eq p1, p2, :cond_1

    .line 92
    .line 93
    const/4 p1, 0x2

    .line 94
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 101
    .line 102
    aget p1, p1, v0

    .line 103
    .line 104
    const p2, 0x8d65

    .line 105
    .line 106
    .line 107
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 108
    .line 109
    .line 110
    const-string p1, "glBindTexture mTextureID"

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 p1, 0x2801

    .line 116
    .line 117
    const/16 p2, 0xde1

    .line 118
    .line 119
    const/16 v1, 0x2601

    .line 120
    .line 121
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 122
    .line 123
    .line 124
    const/16 p1, 0x2800

    .line 125
    .line 126
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 127
    .line 128
    .line 129
    const/16 p1, 0x2802

    .line 130
    .line 131
    const v1, 0x812f

    .line 132
    .line 133
    .line 134
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 135
    .line 136
    .line 137
    const/16 p1, 0x2803

    .line 138
    .line 139
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 143
    .line 144
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 145
    .line 146
    aget p2, p2, v0

    .line 147
    .line 148
    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Landroid/graphics/SurfaceTexture;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Landroid/view/Surface;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Landroid/graphics/SurfaceTexture;

    .line 159
    .line 160
    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->m(Landroid/view/Surface;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 168
    .line 169
    const-string p2, "Could not get attrib location for uSTMatrix"

    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 176
    .line 177
    const-string p2, "Could not get attrib location for uMVPMatrix"

    .line 178
    .line 179
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 184
    .line 185
    const-string p2, "Could not get attrib location for aTextureCoord"

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 192
    .line 193
    const-string p2, "Could not get attrib location for aPosition"

    .line 194
    .line 195
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1
.end method

.method public r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->B:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 4
    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->l:Z

    .line 9
    .line 10
    return-void
.end method

.method public u(Lv7/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lv7/e;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->b:Z

    .line 4
    .line 5
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Z

    .line 3
    .line 4
    return-void
.end method

.method protected y()V
    .locals 2

    .line 1
    const v0, 0x84c0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:[I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    const v1, 0x8d65

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->B:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:Landroid/opengl/GLSurfaceView;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;->a(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
