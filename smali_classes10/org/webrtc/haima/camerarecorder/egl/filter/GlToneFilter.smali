.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlThreex3TextureSamplingFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform lowp sampler2D sTexture;\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\nuniform highp float threshold;uniform highp float quantizationLevels;const highp vec3 W = vec3(0.2125, 0.7154, 0.0721);void main() {\nvec4 textureColor = texture2D(sTexture, textureCoordinate);float bottomLeftIntensity = texture2D(sTexture, bottomLeftTextureCoordinate).r;float topRightIntensity = texture2D(sTexture, topRightTextureCoordinate).r;float topLeftIntensity = texture2D(sTexture, topLeftTextureCoordinate).r;float bottomRightIntensity = texture2D(sTexture, bottomRightTextureCoordinate).r;float leftIntensity = texture2D(sTexture, leftTextureCoordinate).r;float rightIntensity = texture2D(sTexture, rightTextureCoordinate).r;float bottomIntensity = texture2D(sTexture, bottomTextureCoordinate).r;float topIntensity = texture2D(sTexture, topTextureCoordinate).r;float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;float mag = length(vec2(h, v));vec3 posterizedImageColor = floor((textureColor.rgb * quantizationLevels) + 0.5) / quantizationLevels;float thresholdTest = 1.0 - step(threshold, mag);gl_FragColor = vec4(posterizedImageColor * thresholdTest, textureColor.a);}"


# instance fields
.field private quantizationLevels:F

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "precision highp float;\nuniform lowp sampler2D sTexture;\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\nuniform highp float threshold;uniform highp float quantizationLevels;const highp vec3 W = vec3(0.2125, 0.7154, 0.0721);void main() {\nvec4 textureColor = texture2D(sTexture, textureCoordinate);float bottomLeftIntensity = texture2D(sTexture, bottomLeftTextureCoordinate).r;float topRightIntensity = texture2D(sTexture, topRightTextureCoordinate).r;float topLeftIntensity = texture2D(sTexture, topLeftTextureCoordinate).r;float bottomRightIntensity = texture2D(sTexture, bottomRightTextureCoordinate).r;float leftIntensity = texture2D(sTexture, leftTextureCoordinate).r;float rightIntensity = texture2D(sTexture, rightTextureCoordinate).r;float bottomIntensity = texture2D(sTexture, bottomTextureCoordinate).r;float topIntensity = texture2D(sTexture, topTextureCoordinate).r;float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;float mag = length(vec2(h, v));vec3 posterizedImageColor = floor((textureColor.rgb * quantizationLevels) + 0.5) / quantizationLevels;float thresholdTest = 1.0 - step(threshold, mag);gl_FragColor = vec4(posterizedImageColor * thresholdTest, textureColor.a);}"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlThreex3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x3e4ccccd    # 0.2f

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->threshold:F

    .line 10
    .line 11
    const/high16 v0, 0x41200000    # 10.0f

    .line 12
    .line 13
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->quantizationLevels:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getQuantizationLevels()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->quantizationLevels:F

    .line 2
    .line 3
    return v0
.end method

.method public getThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->threshold:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw()V
    .locals 2

    .line 1
    const-string v0, "threshold"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->threshold:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 10
    .line 11
    .line 12
    const-string v0, "quantizationLevels"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->quantizationLevels:F

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->quantizationLevels:F

    .line 2
    .line 3
    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneFilter;->threshold:F

    .line 2
    .line 3
    return-void
.end method
