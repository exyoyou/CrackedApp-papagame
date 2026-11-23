.class Lorg/hmwebrtc/GlWatermarkDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_TERNARY:I = 0x3

.field private static final COLOR_B:Ljava/nio/FloatBuffer;

.field private static final COLOR_G:Ljava/nio/FloatBuffer;

.field private static final COLOR_R:Ljava/nio/FloatBuffer;

.field private static final COLOR_WHITE:Ljava/nio/FloatBuffer;

.field private static final FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec4 out_color;\nvoid main() {\n  gl_FragColor =  out_color;\n}\n"

.field private static final FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final INPUT_MVP_MATRIX_NAME:Ljava/lang/String; = "in_mvp_mat"

.field private static final INPUT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "in_color"

.field private static final INPUT_VERTEX_COORDINATE_NAME:Ljava/lang/String; = "in_pos"

.field private static final TAG:Ljava/lang/String; = "GlWatermarkDrawer"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nattribute vec4 in_pos;\nattribute vec4 in_color;\nvarying vec4 out_color;\nuniform mat4 in_mvp_mat;\nvoid main() {\n  gl_Position = in_mvp_mat*in_pos;\n  out_color = in_color;\n}\n"


# instance fields
.field private mBase:I

.field private mCurrentShader:Lorg/hmwebrtc/GlShader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIdentityMatrix:[F

.field private mInColorLocation:I

.field private mInMvpLocation:I

.field private mInPosLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/hmwebrtc/GlWatermarkDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    fill-array-data v1, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_R:Ljava/nio/FloatBuffer;

    .line 26
    .line 27
    new-array v1, v0, [F

    .line 28
    .line 29
    fill-array-data v1, :array_2

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_G:Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    new-array v1, v0, [F

    .line 39
    .line 40
    fill-array-data v1, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sput-object v1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_B:Ljava/nio/FloatBuffer;

    .line 48
    .line 49
    new-array v0, v0, [F

    .line 50
    .line 51
    fill-array-data v0, :array_4

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_WHITE:Ljava/nio/FloatBuffer;

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 62
    .line 63
    .line 64
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lorg/hmwebrtc/GlWatermarkDrawer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-gt p1, v0, :cond_0

    const/4 p1, 0x3

    .line 3
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mBase:I

    if-le p1, v1, :cond_1

    .line 4
    iput v1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mBase:I

    .line 5
    :cond_1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 7
    invoke-static {p1}, Lorg/hmwebrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mIdentityMatrix:[F

    return-void
.end method

.method private getColor(I)Ljava/nio/FloatBuffer;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_R:Ljava/nio/FloatBuffer;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    sget-object p1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_G:Ljava/nio/FloatBuffer;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_2

    .line 14
    .line 15
    sget-object p1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_B:Ljava/nio/FloatBuffer;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lorg/hmwebrtc/GlWatermarkDrawer;->COLOR_WHITE:Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    :goto_0
    return-object p1
.end method

.method private prepareShader(IIII)V
    .locals 6

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mCurrentShader:Lorg/hmwebrtc/GlShader;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lorg/hmwebrtc/GlShader;

    .line 6
    .line 7
    const-string p2, "precision mediump float;\nattribute vec4 in_pos;\nattribute vec4 in_color;\nvarying vec4 out_color;\nuniform mat4 in_mvp_mat;\nvoid main() {\n  gl_Position = in_mvp_mat*in_pos;\n  out_color = in_color;\n}\n"

    .line 8
    .line 9
    const-string p3, "precision mediump float;\nvarying vec4 out_color;\nvoid main() {\n  gl_FragColor =  out_color;\n}\n"

    .line 10
    .line 11
    invoke-direct {p1, p2, p3}, Lorg/hmwebrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mCurrentShader:Lorg/hmwebrtc/GlShader;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/hmwebrtc/GlShader;->useProgram()V

    .line 17
    .line 18
    .line 19
    const-string p2, "Create shader"

    .line 20
    .line 21
    invoke-static {p2}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p2, "in_pos"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInPosLocation:I

    .line 31
    .line 32
    const-string p2, "in_color"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInColorLocation:I

    .line 39
    .line 40
    const-string p2, "in_mvp_mat"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInMvpLocation:I

    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mCurrentShader:Lorg/hmwebrtc/GlShader;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lorg/hmwebrtc/GlShader;->useProgram()V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInPosLocation:I

    .line 57
    .line 58
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInPosLocation:I

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    const/16 v2, 0x1406

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    sget-object v5, Lorg/hmwebrtc/GlWatermarkDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    .line 69
    .line 70
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "Prepare shader"

    .line 74
    .line 75
    invoke-static {p1}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public drawCaptureId(IIIIIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    if-gez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    .line 2
    invoke-direct {v0, v5, v5, v2, v3}, Lorg/hmwebrtc/GlWatermarkDrawer;->prepareShader(IIII)V

    .line 3
    iget v6, v0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInMvpLocation:I

    iget-object v7, v0, Lorg/hmwebrtc/GlWatermarkDrawer;->mIdentityMatrix:[F

    invoke-static {v6, v4, v5, v7, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 4
    iget v6, v0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInColorLocation:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    mul-int/lit8 v6, v1, 0x2

    .line 5
    div-int v7, v2, v6

    add-int v2, p3, v2

    add-int/2addr v6, v4

    .line 6
    new-array v8, v6, [I

    move/from16 v9, p1

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x4

    if-ge v10, v1, :cond_1

    mul-int/lit8 v12, v10, 0x2

    .line 7
    aput v11, v8, v12

    add-int/2addr v12, v4

    .line 8
    iget v11, v0, Lorg/hmwebrtc/GlWatermarkDrawer;->mBase:I

    rem-int v13, v9, v11

    aput v13, v8, v12

    .line 9
    div-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v6, -0x1

    .line 10
    aput v11, v8, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_3

    if-eqz p7, :cond_2

    sub-int v9, v6, v1

    sub-int/2addr v9, v4

    .line 11
    aget v9, v8, v9

    invoke-direct {v0, v9}, Lorg/hmwebrtc/GlWatermarkDrawer;->getColor(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    goto :goto_2

    .line 12
    :cond_2
    aget v9, v8, v1

    invoke-direct {v0, v9}, Lorg/hmwebrtc/GlWatermarkDrawer;->getColor(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    :goto_2
    move-object/from16 v17, v9

    sub-int/2addr v2, v7

    .line 13
    iget v12, v0, Lorg/hmwebrtc/GlWatermarkDrawer;->mInColorLocation:I

    const/4 v13, 0x4

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move/from16 v9, p4

    .line 14
    invoke-static {v2, v9, v7, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v10, 0x5

    .line 15
    invoke-static {v10, v5, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0xde1

    .line 16
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    :goto_3
    return-void
.end method

.method public drawCaptureId(IIIIII[F)V
    .locals 0

    .line 1
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mCurrentShader:Lorg/hmwebrtc/GlShader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/GlShader;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/GlWatermarkDrawer;->mCurrentShader:Lorg/hmwebrtc/GlShader;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
