.class public Lorg/hmwebrtc/TextureCloneHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureCloneHelper"


# instance fields
.field private copyRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

.field private finalGlMatrix:[F

.field private mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

.field private mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->finalGlMatrix:[F

    .line 12
    .line 13
    new-instance v0, Lorg/hmwebrtc/TextureCloneHelper$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/hmwebrtc/TextureCloneHelper$1;-><init>(Lorg/hmwebrtc/TextureCloneHelper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->copyRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 19
    .line 20
    const-string v0, "TextureCloneHelper"

    .line 21
    .line 22
    const-string v1, "Creating TextureCloneHelper."

    .line 23
    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lorg/hmwebrtc/GlRectDrawer;

    .line 28
    .line 29
    invoke-direct {v0}, Lorg/hmwebrtc/GlRectDrawer;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 33
    .line 34
    new-instance v0, Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 35
    .line 36
    const/16 v1, 0x1908

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/hmwebrtc/GlTextureFrameBuffer;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static create()Lorg/hmwebrtc/TextureCloneHelper;
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/TextureCloneHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/TextureCloneHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getDstId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->getTextureId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 1
    const-string v0, "TextureCloneHelper"

    .line 2
    .line 3
    const-string v1, "Release TextureCloneHelper."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->release()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public renderToTexture(Lorg/hmwebrtc/VideoFrame;)Lorg/hmwebrtc/VideoFrame;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v1, 0x8d40

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/hmwebrtc/TextureCloneHelper;->mTextureFramebuffer:Lorg/hmwebrtc/GlTextureFrameBuffer;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/hmwebrtc/GlTextureFrameBuffer;->getTextureId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v2, 0x8ce0

    .line 41
    .line 42
    .line 43
    const/16 v3, 0xde1

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x4000

    .line 54
    .line 55
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 56
    .line 57
    .line 58
    const-string v0, "SurfaceTextureSplitter.renderToTexture"

    .line 59
    .line 60
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lorg/hmwebrtc/TextureCloneHelper$2;->$SwitchMap$org$hmwebrtc$VideoFrame$TextureBuffer$Type:[I

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 70
    .line 71
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getType()Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    aget v0, v0, v2

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    if-eq v0, v2, :cond_1

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    if-ne v0, v2, :cond_0

    .line 86
    .line 87
    iget-object v5, p0, Lorg/hmwebrtc/TextureCloneHelper;->mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 94
    .line 95
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getTextureId()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget-object v7, p0, Lorg/hmwebrtc/TextureCloneHelper;->finalGlMatrix:[F

    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-interface/range {v5 .. v13}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 124
    .line 125
    const-string v0, "Unknown texture type."

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_1
    iget-object v5, p0, Lorg/hmwebrtc/TextureCloneHelper;->mLocalDrawer:Lorg/hmwebrtc/RendererCommon$GlDrawer;

    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 138
    .line 139
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getTextureId()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iget-object v7, p0, Lorg/hmwebrtc/TextureCloneHelper;->finalGlMatrix:[F

    .line 144
    .line 145
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    const/4 v10, 0x0

    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-interface/range {v5 .. v13}, Lorg/hmwebrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    .line 164
    .line 165
    .line 166
    :goto_0
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 167
    .line 168
    .line 169
    const-string v0, "EglRenderer.cloneFrameThread"

    .line 170
    .line 171
    invoke-static {v0}, Lorg/hmwebrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lorg/hmwebrtc/TextureBufferImpl;

    .line 175
    .line 176
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    sget-object v4, Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;->RGB:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 185
    .line 186
    invoke-direct {p0}, Lorg/hmwebrtc/TextureCloneHelper;->getDstId()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 195
    .line 196
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Lorg/hmwebrtc/TextureBufferImpl;

    .line 205
    .line 206
    invoke-virtual {v1}, Lorg/hmwebrtc/TextureBufferImpl;->getToI420Handler()Landroid/os/Handler;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lorg/hmwebrtc/TextureBufferImpl;

    .line 215
    .line 216
    invoke-virtual {v1}, Lorg/hmwebrtc/TextureBufferImpl;->getYuvConverter()Lorg/hmwebrtc/YuvConverter;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    iget-object v9, p0, Lorg/hmwebrtc/TextureCloneHelper;->copyRefCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 221
    .line 222
    move-object v1, v0

    .line 223
    invoke-direct/range {v1 .. v9}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Lorg/hmwebrtc/VideoFrame;

    .line 227
    .line 228
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 233
    .line 234
    .line 235
    move-result-wide v3

    .line 236
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 240
    .line 241
    .line 242
    return-object v1
.end method
