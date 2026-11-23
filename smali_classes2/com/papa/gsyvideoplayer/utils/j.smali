.class public final Lcom/papa/gsyvideoplayer/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/utils/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Lcom/papa/gsyvideoplayer/utils/j$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/papa/gsyvideoplayer/utils/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/j;->j:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 8
    .line 9
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/j;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 6
    .line 7
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_23

    .line 11
    .line 12
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->b:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_0
    iget v2, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 19
    .line 20
    const/16 v3, 0x10e

    .line 21
    .line 22
    const/16 v4, 0x5a

    .line 23
    .line 24
    if-eq v2, v4, :cond_1

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    :cond_1
    move v12, p2

    .line 29
    move p2, p1

    .line 30
    move p1, v12

    .line 31
    :cond_2
    iget v2, p0, Lcom/papa/gsyvideoplayer/utils/j;->d:I

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    iget v5, p0, Lcom/papa/gsyvideoplayer/utils/j;->e:I

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    int-to-double v6, v2

    .line 40
    int-to-double v8, v5

    .line 41
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    div-double/2addr v8, v10

    .line 44
    div-double/2addr v6, v8

    .line 45
    int-to-double v8, v0

    .line 46
    mul-double v6, v6, v8

    .line 47
    .line 48
    double-to-int v0, v6

    .line 49
    :cond_3
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget v5, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 54
    .line 55
    invoke-static {v5, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget v6, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 60
    .line 61
    const/4 v7, -0x4

    .line 62
    if-ne v6, v7, :cond_4

    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_4
    if-lez v0, :cond_21

    .line 67
    .line 68
    iget v6, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 69
    .line 70
    if-lez v6, :cond_21

    .line 71
    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/high16 v6, -0x80000000

    .line 89
    .line 90
    if-ne v2, v6, :cond_18

    .line 91
    .line 92
    if-ne v5, v6, :cond_18

    .line 93
    .line 94
    int-to-float v2, p1

    .line 95
    int-to-float v5, p2

    .line 96
    div-float v6, v2, v5

    .line 97
    .line 98
    iget v7, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 99
    .line 100
    const/4 v8, 0x2

    .line 101
    const/4 v9, 0x6

    .line 102
    const/4 v10, -0x5

    .line 103
    if-eq v7, v10, :cond_e

    .line 104
    .line 105
    if-eq v7, v9, :cond_b

    .line 106
    .line 107
    if-eq v7, v1, :cond_8

    .line 108
    .line 109
    if-eq v7, v8, :cond_5

    .line 110
    .line 111
    int-to-float v3, v0

    .line 112
    iget v4, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 113
    .line 114
    int-to-float v4, v4

    .line 115
    div-float/2addr v3, v4

    .line 116
    iget v4, p0, Lcom/papa/gsyvideoplayer/utils/j;->d:I

    .line 117
    .line 118
    if-lez v4, :cond_11

    .line 119
    .line 120
    iget v7, p0, Lcom/papa/gsyvideoplayer/utils/j;->e:I

    .line 121
    .line 122
    if-lez v7, :cond_11

    .line 123
    .line 124
    int-to-float v4, v4

    .line 125
    mul-float v3, v3, v4

    .line 126
    .line 127
    int-to-float v4, v7

    .line 128
    div-float/2addr v3, v4

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    iget v7, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 131
    .line 132
    if-eq v7, v4, :cond_7

    .line 133
    .line 134
    if-ne v7, v3, :cond_6

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    const v3, 0x3faaaaab

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    :goto_0
    const/high16 v3, 0x3f400000    # 0.75f

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    iget v7, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 145
    .line 146
    if-eq v7, v4, :cond_a

    .line 147
    .line 148
    if-ne v7, v3, :cond_9

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_9
    const v3, 0x3fe38e39

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    :goto_1
    const/high16 v3, 0x3f100000    # 0.5625f

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_b
    iget v7, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 159
    .line 160
    if-eq v7, v4, :cond_d

    .line 161
    .line 162
    if-ne v7, v3, :cond_c

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_c
    const/high16 v3, 0x40000000    # 2.0f

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_d
    :goto_2
    const/high16 v3, 0x3f000000    # 0.5f

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_e
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->f()F

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    iget v11, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 176
    .line 177
    if-eq v11, v4, :cond_10

    .line 178
    .line 179
    if-ne v11, v3, :cond_f

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_f
    move v3, v7

    .line 183
    goto :goto_4

    .line 184
    :cond_10
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 185
    .line 186
    div-float/2addr v3, v7

    .line 187
    :cond_11
    :goto_4
    cmpl-float v4, v3, v6

    .line 188
    .line 189
    if-lez v4, :cond_12

    .line 190
    .line 191
    const/4 v4, 0x1

    .line 192
    goto :goto_5

    .line 193
    :cond_12
    const/4 v4, 0x0

    .line 194
    :goto_5
    iget v6, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 195
    .line 196
    if-eq v6, v10, :cond_15

    .line 197
    .line 198
    const/4 v7, 0x4

    .line 199
    if-eq v6, v7, :cond_14

    .line 200
    .line 201
    if-eq v6, v9, :cond_15

    .line 202
    .line 203
    if-eqz v6, :cond_15

    .line 204
    .line 205
    if-eq v6, v1, :cond_15

    .line 206
    .line 207
    if-eq v6, v8, :cond_15

    .line 208
    .line 209
    if-eqz v4, :cond_13

    .line 210
    .line 211
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    int-to-float p2, p1

    .line 216
    div-float/2addr p2, v3

    .line 217
    float-to-int p2, p2

    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_13
    iget p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 221
    .line 222
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    int-to-float p2, p1

    .line 227
    mul-float p2, p2, v3

    .line 228
    .line 229
    float-to-int p2, p2

    .line 230
    move v12, p2

    .line 231
    move p2, p1

    .line 232
    move p1, v12

    .line 233
    goto/16 :goto_8

    .line 234
    .line 235
    :cond_14
    if-eqz v4, :cond_16

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_15
    if-eqz v4, :cond_17

    .line 239
    .line 240
    :cond_16
    div-float/2addr v2, v3

    .line 241
    float-to-int p2, v2

    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :cond_17
    :goto_6
    mul-float v5, v5, v3

    .line 245
    .line 246
    float-to-int p1, v5

    .line 247
    goto/16 :goto_8

    .line 248
    .line 249
    :cond_18
    const/high16 v1, 0x40000000    # 2.0f

    .line 250
    .line 251
    if-ne v2, v1, :cond_1a

    .line 252
    .line 253
    if-ne v5, v1, :cond_1a

    .line 254
    .line 255
    mul-int v1, v0, p2

    .line 256
    .line 257
    iget v2, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 258
    .line 259
    mul-int v3, p1, v2

    .line 260
    .line 261
    if-ge v1, v3, :cond_19

    .line 262
    .line 263
    div-int p1, v1, v2

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_19
    mul-int v3, p1, v2

    .line 267
    .line 268
    if-le v1, v3, :cond_22

    .line 269
    .line 270
    mul-int v2, v2, p1

    .line 271
    .line 272
    div-int p2, v2, v0

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_1a
    if-ne v2, v1, :cond_1c

    .line 276
    .line 277
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 278
    .line 279
    mul-int v1, v1, p1

    .line 280
    .line 281
    div-int v0, v1, v0

    .line 282
    .line 283
    if-ne v5, v6, :cond_1b

    .line 284
    .line 285
    if-le v0, p2, :cond_1b

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_1b
    move p2, v0

    .line 289
    goto :goto_8

    .line 290
    :cond_1c
    if-ne v5, v1, :cond_1e

    .line 291
    .line 292
    mul-int v0, v0, p2

    .line 293
    .line 294
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 295
    .line 296
    div-int/2addr v0, v1

    .line 297
    if-ne v2, v6, :cond_1d

    .line 298
    .line 299
    if-le v0, p1, :cond_1d

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_1d
    move p1, v0

    .line 303
    goto :goto_8

    .line 304
    :cond_1e
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 305
    .line 306
    if-ne v5, v6, :cond_1f

    .line 307
    .line 308
    if-le v1, p2, :cond_1f

    .line 309
    .line 310
    mul-int v3, p2, v0

    .line 311
    .line 312
    div-int/2addr v3, v1

    .line 313
    goto :goto_7

    .line 314
    :cond_1f
    move v3, v0

    .line 315
    move p2, v1

    .line 316
    :goto_7
    if-ne v2, v6, :cond_20

    .line 317
    .line 318
    if-le v3, p1, :cond_20

    .line 319
    .line 320
    mul-int v1, v1, p1

    .line 321
    .line 322
    div-int p2, v1, v0

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_20
    move p1, v3

    .line 326
    goto :goto_8

    .line 327
    :cond_21
    move p1, v2

    .line 328
    move p2, v5

    .line 329
    :cond_22
    :goto_8
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->g:I

    .line 330
    .line 331
    iput p2, p0, Lcom/papa/gsyvideoplayer/utils/j;->h:I

    .line 332
    .line 333
    return-void

    .line 334
    :cond_23
    :goto_9
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->g:I

    .line 335
    .line 336
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->h:I

    .line 337
    .line 338
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method public e(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/j;->j:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/j;->j:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "videoWidth: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " videoHeight: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/j;->j:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarNum()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/j;->j:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 50
    .line 51
    invoke-interface {v3}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarDen()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lez v0, :cond_0

    .line 56
    .line 57
    if-lez v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, v2, v3}, Lcom/papa/gsyvideoplayer/utils/j;->h(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/utils/j;->i(II)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0, p3}, Lcom/papa/gsyvideoplayer/utils/j;->g(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/utils/j;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public h(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->d:I

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/utils/j;->e:I

    .line 4
    .line 5
    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/j;->b:I

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/utils/j;->c:I

    .line 4
    .line 5
    return-void
.end method
