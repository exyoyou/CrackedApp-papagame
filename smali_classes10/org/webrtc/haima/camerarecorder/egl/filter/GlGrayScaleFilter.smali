.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlGrayScaleFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;varying vec2 vTextureCoord;uniform lowp sampler2D sTexture;const highp vec3 weight = vec3(0.2125, 0.7154, 0.0721);void main() {float luminance = dot(texture2D(sTexture, vTextureCoord).rgb, weight);gl_FragColor = vec4(vec3(luminance), 1.0);}"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    .line 2
    .line 3
    const-string v1, "precision mediump float;varying vec2 vTextureCoord;uniform lowp sampler2D sTexture;const highp vec3 weight = vec3(0.2125, 0.7154, 0.0721);void main() {float luminance = dot(texture2D(sTexture, vTextureCoord).rgb, weight);gl_FragColor = vec4(vec3(luminance), 1.0);}"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
