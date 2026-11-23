.class final Lcom/kwad/components/core/page/widget/a/c$2;
.super Lcom/kwad/components/core/page/widget/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/widget/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahr:Lcom/kwad/components/core/page/widget/a/c;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/page/widget/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final E(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final bH(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bG(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final bI(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/kwad/components/core/page/widget/a/c;->i(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/components/core/page/widget/a/c;->j(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 23
    .line 24
    iget v1, v1, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 25
    .line 26
    :goto_0
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final onViewDragStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x0

    .line 6
    cmpg-float v5, p3, v4

    .line 7
    .line 8
    if-gez v5, :cond_3

    .line 9
    .line 10
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->f(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 19
    .line 20
    invoke-virtual {p2, p1, p3}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->g(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 34
    .line 35
    iget v0, p2, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 36
    .line 37
    :goto_0
    const/4 v1, 0x4

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 45
    .line 46
    invoke-static {p3}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-le p2, p3, :cond_2

    .line 51
    .line 52
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_2
    :goto_1
    const/4 v1, 0x3

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_3
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 64
    .line 65
    invoke-static {v5}, Lcom/kwad/components/core/page/widget/a/c;->i(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 72
    .line 73
    invoke-virtual {v5, p1, p3}, Lcom/kwad/components/core/page/widget/a/c;->d(Landroid/view/View;F)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v6, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 84
    .line 85
    iget v6, v6, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 86
    .line 87
    if-gt v5, v6, :cond_4

    .line 88
    .line 89
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    cmpg-float v5, v5, v6

    .line 98
    .line 99
    if-gez v5, :cond_5

    .line 100
    .line 101
    :cond_4
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->j(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x5

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_5
    cmpl-float v4, p3, v4

    .line 111
    .line 112
    if-eqz v4, :cond_8

    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    cmpl-float p2, p2, v4

    .line 123
    .line 124
    if-lez p2, :cond_6

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 128
    .line 129
    invoke-virtual {p2, p1, p3}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 143
    .line 144
    iget v0, p2, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 152
    .line 153
    invoke-static {v4}, Lcom/kwad/components/core/page/widget/a/c;->f(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_a

    .line 158
    .line 159
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 160
    .line 161
    invoke-virtual {p2, p1, p3}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_9

    .line 166
    .line 167
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 168
    .line 169
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->g(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    goto :goto_1

    .line 174
    :cond_9
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 175
    .line 176
    iget v0, p2, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_a
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 181
    .line 182
    invoke-static {p3}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    if-ge p2, p3, :cond_c

    .line 187
    .line 188
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 189
    .line 190
    iget p3, p3, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 191
    .line 192
    sub-int p3, p2, p3

    .line 193
    .line 194
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-ge p2, p3, :cond_b

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_b
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 203
    .line 204
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    goto :goto_3

    .line 209
    :cond_c
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 210
    .line 211
    invoke-static {p3}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    sub-int p3, p2, p3

    .line 216
    .line 217
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 222
    .line 223
    iget v0, v0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 224
    .line 225
    sub-int/2addr p2, v0

    .line 226
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-ge p3, p2, :cond_d

    .line 231
    .line 232
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 233
    .line 234
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->h(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    goto :goto_3

    .line 239
    :cond_d
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 240
    .line 241
    iget v0, p2, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :goto_3
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 246
    .line 247
    iget-object p2, p2, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 250
    .line 251
    .line 252
    move-result p3

    .line 253
    invoke-virtual {p2, p3, v0}, Lcom/kwad/components/core/page/widget/a/i;->settleCapturedViewAt(II)Z

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-eqz p2, :cond_e

    .line 258
    .line 259
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 260
    .line 261
    const/4 p3, 0x2

    .line 262
    invoke-virtual {p2, p3}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 263
    .line 264
    .line 265
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 266
    .line 267
    new-instance p3, Lcom/kwad/components/core/page/widget/a/c$c;

    .line 268
    .line 269
    invoke-direct {p3, p2, p1, v1}, Lcom/kwad/components/core/page/widget/a/c$c;-><init>(Lcom/kwad/components/core/page/widget/a/c;Landroid/view/View;I)V

    .line 270
    .line 271
    .line 272
    invoke-static {p2, p3}, Lcom/kwad/components/core/page/widget/a/c;->a(Lcom/kwad/components/core/page/widget/a/c;Lcom/kwad/components/core/page/widget/a/c$c;)Lcom/kwad/components/core/page/widget/a/c$c;

    .line 273
    .line 274
    .line 275
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 276
    .line 277
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->e(Lcom/kwad/components/core/page/widget/a/c;)Lcom/kwad/components/core/page/widget/a/c$c;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_e
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 286
    .line 287
    invoke-virtual {p1, v1}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->a(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->b(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->a(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->c(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, p2, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/view/View;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->d(Lcom/kwad/components/core/page/widget/a/c;)Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 67
    .line 68
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/c;->d(Lcom/kwad/components/core/page/widget/a/c;)Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-ne p2, p1, :cond_3

    .line 77
    .line 78
    return v2

    .line 79
    :cond_3
    return v1
.end method

.method public final vm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->i(Lcom/kwad/components/core/page/widget/a/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/c;->j(Lcom/kwad/components/core/page/widget/a/c;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$2;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 17
    .line 18
    iget v0, v0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 19
    .line 20
    return v0
.end method
