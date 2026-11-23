.class public Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;
.super Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\n varying highp vec2 vTextureCoord;\n uniform lowp sampler2D sTexture;\n uniform mediump sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"


# instance fields
.field private blueControlPoints:[Landroid/graphics/PointF;

.field private blueCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greenControlPoints:[Landroid/graphics/PointF;

.field private greenCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private redControlPoints:[Landroid/graphics/PointF;

.field private redCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private rgbCompositeControlPoints:[Landroid/graphics/PointF;

.field private rgbCompositeCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final runOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private textures:[I

.field private toneCurveByteArray:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    const-string v0, "attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    .line 2
    .line 3
    const-string v1, "precision mediump float;\n varying highp vec2 vTextureCoord;\n uniform lowp sampler2D sTexture;\n uniform mediump sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->textures:[I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    new-array v1, v1, [Landroid/graphics/PointF;

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/PointF;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/PointF;

    .line 26
    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    .line 29
    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/PointF;

    .line 35
    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    .line 38
    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    aput-object v0, v1, v2

    .line 43
    .line 44
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 45
    .line 46
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redControlPoints:[Landroid/graphics/PointF;

    .line 47
    .line 48
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenControlPoints:[Landroid/graphics/PointF;

    .line 49
    .line 50
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueControlPoints:[Landroid/graphics/PointF;

    .line 51
    .line 52
    new-instance v0, Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->setRgbCompositeControlPoints([Landroid/graphics/PointF;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redControlPoints:[Landroid/graphics/PointF;

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->setRedControlPoints([Landroid/graphics/PointF;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenControlPoints:[Landroid/graphics/PointF;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->setGreenControlPoints([Landroid/graphics/PointF;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueControlPoints:[Landroid/graphics/PointF;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->setBlueControlPoints([Landroid/graphics/PointF;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->textures:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redCurve:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenCurve:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueCurve:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeCurve:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->toneCurveByteArray:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->toneCurveByteArray:[B

    .line 2
    .line 3
    return-object p1
.end method

.method private createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gt v1, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v3, 0x3

    .line 10
    filled-new-array {v1, v3}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [[D

    .line 21
    .line 22
    new-array v4, v1, [D

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aget-object v6, v3, v5

    .line 26
    .line 27
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    aput-wide v7, v6, v2

    .line 30
    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    aput-wide v9, v6, v5

    .line 34
    .line 35
    const/4 v11, 0x2

    .line 36
    aput-wide v9, v6, v11

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    :goto_0
    add-int/lit8 v12, v1, -0x1

    .line 40
    .line 41
    if-ge v6, v12, :cond_1

    .line 42
    .line 43
    add-int/lit8 v12, v6, -0x1

    .line 44
    .line 45
    aget-object v12, v0, v12

    .line 46
    .line 47
    aget-object v13, v0, v6

    .line 48
    .line 49
    add-int/lit8 v14, v6, 0x1

    .line 50
    .line 51
    aget-object v15, v0, v14

    .line 52
    .line 53
    aget-object v16, v3, v6

    .line 54
    .line 55
    iget v7, v13, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    iget v8, v12, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    sub-int v9, v7, v8

    .line 60
    .line 61
    int-to-double v9, v9

    .line 62
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    .line 63
    .line 64
    div-double v9, v9, v18

    .line 65
    .line 66
    aput-wide v9, v16, v5

    .line 67
    .line 68
    iget v9, v15, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    sub-int v10, v9, v8

    .line 71
    .line 72
    move/from16 v20, v6

    .line 73
    .line 74
    int-to-double v5, v10

    .line 75
    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    .line 76
    .line 77
    div-double v5, v5, v21

    .line 78
    .line 79
    aput-wide v5, v16, v2

    .line 80
    .line 81
    sub-int v5, v9, v7

    .line 82
    .line 83
    int-to-double v5, v5

    .line 84
    div-double v5, v5, v18

    .line 85
    .line 86
    aput-wide v5, v16, v11

    .line 87
    .line 88
    iget v5, v15, Landroid/graphics/Point;->y:I

    .line 89
    .line 90
    iget v6, v13, Landroid/graphics/Point;->y:I

    .line 91
    .line 92
    sub-int/2addr v5, v6

    .line 93
    move-object v13, v3

    .line 94
    int-to-double v2, v5

    .line 95
    sub-int/2addr v9, v7

    .line 96
    int-to-double v10, v9

    .line 97
    div-double/2addr v2, v10

    .line 98
    iget v9, v12, Landroid/graphics/Point;->y:I

    .line 99
    .line 100
    sub-int/2addr v6, v9

    .line 101
    int-to-double v9, v6

    .line 102
    sub-int/2addr v7, v8

    .line 103
    int-to-double v6, v7

    .line 104
    div-double/2addr v9, v6

    .line 105
    sub-double/2addr v2, v9

    .line 106
    aput-wide v2, v4, v20

    .line 107
    .line 108
    move-object v3, v13

    .line 109
    move v6, v14

    .line 110
    const/4 v2, 0x1

    .line 111
    const/4 v5, 0x0

    .line 112
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    const-wide/16 v9, 0x0

    .line 115
    .line 116
    const/4 v11, 0x2

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move-object v13, v3

    .line 119
    move-wide v2, v9

    .line 120
    const/4 v6, 0x0

    .line 121
    aput-wide v2, v4, v6

    .line 122
    .line 123
    aput-wide v2, v4, v12

    .line 124
    .line 125
    aget-object v0, v13, v12

    .line 126
    .line 127
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 128
    .line 129
    const/4 v10, 0x1

    .line 130
    aput-wide v7, v0, v10

    .line 131
    .line 132
    aput-wide v2, v0, v6

    .line 133
    .line 134
    const/4 v5, 0x2

    .line 135
    aput-wide v2, v0, v5

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    :goto_1
    if-ge v0, v1, :cond_2

    .line 139
    .line 140
    aget-object v2, v13, v0

    .line 141
    .line 142
    aget-wide v7, v2, v6

    .line 143
    .line 144
    add-int/lit8 v3, v0, -0x1

    .line 145
    .line 146
    aget-object v9, v13, v3

    .line 147
    .line 148
    aget-wide v11, v9, v10

    .line 149
    .line 150
    div-double/2addr v7, v11

    .line 151
    aget-wide v11, v2, v10

    .line 152
    .line 153
    aget-wide v14, v9, v5

    .line 154
    .line 155
    mul-double v14, v14, v7

    .line 156
    .line 157
    sub-double/2addr v11, v14

    .line 158
    aput-wide v11, v2, v10

    .line 159
    .line 160
    const-wide/16 v11, 0x0

    .line 161
    .line 162
    aput-wide v11, v2, v6

    .line 163
    .line 164
    aget-wide v11, v4, v0

    .line 165
    .line 166
    aget-wide v2, v4, v3

    .line 167
    .line 168
    mul-double v7, v7, v2

    .line 169
    .line 170
    sub-double/2addr v11, v7

    .line 171
    aput-wide v11, v4, v0

    .line 172
    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    .line 175
    const/4 v5, 0x2

    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v10, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_2
    add-int/lit8 v0, v1, -0x2

    .line 180
    .line 181
    :goto_2
    if-ltz v0, :cond_3

    .line 182
    .line 183
    aget-object v2, v13, v0

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    aget-wide v5, v2, v3

    .line 187
    .line 188
    add-int/lit8 v7, v0, 0x1

    .line 189
    .line 190
    aget-object v8, v13, v7

    .line 191
    .line 192
    const/4 v9, 0x1

    .line 193
    aget-wide v10, v8, v9

    .line 194
    .line 195
    div-double/2addr v5, v10

    .line 196
    aget-wide v10, v2, v9

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    aget-wide v14, v8, v12

    .line 200
    .line 201
    mul-double v14, v14, v5

    .line 202
    .line 203
    sub-double/2addr v10, v14

    .line 204
    aput-wide v10, v2, v9

    .line 205
    .line 206
    const-wide/16 v8, 0x0

    .line 207
    .line 208
    aput-wide v8, v2, v3

    .line 209
    .line 210
    aget-wide v14, v4, v0

    .line 211
    .line 212
    aget-wide v16, v4, v7

    .line 213
    .line 214
    mul-double v5, v5, v16

    .line 215
    .line 216
    sub-double/2addr v14, v5

    .line 217
    aput-wide v14, v4, v0

    .line 218
    .line 219
    add-int/lit8 v0, v0, -0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_3
    const/4 v12, 0x0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    :goto_3
    if-ge v5, v1, :cond_4

    .line 230
    .line 231
    aget-wide v2, v4, v5

    .line 232
    .line 233
    aget-object v6, v13, v5

    .line 234
    .line 235
    const/4 v7, 0x1

    .line 236
    aget-wide v8, v6, v7

    .line 237
    .line 238
    div-double/2addr v2, v8

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    add-int/lit8 v5, v5, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_4
    return-object v0
.end method

.method private createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/graphics/PointF;

    .line 13
    .line 14
    new-instance v1, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter$2;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter$2;-><init>(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    array-length v1, v0

    .line 23
    new-array v1, v1, [Landroid/graphics/Point;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    array-length v4, p1

    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    .line 30
    aget-object v4, v0, v3

    .line 31
    .line 32
    new-instance v5, Landroid/graphics/Point;

    .line 33
    .line 34
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    const/high16 v7, 0x437f0000    # 255.0f

    .line 37
    .line 38
    mul-float v6, v6, v7

    .line 39
    .line 40
    float-to-int v6, v6

    .line 41
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    mul-float v4, v4, v7

    .line 44
    .line 45
    float-to-int v4, v4

    .line 46
    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    .line 48
    .line 49
    aput-object v5, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0, v1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/graphics/Point;

    .line 63
    .line 64
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    if-lez v0, :cond_2

    .line 67
    .line 68
    :goto_1
    if-ltz v0, :cond_2

    .line 69
    .line 70
    new-instance v1, Landroid/graphics/Point;

    .line 71
    .line 72
    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/graphics/Point;

    .line 92
    .line 93
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 94
    .line 95
    const/16 v1, 0xff

    .line 96
    .line 97
    if-ge v0, v1, :cond_3

    .line 98
    .line 99
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    if-gt v0, v1, :cond_3

    .line 102
    .line 103
    new-instance v2, Landroid/graphics/Point;

    .line 104
    .line 105
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/graphics/Point;

    .line 136
    .line 137
    new-instance v2, Landroid/graphics/Point;

    .line 138
    .line 139
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 140
    .line 141
    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 142
    .line 143
    .line 144
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 145
    .line 146
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 147
    .line 148
    sub-int/2addr v3, v4

    .line 149
    int-to-double v3, v3

    .line 150
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 151
    .line 152
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    iget v7, v2, Landroid/graphics/Point;->y:I

    .line 157
    .line 158
    iget v8, v1, Landroid/graphics/Point;->y:I

    .line 159
    .line 160
    sub-int/2addr v7, v8

    .line 161
    int-to-double v7, v7

    .line 162
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    add-double/2addr v3, v5

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    double-to-float v3, v3

    .line 172
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 173
    .line 174
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 175
    .line 176
    if-le v2, v1, :cond_4

    .line 177
    .line 178
    neg-float v3, v3

    .line 179
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    return-object v0

    .line 188
    :cond_6
    :goto_4
    const/4 p1, 0x0

    .line 189
    return-object p1
.end method

.method private createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-array v4, v2, [D

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-ge v6, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    aput-wide v7, v4, v6

    .line 33
    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    add-int/lit8 v6, v2, 0x1

    .line 40
    .line 41
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v6, v2, -0x1

    .line 45
    .line 46
    if-ge v5, v6, :cond_5

    .line 47
    .line 48
    aget-object v6, v0, v5

    .line 49
    .line 50
    add-int/lit8 v7, v5, 0x1

    .line 51
    .line 52
    aget-object v8, v0, v7

    .line 53
    .line 54
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 55
    .line 56
    :goto_2
    iget v10, v8, Landroid/graphics/Point;->x:I

    .line 57
    .line 58
    if-ge v9, v10, :cond_4

    .line 59
    .line 60
    iget v11, v6, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    sub-int v12, v9, v11

    .line 63
    .line 64
    int-to-double v12, v12

    .line 65
    sub-int v14, v10, v11

    .line 66
    .line 67
    int-to-double v14, v14

    .line 68
    div-double/2addr v12, v14

    .line 69
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 70
    .line 71
    sub-double/2addr v14, v12

    .line 72
    sub-int/2addr v10, v11

    .line 73
    int-to-double v10, v10

    .line 74
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    int-to-double v2, v3

    .line 79
    mul-double v2, v2, v14

    .line 80
    .line 81
    move-object/from16 v17, v6

    .line 82
    .line 83
    iget v6, v8, Landroid/graphics/Point;->y:I

    .line 84
    .line 85
    move-object/from16 v18, v1

    .line 86
    .line 87
    int-to-double v0, v6

    .line 88
    mul-double v0, v0, v12

    .line 89
    .line 90
    add-double/2addr v2, v0

    .line 91
    mul-double v10, v10, v10

    .line 92
    .line 93
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 94
    .line 95
    div-double/2addr v10, v0

    .line 96
    mul-double v0, v14, v14

    .line 97
    .line 98
    mul-double v0, v0, v14

    .line 99
    .line 100
    sub-double/2addr v0, v14

    .line 101
    aget-wide v14, v4, v5

    .line 102
    .line 103
    mul-double v0, v0, v14

    .line 104
    .line 105
    mul-double v14, v12, v12

    .line 106
    .line 107
    mul-double v14, v14, v12

    .line 108
    .line 109
    sub-double/2addr v14, v12

    .line 110
    aget-wide v12, v4, v7

    .line 111
    .line 112
    mul-double v14, v14, v12

    .line 113
    .line 114
    add-double/2addr v0, v14

    .line 115
    mul-double v10, v10, v0

    .line 116
    .line 117
    add-double/2addr v2, v10

    .line 118
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    cmpl-double v6, v2, v0

    .line 124
    .line 125
    if-lez v6, :cond_2

    .line 126
    .line 127
    :goto_3
    move-wide v2, v0

    .line 128
    goto :goto_4

    .line 129
    :cond_2
    const-wide/16 v0, 0x0

    .line 130
    .line 131
    cmpg-double v6, v2, v0

    .line 132
    .line 133
    if-gez v6, :cond_3

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    :goto_4
    new-instance v0, Landroid/graphics/Point;

    .line 137
    .line 138
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    long-to-int v2, v1

    .line 143
    invoke-direct {v0, v9, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 144
    .line 145
    .line 146
    move-object/from16 v1, v18

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    add-int/lit8 v9, v9, 0x1

    .line 152
    .line 153
    move-object/from16 v0, p1

    .line 154
    .line 155
    move/from16 v2, v16

    .line 156
    .line 157
    move-object/from16 v6, v17

    .line 158
    .line 159
    const/4 v3, 0x1

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    move-object/from16 v0, p1

    .line 162
    .line 163
    move v5, v7

    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const/16 v2, 0xff

    .line 170
    .line 171
    if-ne v0, v2, :cond_6

    .line 172
    .line 173
    move-object/from16 v0, p1

    .line 174
    .line 175
    array-length v2, v0

    .line 176
    const/4 v3, 0x1

    .line 177
    sub-int/2addr v2, v3

    .line 178
    aget-object v0, v0, v2

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_6
    return-object v1
.end method

.method private readShort(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    or-int/2addr p1, v0

    .line 12
    int-to-short p1, p1

    .line 13
    return p1
.end method

.method private runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private setBlueControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueControlPoints:[Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueCurve:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->updateToneCurveTexture()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setFromCurveFileInputStream(Ljava/io/InputStream;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-array v5, v4, [Landroid/graphics/PointF;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_1
    if-ge v6, v4, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    new-instance v9, Landroid/graphics/PointF;

    .line 35
    .line 36
    int-to-float v8, v8

    .line 37
    const v10, 0x3b808081

    .line 38
    .line 39
    .line 40
    mul-float v8, v8, v10

    .line 41
    .line 42
    int-to-float v7, v7

    .line 43
    mul-float v7, v7, v10

    .line 44
    .line 45
    invoke-direct {v9, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 46
    .line 47
    .line 48
    aput-object v9, v5, v6

    .line 49
    .line 50
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Landroid/graphics/PointF;

    .line 67
    .line 68
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, [Landroid/graphics/PointF;

    .line 76
    .line 77
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redControlPoints:[Landroid/graphics/PointF;

    .line 78
    .line 79
    const/4 p1, 0x2

    .line 80
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, [Landroid/graphics/PointF;

    .line 85
    .line 86
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenControlPoints:[Landroid/graphics/PointF;

    .line 87
    .line 88
    const/4 p1, 0x3

    .line 89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, [Landroid/graphics/PointF;

    .line 94
    .line 95
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->blueControlPoints:[Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_2
    return-void
.end method

.method private setGreenControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenControlPoints:[Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->greenCurve:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->updateToneCurveTexture()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setRedControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redControlPoints:[Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->redCurve:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->updateToneCurveTexture()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setRgbCompositeControlPoints([Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->rgbCompositeCurve:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->updateToneCurveTexture()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private updateToneCurveTexture()V
    .locals 1

    .line 1
    new-instance v0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter$1;-><init>(Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 12

    .line 1
    const-string v0, "toneCurveTexture"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x84c3

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->textures:[I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v1, v1, v2

    .line 17
    .line 18
    const/16 v2, 0xde1

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0xde1

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/16 v5, 0x1908

    .line 27
    .line 28
    const/16 v6, 0x100

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v8, 0x0

    .line 32
    const/16 v9, 0x1908

    .line 33
    .line 34
    const/16 v10, 0x1401

    .line 35
    .line 36
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->toneCurveByteArray:[B

    .line 37
    .line 38
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public setup()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;->setup()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->textures:[I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->textures:[I

    .line 12
    .line 13
    aget v0, v0, v2

    .line 14
    .line 15
    const/16 v1, 0xde1

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x2801

    .line 21
    .line 22
    const/16 v2, 0x2601

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x2800

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x2802

    .line 33
    .line 34
    const v2, 0x812f

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x2803

    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/egl/filter/GlToneCurveFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Runnable;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
