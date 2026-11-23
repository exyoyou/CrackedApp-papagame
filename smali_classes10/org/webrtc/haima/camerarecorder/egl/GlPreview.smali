.class public Lorg/webrtc/haima/camerarecorder/egl/GlPreview;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private final texTarget:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    .line 3
    invoke-static {p1}, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->createFragmentShaderSourceOESIfNeed(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->texTarget:I

    .line 11
    .line 12
    return-void
.end method

.method private static createFragmentShaderSourceOESIfNeed(I)Ljava/lang/String;
    .locals 3

    .line 1
    const v0, 0x8d65

    .line 2
    .line 3
    .line 4
    const-string v1, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "#extension GL_OES_EGL_image_external : require\n"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "sampler2D"

    .line 19
    .line 20
    const-string v2, "samplerExternalOES"

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    return-object v1
.end method


# virtual methods
.method public draw(I[F[FF)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->useProgram()V

    .line 2
    .line 3
    .line 4
    const-string v0, "uMVPMatrix"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 13
    .line 14
    .line 15
    const-string p2, "uSTMatrix"

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p2, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 22
    .line 23
    .line 24
    const-string p2, "uCRatio"

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getVertexBufferName()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const p3, 0x8892

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 41
    .line 42
    .line 43
    const-string p2, "aPosition"

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x3

    .line 57
    const/16 v5, 0x1406

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/16 v7, 0x14

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 64
    .line 65
    .line 66
    const-string p4, "aTextureCoord"

    .line 67
    .line 68
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x2

    .line 80
    const/16 v8, 0xc

    .line 81
    .line 82
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 83
    .line 84
    .line 85
    const v0, 0x84c0

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GlPreview;->texTarget:I

    .line 92
    .line 93
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    .line 95
    .line 96
    const-string p1, "sTexture"

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x5

    .line 106
    const/4 v0, 0x4

    .line 107
    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 122
    .line 123
    .line 124
    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 125
    .line 126
    .line 127
    const/16 p1, 0xde1

    .line 128
    .line 129
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public setup()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setup()V

    .line 2
    .line 3
    .line 4
    const-string v0, "uMVPMatrix"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v0, "uSTMatrix"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "uCRatio"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string v0, "aPosition"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "aTextureCoord"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method
