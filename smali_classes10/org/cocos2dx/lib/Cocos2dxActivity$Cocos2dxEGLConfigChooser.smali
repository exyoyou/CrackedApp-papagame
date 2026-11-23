.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    .line 2
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v9, v1, [I

    .line 9
    .line 10
    const/4 v10, 0x0

    .line 11
    const/4 v11, 0x0

    .line 12
    invoke-interface {v7, v8, v10, v11, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    aget v2, v9, v11

    .line 19
    .line 20
    new-array v12, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 21
    .line 22
    const/16 v13, 0xf

    .line 23
    .line 24
    new-array v3, v13, [I

    .line 25
    .line 26
    const/16 v2, 0x3024

    .line 27
    .line 28
    aput v2, v3, v11

    .line 29
    .line 30
    iget-object v2, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 31
    .line 32
    aget v4, v2, v11

    .line 33
    .line 34
    aput v4, v3, v1

    .line 35
    .line 36
    const/16 v4, 0x3023

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    aput v4, v3, v5

    .line 40
    .line 41
    aget v4, v2, v1

    .line 42
    .line 43
    const/4 v14, 0x3

    .line 44
    aput v4, v3, v14

    .line 45
    .line 46
    const/16 v4, 0x3022

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    aput v4, v3, v6

    .line 50
    .line 51
    aget v4, v2, v5

    .line 52
    .line 53
    const/4 v5, 0x5

    .line 54
    aput v4, v3, v5

    .line 55
    .line 56
    const/16 v4, 0x3021

    .line 57
    .line 58
    const/4 v15, 0x6

    .line 59
    aput v4, v3, v15

    .line 60
    .line 61
    const/4 v4, 0x7

    .line 62
    aget v16, v2, v14

    .line 63
    .line 64
    aput v16, v3, v4

    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    const/16 v16, 0x3025

    .line 69
    .line 70
    aput v16, v3, v4

    .line 71
    .line 72
    const/16 v4, 0x9

    .line 73
    .line 74
    aget v16, v2, v6

    .line 75
    .line 76
    aput v16, v3, v4

    .line 77
    .line 78
    const/16 v4, 0xa

    .line 79
    .line 80
    const/16 v16, 0x3026

    .line 81
    .line 82
    aput v16, v3, v4

    .line 83
    .line 84
    const/16 v4, 0xb

    .line 85
    .line 86
    aget v2, v2, v5

    .line 87
    .line 88
    aput v2, v3, v4

    .line 89
    .line 90
    const/16 v2, 0xc

    .line 91
    .line 92
    const/16 v4, 0x3040

    .line 93
    .line 94
    aput v4, v3, v2

    .line 95
    .line 96
    const/16 v2, 0xd

    .line 97
    .line 98
    aput v6, v3, v2

    .line 99
    .line 100
    const/16 v2, 0xe

    .line 101
    .line 102
    const/16 v4, 0x3038

    .line 103
    .line 104
    aput v4, v3, v2

    .line 105
    .line 106
    new-array v6, v1, [I

    .line 107
    .line 108
    aget v5, v9, v11

    .line 109
    .line 110
    move-object/from16 v1, p1

    .line 111
    .line 112
    move-object/from16 v2, p2

    .line 113
    .line 114
    move-object v4, v12

    .line 115
    move-object/from16 v16, v6

    .line 116
    .line 117
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 118
    .line 119
    .line 120
    aget v1, v16, v11

    .line 121
    .line 122
    if-lez v1, :cond_0

    .line 123
    .line 124
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 125
    .line 126
    invoke-virtual {v0, v7, v8, v12, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    return-object v1

    .line 131
    :cond_0
    new-array v3, v13, [I

    .line 132
    .line 133
    fill-array-data v3, :array_0

    .line 134
    .line 135
    .line 136
    new-array v4, v13, [I

    .line 137
    .line 138
    fill-array-data v4, :array_1

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 142
    .line 143
    aget v1, v1, v14

    .line 144
    .line 145
    if-nez v1, :cond_1

    .line 146
    .line 147
    aget v5, v9, v11

    .line 148
    .line 149
    move-object/from16 v1, p1

    .line 150
    .line 151
    move-object/from16 v2, p2

    .line 152
    .line 153
    move-object v4, v12

    .line 154
    move-object/from16 v6, v16

    .line 155
    .line 156
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 157
    .line 158
    .line 159
    new-array v1, v15, [I

    .line 160
    .line 161
    fill-array-data v1, :array_2

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    aget v5, v9, v11

    .line 166
    .line 167
    move-object/from16 v1, p1

    .line 168
    .line 169
    move-object/from16 v2, p2

    .line 170
    .line 171
    move-object v3, v4

    .line 172
    move-object v4, v12

    .line 173
    move-object/from16 v6, v16

    .line 174
    .line 175
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 176
    .line 177
    .line 178
    new-array v1, v15, [I

    .line 179
    .line 180
    fill-array-data v1, :array_3

    .line 181
    .line 182
    .line 183
    :goto_0
    aget v2, v16, v11

    .line 184
    .line 185
    if-lez v2, :cond_2

    .line 186
    .line 187
    invoke-virtual {v0, v7, v8, v12, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    return-object v1

    .line 192
    :cond_2
    return-object v10

    .line 193
    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_1
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3021
        0x4
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_2
    .array-data 4
        0x5
        0x6
        0x5
        0x0
        0x0
        0x0
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v10, v0, v3

    .line 9
    .line 10
    const/16 v8, 0x3025

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v4, p0

    .line 14
    move-object v5, p1

    .line 15
    move-object/from16 v6, p2

    .line 16
    .line 17
    move-object v7, v10

    .line 18
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 19
    .line 20
    .line 21
    move-result v11

    .line 22
    const/16 v8, 0x3026

    .line 23
    .line 24
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x4

    .line 29
    aget v5, p4, v5

    .line 30
    .line 31
    if-lt v11, v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x5

    .line 34
    aget v5, p4, v5

    .line 35
    .line 36
    if-lt v4, v5, :cond_0

    .line 37
    .line 38
    const/16 v8, 0x3024

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v4, p0

    .line 42
    move-object v5, p1

    .line 43
    move-object/from16 v6, p2

    .line 44
    .line 45
    move-object v7, v10

    .line 46
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    const/16 v8, 0x3023

    .line 51
    .line 52
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    const/16 v8, 0x3022

    .line 57
    .line 58
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    const/16 v8, 0x3021

    .line 63
    .line 64
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    aget v5, p4, v2

    .line 69
    .line 70
    if-lt v11, v5, :cond_0

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    aget v5, p4, v5

    .line 74
    .line 75
    if-lt v12, v5, :cond_0

    .line 76
    .line 77
    const/4 v5, 0x2

    .line 78
    aget v5, p4, v5

    .line 79
    .line 80
    if-lt v13, v5, :cond_0

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    aget v5, p4, v5

    .line 84
    .line 85
    if-lt v4, v5, :cond_0

    .line 86
    .line 87
    return-object v10

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    return-object v0
.end method
