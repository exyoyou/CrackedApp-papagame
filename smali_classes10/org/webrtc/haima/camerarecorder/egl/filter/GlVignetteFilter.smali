.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;varying vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp vec2 vignetteCenter;uniform lowp vec3 vignetteColor;uniform highp float vignetteStart;uniform highp float vignetteEnd;void main() {lowp vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;lowp float d = distance(vTextureCoord, vec2(vignetteCenter.x, vignetteCenter.y));lowp float percent = smoothstep(vignetteStart, vignetteEnd, d);gl_FragColor = vec4(mix(rgb.x, vignetteColor.x, percent), mix(rgb.y, vignetteColor.y, percent), mix(rgb.z, vignetteColor.z, percent), 1.0);}"


# instance fields
.field private vignetteCenterX:F

.field private vignetteCenterY:F

.field private vignetteColor:[F

.field private vignetteEnd:F

.field private vignetteStart:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    .line 2
    .line 3
    const-string v1, "precision mediump float;varying vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp vec2 vignetteCenter;uniform lowp vec3 vignetteColor;uniform highp float vignetteStart;uniform highp float vignetteEnd;void main() {lowp vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;lowp float d = distance(vTextureCoord, vec2(vignetteCenter.x, vignetteCenter.y));lowp float percent = smoothstep(vignetteStart, vignetteEnd, d);gl_FragColor = vec4(mix(rgb.x, vignetteColor.x, percent), mix(rgb.y, vignetteColor.y, percent), mix(rgb.z, vignetteColor.z, percent), 1.0);}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 9
    .line 10
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteCenterX:F

    .line 11
    .line 12
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteCenterY:F

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteColor:[F

    .line 21
    .line 22
    const v0, 0x3e4ccccd    # 0.2f

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteStart:F

    .line 26
    .line 27
    const v0, 0x3f59999a    # 0.85f

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteEnd:F

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getVignetteEnd()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteEnd:F

    .line 2
    .line 3
    return v0
.end method

.method public getVignetteStart()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteStart:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw()V
    .locals 3

    .line 1
    const-string v0, "vignetteCenter"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteCenterX:F

    .line 8
    .line 9
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteCenterY:F

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 12
    .line 13
    .line 14
    const-string v0, "vignetteColor"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteColor:[F

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 24
    .line 25
    .line 26
    const-string v0, "vignetteStart"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteStart:F

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 35
    .line 36
    .line 37
    const-string v0, "vignetteEnd"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteEnd:F

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setVignetteEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteEnd:F

    .line 2
    .line 3
    return-void
.end method

.method public setVignetteStart(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlVignetteFilter;->vignetteStart:F

    .line 2
    .line 3
    return-void
.end method
