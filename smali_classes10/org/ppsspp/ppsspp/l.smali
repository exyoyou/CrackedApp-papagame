.class public Lorg/ppsspp/ppsspp/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/l$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NativeEGLConfigChooser"

.field private static final b:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)[Lorg/ppsspp/ppsspp/l$b;
    .locals 5

    .line 1
    array-length v0, p3

    .line 2
    new-array v0, v0, [Lorg/ppsspp/ppsspp/l$b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p3

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/ppsspp/ppsspp/l$b;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, p0, v3}, Lorg/ppsspp/ppsspp/l$b;-><init>(Lorg/ppsspp/ppsspp/l;Lorg/ppsspp/ppsspp/l$a;)V

    .line 12
    .line 13
    .line 14
    aget-object v3, p3, v1

    .line 15
    .line 16
    iput-object v3, v2, Lorg/ppsspp/ppsspp/l$b;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 17
    .line 18
    const/16 v4, 0x3024

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 25
    .line 26
    aget-object v3, p3, v1

    .line 27
    .line 28
    const/16 v4, 0x3023

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 35
    .line 36
    aget-object v3, p3, v1

    .line 37
    .line 38
    const/16 v4, 0x3022

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 45
    .line 46
    aget-object v3, p3, v1

    .line 47
    .line 48
    const/16 v4, 0x3021

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 55
    .line 56
    aget-object v3, p3, v1

    .line 57
    .line 58
    const/16 v4, 0x3025

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 65
    .line 66
    aget-object v3, p3, v1

    .line 67
    .line 68
    const/16 v4, 0x3026

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 75
    .line 76
    aget-object v3, p3, v1

    .line 77
    .line 78
    const/16 v4, 0x3031

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/l;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput v3, v2, Lorg/ppsspp/ppsspp/l$b;->h:I

    .line 85
    .line 86
    aput-object v2, v0, v1

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    return-object v0
.end method

.method b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aget p1, v0, p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    return v1

    .line 16
    :catch_0
    nop

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "Illegal argument to getEglConfigAttrib: attr="

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :goto_0
    return v1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v7, v1, [I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, v0

    .line 16
    move-object v6, v7

    .line 17
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_15

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    aget v5, v7, v8

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "There are "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " egl configs"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    if-lez v5, :cond_14

    .line 45
    .line 46
    new-array v9, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 47
    .line 48
    move-object v1, p1

    .line 49
    move-object v2, p2

    .line 50
    move-object v3, v0

    .line 51
    move-object v4, v9

    .line 52
    move-object v6, v7

    .line 53
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_13

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, v9}, Lorg/ppsspp/ppsspp/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)[Lorg/ppsspp/ppsspp/l$b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 p2, 0x0

    .line 64
    :goto_0
    array-length v0, p1

    .line 65
    if-ge p2, v0, :cond_0

    .line 66
    .line 67
    aget-object v0, p1, p2

    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/l$b;->a()V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 p2, 0x0

    .line 76
    :goto_1
    array-length v0, p1

    .line 77
    const/16 v1, 0x18

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    if-ge p2, v0, :cond_2

    .line 82
    .line 83
    aget-object v0, p1, p2

    .line 84
    .line 85
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 86
    .line 87
    if-ne v3, v2, :cond_1

    .line 88
    .line 89
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 90
    .line 91
    if-ne v3, v2, :cond_1

    .line 92
    .line 93
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 94
    .line 95
    if-ne v3, v2, :cond_1

    .line 96
    .line 97
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 98
    .line 99
    if-nez v3, :cond_1

    .line 100
    .line 101
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 102
    .line 103
    if-lt v3, v2, :cond_1

    .line 104
    .line 105
    iget v3, v0, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 106
    .line 107
    if-lt v3, v1, :cond_1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const/4 v0, 0x0

    .line 114
    :goto_2
    if-nez v0, :cond_4

    .line 115
    .line 116
    const/4 p2, 0x0

    .line 117
    :goto_3
    array-length v3, p1

    .line 118
    if-ge p2, v3, :cond_4

    .line 119
    .line 120
    aget-object v3, p1, p2

    .line 121
    .line 122
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 123
    .line 124
    if-ne v4, v2, :cond_3

    .line 125
    .line 126
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 127
    .line 128
    if-ne v4, v2, :cond_3

    .line 129
    .line 130
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 131
    .line 132
    if-ne v4, v2, :cond_3

    .line 133
    .line 134
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 135
    .line 136
    if-nez v4, :cond_3

    .line 137
    .line 138
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 139
    .line 140
    if-lt v4, v2, :cond_3

    .line 141
    .line 142
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 143
    .line 144
    const/16 v5, 0x14

    .line 145
    .line 146
    if-lt v4, v5, :cond_3

    .line 147
    .line 148
    move-object v0, v3

    .line 149
    goto :goto_4

    .line 150
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    :goto_4
    const/16 p2, 0x10

    .line 154
    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    :goto_5
    array-length v4, p1

    .line 159
    if-ge v3, v4, :cond_6

    .line 160
    .line 161
    aget-object v4, p1, v3

    .line 162
    .line 163
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 164
    .line 165
    if-ne v5, v2, :cond_5

    .line 166
    .line 167
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 168
    .line 169
    if-ne v5, v2, :cond_5

    .line 170
    .line 171
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 172
    .line 173
    if-ne v5, v2, :cond_5

    .line 174
    .line 175
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 176
    .line 177
    if-nez v5, :cond_5

    .line 178
    .line 179
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 180
    .line 181
    if-lt v5, v2, :cond_5

    .line 182
    .line 183
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 184
    .line 185
    if-lt v5, p2, :cond_5

    .line 186
    .line 187
    move-object v0, v4

    .line 188
    goto :goto_6

    .line 189
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_6
    :goto_6
    if-nez v0, :cond_8

    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    :goto_7
    array-length v4, p1

    .line 196
    if-ge v3, v4, :cond_8

    .line 197
    .line 198
    aget-object v4, p1, v3

    .line 199
    .line 200
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 201
    .line 202
    if-ne v5, v2, :cond_7

    .line 203
    .line 204
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 205
    .line 206
    if-ne v5, v2, :cond_7

    .line 207
    .line 208
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 209
    .line 210
    if-ne v5, v2, :cond_7

    .line 211
    .line 212
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 213
    .line 214
    if-nez v5, :cond_7

    .line 215
    .line 216
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 217
    .line 218
    if-lt v5, p2, :cond_7

    .line 219
    .line 220
    move-object v0, v4

    .line 221
    goto :goto_8

    .line 222
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_8
    :goto_8
    if-nez v0, :cond_a

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    :goto_9
    array-length v4, p1

    .line 229
    if-ge v3, v4, :cond_a

    .line 230
    .line 231
    aget-object v4, p1, v3

    .line 232
    .line 233
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 234
    .line 235
    if-ne v5, v2, :cond_9

    .line 236
    .line 237
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 238
    .line 239
    if-ne v5, v2, :cond_9

    .line 240
    .line 241
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 242
    .line 243
    if-ne v5, v2, :cond_9

    .line 244
    .line 245
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 246
    .line 247
    if-ne v5, v2, :cond_9

    .line 248
    .line 249
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 250
    .line 251
    if-lt v5, v2, :cond_9

    .line 252
    .line 253
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 254
    .line 255
    if-lt v5, v1, :cond_9

    .line 256
    .line 257
    move-object v0, v4

    .line 258
    goto :goto_a

    .line 259
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_a
    :goto_a
    if-nez v0, :cond_c

    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    :goto_b
    array-length v3, p1

    .line 266
    if-ge v1, v3, :cond_c

    .line 267
    .line 268
    aget-object v3, p1, v1

    .line 269
    .line 270
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 271
    .line 272
    if-ne v4, v2, :cond_b

    .line 273
    .line 274
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 275
    .line 276
    if-ne v4, v2, :cond_b

    .line 277
    .line 278
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 279
    .line 280
    if-ne v4, v2, :cond_b

    .line 281
    .line 282
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->e:I

    .line 283
    .line 284
    if-ne v4, v2, :cond_b

    .line 285
    .line 286
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 287
    .line 288
    if-lt v4, v2, :cond_b

    .line 289
    .line 290
    iget v4, v3, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 291
    .line 292
    if-lt v4, p2, :cond_b

    .line 293
    .line 294
    move-object v0, v3

    .line 295
    goto :goto_c

    .line 296
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_c
    :goto_c
    const/4 v1, 0x6

    .line 300
    const/4 v3, 0x5

    .line 301
    if-nez v0, :cond_e

    .line 302
    .line 303
    const/4 v4, 0x0

    .line 304
    :goto_d
    array-length v5, p1

    .line 305
    if-ge v4, v5, :cond_e

    .line 306
    .line 307
    aget-object v5, p1, v4

    .line 308
    .line 309
    iget v6, v5, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 310
    .line 311
    if-lt v6, v3, :cond_d

    .line 312
    .line 313
    iget v6, v5, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 314
    .line 315
    if-lt v6, v1, :cond_d

    .line 316
    .line 317
    iget v6, v5, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 318
    .line 319
    if-lt v6, v3, :cond_d

    .line 320
    .line 321
    iget v6, v5, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 322
    .line 323
    if-lt v6, p2, :cond_d

    .line 324
    .line 325
    iget v6, v5, Lorg/ppsspp/ppsspp/l$b;->f:I

    .line 326
    .line 327
    if-lt v6, v2, :cond_d

    .line 328
    .line 329
    move-object v0, v5

    .line 330
    goto :goto_e

    .line 331
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_e
    :goto_e
    if-nez v0, :cond_10

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    :goto_f
    array-length v4, p1

    .line 338
    if-ge v2, v4, :cond_10

    .line 339
    .line 340
    aget-object v4, p1, v2

    .line 341
    .line 342
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->b:I

    .line 343
    .line 344
    if-lt v5, v3, :cond_f

    .line 345
    .line 346
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->c:I

    .line 347
    .line 348
    if-lt v5, v1, :cond_f

    .line 349
    .line 350
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->d:I

    .line 351
    .line 352
    if-lt v5, v3, :cond_f

    .line 353
    .line 354
    iget v5, v4, Lorg/ppsspp/ppsspp/l$b;->g:I

    .line 355
    .line 356
    if-lt v5, p2, :cond_f

    .line 357
    .line 358
    move-object v0, v4

    .line 359
    goto :goto_10

    .line 360
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    goto :goto_f

    .line 363
    :cond_10
    :goto_10
    if-nez v0, :cond_11

    .line 364
    .line 365
    array-length p2, p1

    .line 366
    if-lez p2, :cond_11

    .line 367
    .line 368
    aget-object v0, p1, v8

    .line 369
    .line 370
    :cond_11
    if-eqz v0, :cond_12

    .line 371
    .line 372
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/l$b;->a()V

    .line 373
    .line 374
    .line 375
    iget-object p1, v0, Lorg/ppsspp/ppsspp/l$b;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 376
    .line 377
    return-object p1

    .line 378
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 379
    .line 380
    const-string p2, "Failed to find a valid EGL config"

    .line 381
    .line 382
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p1

    .line 386
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 387
    .line 388
    const-string p2, "eglChooseConfig failed when retrieving"

    .line 389
    .line 390
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw p1

    .line 394
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 395
    .line 396
    const-string p2, "No configs match configSpec"

    .line 397
    .line 398
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw p1

    .line 402
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 403
    .line 404
    const-string p2, "eglChooseConfig failed when counting"

    .line 405
    .line 406
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw p1

    .line 410
    nop

    .line 411
    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3025
        0x10
        0x3026
        0x0
        0x3033
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
