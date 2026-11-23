.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ATTRIB_POSITION:Ljava/lang/String; = "aPosition"

.field public static final DEFAULT_ATTRIB_TEXTURE_COORDINATE:Ljava/lang/String; = "aTextureCoord"

.field protected static final DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final DEFAULT_UNIFORM_SAMPLER:Ljava/lang/String; = "sTexture"

.field protected static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final VERTICES_DATA:[F

.field protected static final VERTICES_DATA_POS_OFFSET:I = 0x0

.field protected static final VERTICES_DATA_POS_SIZE:I = 0x3

.field protected static final VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field protected static final VERTICES_DATA_UV_OFFSET:I = 0xc

.field protected static final VERTICES_DATA_UV_SIZE:I = 0x2


# instance fields
.field private fragmentShader:I

.field private fragmentShaderSource:Ljava/lang/String;

.field private final handleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private program:I

.field protected shaderName:Ljava/lang/String;

.field private vertexBufferName:I

.field private vertexShader:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->VERTICES_DATA:[F

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 3
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->shaderName:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShaderSource:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShaderSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(ILorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->useProgram()V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexBufferName:I

    .line 5
    .line 6
    const v0, 0x8892

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 10
    .line 11
    .line 12
    const-string p2, "aPosition"

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x3

    .line 26
    const/16 v4, 0x1406

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0x14

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 33
    .line 34
    .line 35
    const-string v1, "aTextureCoord"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x2

    .line 49
    const/16 v5, 0x1406

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/16 v7, 0x14

    .line 53
    .line 54
    const/16 v8, 0xc

    .line 55
    .line 56
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 57
    .line 58
    .line 59
    const v2, 0x84c0

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 63
    .line 64
    .line 65
    const/16 v2, 0xde1

    .line 66
    .line 67
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    .line 69
    .line 70
    const-string p1, "sTexture"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->onDraw()V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x5

    .line 84
    const/4 v4, 0x4

    .line 85
    invoke-static {p1, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method protected final getHandle(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "Could not get attrib or uniform location for "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->shaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getVertexBufferName()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexBufferName:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 8
    .line 9
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShader:I

    .line 10
    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShader:I

    .line 15
    .line 16
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShader:I

    .line 17
    .line 18
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 19
    .line 20
    .line 21
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShader:I

    .line 22
    .line 23
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexBufferName:I

    .line 24
    .line 25
    filled-new-array {v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 31
    .line 32
    .line 33
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexBufferName:I

    .line 34
    .line 35
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setFragmentShaderSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShaderSource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrameSize(II)V
    .locals 0

    return-void
.end method

.method public setShaderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->shaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setup()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShaderSource:Ljava/lang/String;

    .line 5
    .line 6
    const v1, 0x8b31

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->loadShader(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShader:I

    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShaderSource:Ljava/lang/String;

    .line 16
    .line 17
    const v1, 0x8b30

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->loadShader(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->fragmentShader:I

    .line 25
    .line 26
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexShader:I

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->createProgram(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 33
    .line 34
    sget-object v0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->VERTICES_DATA:[F

    .line 35
    .line 36
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->createBuffer([F)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->vertexBufferName:I

    .line 41
    .line 42
    const-string v0, "aPosition"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string v0, "aTextureCoord"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const-string v0, "sTexture"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method protected final useProgram()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->program:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
