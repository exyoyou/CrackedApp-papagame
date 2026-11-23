.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp float distance;uniform highp float slope;void main() {highp vec4 color = vec4(1.0);highp float  d = vTextureCoord.y * slope  +  distance;highp vec4 c = texture2D(sTexture, vTextureCoord);c = (c - d * color) / (1.0 -d);gl_FragColor = c;}"


# instance fields
.field private distance:F

.field private slope:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    .line 2
    .line 3
    const-string v1, "precision mediump float;varying highp vec2 vTextureCoord;uniform lowp sampler2D sTexture;uniform lowp float distance;uniform highp float slope;void main() {highp vec4 color = vec4(1.0);highp float  d = vTextureCoord.y * slope  +  distance;highp vec4 c = texture2D(sTexture, vTextureCoord);c = (c - d * color) / (1.0 -d);gl_FragColor = c;}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x3e4ccccd    # 0.2f

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->distance:F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->slope:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->distance:F

    .line 2
    .line 3
    return v0
.end method

.method public getSlope()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->slope:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw()V
    .locals 2

    .line 1
    const-string v0, "distance"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->distance:F

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 10
    .line 11
    .line 12
    const-string v0, "slope"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->slope:F

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->distance:F

    .line 2
    .line 3
    return-void
.end method

.method public setSlope(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlHazeFilter;->slope:F

    .line 2
    .line 3
    return-void
.end method
