.class public Ltv/haima/ijk/media/player/egl/TextureCloneHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureCloneHelper"


# instance fields
.field private copyRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

.field private finalGlMatrix:[F

.field private mLocalDrawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

.field private mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;


# direct methods
.method private constructor <init>(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)V
    .locals 1

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
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->finalGlMatrix:[F

    .line 12
    .line 13
    new-instance v0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper$1;-><init>(Ltv/haima/ijk/media/player/egl/TextureCloneHelper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->copyRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 19
    .line 20
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mLocalDrawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 21
    .line 22
    new-instance p1, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 23
    .line 24
    const/16 v0, 0x1908

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
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

.method public static create(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)Ltv/haima/ijk/media/player/egl/TextureCloneHelper;
    .locals 1

    .line 1
    new-instance v0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;-><init>(Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getDstId()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->getTextureId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public renderToTexture(Ltv/haima/ijk/media/player/egl/VideoFrame;)Ltv/haima/ijk/media/player/egl/VideoFrame;
    .locals 14

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->setSize(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->getFrameBufferId()I

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
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mTextureFramebuffer:Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;

    .line 35
    .line 36
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/GlTextureFrameBuffer;->getTextureId()I

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
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper$2;->$SwitchMap$tv$haima$ijk$media$player$egl$VideoFrame$TextureBuffer$Type:[I

    .line 64
    .line 65
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;

    .line 70
    .line 71
    invoke-interface {v2}, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;->getType()Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

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
    iget-object v5, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mLocalDrawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 88
    .line 89
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;

    .line 94
    .line 95
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;->getTextureId()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget-object v7, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->finalGlMatrix:[F

    .line 100
    .line 101
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-interface/range {v5 .. v13}, Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

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
    iget-object v5, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->mLocalDrawer:Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;

    .line 132
    .line 133
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;

    .line 138
    .line 139
    invoke-interface {v0}, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;->getTextureId()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iget-object v7, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->finalGlMatrix:[F

    .line 144
    .line 145
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    const/4 v10, 0x0

    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-interface/range {v5 .. v13}, Ltv/haima/ijk/media/player/egl/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

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
    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 175
    .line 176
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedWidth()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotatedHeight()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    sget-object v4, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;->RGB:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

    .line 185
    .line 186
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->getDstId()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getBuffer()Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;

    .line 195
    .line 196
    invoke-interface {v1}, Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    iget-object v7, p0, Ltv/haima/ijk/media/player/egl/TextureCloneHelper;->copyRefCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 201
    .line 202
    move-object v1, v0

    .line 203
    invoke-direct/range {v1 .. v7}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Ltv/haima/ijk/media/player/egl/VideoFrame;

    .line 207
    .line 208
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getRotation()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->getTimestampNs()J

    .line 213
    .line 214
    .line 215
    move-result-wide v3

    .line 216
    invoke-direct {v1, v0, v2, v3, v4}, Ltv/haima/ijk/media/player/egl/VideoFrame;-><init>(Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;IJ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame;->release()V

    .line 220
    .line 221
    .line 222
    return-object v1
.end method
