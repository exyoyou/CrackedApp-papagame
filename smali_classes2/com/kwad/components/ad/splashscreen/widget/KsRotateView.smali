.class public Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;
.super Lcom/kwad/components/ad/splashscreen/widget/c;
.source "SourceFile"


# static fields
.field private static LG:I = 0x32

.field private static LH:I = -0xc

.field private static LI:I = -0x19

.field private static LJ:I = 0xc

.field private static LK:I = 0x19


# instance fields
.field private LF:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private iF:Landroid/widget/ImageView;

.field private qY:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/kwad/sdk/R$styleable;->ksad_KsShakeView:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget p3, Lcom/kwad/sdk/R$styleable;->ksad_KsShakeView_ksad_shakeIcon:I

    .line 9
    .line 10
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_ic_rotate_phone:I

    .line 11
    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iput p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LF:I

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    new-instance p2, Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->qY:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget p3, Lcom/kwad/sdk/R$drawable;->ksad_ic_rotate_line:I

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/4 p3, -0x2

    .line 40
    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x31

    .line 44
    .line 45
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->qY:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 62
    .line 63
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .line 65
    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/high16 p3, 0x41b00000    # 22.0f

    .line 69
    .line 70
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method protected final fZ()Landroid/animation/Animator;
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->getInteractionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v2, v3

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    div-float/2addr v2, v3

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    new-array v3, v2, [F

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    aput v5, v3, v4

    .line 40
    .line 41
    sget v6, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LI:I

    .line 42
    .line 43
    int-to-float v6, v6

    .line 44
    const/4 v7, 0x1

    .line 45
    aput v6, v3, v7

    .line 46
    .line 47
    const-string v6, "rotation"

    .line 48
    .line 49
    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-wide/16 v8, 0x1f4

    .line 54
    .line 55
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-array v10, v2, [F

    .line 60
    .line 61
    fill-array-data v10, :array_0

    .line 62
    .line 63
    .line 64
    const-string v11, "alpha"

    .line 65
    .line 66
    invoke-static {v0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const-wide/16 v12, 0x154

    .line 71
    .line 72
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    new-array v14, v2, [F

    .line 76
    .line 77
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LI:I

    .line 78
    .line 79
    int-to-float v15, v15

    .line 80
    aput v15, v14, v4

    .line 81
    .line 82
    aput v5, v14, v7

    .line 83
    .line 84
    invoke-static {v0, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 89
    .line 90
    int-to-long v12, v15

    .line 91
    invoke-virtual {v14, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    new-array v13, v2, [F

    .line 96
    .line 97
    aput v5, v13, v4

    .line 98
    .line 99
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 100
    .line 101
    int-to-float v14, v14

    .line 102
    aput v14, v13, v7

    .line 103
    .line 104
    invoke-static {v0, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 109
    .line 110
    int-to-long v14, v14

    .line 111
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    new-array v14, v2, [F

    .line 116
    .line 117
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 118
    .line 119
    int-to-float v15, v15

    .line 120
    aput v15, v14, v4

    .line 121
    .line 122
    aput v5, v14, v7

    .line 123
    .line 124
    invoke-static {v0, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 129
    .line 130
    int-to-long v8, v15

    .line 131
    invoke-virtual {v14, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    new-array v9, v2, [F

    .line 136
    .line 137
    aput v5, v9, v4

    .line 138
    .line 139
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 140
    .line 141
    int-to-float v14, v14

    .line 142
    aput v14, v9, v7

    .line 143
    .line 144
    invoke-static {v0, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 149
    .line 150
    int-to-long v14, v14

    .line 151
    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    new-array v14, v2, [F

    .line 156
    .line 157
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 158
    .line 159
    int-to-float v15, v15

    .line 160
    aput v15, v14, v4

    .line 161
    .line 162
    aput v5, v14, v7

    .line 163
    .line 164
    invoke-static {v0, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 169
    .line 170
    move-object/from16 v21, v8

    .line 171
    .line 172
    int-to-long v7, v15

    .line 173
    invoke-virtual {v14, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    new-array v8, v2, [F

    .line 178
    .line 179
    fill-array-data v8, :array_1

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    const-wide/16 v14, 0x1f4

    .line 187
    .line 188
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    .line 191
    new-array v14, v2, [F

    .line 192
    .line 193
    aput v5, v14, v4

    .line 194
    .line 195
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LK:I

    .line 196
    .line 197
    int-to-float v15, v15

    .line 198
    const/16 v20, 0x1

    .line 199
    .line 200
    aput v15, v14, v20

    .line 201
    .line 202
    invoke-static {v0, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    move-object/from16 v22, v6

    .line 207
    .line 208
    const-wide/16 v5, 0x1f4

    .line 209
    .line 210
    invoke-virtual {v14, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    new-array v6, v2, [F

    .line 215
    .line 216
    fill-array-data v6, :array_2

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    move-object v14, v5

    .line 224
    const-wide/16 v4, 0x154

    .line 225
    .line 226
    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    .line 228
    .line 229
    new-array v4, v2, [F

    .line 230
    .line 231
    sget v5, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LK:I

    .line 232
    .line 233
    int-to-float v5, v5

    .line 234
    const/4 v11, 0x0

    .line 235
    aput v5, v4, v11

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    aput v5, v4, v20

    .line 239
    .line 240
    move-object/from16 v15, v22

    .line 241
    .line 242
    invoke-static {v0, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    sget v5, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 247
    .line 248
    move-object/from16 v17, v12

    .line 249
    .line 250
    int-to-long v11, v5

    .line 251
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-array v5, v2, [F

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    const/4 v12, 0x0

    .line 259
    aput v11, v5, v12

    .line 260
    .line 261
    move-object v11, v15

    .line 262
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 263
    .line 264
    int-to-float v15, v15

    .line 265
    aput v15, v5, v20

    .line 266
    .line 267
    invoke-static {v0, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 272
    .line 273
    move-object/from16 v18, v13

    .line 274
    .line 275
    int-to-long v12, v15

    .line 276
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    new-array v12, v2, [F

    .line 281
    .line 282
    sget v13, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 283
    .line 284
    int-to-float v13, v13

    .line 285
    const/16 v19, 0x0

    .line 286
    .line 287
    aput v13, v12, v19

    .line 288
    .line 289
    const/4 v13, 0x0

    .line 290
    aput v13, v12, v20

    .line 291
    .line 292
    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 297
    .line 298
    move-object/from16 v16, v14

    .line 299
    .line 300
    int-to-long v13, v15

    .line 301
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    new-array v13, v2, [F

    .line 306
    .line 307
    const/4 v14, 0x0

    .line 308
    aput v14, v13, v19

    .line 309
    .line 310
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 311
    .line 312
    int-to-float v14, v14

    .line 313
    aput v14, v13, v20

    .line 314
    .line 315
    invoke-static {v0, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 320
    .line 321
    int-to-long v14, v14

    .line 322
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    .line 324
    .line 325
    move-result-object v13

    .line 326
    new-array v14, v2, [F

    .line 327
    .line 328
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 329
    .line 330
    int-to-float v15, v15

    .line 331
    aput v15, v14, v19

    .line 332
    .line 333
    const/4 v15, 0x0

    .line 334
    aput v15, v14, v20

    .line 335
    .line 336
    invoke-static {v0, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    sget v11, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 341
    .line 342
    int-to-long v14, v11

    .line 343
    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const/16 v11, 0xf

    .line 348
    .line 349
    new-array v11, v11, [Landroid/animation/Animator;

    .line 350
    .line 351
    aput-object v3, v11, v19

    .line 352
    .line 353
    aput-object v10, v11, v20

    .line 354
    .line 355
    aput-object v17, v11, v2

    .line 356
    .line 357
    const/4 v2, 0x3

    .line 358
    aput-object v18, v11, v2

    .line 359
    .line 360
    const/4 v2, 0x4

    .line 361
    aput-object v21, v11, v2

    .line 362
    .line 363
    const/4 v2, 0x5

    .line 364
    aput-object v9, v11, v2

    .line 365
    .line 366
    const/4 v2, 0x6

    .line 367
    aput-object v7, v11, v2

    .line 368
    .line 369
    const/4 v2, 0x7

    .line 370
    aput-object v8, v11, v2

    .line 371
    .line 372
    const/16 v2, 0x8

    .line 373
    .line 374
    aput-object v16, v11, v2

    .line 375
    .line 376
    const/16 v2, 0x9

    .line 377
    .line 378
    aput-object v6, v11, v2

    .line 379
    .line 380
    const/16 v2, 0xa

    .line 381
    .line 382
    aput-object v4, v11, v2

    .line 383
    .line 384
    const/16 v2, 0xb

    .line 385
    .line 386
    aput-object v5, v11, v2

    .line 387
    .line 388
    const/16 v2, 0xc

    .line 389
    .line 390
    aput-object v12, v11, v2

    .line 391
    .line 392
    const/16 v2, 0xd

    .line 393
    .line 394
    aput-object v13, v11, v2

    .line 395
    .line 396
    const/16 v2, 0xe

    .line 397
    .line 398
    aput-object v0, v11, v2

    .line 399
    .line 400
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 401
    .line 402
    .line 403
    return-object v1

    .line 404
    nop

    .line 405
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getAnimationDelayTime()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected getInteractionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final oa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LF:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected final ob()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->getInteractionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
