.class Lcom/kongzue/dialogx/dialogs/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n;->y2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/n;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->c2()Lcom/kongzue/dialogx/dialogs/n$h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->B1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->D1(Lcom/kongzue/dialogx/dialogs/n;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;->a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 51
    .line 52
    :cond_2
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n$g;->a:[I

    .line 53
    .line 54
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    aget v0, v1, v0

    .line 61
    .line 62
    const v1, 0x3fa66666    # 1.3f

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-eq v0, v3, :cond_5

    .line 68
    .line 69
    if-eq v0, v2, :cond_4

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    if-eq v0, v4, :cond_4

    .line 73
    .line 74
    const/4 v4, 0x4

    .line 75
    if-eq v0, v4, :cond_3

    .line 76
    .line 77
    const/4 v4, 0x5

    .line 78
    if-eq v0, v4, :cond_4

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-float v1, v1

    .line 96
    sub-float/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    int-to-float v1, v1

    .line 104
    add-float/2addr v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    int-to-float v4, v4

    .line 119
    mul-float v4, v4, v1

    .line 120
    .line 121
    add-float/2addr v0, v4

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    int-to-float v4, v4

    .line 136
    mul-float v4, v4, v1

    .line 137
    .line 138
    sub-float/2addr v0, v4

    .line 139
    :goto_0
    move v8, v0

    .line 140
    :goto_1
    sget-object v4, Lcom/kongzue/dialogx/dialogs/n;->c2:Lcom/kongzue/dialogx/interfaces/a0;

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 146
    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 152
    .line 153
    iget-object v5, v5, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 154
    .line 155
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    move v5, v1

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 161
    .line 162
    iget-object v6, v1, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    int-to-float v1, v1

    .line 177
    iget-object v9, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    div-float/2addr v1, v9

    .line 184
    float-to-int v9, v1

    .line 185
    sget-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 186
    .line 187
    if-nez v1, :cond_7

    .line 188
    .line 189
    const/4 v10, 0x1

    .line 190
    goto :goto_3

    .line 191
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    move v10, v1

    .line 196
    :goto_3
    const/4 v11, 0x0

    .line 197
    invoke-virtual/range {v4 .. v11}, Lcom/kongzue/dialogx/interfaces/a0;->b(ILcom/kongzue/dialogx/interfaces/BaseDialog;FFIIZ)F

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    :cond_8
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    instance-of v1, v1, Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 220
    .line 221
    .line 222
    :cond_9
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    new-array v2, v2, [F

    .line 229
    .line 230
    aput v1, v2, v0

    .line 231
    .line 232
    aput v8, v2, v3

    .line 233
    .line 234
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/n$c;->b:Landroid/view/View;

    .line 239
    .line 240
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Lcom/kongzue/dialogx/dialogs/n$c$a;

    .line 244
    .line 245
    invoke-direct {v2, p0, v8, v1}, Lcom/kongzue/dialogx/dialogs/n$c$a;-><init>(Lcom/kongzue/dialogx/dialogs/n$c;FF)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 252
    .line 253
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/n;->F1(Lcom/kongzue/dialogx/dialogs/n;)J

    .line 254
    .line 255
    .line 256
    move-result-wide v1

    .line 257
    const-wide/16 v3, -0x1

    .line 258
    .line 259
    cmp-long v5, v1, v3

    .line 260
    .line 261
    if-nez v5, :cond_a

    .line 262
    .line 263
    const-wide/16 v1, 0x12c

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_a
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$c;->c:Lcom/kongzue/dialogx/dialogs/n;

    .line 267
    .line 268
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/n;->G1(Lcom/kongzue/dialogx/dialogs/n;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 277
    .line 278
    const/high16 v3, 0x40000000    # 2.0f

    .line 279
    .line 280
    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    .line 288
    .line 289
    return-void
.end method
