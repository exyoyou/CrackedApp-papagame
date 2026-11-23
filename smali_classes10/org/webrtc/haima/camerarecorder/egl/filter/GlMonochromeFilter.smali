.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision lowp float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform float intensity;uniform vec3 filterColor;const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);void main() {lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);float luminance = dot(textureColor.rgb, luminanceWeighting);lowp vec4 desat = vec4(vec3(luminance), 1.0);lowp vec4 outputColor = vec4((desat.r < 0.5 ? (2.0 * desat.r * filterColor.r) : (1.0 - 2.0 * (1.0 - desat.r) * (1.0 - filterColor.r))),(desat.g < 0.5 ? (2.0 * desat.g * filterColor.g) : (1.0 - 2.0 * (1.0 - desat.g) * (1.0 - filterColor.g))),(desat.b < 0.5 ? (2.0 * desat.b * filterColor.b) : (1.0 - 2.0 * (1.0 - desat.b) * (1.0 - filterColor.b))),1.0);gl_FragColor = vec4(mix(textureColor.rgb, outputColor.rgb, intensity), textureColor.a);}"


# instance fields
.field private filterColor:[F

.field private intensity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    .line 2
    .line 3
    const-string v1, "precision lowp float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform float intensity;uniform vec3 filterColor;const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);void main() {lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);float luminance = dot(textureColor.rgb, luminanceWeighting);lowp vec4 desat = vec4(vec3(luminance), 1.0);lowp vec4 outputColor = vec4((desat.r < 0.5 ? (2.0 * desat.r * filterColor.r) : (1.0 - 2.0 * (1.0 - desat.r) * (1.0 - filterColor.r))),(desat.g < 0.5 ? (2.0 * desat.g * filterColor.g) : (1.0 - 2.0 * (1.0 - desat.g) * (1.0 - filterColor.g))),(desat.b < 0.5 ? (2.0 * desat.b * filterColor.b) : (1.0 - 2.0 * (1.0 - desat.b) * (1.0 - filterColor.b))),1.0);gl_FragColor = vec4(mix(textureColor.rgb, outputColor.rgb, intensity), textureColor.a);}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->intensity:F

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->filterColor:[F

    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ee66666    # 0.45f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public getIntensity()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->intensity:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw()V
    .locals 3

    .line 1
    const-string v0, "intensity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->intensity:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 10
    .line 11
    .line 12
    const-string v0, "filterColor"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->filterColor:[F

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlMonochromeFilter;->intensity:F

    .line 2
    .line 3
    return-void
.end method
