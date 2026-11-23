.class public Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private framebufferName:I

.field private height:I

.field private renderBufferName:I

.field private texName:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public enable()V
    .locals 2

    .line 1
    const v0, 0x8d40

    .line 2
    .line 3
    .line 4
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->framebufferName:I

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getTexName()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->texName:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->texName:I

    .line 2
    .line 3
    filled-new-array {v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 10
    .line 11
    .line 12
    iput v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->texName:I

    .line 13
    .line 14
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->renderBufferName:I

    .line 15
    .line 16
    aput v3, v0, v2

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 19
    .line 20
    .line 21
    iput v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->renderBufferName:I

    .line 22
    .line 23
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->framebufferName:I

    .line 24
    .line 25
    aput v3, v0, v2

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 28
    .line 29
    .line 30
    iput v2, p0, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->framebufferName:I

    .line 31
    .line 32
    return-void
.end method

.method public setup(II)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v3, v2, [I

    .line 9
    .line 10
    const/16 v4, 0xd33

    .line 11
    .line 12
    const/4 v11, 0x0

    .line 13
    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 14
    .line 15
    .line 16
    aget v4, v3, v11

    .line 17
    .line 18
    if-gt v0, v4, :cond_2

    .line 19
    .line 20
    if-gt v6, v4, :cond_2

    .line 21
    .line 22
    const v4, 0x84e8

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 26
    .line 27
    .line 28
    aget v4, v3, v11

    .line 29
    .line 30
    if-gt v0, v4, :cond_1

    .line 31
    .line 32
    if-gt v6, v4, :cond_1

    .line 33
    .line 34
    const v4, 0x8ca6

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 38
    .line 39
    .line 40
    aget v12, v3, v11

    .line 41
    .line 42
    const v4, 0x8ca7

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 46
    .line 47
    .line 48
    aget v13, v3, v11

    .line 49
    .line 50
    const v4, 0x8069

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 54
    .line 55
    .line 56
    aget v14, v3, v11

    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->release()V

    .line 59
    .line 60
    .line 61
    :try_start_0
    iput v0, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->width:I

    .line 62
    .line 63
    iput v6, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->height:I

    .line 64
    .line 65
    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 66
    .line 67
    .line 68
    aget v4, v3, v11

    .line 69
    .line 70
    iput v4, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->framebufferName:I

    .line 71
    .line 72
    const v15, 0x8d40

    .line 73
    .line 74
    .line 75
    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 79
    .line 80
    .line 81
    aget v4, v3, v11

    .line 82
    .line 83
    iput v4, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->renderBufferName:I

    .line 84
    .line 85
    const v10, 0x8d41

    .line 86
    .line 87
    .line 88
    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 89
    .line 90
    .line 91
    const v4, 0x81a5

    .line 92
    .line 93
    .line 94
    invoke-static {v10, v4, v0, v6}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 95
    .line 96
    .line 97
    iget v4, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->renderBufferName:I

    .line 98
    .line 99
    const v5, 0x8d00

    .line 100
    .line 101
    .line 102
    invoke-static {v15, v5, v10, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 106
    .line 107
    .line 108
    aget v2, v3, v11

    .line 109
    .line 110
    iput v2, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->texName:I

    .line 111
    .line 112
    const/16 v9, 0xde1

    .line 113
    .line 114
    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    .line 116
    .line 117
    const/16 v2, 0x2601

    .line 118
    .line 119
    const/16 v3, 0x2600

    .line 120
    .line 121
    invoke-static {v9, v2, v3}, Lorg/webrtc/haima/camerarecorder/egl/EglUtil;->setupSampler(III)V

    .line 122
    .line 123
    .line 124
    const/16 v2, 0xde1

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    const/16 v4, 0x1908

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    const/16 v8, 0x1908

    .line 131
    .line 132
    const/16 v16, 0x1401

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    move/from16 v5, p1

    .line 137
    .line 138
    move/from16 v6, p2

    .line 139
    .line 140
    const/16 v0, 0xde1

    .line 141
    .line 142
    move/from16 v9, v16

    .line 143
    .line 144
    move-object/from16 v10, v17

    .line 145
    .line 146
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 147
    .line 148
    .line 149
    iget v2, v1, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->texName:I

    .line 150
    .line 151
    const v3, 0x8ce0

    .line 152
    .line 153
    .line 154
    invoke-static {v15, v3, v0, v2, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 155
    .line 156
    .line 157
    invoke-static {v15}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 158
    .line 159
    .line 160
    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const v3, 0x8cd5

    .line 162
    .line 163
    .line 164
    if-ne v2, v3, :cond_0

    .line 165
    .line 166
    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 167
    .line 168
    .line 169
    const v2, 0x8d41

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v14}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v4, "Failed to initialize framebuffer object "

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/haima/camerarecorder/egl/GLES20FramebufferObject;->release()V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "GL_MAX_RENDERBUFFER_SIZE "

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    aget v3, v3, v11

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v4, "GL_MAX_TEXTURE_SIZE "

    .line 240
    .line 241
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    aget v3, v3, v11

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0
.end method
