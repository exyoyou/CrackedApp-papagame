.class public abstract Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final m:Ljava/lang/String; = "PullToRefresh-LoadingLayout"

.field static final n:Landroid/view/animation/Interpolator;


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field protected final c:Landroid/widget/ImageView;

.field protected final d:Landroid/widget/ProgressBar;

.field private e:Z

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field protected final h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

.field protected final i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->n:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "mode",
            "scrollDirection",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 7
    .line 8
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v2, 0x7f0d07fe

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v2, 0x7f0d07fd

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    :goto_0
    const v0, 0x7f0a065d

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    const v2, 0x7f0a12cb

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    const v2, 0x7f0a12c9

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ProgressBar;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    const v2, 0x7f0a12ca

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    const v2, 0x7f0a12c8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    .line 109
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->b:[I

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    aget v3, v2, v3

    .line 116
    .line 117
    const/4 v4, 0x5

    .line 118
    const/4 v5, 0x3

    .line 119
    if-eq v3, v1, :cond_2

    .line 120
    .line 121
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 122
    .line 123
    if-ne p3, v3, :cond_1

    .line 124
    .line 125
    const/16 p3, 0x50

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const/4 p3, 0x5

    .line 129
    :goto_1
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    .line 131
    const p3, 0x7f1203a1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 139
    .line 140
    const p3, 0x7f1203a2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 148
    .line 149
    const p3, 0x7f1203a3

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 160
    .line 161
    if-ne p3, v3, :cond_3

    .line 162
    .line 163
    const/16 p3, 0x30

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    const/4 p3, 0x3

    .line 167
    :goto_2
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    .line 169
    const p3, 0x7f12039e

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 177
    .line 178
    const p3, 0x7f12039f

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 186
    .line 187
    const p3, 0x7f1203a0

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 195
    .line 196
    :goto_3
    const/4 p3, 0x7

    .line 197
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    if-eqz p3, :cond_4

    .line 208
    .line 209
    invoke-static {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/c;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    const/16 p3, 0x9

    .line 213
    .line 214
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    new-instance v0, Landroid/util/TypedValue;

    .line 221
    .line 222
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 226
    .line 227
    .line 228
    iget p3, v0, Landroid/util/TypedValue;->data:I

    .line 229
    .line 230
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    .line 231
    .line 232
    .line 233
    :cond_5
    const/16 p3, 0x12

    .line 234
    .line 235
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    new-instance v0, Landroid/util/TypedValue;

    .line 242
    .line 243
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 247
    .line 248
    .line 249
    iget p3, v0, Landroid/util/TypedValue;->data:I

    .line 250
    .line 251
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 252
    .line 253
    .line 254
    :cond_6
    const/16 p3, 0xa

    .line 255
    .line 256
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_7

    .line 261
    .line 262
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    if-eqz p3, :cond_7

    .line 267
    .line 268
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    const/16 p3, 0x8

    .line 272
    .line 273
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_8

    .line 278
    .line 279
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    if-eqz p3, :cond_8

    .line 284
    .line 285
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 286
    .line 287
    .line 288
    :cond_8
    const/4 p3, 0x2

    .line 289
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    goto :goto_4

    .line 300
    :cond_9
    const/4 p3, 0x0

    .line 301
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    aget p2, v2, p2

    .line 306
    .line 307
    if-eq p2, v1, :cond_b

    .line 308
    .line 309
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-eqz p2, :cond_a

    .line 314
    .line 315
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 316
    .line 317
    .line 318
    move-result-object p3

    .line 319
    goto :goto_5

    .line 320
    :cond_a
    const/4 p2, 0x6

    .line 321
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_d

    .line 326
    .line 327
    const-string p3, "ptrDrawableTop"

    .line 328
    .line 329
    const-string v0, "ptrDrawableStart"

    .line 330
    .line 331
    invoke-static {p3, v0}, Lcom/join/mgps/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 335
    .line 336
    .line 337
    move-result-object p3

    .line 338
    goto :goto_5

    .line 339
    :cond_b
    const/4 p2, 0x4

    .line 340
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_c

    .line 345
    .line 346
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 347
    .line 348
    .line 349
    move-result-object p3

    .line 350
    goto :goto_5

    .line 351
    :cond_c
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-eqz p2, :cond_d

    .line 356
    .line 357
    const-string p2, "ptrDrawableBottom"

    .line 358
    .line 359
    const-string p3, "ptrDrawableEnd"

    .line 360
    .line 361
    invoke-static {p2, p3}, Lcom/join/mgps/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 365
    .line 366
    .line 367
    move-result-object p3

    .line 368
    :cond_d
    :goto_5
    if-nez p3, :cond_e

    .line 369
    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 379
    .line 380
    .line 381
    move-result-object p3

    .line 382
    :cond_e
    invoke-virtual {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k()V

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne v1, p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method protected abstract b(Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDrawable"
        }
    .end annotation
.end method

.method public final c(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleOfLayout"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected abstract d(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleOfLayout"
        }
    .end annotation
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected abstract f()V
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->h()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final getContentSize()I
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method protected abstract h()V
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected abstract j()V
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l()V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method protected abstract l()V
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v2, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne v2, v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v2, v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final setHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDrawable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Z

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pullLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshingLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseLabel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tf"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
