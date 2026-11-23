.class public Lcom/byazt/tm/DynamicTextView;
.super Lcom/byazt/tm/DynamicBaseWidgetImp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x496
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/tm/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 5
    .line 6
    add-int/lit8 p2, p2, 0x6

    .line 7
    .line 8
    iput p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 9
    .line 10
    iget-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->pf()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/byazt/oq/AnimationText;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/byazt/aq/sp;->sp()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/byazt/aq/sp;->n()F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    iget-object p3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/byazt/aq/sp;->x()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    move-object v0, p2

    .line 40
    move-object v1, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/byazt/oq/AnimationText;-><init>(Landroid/content/Context;IFII)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 45
    .line 46
    move-object p1, p2

    .line 47
    check-cast p1, Lcom/byazt/oq/AnimationText;

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p2, p1}, Lcom/byazt/oq/AnimationText;->setMaxLines(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidget;->getClickArea()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicBaseWidgetImp;->getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private da()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "source"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "title"

    .line 31
    .line 32
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v3, "text_star"

    .line 49
    .line 50
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/byazt/aq/sp;->n()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-static {v0, v3, v4}, Lcom/byazt/du/sl;->tt(Ljava/lang/String;FZ)[I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v5, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/byazt/aq/sp;->tt()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    int-to-float v5, v5

    .line 84
    invoke-static {v3, v5}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    float-to-int v3, v3

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/byazt/aq/sp;->ve()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    int-to-float v6, v6

    .line 100
    invoke-static {v5, v6}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    float-to-int v5, v5

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iget-object v7, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/byazt/aq/sp;->uj()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    int-to-float v7, v7

    .line 116
    invoke-static {v6, v7}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    float-to-int v6, v6

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iget-object v8, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/byazt/aq/sp;->c()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    int-to-float v8, v8

    .line 132
    invoke-static {v7, v8}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    float-to-int v7, v7

    .line 137
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    iget-object v9, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 142
    .line 143
    invoke-virtual {v9}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    .line 157
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    iget-object v10, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/byazt/aq/sp;->n()F

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-static {v9, v10}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    float-to-int v9, v9

    .line 174
    sub-int/2addr v1, v9

    .line 175
    sub-int/2addr v1, v3

    .line 176
    sub-int/2addr v1, v7

    .line 177
    if-le v1, v4, :cond_1

    .line 178
    .line 179
    mul-int/lit8 v9, v8, 0x2

    .line 180
    .line 181
    if-gt v1, v9, :cond_1

    .line 182
    .line 183
    div-int/lit8 v0, v1, 0x2

    .line 184
    .line 185
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 186
    .line 187
    sub-int/2addr v3, v0

    .line 188
    sub-int/2addr v1, v0

    .line 189
    sub-int/2addr v7, v1

    .line 190
    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_1
    aget v0, v0, v4

    .line 195
    .line 196
    add-int/2addr v0, v3

    .line 197
    add-int/2addr v0, v7

    .line 198
    iget v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 199
    .line 200
    sub-int/2addr v0, v1

    .line 201
    sub-int/2addr v0, v2

    .line 202
    if-gt v0, v4, :cond_2

    .line 203
    .line 204
    return-void

    .line 205
    :cond_2
    mul-int/lit8 v1, v8, 0x2

    .line 206
    .line 207
    if-gt v0, v1, :cond_3

    .line 208
    .line 209
    div-int/lit8 v1, v0, 0x2

    .line 210
    .line 211
    iget-object v4, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 212
    .line 213
    sub-int/2addr v3, v1

    .line 214
    sub-int/2addr v0, v1

    .line 215
    sub-int/2addr v7, v0

    .line 216
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_3
    add-int v1, v3, v7

    .line 221
    .line 222
    if-gt v0, v1, :cond_5

    .line 223
    .line 224
    if-le v3, v7, :cond_4

    .line 225
    .line 226
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 227
    .line 228
    sub-int/2addr v0, v8

    .line 229
    sub-int/2addr v3, v0

    .line 230
    sub-int/2addr v7, v8

    .line 231
    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 236
    .line 237
    sub-int/2addr v3, v8

    .line 238
    sub-int/2addr v0, v8

    .line 239
    sub-int/2addr v7, v0

    .line 240
    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_5
    sub-int/2addr v0, v3

    .line 245
    sub-int/2addr v0, v7

    .line 246
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    invoke-virtual {v1, v5, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/high16 v3, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-static {v1, v3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    float-to-int v1, v1

    .line 263
    add-int/2addr v1, v4

    .line 264
    if-gt v0, v1, :cond_6

    .line 265
    .line 266
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 267
    .line 268
    check-cast v0, Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->n()F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    sub-float/2addr v1, v3

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 278
    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1, v3}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    float-to-int v1, v1

    .line 290
    add-int/2addr v1, v4

    .line 291
    mul-int/lit8 v1, v1, 0x2

    .line 292
    .line 293
    if-gt v0, v1, :cond_7

    .line 294
    .line 295
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 296
    .line 297
    check-cast v0, Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->n()F

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/high16 v3, 0x40000000    # 2.0f

    .line 306
    .line 307
    sub-float/2addr v1, v3

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 309
    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_7
    new-instance v1, Lcom/byazt/tm/DynamicTextView$1;

    .line 313
    .line 314
    invoke-direct {v1, p0, v0}, Lcom/byazt/tm/DynamicTextView$1;-><init>(Lcom/byazt/tm/DynamicTextView;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 318
    .line 319
    .line 320
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v1, "fillButton"

    .line 331
    .line 332
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_9

    .line 337
    .line 338
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 344
    .line 345
    check-cast v0, Landroid/widget/TextView;

    .line 346
    .line 347
    const/16 v1, 0x11

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    .line 351
    .line 352
    :cond_9
    return-void
.end method

.method private i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->yp:Lcom/byazt/tm/DynamicRootView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->getRenderRequest()Lcom/byazt/xl/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/xl/u;->t()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x4

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method private sl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/byazt/oq/AnimationText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v2}, Lcom/byazt/oq/AnimationText;->setMaxLines(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 55
    .line 56
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->sp()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/byazt/oq/AnimationText;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 68
    .line 69
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->n()F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/byazt/oq/AnimationText;->setTextSize(F)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 81
    .line 82
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/byazt/oq/AnimationText;->setAnimationText(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 88
    .line 89
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->sv()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/byazt/oq/AnimationText;->setAnimationType(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 101
    .line 102
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/byazt/aq/sp;->bx()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    mul-int/lit16 v1, v1, 0x3e8

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/byazt/oq/AnimationText;->setAnimationDuration(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 116
    .line 117
    check-cast v0, Lcom/byazt/oq/AnimationText;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/byazt/oq/AnimationText;->c()V

    .line 120
    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public c(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const-string v1, "%1$s\u4e2a\u8bc4\u5206"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "("

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ")"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    if-ne p2, v0, :cond_0

    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "text_star"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const-string v0, "5"

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "score-count"

    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const-string v0, "6870"

    .line 64
    .line 65
    :cond_1
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "title"

    .line 76
    .line 77
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "subtitle"

    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    :cond_2
    const-string v1, "\n"

    .line 102
    .line 103
    const-string v2, ""

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_3
    return-object v0
.end method

.method public x()Z
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/byazt/tm/DynamicBaseWidgetImp;->x()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->pf()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/byazt/tm/DynamicTextView;->sl()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->x()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 67
    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->sp()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 80
    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->n()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->qy()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v2, 0x11

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 103
    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 110
    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 117
    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->gu()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_3

    .line 133
    .line 134
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 135
    .line 136
    check-cast v3, Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 142
    .line 143
    check-cast v0, Landroid/widget/TextView;

    .line 144
    .line 145
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 151
    .line 152
    if-eqz v0, :cond_13

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_4
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const-string v3, "text_star"

    .line 167
    .line 168
    const-string v4, "score-count"

    .line 169
    .line 170
    const/16 v5, 0x8

    .line 171
    .line 172
    const-string v6, "score-count-type-2"

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/byazt/tm/DynamicTextView;->i()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_5

    .line 197
    .line 198
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_5

    .line 213
    .line 214
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v7, "score-count-type-1"

    .line 225
    .line 226
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_5

    .line 231
    .line 232
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_6

    .line 247
    .line 248
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    return v1

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/4 v4, 0x0

    .line 267
    if-nez v0, :cond_f

    .line 268
    .line 269
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_7

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_7
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 308
    .line 309
    .line 310
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v2, "DynamicStarView applyNativeStyle"

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 323
    .line 324
    :goto_1
    const-wide/16 v6, 0x0

    .line 325
    .line 326
    cmpg-double v0, v2, v6

    .line 327
    .line 328
    if-ltz v0, :cond_8

    .line 329
    .line 330
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    .line 331
    .line 332
    cmpl-double v0, v2, v6

    .line 333
    .line 334
    if-lez v0, :cond_a

    .line 335
    .line 336
    :cond_8
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_9

    .line 341
    .line 342
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    return v1

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 347
    .line 348
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    :cond_a
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 352
    .line 353
    check-cast v0, Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 359
    .line 360
    check-cast v0, Landroid/widget/TextView;

    .line 361
    .line 362
    new-array v5, v1, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    aput-object v2, v5, v4

    .line 369
    .line 370
    const-string v2, "%.1f"

    .line 371
    .line 372
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_4

    .line 380
    .line 381
    :cond_b
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const-string v2, "privacy-detail"

    .line 392
    .line 393
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_c

    .line 398
    .line 399
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 400
    .line 401
    check-cast v0, Landroid/widget/TextView;

    .line 402
    .line 403
    const-string v2, "\u529f\u80fd | \u6743\u9650 | \u9690\u79c1"

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_4

    .line 409
    .line 410
    :cond_c
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    const-string v2, "development-name"

    .line 421
    .line 422
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_d

    .line 427
    .line 428
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 429
    .line 430
    check-cast v0, Landroid/widget/TextView;

    .line 431
    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v3, "\u5f00\u53d1\u8005\uff1a"

    .line 435
    .line 436
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_4

    .line 454
    .line 455
    :cond_d
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 456
    .line 457
    invoke-virtual {v0}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    const-string v2, "app-version"

    .line 466
    .line 467
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_e

    .line 472
    .line 473
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 474
    .line 475
    check-cast v0, Landroid/widget/TextView;

    .line 476
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v3, "\u7248\u672c\u53f7\uff1aV"

    .line 480
    .line 481
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_e
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 500
    .line 501
    check-cast v0, Landroid/widget/TextView;

    .line 502
    .line 503
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_f
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/tm/DynamicTextView;->getText()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    goto :goto_3

    .line 520
    :catch_1
    const/4 v0, -0x1

    .line 521
    :goto_3
    if-gez v0, :cond_11

    .line 522
    .line 523
    :try_start_2
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-eqz v3, :cond_10

    .line 528
    .line 529
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 530
    .line 531
    .line 532
    return v1

    .line 533
    :cond_10
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 534
    .line 535
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    .line 537
    .line 538
    :cond_11
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->u:Lcom/byazt/aq/x;

    .line 539
    .line 540
    invoke-virtual {v3}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-virtual {v3}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-eqz v3, :cond_12

    .line 553
    .line 554
    new-instance v3, Ljava/text/DecimalFormat;

    .line 555
    .line 556
    const-string v5, "(###,###,###)"

    .line 557
    .line 558
    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    int-to-long v5, v0

    .line 562
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    new-array v5, v1, [Ljava/lang/Object;

    .line 567
    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    aput-object v0, v5, v4

    .line 573
    .line 574
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iget-object v3, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 579
    .line 580
    check-cast v3, Landroid/widget/TextView;

    .line 581
    .line 582
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 586
    .line 587
    check-cast v0, Landroid/widget/TextView;

    .line 588
    .line 589
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 590
    .line 591
    .line 592
    return v1

    .line 593
    :cond_12
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 594
    .line 595
    check-cast v2, Landroid/widget/TextView;

    .line 596
    .line 597
    invoke-virtual {p0, v2, v0}, Lcom/byazt/tm/DynamicTextView;->c(Landroid/widget/TextView;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 598
    .line 599
    .line 600
    :catch_2
    :goto_4
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 601
    .line 602
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 603
    .line 604
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->x()I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 609
    .line 610
    .line 611
    iget-object v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    .line 612
    .line 613
    check-cast v0, Landroid/widget/TextView;

    .line 614
    .line 615
    iget-object v2, p0, Lcom/byazt/tm/DynamicBaseWidget;->t:Lcom/byazt/aq/sp;

    .line 616
    .line 617
    invoke-virtual {v2}, Lcom/byazt/aq/sp;->i()I

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 622
    .line 623
    .line 624
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_13

    .line 629
    .line 630
    invoke-direct {p0}, Lcom/byazt/tm/DynamicTextView;->da()V

    .line 631
    .line 632
    .line 633
    :cond_13
    :goto_5
    return v1
.end method
