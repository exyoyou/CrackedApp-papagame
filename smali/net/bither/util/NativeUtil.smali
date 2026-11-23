.class public Lnet/bither/util/NativeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bither/util/NativeUtil$a;
    }
.end annotation


# static fields
.field private static a:I = 0x5f

.field public static b:J = 0x4ccccL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "jpegbither"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bitherjni"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bit",
            "quality",
            "fileName",
            "optimize"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x3

    .line 12
    .line 13
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    div-int/lit8 v3, v3, 0x3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    div-int/lit8 v4, v4, 0x3

    .line 51
    .line 52
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, p0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1, p2, p3}, Lnet/bither/util/NativeUtil;->g(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bit",
            "fileName",
            "optimize"
        }
    .end annotation

    .line 1
    sget v0, Lnet/bither/util/NativeUtil;->a:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1, p2}, Lnet/bither/util/NativeUtil;->a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLnet/bither/util/NativeUtil$a;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "src",
            "destPath",
            "quality",
            "optim",
            "l"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const-string v4, "NativeUtil"

    .line 8
    .line 9
    const-string v5, "compressImage"

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    aput-object v4, v0, v7

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    aput-object v5, v0, v8

    .line 19
    .line 20
    const-string v9, "-->start"

    .line 21
    .line 22
    const/4 v10, 0x2

    .line 23
    aput-object v9, v0, v10

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "content://"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v9, p0

    .line 41
    invoke-static {v0, p0}, Lcom/join/mgps/Util/o3;->p(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez v9, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lnet/bither/util/NativeUtil;->f(Ljava/io/File;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    sget-wide v13, Lnet/bither/util/NativeUtil;->b:J

    .line 78
    .line 79
    cmp-long v0, v11, v13

    .line 80
    .line 81
    if-gez v0, :cond_2

    .line 82
    .line 83
    new-array v0, v6, [Ljava/lang/String;

    .line 84
    .line 85
    const-string v4, "Na  tiveUtil"

    .line 86
    .line 87
    aput-object v4, v0, v7

    .line 88
    .line 89
    aput-object v5, v0, v8

    .line 90
    .line 91
    const-string v4, "-->smaller"

    .line 92
    .line 93
    aput-object v4, v0, v10

    .line 94
    .line 95
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static/range {p1 .. p2}, Lnet/bither/util/NativeUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    invoke-interface {v3, v1}, Lnet/bither/util/NativeUtil$a;->onSuccess(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    .line 109
    .line 110
    aput-object v4, v0, v7

    .line 111
    .line 112
    aput-object v5, v0, v8

    .line 113
    .line 114
    const-string v9, "-->need compress"

    .line 115
    .line 116
    aput-object v9, v0, v10

    .line 117
    .line 118
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 122
    .line 123
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 127
    .line 128
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 129
    .line 130
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 131
    .line 132
    const v9, 0x19000

    .line 133
    .line 134
    .line 135
    new-array v9, v9, [B

    .line 136
    .line 137
    iput-object v9, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 138
    .line 139
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    .line 141
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 142
    .line 143
    iput-object v9, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 144
    .line 145
    new-instance v9, Ljava/io/File;

    .line 146
    .line 147
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    :try_start_1
    new-array v12, v6, [Ljava/lang/String;

    .line 152
    .line 153
    aput-object v4, v12, v7

    .line 154
    .line 155
    aput-object v5, v12, v8

    .line 156
    .line 157
    const-string v13, "-->get bitmap"

    .line 158
    .line 159
    aput-object v13, v12, v10

    .line 160
    .line 161
    invoke-static {v12}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v12, Ljava/io/FileInputStream;

    .line 165
    .line 166
    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    .line 168
    .line 169
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v9, v11, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    new-array v0, v6, [Ljava/lang/String;

    .line 178
    .line 179
    aput-object v4, v0, v7

    .line 180
    .line 181
    aput-object v5, v0, v8

    .line 182
    .line 183
    const-string v9, "-->get bitmap finished"

    .line 184
    .line 185
    aput-object v9, v0, v10

    .line 186
    .line 187
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    move-object v11, v12

    .line 196
    goto :goto_3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    move-object v9, v0

    .line 199
    move-object v0, v11

    .line 200
    move-object v11, v12

    .line 201
    goto :goto_1

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    goto :goto_3

    .line 204
    :catch_1
    move-exception v0

    .line 205
    move-object v9, v0

    .line 206
    move-object v0, v11

    .line 207
    :goto_1
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    .line 209
    .line 210
    if-eqz v11, :cond_3

    .line 211
    .line 212
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 213
    .line 214
    .line 215
    :cond_3
    move-object v11, v0

    .line 216
    :goto_2
    if-nez v11, :cond_4

    .line 217
    .line 218
    new-array v0, v6, [Ljava/lang/String;

    .line 219
    .line 220
    aput-object v4, v0, v7

    .line 221
    .line 222
    aput-object v5, v0, v8

    .line 223
    .line 224
    const-string v2, "-->bitmap is null"

    .line 225
    .line 226
    aput-object v2, v0, v10

    .line 227
    .line 228
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    .line 233
    .line 234
    aput-object v4, v0, v7

    .line 235
    .line 236
    aput-object v5, v0, v8

    .line 237
    .line 238
    const-string v9, "-->do native compress"

    .line 239
    .line 240
    aput-object v9, v0, v10

    .line 241
    .line 242
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    move/from16 v9, p3

    .line 246
    .line 247
    move/from16 v12, p4

    .line 248
    .line 249
    invoke-static {v11, v9, v2, v12}, Lnet/bither/util/NativeUtil;->a(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    new-array v0, v6, [Ljava/lang/String;

    .line 253
    .line 254
    aput-object v4, v0, v7

    .line 255
    .line 256
    aput-object v5, v0, v8

    .line 257
    .line 258
    const-string v2, "-->do native compress finished"

    .line 259
    .line 260
    aput-object v2, v0, v10

    .line 261
    .line 262
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_5

    .line 270
    .line 271
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 275
    .line 276
    .line 277
    new-array v0, v6, [Ljava/lang/String;

    .line 278
    .line 279
    aput-object v4, v0, v7

    .line 280
    .line 281
    aput-object v5, v0, v8

    .line 282
    .line 283
    const-string v2, "-->compress finished, notify gc"

    .line 284
    .line 285
    aput-object v2, v0, v10

    .line 286
    .line 287
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_5
    if-eqz v3, :cond_7

    .line 291
    .line 292
    invoke-interface {v3, v1}, Lnet/bither/util/NativeUtil$a;->onSuccess(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :goto_3
    if-eqz v11, :cond_6

    .line 297
    .line 298
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 299
    .line 300
    .line 301
    :cond_6
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 302
    :catch_2
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    .line 305
    .line 306
    if-eqz v3, :cond_7

    .line 307
    .line 308
    invoke-interface {v3, v1}, Lnet/bither/util/NativeUtil$a;->onFailed(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_7
    :goto_4
    return-void
.end method

.method private static native compressBitmap(Landroid/graphics/Bitmap;III[BZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bit",
            "w",
            "h",
            "quality",
            "fileNameBytes",
            "optimize"
        }
    .end annotation
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPath",
            "newPath"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/io/FileInputStream;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x5a4

    .line 23
    .line 24
    new-array p1, p1, [B

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    .line 45
    const-string v0, "\u590d\u5236\u5355\u4e2a\u6587\u4ef6\u64cd\u4f5c\u51fa\u9519"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPath",
            "newPath"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v0

    .line 21
    if-ge v2, v3, :cond_4

    .line 22
    .line 23
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    aget-object v5, v0, v2

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    aget-object v3, v0, v2

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object v3, v4

    .line 80
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 81
    .line 82
    .line 83
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v5, "/"

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    .line 89
    .line 90
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Ljava/io/FileOutputStream;

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/16 v7, 0x1400

    .line 125
    .line 126
    new-array v7, v7, [B

    .line 127
    .line 128
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    const/4 v9, -0x1

    .line 133
    if-eq v8, v9, :cond_1

    .line 134
    .line 135
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_3

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    aget-object v4, v0, v2

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    aget-object v5, v0, v2

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Lnet/bither/util/NativeUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .line 196
    .line 197
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catch_0
    move-exception p0

    .line 202
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 203
    .line 204
    const-string v0, "fail to copy all files of dir."

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    :cond_4
    return-void
.end method

.method public static f(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 11
    .line 12
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    int-to-long v0, p0

    .line 20
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 21
    .line 22
    .line 23
    move-wide v1, v0

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    move-object v0, v3

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    move-object v0, v3

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p0

    .line 34
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 46
    .line 47
    .line 48
    :cond_0
    throw p0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    return-wide v1
.end method

.method private static g(Landroid/graphics/Bitmap;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bit",
            "quality",
            "fileName",
            "optimize"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move-object v0, p0

    .line 14
    move v3, p1

    .line 15
    move v5, p3

    .line 16
    invoke-static/range {v0 .. v5}, Lnet/bither/util/NativeUtil;->compressBitmap(Landroid/graphics/Bitmap;III[BZ)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    return-void
.end method
