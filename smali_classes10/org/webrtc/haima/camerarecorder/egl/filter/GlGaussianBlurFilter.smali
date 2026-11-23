.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;const lowp int GAUSSIAN_SAMPLES = 9;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];uniform lowp sampler2D sTexture;void main() {lowp vec4 sum = vec4(0.0);sum += texture2D(sTexture, blurCoordinates[0]) * 0.05;sum += texture2D(sTexture, blurCoordinates[1]) * 0.09;sum += texture2D(sTexture, blurCoordinates[2]) * 0.12;sum += texture2D(sTexture, blurCoordinates[3]) * 0.15;sum += texture2D(sTexture, blurCoordinates[4]) * 0.18;sum += texture2D(sTexture, blurCoordinates[5]) * 0.15;sum += texture2D(sTexture, blurCoordinates[6]) * 0.12;sum += texture2D(sTexture, blurCoordinates[7]) * 0.09;sum += texture2D(sTexture, blurCoordinates[8]) * 0.05;gl_FragColor = sum;}"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;attribute vec4 aTextureCoord;const lowp int GAUSSIAN_SAMPLES = 9;uniform highp float texelWidthOffset;uniform highp float texelHeightOffset;uniform highp float blurSize;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];void main() {gl_Position = aPosition;highp vec2 vTextureCoord = aTextureCoord.xy;int multiplier = 0;highp vec2 blurStep;highp vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset) * blurSize;for (lowp int i = 0; i < GAUSSIAN_SAMPLES; i++) {multiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));blurStep = float(multiplier) * singleStepOffset;blurCoordinates[i] = vTextureCoord.xy + blurStep;}}"


# instance fields
.field private blurSize:F

.field private texelHeightOffset:F

.field private texelWidthOffset:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute vec4 aPosition;attribute vec4 aTextureCoord;const lowp int GAUSSIAN_SAMPLES = 9;uniform highp float texelWidthOffset;uniform highp float texelHeightOffset;uniform highp float blurSize;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];void main() {gl_Position = aPosition;highp vec2 vTextureCoord = aTextureCoord.xy;int multiplier = 0;highp vec2 blurStep;highp vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset) * blurSize;for (lowp int i = 0; i < GAUSSIAN_SAMPLES; i++) {multiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));blurStep = float(multiplier) * singleStepOffset;blurCoordinates[i] = vTextureCoord.xy + blurStep;}}"

    .line 2
    .line 3
    const-string v1, "precision mediump float;const lowp int GAUSSIAN_SAMPLES = 9;varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];uniform lowp sampler2D sTexture;void main() {lowp vec4 sum = vec4(0.0);sum += texture2D(sTexture, blurCoordinates[0]) * 0.05;sum += texture2D(sTexture, blurCoordinates[1]) * 0.09;sum += texture2D(sTexture, blurCoordinates[2]) * 0.12;sum += texture2D(sTexture, blurCoordinates[3]) * 0.15;sum += texture2D(sTexture, blurCoordinates[4]) * 0.18;sum += texture2D(sTexture, blurCoordinates[5]) * 0.15;sum += texture2D(sTexture, blurCoordinates[6]) * 0.12;sum += texture2D(sTexture, blurCoordinates[7]) * 0.09;sum += texture2D(sTexture, blurCoordinates[8]) * 0.05;gl_FragColor = sum;}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x3c23d70a    # 0.01f

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelWidthOffset:F

    .line 12
    .line 13
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelHeightOffset:F

    .line 14
    .line 15
    const v0, 0x3e4ccccd    # 0.2f

    .line 16
    .line 17
    .line 18
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->blurSize:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getBlurSize()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->blurSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getTexelHeightOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelHeightOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getTexelWidthOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelWidthOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw()V
    .locals 2

    .line 1
    const-string v0, "texelWidthOffset"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelWidthOffset:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 10
    .line 11
    .line 12
    const-string v0, "texelHeightOffset"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelHeightOffset:F

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 21
    .line 22
    .line 23
    const-string v0, "blurSize"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->blurSize:F

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setBlurSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->blurSize:F

    .line 2
    .line 3
    return-void
.end method

.method public setTexelHeightOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelHeightOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setTexelWidthOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlGaussianBlurFilter;->texelWidthOffset:F

    .line 2
    .line 3
    return-void
.end method
