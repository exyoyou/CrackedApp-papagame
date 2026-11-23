.class Lcom/kongzue/dialogx/dialogs/i$h$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h$h;->d(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/i$h$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h$h;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->I1(Lcom/kongzue/dialogx/dialogs/i;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_b

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 56
    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    cmpl-float v2, v0, v2

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v4, 0x0

    .line 67
    :goto_0
    iput-boolean v4, v1, Lcom/kongzue/dialogx/dialogs/i;->h2:Z

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->A2()Lcom/kongzue/dialogx/util/g;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    const/4 v2, -0x2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->b:I

    .line 78
    .line 79
    int-to-float v2, v2

    .line 80
    mul-float v2, v2, v0

    .line 81
    .line 82
    float-to-int v2, v2

    .line 83
    :goto_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 96
    .line 97
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 98
    .line 99
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 106
    .line 107
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 108
    .line 109
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, -0x1

    .line 116
    if-ne v5, v6, :cond_3

    .line 117
    .line 118
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 119
    .line 120
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 121
    .line 122
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 134
    .line 135
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 136
    .line 137
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    :goto_2
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    .line 145
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 146
    .line 147
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 148
    .line 149
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    int-to-float v2, v2

    .line 156
    add-float/2addr v4, v2

    .line 157
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 158
    .line 159
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    cmpl-float v4, v4, v5

    .line 168
    .line 169
    if-lez v4, :cond_4

    .line 170
    .line 171
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 172
    .line 173
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 174
    .line 175
    iget-object v5, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 176
    .line 177
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    sub-float/2addr v4, v2

    .line 184
    invoke-virtual {v5, v4}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 185
    .line 186
    .line 187
    :cond_4
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/high16 v4, -0x40800000    # -1.0f

    .line 192
    .line 193
    cmpl-float v2, v2, v4

    .line 194
    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 199
    .line 200
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 201
    .line 202
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 205
    .line 206
    :goto_3
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 211
    .line 212
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 215
    .line 216
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 223
    .line 224
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 225
    .line 226
    iget-object v5, v4, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 227
    .line 228
    iget v6, v5, Lcom/kongzue/dialogx/dialogs/i;->g2:I

    .line 229
    .line 230
    int-to-float v6, v6

    .line 231
    mul-float v6, v6, v0

    .line 232
    .line 233
    add-float/2addr v2, v6

    .line 234
    iget-boolean v0, v5, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 235
    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    const/4 v0, 0x0

    .line 239
    cmpg-float v5, v1, v0

    .line 240
    .line 241
    if-gez v5, :cond_6

    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    :cond_6
    cmpg-float v5, v2, v0

    .line 245
    .line 246
    if-gez v5, :cond_7

    .line 247
    .line 248
    const/4 v2, 0x0

    .line 249
    :cond_7
    iget-object v0, v4, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    int-to-float v0, v0

    .line 256
    add-float/2addr v0, v1

    .line 257
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 258
    .line 259
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 260
    .line 261
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    int-to-float v4, v4

    .line 268
    cmpl-float v0, v0, v4

    .line 269
    .line 270
    if-lez v0, :cond_8

    .line 271
    .line 272
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 275
    .line 276
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 283
    .line 284
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 285
    .line 286
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    sub-int/2addr v0, v1

    .line 293
    int-to-float v0, v0

    .line 294
    move v1, v0

    .line 295
    :cond_8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    int-to-float v0, v0

    .line 306
    add-float/2addr v0, v2

    .line 307
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 308
    .line 309
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 310
    .line 311
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 312
    .line 313
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    int-to-float v4, v4

    .line 318
    cmpl-float v0, v0, v4

    .line 319
    .line 320
    if-lez v0, :cond_9

    .line 321
    .line 322
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 323
    .line 324
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 333
    .line 334
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 335
    .line 336
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 337
    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    sub-int/2addr v0, v2

    .line 343
    int-to-float v2, v0

    .line 344
    :cond_9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 345
    .line 346
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 354
    .line 355
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 356
    .line 357
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 358
    .line 359
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 363
    .line 364
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 365
    .line 366
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 372
    .line 373
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 374
    .line 375
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 376
    .line 377
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_a

    .line 382
    .line 383
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 386
    .line 387
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 388
    .line 389
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    :cond_a
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 395
    .line 396
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->d(Lcom/kongzue/dialogx/dialogs/i$h;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_b

    .line 401
    .line 402
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$a;->c:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 405
    .line 406
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 407
    .line 408
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    check-cast p1, Ljava/lang/Float;

    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 419
    .line 420
    .line 421
    :cond_b
    :goto_4
    return-void
.end method
