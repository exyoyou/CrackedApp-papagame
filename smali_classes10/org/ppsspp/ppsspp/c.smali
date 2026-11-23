.class Lorg/ppsspp/ppsspp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "CameraHelper"


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 9
    .line 10
    iput p1, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/ppsspp/ppsspp/c;->d:J

    .line 15
    .line 16
    new-instance p1, Lorg/ppsspp/ppsspp/c$a;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lorg/ppsspp/ppsspp/c$a;-><init>(Lorg/ppsspp/ppsspp/c;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->f:Landroid/hardware/Camera$PreviewCallback;

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->e:Landroid/graphics/SurfaceTexture;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/ppsspp/ppsspp/c;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/ppsspp/ppsspp/c;->d:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic c(Lorg/ppsspp/ppsspp/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lorg/ppsspp/ppsspp/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method e()V
    .locals 12

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, ", "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 25
    .line 26
    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    .line 27
    .line 28
    iput v5, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 29
    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 35
    .line 36
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    .line 37
    .line 38
    iput v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v7, " "

    .line 46
    .line 47
    const-string v8, "]: "

    .line 48
    .line 49
    if-ge v5, v6, :cond_1

    .line 50
    .line 51
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v9, "getSupportedPreviewSizes["

    .line 57
    .line 58
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Landroid/hardware/Camera$Size;

    .line 72
    .line 73
    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    .line 74
    .line 75
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Landroid/hardware/Camera$Size;

    .line 86
    .line 87
    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    .line 88
    .line 89
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 97
    .line 98
    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    .line 99
    .line 100
    const/16 v9, 0x280

    .line 101
    .line 102
    if-gt v6, v9, :cond_0

    .line 103
    .line 104
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 109
    .line 110
    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    .line 111
    .line 112
    const/16 v9, 0x1e0

    .line 113
    .line 114
    if-gt v6, v9, :cond_0

    .line 115
    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 121
    .line 122
    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    .line 123
    .line 124
    iput v6, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 125
    .line 126
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 131
    .line 132
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 133
    .line 134
    iput v3, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v5, "setPreviewSize("

    .line 146
    .line 147
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v5, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 151
    .line 152
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v3, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 167
    .line 168
    iget v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    .line 169
    .line 170
    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, [I

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    const/4 v10, 0x1

    .line 189
    if-ge v6, v9, :cond_3

    .line 190
    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v11, "getSupportedPreviewFpsRange["

    .line 197
    .line 198
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, [I

    .line 212
    .line 213
    aget v11, v11, v4

    .line 214
    .line 215
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, [I

    .line 226
    .line 227
    aget v11, v11, v10

    .line 228
    .line 229
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    check-cast v9, [I

    .line 237
    .line 238
    aget v9, v9, v4

    .line 239
    .line 240
    aget v11, v5, v4

    .line 241
    .line 242
    if-gt v9, v11, :cond_2

    .line 243
    .line 244
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    check-cast v9, [I

    .line 249
    .line 250
    aget v9, v9, v10

    .line 251
    .line 252
    aget v10, v5, v10

    .line 253
    .line 254
    if-gt v9, v10, :cond_2

    .line 255
    .line 256
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, [I

    .line 261
    .line 262
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v6, "setPreviewFpsRange("

    .line 271
    .line 272
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    aget v6, v5, v4

    .line 276
    .line 277
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    aget v1, v5, v10

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    aget v0, v5, v4

    .line 292
    .line 293
    aget v1, v5, v10

    .line 294
    .line 295
    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 304
    .line 305
    iget-object v1, p0, Lorg/ppsspp/ppsspp/c;->e:Landroid/graphics/SurfaceTexture;

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 311
    .line 312
    iget-object v1, p0, Lorg/ppsspp/ppsspp/c;->f:Landroid/hardware/Camera$PreviewCallback;

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v2, "Cannot start camera: "

    .line 330
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    :goto_3
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 20
    .line 21
    :cond_0
    return-void
.end method
