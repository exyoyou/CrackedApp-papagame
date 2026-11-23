.class Lorg/hmwebrtc/GlGenericDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;,
        Lorg/hmwebrtc/GlGenericDrawer$ShaderType;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_NAME:Ljava/lang/String; = "brightness"

.field private static final CONTRAST_NAME:Ljava/lang/String; = "contrast"

.field private static final DEFAULT_VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

.field private static final FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final INPUT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "in_tc"

.field private static final INPUT_VERTEX_COORDINATE_NAME:Ljava/lang/String; = "in_pos"

.field private static final SATURATION_NAME:Ljava/lang/String; = "saturation"

.field private static final TAG:Ljava/lang/String; = "GlGenericDrawer"

.field private static final TEXTURE_MATRIX_NAME:Ljava/lang/String; = "tex_mat"

.field private static final TEXTURE_SIZE_NAME:Ljava/lang/String; = "textureSize"

.field private static final UNSHARP_MASK_AMOUNT_NAME:Ljava/lang/String; = "unsharpAmount"

.field private static final UNSHARP_MASK_THRESHOLD_NAME:Ljava/lang/String; = "unsharpThreshold"


# instance fields
.field private brightnessLocation:I

.field private brightnessRatio:F

.field private brightnessRatioOfCloud:F

.field private contrastLocation:I

.field private contrastRatio:F

.field private contrastRatioOfCloud:F

.field private currentBlackWhiteDisplay:Z

.field private currentShader:Lorg/hmwebrtc/GlShader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentShaderType:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableBlackWhiteDisplay:Z

.field private final genericFragmentSource:Ljava/lang/String;

.field private imageAdjustable:Z

.field private imageAdjustableOfCloud:Z

.field private inPosLocation:I

.field private inTcLocation:I

.field private lastBrightnessRatio:F

.field private lastContrastRatio:F

.field private lastImageAdjustable:Z

.field private lastSaturationRatio:F

.field private lastUnsharpAmount:F

.field private lastUnsharpMarkStatus:Z

.field private lastUnsharpThreshold:F

.field private saturationLocation:I

.field private saturationRatio:F

.field private saturationRatioOfCloud:F

.field private final shaderCallbacks:Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;

.field private texMatrixLocation:I

.field private textureSizeLocation:I

.field private unsharpAmount:F

.field private unsharpAmountLocation:I

.field private unsharpMarkStatus:Z

.field private unsharpThreshold:F

.field private unsharpThresholdLocation:I

.field private useOptimizedUnsharpMask:Z

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lorg/hmwebrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    .line 13
    .line 14
    new-array v0, v0, [F

    .line 15
    .line 16
    fill-array-data v0, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/hmwebrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
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

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->useOptimizedUnsharpMask:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->lastContrastRatio:F

    .line 5
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->lastBrightnessRatio:F

    .line 7
    iput v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 8
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->lastSaturationRatio:F

    .line 9
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 10
    iput v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpAmount:F

    .line 11
    iput v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 12
    iput v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpThreshold:F

    .line 13
    iput v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 14
    iput v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatioOfCloud:F

    .line 15
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatioOfCloud:F

    .line 16
    iput v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatioOfCloud:F

    .line 17
    iput-object p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/hmwebrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lorg/hmwebrtc/GlGenericDrawer;->shaderCallbacks:Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 1

    const-string v0, "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lorg/hmwebrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method

.method static createFragmentShaderString(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->OES:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    const-string v2, "#extension GL_OES_EGL_image_external : require\n"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v2, "precision mediump float;\n"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "varying vec2 tc;\n"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->getImageAdjustable()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v2, "uniform mediump float contrast;\n"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "uniform mediump float brightness;\n"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "uniform mediump float saturation;\n"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object v2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 52
    .line 53
    const-string v3, "}\n"

    .line 54
    .line 55
    const-string v4, "  textureColor = vec4(mix(greyScaleColor, textureColor.rgb, saturation), textureColor.w);\n"

    .line 56
    .line 57
    const-string v5, "  lowp vec3 greyScaleColor = vec3(luminance);\n"

    .line 58
    .line 59
    const-string v6, "  lowp float luminance = dot(textureColor.rgb, luminanceWeighting);\n"

    .line 60
    .line 61
    const-string v7, "    textureColor.a);\n"

    .line 62
    .line 63
    if-ne p1, v2, :cond_3

    .line 64
    .line 65
    const-string p1, "uniform sampler2D y_tex;\n"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "uniform sampler2D u_tex;\n"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "uniform sampler2D v_tex;\n"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, "vec4 sample(vec2 p) {\n"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, "  float y = texture2D(y_tex, p).r * 1.16438;\n"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, "  float u = texture2D(u_tex, p).r;\n"

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, "  float v = texture2D(v_tex, p).r;\n"

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-interface {p2}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->getImageAdjustable()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const-string p1, "  vec4 textureColor = vec4((y + 1.59603 * v - 0.874202),\n"

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, "    (y - 0.391762 * u - 0.812968 * v + 0.531668),\n"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, "    (y + 2.01723 * u - 1.08563), 1);\n"

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "  textureColor = vec4((textureColor.r - 0.5) * contrast + 0.5,\n"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, "    (textureColor.g - 0.5) * contrast + 0.5,\n"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, "    (textureColor.b - 0.5) * contrast + 0.5,\n"

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, "  textureColor = vec4(textureColor.r + brightness, textureColor.g + brightness, textureColor.b + brightness, textureColor.a);\n"

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, "  return textureColor;\n"

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    const-string p1, "  return vec4(y + 1.59603 * v - 0.874202,\n"

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, "    y - 0.391762 * u - 0.812968 * v + 0.531668,\n"

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p1, "    y + 2.01723 * u - 1.08563, 1);\n"

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    if-ne p1, v1, :cond_4

    .line 182
    .line 183
    const-string p1, "samplerExternalOES"

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    const-string p1, "sampler2D"

    .line 187
    .line 188
    :goto_1
    const-string v1, "uniform "

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p1, " tex;\n"

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-interface {p2}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->getImageAdjustable()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_5

    .line 206
    .line 207
    const-string p0, "void main() {\n"

    .line 208
    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p0, "  highp vec4 textureColor = texture2D(tex, tc);\n"

    .line 213
    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p0, "  textureColor = vec4((textureColor.r - 0.5) * contrast + 0.5, \n"

    .line 218
    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p0, "    (textureColor.g - 0.5) * contrast + 0.5, \n"

    .line 223
    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p0, "    (textureColor.b - 0.5) * contrast + 0.5, \n"

    .line 228
    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p0, "  textureColor = vec4(textureColor.r + brightness, textureColor.g + brightness, textureColor.b + brightness, textureColor.a); \n"

    .line 236
    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p0, "  gl_FragColor = textureColor;\n"

    .line 250
    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_5
    const-string p1, "sample("

    .line 259
    .line 260
    const-string p2, "texture2D(tex, "

    .line 261
    .line 262
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0
.end method

.method static createFragmentShaderStringForBlackWhiteDisplay(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->OES:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    const-string v0, "#extension GL_OES_EGL_image_external : require\n"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v0, "precision mediump float;\n"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "varying vec2 tc;\n"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 26
    .line 27
    const-string v1, "}\n"

    .line 28
    .line 29
    const-string v2, "void main() {\n"

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    const-string p1, "uniform sampler2D y_tex;\n"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "  float luminance = texture2D(y_tex, tc).r;\n"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "  gl_FragColor = vec4(vec3(luminance), 1);\n"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    const-string p1, "samplerExternalOES"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string p1, "sampler2D"

    .line 61
    .line 62
    :goto_0
    const-string p2, "uniform "

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " tex;\n"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "  highp vec4 textureColor = texture2D(tex, tc);\n"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, "  float luminance = dot(textureColor.rgb, luminanceWeighting);\n"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, "  gl_FragColor = vec4(vec3(luminance), textureColor.w);\n"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method static createFragmentShaderStringForUnsharpMask(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->OES:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    if-ne v0, v2, :cond_0

    const-string v3, "#extension GL_OES_EGL_image_external : require\n"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "precision mediump float;\n"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying vec2 tc;\n"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform mediump float unsharpAmount;\n"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform mediump float unsharpThreshold;\n"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform mediump vec2 textureSize;\n"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v3, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    const-string v4, "  // Apply blur with 7x7 kernel\n"

    const-string v5, "  kernel[42] = 0.00000067; kernel[43] = 0.00002292; kernel[44] = 0.00019117; kernel[45] = 0.00038771; kernel[46] = 0.00019117; kernel[47] = 0.00002292; kernel[48] = 0.00000067;\n"

    const-string v6, "  // Row 6\n"

    const-string v7, "  kernel[35] = 0.00002292; kernel[36] = 0.00078634; kernel[37] = 0.00655965; kernel[38] = 0.01330373; kernel[39] = 0.00655965; kernel[40] = 0.00078634; kernel[41] = 0.00002292;\n"

    const-string v8, "  // Row 5\n"

    const-string v9, "  kernel[28] = 0.00019117; kernel[29] = 0.00655965; kernel[30] = 0.05472157; kernel[31] = 0.11098164; kernel[32] = 0.05472157; kernel[33] = 0.00655965; kernel[34] = 0.00019117;\n"

    const-string v10, "  // Row 4\n"

    const-string v11, "  kernel[21] = 0.00038771; kernel[22] = 0.01330373; kernel[23] = 0.11098164; kernel[24] = 0.22508352; kernel[25] = 0.11098164; kernel[26] = 0.01330373; kernel[27] = 0.00038771;\n"

    const-string v12, "  // Row 3 (center row)\n"

    const-string v13, "  kernel[14] = 0.00019117; kernel[15] = 0.00655965; kernel[16] = 0.05472157; kernel[17] = 0.11098164; kernel[18] = 0.05472157; kernel[19] = 0.00655965; kernel[20] = 0.00019117;\n"

    const-string v14, "  // Row 2\n"

    const-string v15, "  kernel[7] = 0.00002292; kernel[8] = 0.00078634; kernel[9] = 0.00655965; kernel[10] = 0.01330373; kernel[11] = 0.00655965; kernel[12] = 0.00078634; kernel[13] = 0.00002292;\n"

    move-object/from16 p0, v2

    const-string v2, "  // Row 1\n"

    move-object/from16 p2, v4

    const-string v4, "  kernel[0] = 0.00000067; kernel[1] = 0.00002292; kernel[2] = 0.00019117; kernel[3] = 0.00038771; kernel[4] = 0.00019117; kernel[5] = 0.00002292; kernel[6] = 0.00000067;\n"

    move-object/from16 v16, v5

    const-string v5, "  // Row 0\n"

    move-object/from16 v17, v6

    const-string v6, "  float kernel[49];\n"

    move-object/from16 v18, v7

    const-string v7, "  // 7x7 Gaussian blur kernel weights\n"

    move-object/from16 v19, v8

    const-string v8, "  vec4 blurColor = vec4(0.0);\n"

    move-object/from16 v20, v9

    const-string v9, "  vec2 texelSize = 1.0 / textureSize;\n"

    move-object/from16 v21, v10

    const-string v10, "  // Calculate blur using 7x7 Gaussian kernel for better anti-aliasing\n"

    move-object/from16 v22, v11

    const-string v11, "}\n"

    move-object/from16 v23, v11

    const-string v11, "  \n"

    if-ne v0, v3, :cond_1

    const-string v0, "uniform sampler2D y_tex;\n"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uniform sampler2D u_tex;\n"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uniform sampler2D v_tex;\n"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vec4 applyUnsharpMaskYUV(vec2 coord) {\n"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Convert YUV to RGB first\n"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float y = texture2D(y_tex, coord).r * 1.16438;\n"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float u = texture2D(u_tex, coord).r;\n"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float v = texture2D(v_tex, coord).r;\n"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 originalColor = vec4((y + 1.59603 * v - 0.874202),\n"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    (y - 0.391762 * u - 0.812968 * v + 0.531668),\n"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    (y + 2.01723 * u - 1.08563), 1);\n"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  for(int i = 0; i < 7; i++) {\n"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    for(int j = 0; j < 7; j++) {\n"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      vec2 offset = vec2(float(i-3), float(j-3)) * texelSize;\n"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      float y_blur = texture2D(y_tex, coord + offset).r * 1.16438;\n"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      float u_blur = texture2D(u_tex, coord + offset).r;\n"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      float v_blur = texture2D(v_tex, coord + offset).r;\n"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      vec4 sampleColor = vec4((y_blur + 1.59603 * v_blur - 0.874202),\n"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        (y_blur - 0.391762 * u_blur - 0.812968 * v_blur + 0.531668),\n"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        (y_blur + 2.01723 * u_blur - 1.08563), 1);\n"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      blurColor += sampleColor * kernel[i*7+j];\n"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    }\n"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  }\n"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Calculate unsharp mask\n"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 mask = originalColor - blurColor;\n"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float maskLuminance = dot(mask.rgb, luminanceWeighting);\n"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Apply threshold\n"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float t = step(unsharpThreshold, abs(maskLuminance));\n"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Apply unsharp mask\n"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 result = mix(originalColor, clamp(originalColor + mask * unsharpAmount, 0.0, 1.0), t);\n"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  return result;\n"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "void main() {\n"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  vec4 textureColor = applyUnsharpMaskYUV(tc);\n"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  gl_FragColor = textureColor;\n"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v24, p2

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 v30, v21

    move-object/from16 v31, v23

    if-ne v0, v3, :cond_2

    const-string v0, "samplerExternalOES"

    goto :goto_0

    :cond_2
    const-string v0, "sampler2D"

    :goto_0
    const-string v3, "uniform "

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tex;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vec4 applyUnsharpMask(vec2 coord) {\n"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 originalColor = texture2D(tex, coord);\n"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  for(int i = 0; i < 7; i++) {\n"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    for(int j = 0; j < 7; j++) {\n"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      vec2 offset = vec2(float(i-3), float(j-3)) * texelSize;\n"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      blurColor += texture2D(tex, coord + offset) * kernel[i*7+j];\n"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    }\n"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  }\n"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Calculate unsharp mask\n"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 mask = originalColor - blurColor;\n"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float maskLuminance = dot(mask.rgb, luminanceWeighting);\n"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Apply threshold\n"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  float t = step(unsharpThreshold, abs(maskLuminance));\n"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  // Apply unsharp mask\n"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  vec4 result = mix(originalColor, clamp(originalColor + mask * unsharpAmount, 0.0, 1.0), t);\n"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  return result;\n"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "void main() {\n"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  highp vec4 textureColor = applyUnsharpMask(tc);\n"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  gl_FragColor = textureColor;\n"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createFragmentShaderStringForUnsharpMaskOptimized(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->OES:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    const-string v0, "#extension GL_OES_EGL_image_external : require\n"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v0, "precision mediump float;\n"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "varying vec2 tc;\n"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "uniform mediump float unsharpAmount;\n"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "uniform mediump float unsharpThreshold;\n"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "uniform mediump vec2 textureSize;\n"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "  float maskIntensity = dot(abs(mask.rgb), luminanceWeighting);\n"

    .line 46
    .line 47
    const-string v1, "  vec4 originalColor = texture2D(tex, coord);\n"

    .line 48
    .line 49
    const-string v2, "void main() {\n"

    .line 50
    .line 51
    const-string v3, "\n"

    .line 52
    .line 53
    const-string v4, "  vec2 offset = 1.0 / textureSize;\n"

    .line 54
    .line 55
    const-string v5, "}\n"

    .line 56
    .line 57
    const-string v6, "  \n"

    .line 58
    .line 59
    if-ne p1, p2, :cond_1

    .line 60
    .line 61
    const-string p2, "const mediump float centerWeight = 0.52;\n"

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, "const mediump float enhanceBoost = 1.8;\n"

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, "uniform samplerExternalOES tex;\n"

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, "vec4 applyUnsharpMaskEnhancedOES(vec2 coord) {\n"

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, "  // \u660e\u663e\u5bf9\u89d2\u7ebf\u91c7\u6837 - \u589e\u5f3a\u9510\u5316\u5bf9\u6bd4\u5ea6\n"

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p2, "  vec4 diag1 = texture2D(tex, coord + vec2(-offset.x, -offset.y)) + texture2D(tex, coord + vec2(offset.x, offset.y));\n"

    .line 96
    .line 97
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, "  vec4 diag2 = texture2D(tex, coord + vec2(-offset.x, offset.y)) + texture2D(tex, coord + vec2(offset.x, -offset.y));\n"

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, "  // \u660e\u663e\u6a21\u7cca\u8ba1\u7b97 - \u589e\u5f3a\u9510\u5316\u5bf9\u6bd4\n"

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, "  vec4 cornerAvg = (diag1 + diag2) * 0.25;\n"

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p2, "  vec4 blurColor = originalColor * centerWeight + cornerAvg * (1.0 - centerWeight);\n"

    .line 119
    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p2, "  // \u660e\u663e\u589e\u5f3a\u8ba1\u7b97 - \u663e\u8457\u63d0\u5347\u9510\u5316\u5f3a\u5ea6\n"

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p2, "  vec4 mask = originalColor - blurColor;\n"

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p2, "  // \u8f83\u4f4e\u9608\u503c - \u66f4\u591a\u533a\u57df\u88ab\u589e\u5f3a\n"

    .line 143
    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p2, "  float threshold = smoothstep(unsharpThreshold * 0.3, unsharpThreshold + 0.04, maskIntensity);\n"

    .line 148
    .line 149
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, "  vec4 enhancement = mask * unsharpAmount * enhanceBoost * threshold;\n"

    .line 153
    .line 154
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p2, "  // \u660e\u663e\u589e\u5f3a - \u663e\u8457\u7684\u9510\u5316\u6548\u679c\n"

    .line 161
    .line 162
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p2, "  return originalColor + enhancement * 1.5;  // \u660e\u663e\u589e\u5f3a\n"

    .line 166
    .line 167
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, "  gl_FragColor = clamp(applyUnsharpMaskEnhancedOES(tc), 0.0, 1.0);\n"

    .line 180
    .line 181
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_1
    sget-object p2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 188
    .line 189
    const-string v7, "  float threshold = smoothstep(unsharpThreshold * 0.25, unsharpThreshold + 0.04, maskIntensity);\n"

    .line 190
    .line 191
    const-string v8, "const mediump float c2 = 0.0751;\n"

    .line 192
    .line 193
    const-string v9, "const mediump float c1 = 0.2420;\n"

    .line 194
    .line 195
    const-string v10, "const mediump float c0 = 0.3829;\n"

    .line 196
    .line 197
    if-ne p1, p2, :cond_2

    .line 198
    .line 199
    const-string p1, "uniform sampler2D y_tex;\n"

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p1, "uniform sampler2D u_tex;\n"

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p1, "uniform sampler2D v_tex;\n"

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, "const mediump mat3 yuvToRgbMatrix = mat3(\n"

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p1, "  1.16438, 1.16438, 1.16438,\n"

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string p1, "  0.0, -0.391762, 2.01723,\n"

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p1, "  1.59603, -0.812968, 0.0\n"

    .line 239
    .line 240
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, ");\n"

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string p1, "const mediump vec3 yuvOffset = vec3(-0.874202, 0.531668, -1.08563);\n"

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string p1, "vec3 sampleYUVFast(vec2 coord) {\n"

    .line 254
    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p1, "  vec3 yuv = vec3(texture2D(y_tex, coord).r, texture2D(u_tex, coord).r, texture2D(v_tex, coord).r);\n"

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string p1, "  return yuvToRgbMatrix * yuv + yuvOffset;\n"

    .line 264
    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string p1, "vec4 applyUnsharpMaskYUVOptimized(vec2 coord) {\n"

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string p1, "  vec3 originalColor = sampleYUVFast(coord);\n"

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p1, "  // \u4f18\u5316\u5bf9\u79f0\u91c7\u6837 - 16\u4e2atexture2D\u8c03\u7528\n"

    .line 288
    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string p1, "  vec3 h1 = sampleYUVFast(coord + vec2(-1.0 * offset.x, 0.0)) + sampleYUVFast(coord + vec2(1.0 * offset.x, 0.0));\n"

    .line 293
    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string p1, "  vec3 h2 = sampleYUVFast(coord + vec2(-2.0 * offset.x, 0.0)) + sampleYUVFast(coord + vec2(2.0 * offset.x, 0.0));\n"

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string p1, "  vec3 blurH = originalColor * c0 + h1 * c1 + h2 * c2;\n"

    .line 303
    .line 304
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p1, "  vec3 v1 = sampleYUVFast(coord + vec2(0.0, -1.0 * offset.y)) + sampleYUVFast(coord + vec2(0.0, 1.0 * offset.y));\n"

    .line 311
    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p1, "  vec3 v2 = sampleYUVFast(coord + vec2(0.0, -2.0 * offset.y)) + sampleYUVFast(coord + vec2(0.0, 2.0 * offset.y));\n"

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string p1, "  vec3 blurV = originalColor * c0 + v1 * c1 + v2 * c2;\n"

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p1, "  // \u660e\u663e\u589e\u5f3a\u8ba1\u7b97 - \u663e\u8457\u63d0\u5347YUV\u9510\u5316\u6548\u679c\n"

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p1, "  vec3 blurColor = (blurH + blurV) * 0.5;\n"

    .line 334
    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string p1, "  vec3 mask = (originalColor - blurColor) * unsharpAmount * 1.9;\n"

    .line 339
    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string p1, "  float maskIntensity = dot(abs(mask), luminanceWeighting);\n"

    .line 344
    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p1, "  vec3 enhancement = mask * threshold;\n"

    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string p1, "  return vec4(clamp(originalColor + enhancement * 1.4, 0.0, 1.0), 1.0);\n"

    .line 360
    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string p1, "  gl_FragColor = applyUnsharpMaskYUVOptimized(tc);\n"

    .line 374
    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_2
    sget-object p2, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->RGB:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 384
    .line 385
    if-ne p1, p2, :cond_3

    .line 386
    .line 387
    const-string p1, "uniform sampler2D tex;\n"

    .line 388
    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string p1, "const mediump float c3 = 0.0093;\n"

    .line 402
    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string p1, "vec4 applyUnsharpMaskOptimizedRGB(vec2 coord) {\n"

    .line 407
    .line 408
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string p1, "  // \u9ad8\u6548\u5bf9\u79f0\u91c7\u6837 - 8\u4e2atexture2D\u8c03\u7528\n"

    .line 421
    .line 422
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string p1, "  vec4 h1 = texture2D(tex, coord + vec2(-1.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(1.0 * offset.x, 0.0));\n"

    .line 426
    .line 427
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p1, "  vec4 h2 = texture2D(tex, coord + vec2(-2.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(2.0 * offset.x, 0.0));\n"

    .line 431
    .line 432
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string p1, "  vec4 h3 = texture2D(tex, coord + vec2(-3.0 * offset.x, 0.0)) + texture2D(tex, coord + vec2(3.0 * offset.x, 0.0));\n"

    .line 436
    .line 437
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string p1, "  vec4 v1 = texture2D(tex, coord + vec2(0.0, -1.0 * offset.y)) + texture2D(tex, coord + vec2(0.0, 1.0 * offset.y));\n"

    .line 441
    .line 442
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string p1, "  // \u5feb\u901f\u6a21\u7cca\u8ba1\u7b97\n"

    .line 449
    .line 450
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string p1, "  vec4 blurH = originalColor * c0 + h1 * c1 + h2 * c2 + h3 * c3;\n"

    .line 454
    .line 455
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string p1, "  vec4 blurV = originalColor * c0 + v1 * c1;\n"

    .line 459
    .line 460
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string p1, "  vec4 blurColor = (blurH + blurV) * 0.5;\n"

    .line 464
    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string p1, "  // \u660e\u663e\u589e\u5f3a\u8ba1\u7b97 - \u663e\u8457\u63d0\u5347RGB\u9510\u5316\u6548\u679c\n"

    .line 472
    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string p1, "  vec4 mask = (originalColor - blurColor) * unsharpAmount * 1.8;\n"

    .line 477
    .line 478
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string p1, "  vec4 enhancement = mask * threshold;\n"

    .line 488
    .line 489
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string p1, "  return clamp(originalColor + enhancement * 1.45, 0.0, 1.0);\n"

    .line 496
    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string p1, "  gl_FragColor = applyUnsharpMaskOptimizedRGB(tc);\n"

    .line 510
    .line 511
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    return-object p0
.end method

.method private prepareShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;[FIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShaderType:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentBlackWhiteDisplay:Z

    .line 16
    .line 17
    iget-boolean v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 18
    .line 19
    if-ne v2, v5, :cond_0

    .line 20
    .line 21
    iget-boolean v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastImageAdjustable:Z

    .line 22
    .line 23
    iget-boolean v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 24
    .line 25
    if-ne v2, v5, :cond_0

    .line 26
    .line 27
    iget v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastContrastRatio:F

    .line 28
    .line 29
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 30
    .line 31
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastBrightnessRatio:F

    .line 38
    .line 39
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 40
    .line 41
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastSaturationRatio:F

    .line 48
    .line 49
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 50
    .line 51
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    iget-boolean v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpMarkStatus:Z

    .line 58
    .line 59
    iget-boolean v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 60
    .line 61
    if-ne v2, v5, :cond_0

    .line 62
    .line 63
    iget v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpAmount:F

    .line 64
    .line 65
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 66
    .line 67
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    iget v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpThreshold:F

    .line 74
    .line 75
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 76
    .line 77
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_0

    .line 82
    .line 83
    iget-object v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

    .line 84
    .line 85
    move/from16 v8, p3

    .line 86
    .line 87
    move/from16 v9, p4

    .line 88
    .line 89
    move-object v6, v1

    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 93
    iput-object v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShaderType:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 94
    .line 95
    iget-object v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

    .line 96
    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    invoke-virtual {v5}, Lorg/hmwebrtc/GlShader;->release()V

    .line 100
    .line 101
    .line 102
    iput-object v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

    .line 103
    .line 104
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/hmwebrtc/GlGenericDrawer;->createShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;)Lorg/hmwebrtc/GlShader;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShaderType:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 109
    .line 110
    iput-object v2, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

    .line 111
    .line 112
    invoke-virtual {v2}, Lorg/hmwebrtc/GlShader;->useProgram()V

    .line 113
    .line 114
    .line 115
    sget-object v5, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 116
    .line 117
    if-ne v1, v5, :cond_3

    .line 118
    .line 119
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 120
    .line 121
    const-string v5, "y_tex"

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2, v5}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v2, v5}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 138
    .line 139
    .line 140
    const-string v1, "u_tex"

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 147
    .line 148
    .line 149
    const-string v1, "v_tex"

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/4 v5, 0x2

    .line 156
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "tex"

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 167
    .line 168
    .line 169
    :goto_0
    const-string v1, "Create shader"

    .line 170
    .line 171
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->shaderCallbacks:Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;

    .line 175
    .line 176
    invoke-interface {v1, v2}, Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;->onNewShader(Lorg/hmwebrtc/GlShader;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "tex_mat"

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->texMatrixLocation:I

    .line 186
    .line 187
    const-string v1, "in_pos"

    .line 188
    .line 189
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->inPosLocation:I

    .line 194
    .line 195
    const-string v1, "in_tc"

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->inTcLocation:I

    .line 202
    .line 203
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 204
    .line 205
    if-eqz v1, :cond_4

    .line 206
    .line 207
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 208
    .line 209
    if-nez v1, :cond_4

    .line 210
    .line 211
    const-string v1, "contrast"

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->contrastLocation:I

    .line 218
    .line 219
    const-string v1, "brightness"

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessLocation:I

    .line 226
    .line 227
    const-string v1, "saturation"

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->saturationLocation:I

    .line 234
    .line 235
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->contrastLocation:I

    .line 236
    .line 237
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 238
    .line 239
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 240
    .line 241
    .line 242
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessLocation:I

    .line 243
    .line 244
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 245
    .line 246
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 247
    .line 248
    .line 249
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->saturationLocation:I

    .line 250
    .line 251
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 252
    .line 253
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 254
    .line 255
    .line 256
    :cond_4
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 257
    .line 258
    if-eqz v1, :cond_5

    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v5, "unsharpAmount:"

    .line 266
    .line 267
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 271
    .line 272
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v5, ",unsharpThreshold:"

    .line 276
    .line 277
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 281
    .line 282
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v5, "GlGenericDrawer"

    .line 290
    .line 291
    invoke-static {v5, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v1, "unsharpAmount"

    .line 295
    .line 296
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmountLocation:I

    .line 301
    .line 302
    const-string v1, "unsharpThreshold"

    .line 303
    .line 304
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThresholdLocation:I

    .line 309
    .line 310
    const-string v1, "textureSize"

    .line 311
    .line 312
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->textureSizeLocation:I

    .line 317
    .line 318
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmountLocation:I

    .line 319
    .line 320
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 321
    .line 322
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 323
    .line 324
    .line 325
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThresholdLocation:I

    .line 326
    .line 327
    iget v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 328
    .line 329
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 330
    .line 331
    .line 332
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->textureSizeLocation:I

    .line 333
    .line 334
    move/from16 v8, p3

    .line 335
    .line 336
    int-to-float v5, v8

    .line 337
    move/from16 v9, p4

    .line 338
    .line 339
    int-to-float v6, v9

    .line 340
    invoke-static {v1, v5, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_5
    move/from16 v8, p3

    .line 345
    .line 346
    move/from16 v9, p4

    .line 347
    .line 348
    :goto_1
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 349
    .line 350
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastContrastRatio:F

    .line 351
    .line 352
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 353
    .line 354
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastBrightnessRatio:F

    .line 355
    .line 356
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 357
    .line 358
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastSaturationRatio:F

    .line 359
    .line 360
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 361
    .line 362
    iput-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastImageAdjustable:Z

    .line 363
    .line 364
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 365
    .line 366
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpAmount:F

    .line 367
    .line 368
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 369
    .line 370
    iput v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpThreshold:F

    .line 371
    .line 372
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 373
    .line 374
    iput-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->lastUnsharpMarkStatus:Z

    .line 375
    .line 376
    iget-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 377
    .line 378
    iput-boolean v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->currentBlackWhiteDisplay:Z

    .line 379
    .line 380
    move-object v6, v2

    .line 381
    :goto_2
    invoke-virtual {v6}, Lorg/hmwebrtc/GlShader;->useProgram()V

    .line 382
    .line 383
    .line 384
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->inPosLocation:I

    .line 385
    .line 386
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 387
    .line 388
    .line 389
    iget v10, v0, Lorg/hmwebrtc/GlGenericDrawer;->inPosLocation:I

    .line 390
    .line 391
    const/4 v11, 0x2

    .line 392
    const/16 v12, 0x1406

    .line 393
    .line 394
    const/4 v13, 0x0

    .line 395
    const/4 v14, 0x0

    .line 396
    sget-object v15, Lorg/hmwebrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    .line 397
    .line 398
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 399
    .line 400
    .line 401
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->inTcLocation:I

    .line 402
    .line 403
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 404
    .line 405
    .line 406
    iget v10, v0, Lorg/hmwebrtc/GlGenericDrawer;->inTcLocation:I

    .line 407
    .line 408
    sget-object v15, Lorg/hmwebrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    .line 409
    .line 410
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 411
    .line 412
    .line 413
    iget v1, v0, Lorg/hmwebrtc/GlGenericDrawer;->texMatrixLocation:I

    .line 414
    .line 415
    move-object/from16 v2, p2

    .line 416
    .line 417
    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 418
    .line 419
    .line 420
    iget-object v5, v0, Lorg/hmwebrtc/GlGenericDrawer;->shaderCallbacks:Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;

    .line 421
    .line 422
    move-object/from16 v7, p2

    .line 423
    .line 424
    move/from16 v8, p3

    .line 425
    .line 426
    move/from16 v9, p4

    .line 427
    .line 428
    move/from16 v10, p5

    .line 429
    .line 430
    move/from16 v11, p6

    .line 431
    .line 432
    invoke-interface/range {v5 .. v11}, Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;->onPrepareShader(Lorg/hmwebrtc/GlShader;[FIIII)V

    .line 433
    .line 434
    .line 435
    const-string v1, "Prepare shader"

    .line 436
    .line 437
    invoke-static {v1}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    return-void
.end method


# virtual methods
.method createShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;)Lorg/hmwebrtc/GlShader;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 2
    .line 3
    const-string v1, "GlGenericDrawer"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "enable black white display shader"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/hmwebrtc/GlShader;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, p1, p0}, Lorg/hmwebrtc/GlGenericDrawer;->createFragmentShaderStringForBlackWhiteDisplay(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, v1, p1}, Lorg/hmwebrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->useOptimizedUnsharpMask:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "enable optimized unsharp mask enhancement shader"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lorg/hmwebrtc/GlShader;

    .line 40
    .line 41
    iget-object v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2, p1, p0}, Lorg/hmwebrtc/GlGenericDrawer;->createFragmentShaderStringForUnsharpMaskOptimized(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, v1, p1}, Lorg/hmwebrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    const-string v0, "enable unsharp mark enhancement shader"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lorg/hmwebrtc/GlShader;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, p1, p0}, Lorg/hmwebrtc/GlGenericDrawer;->createFragmentShaderStringForUnsharpMask(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, v1, p1}, Lorg/hmwebrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    const-string v0, "enable common shader"

    .line 73
    .line 74
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lorg/hmwebrtc/GlShader;

    .line 78
    .line 79
    iget-object v1, p0, Lorg/hmwebrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p0, Lorg/hmwebrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, p1, p0}, Lorg/hmwebrtc/GlGenericDrawer;->createFragmentShaderString(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderType;Lorg/hmwebrtc/RendererCommon$GlDrawer;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, v1, p1}, Lorg/hmwebrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public drawOes(I[FIIIIII)V
    .locals 7

    .line 1
    sget-object v1, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->OES:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p7

    .line 8
    move v6, p8

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/GlGenericDrawer;->prepareShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;[FIIII)V

    .line 10
    .line 11
    .line 12
    const p2, 0x84c0

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 16
    .line 17
    .line 18
    const p2, 0x8d65

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    const/4 p3, 0x5

    .line 29
    const/4 p4, 0x0

    .line 30
    invoke-static {p3, p4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 7

    .line 1
    sget-object v1, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->RGB:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p7

    .line 8
    move v6, p8

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/GlGenericDrawer;->prepareShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;[FIIII)V

    .line 10
    .line 11
    .line 12
    const p2, 0x84c0

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0xde1

    .line 19
    .line 20
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 21
    .line 22
    .line 23
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    const/4 p3, 0x5

    .line 28
    const/4 p4, 0x0

    .line 29
    invoke-static {p3, p4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .locals 7

    .line 1
    sget-object v1, Lorg/hmwebrtc/GlGenericDrawer$ShaderType;->YUV:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p7

    .line 8
    move v6, p8

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/GlGenericDrawer;->prepareShader(Lorg/hmwebrtc/GlGenericDrawer$ShaderType;[FIIII)V

    .line 10
    .line 11
    .line 12
    iget-boolean p2, p0, Lorg/hmwebrtc/GlGenericDrawer;->enableBlackWhiteDisplay:Z

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x3

    .line 20
    :goto_0
    const/4 p4, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_1
    const/16 v1, 0xde1

    .line 23
    .line 24
    const v2, 0x84c0

    .line 25
    .line 26
    .line 27
    if-ge v0, p2, :cond_1

    .line 28
    .line 29
    add-int/2addr v2, v0

    .line 30
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 31
    .line 32
    .line 33
    aget v2, p1, v0

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x5

    .line 45
    const/4 p2, 0x4

    .line 46
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_2
    if-ge p1, p3, :cond_2

    .line 51
    .line 52
    add-int p2, p1, v2

    .line 53
    .line 54
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    return-void
.end method

.method public getImageAdjustable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizedUnsharpMask()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->useOptimizedUnsharpMask:Z

    .line 2
    .line 3
    return v0
.end method

.method public getUnsharpMaskEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

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
    iput-object v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->currentShader:Lorg/hmwebrtc/GlShader;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/hmwebrtc/GlGenericDrawer;->currentShaderType:Lorg/hmwebrtc/GlGenericDrawer$ShaderType;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setBlackWhiteDisplay(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 5
    .line 6
    const p1, -0x42333333    # -0.1f

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 10
    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 14
    .line 15
    const p1, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustableOfCloud:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 24
    .line 25
    iget p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatioOfCloud:F

    .line 26
    .line 27
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 28
    .line 29
    iget p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatioOfCloud:F

    .line 30
    .line 31
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 32
    .line 33
    iget p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatioOfCloud:F

    .line 34
    .line 35
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public setBrightnessRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the image brightness ratio : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    .line 25
    cmpl-float v0, p1, v0

    .line 26
    .line 27
    if-ltz v0, :cond_0

    .line 28
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpg-float v0, p1, v0

    .line 32
    .line 33
    if-gtz v0, :cond_0

    .line 34
    .line 35
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatio:F

    .line 36
    .line 37
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->brightnessRatioOfCloud:F

    .line 38
    .line 39
    return-void
.end method

.method public setContrastRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the image contrast ratio : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpl-float v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    const/high16 v0, 0x40800000    # 4.0f

    .line 29
    .line 30
    cmpg-float v0, p1, v0

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatio:F

    .line 35
    .line 36
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->contrastRatioOfCloud:F

    .line 37
    .line 38
    return-void
.end method

.method public setImageAdjustable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the image adjustable : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustable:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->imageAdjustableOfCloud:Z

    .line 26
    .line 27
    return-void
.end method

.method public setOptimizedUnsharpMask(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set optimized unsharp mask : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->useOptimizedUnsharpMask:Z

    .line 24
    .line 25
    return-void
.end method

.method public setSaturationRatio(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the image saturation ratio : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpl-float v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    cmpg-float v0, p1, v0

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatio:F

    .line 35
    .line 36
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->saturationRatioOfCloud:F

    .line 37
    .line 38
    return-void
.end method

.method public setUnsharpMaskAmount(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the unsharp mask amount : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpl-float v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    const/high16 v0, 0x40400000    # 3.0f

    .line 29
    .line 30
    cmpg-float v0, p1, v0

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpAmount:F

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public setUnsharpMaskEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the unsharp mask enabled : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpMarkStatus:Z

    .line 24
    .line 25
    return-void
.end method

.method public setUnsharpMaskThreshold(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set the unsharp mask threshold : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GlGenericDrawer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpl-float v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpg-float v0, p1, v0

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iput p1, p0, Lorg/hmwebrtc/GlGenericDrawer;->unsharpThreshold:F

    .line 35
    .line 36
    :cond_0
    return-void
.end method
