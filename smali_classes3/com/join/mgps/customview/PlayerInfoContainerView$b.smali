.class Lcom/join/mgps/customview/PlayerInfoContainerView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/ViewGroup;

.field private m:I

.field private n:Z

.field private o:Lcom/papa91/battle/protocol/RoomPosition;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lcom/join/mgps/customview/VipView;

.field final synthetic x:Lcom/join/mgps/customview/PlayerInfoContainerView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "parent",
            "index"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->n:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput p4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 2
    .line 3
    return p0
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x41100000    # 9.0f

    .line 23
    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    const/high16 v1, 0x41800000    # 16.0f

    .line 27
    .line 28
    div-float/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f071327

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    mul-float v2, v2, v0

    .line 52
    .line 53
    float-to-int v2, v2

    .line 54
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v3, 0x7f071368

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    int-to-float v2, v2

    .line 70
    mul-float v2, v2, v0

    .line 71
    .line 72
    float-to-int v2, v2

    .line 73
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const v3, 0x7f0711b6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    mul-float v2, v2, v0

    .line 103
    .line 104
    float-to-int v2, v2

    .line 105
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    mul-float v2, v2, v0

    .line 119
    .line 120
    float-to-int v2, v2

    .line 121
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const v3, 0x7f071395

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    int-to-float v2, v2

    .line 137
    mul-float v2, v2, v0

    .line 138
    .line 139
    float-to-int v2, v2

    .line 140
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    .line 142
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const v3, 0x7f071688

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    int-to-float v2, v2

    .line 169
    mul-float v2, v2, v0

    .line 170
    .line 171
    float-to-int v2, v2

    .line 172
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 173
    .line 174
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    int-to-float v2, v2

    .line 185
    mul-float v2, v2, v0

    .line 186
    .line 187
    float-to-int v2, v2

    .line 188
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 189
    .line 190
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const v3, 0x7f0713ac

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    int-to-float v2, v2

    .line 204
    mul-float v2, v2, v0

    .line 205
    .line 206
    float-to-int v2, v2

    .line 207
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 208
    .line 209
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .line 222
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    int-to-float v2, v2

    .line 233
    mul-float v2, v2, v0

    .line 234
    .line 235
    float-to-int v2, v2

    .line 236
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 237
    .line 238
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    int-to-float v2, v2

    .line 249
    mul-float v2, v2, v0

    .line 250
    .line 251
    float-to-int v2, v2

    .line 252
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 253
    .line 254
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const v4, 0x7f071305

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    int-to-float v2, v2

    .line 268
    mul-float v2, v2, v0

    .line 269
    .line 270
    float-to-int v2, v2

    .line 271
    neg-int v2, v2

    .line 272
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 273
    .line 274
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    .line 287
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 288
    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    const v4, 0x7f0712fa

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    int-to-float v2, v2

    .line 301
    mul-float v2, v2, v0

    .line 302
    .line 303
    float-to-int v2, v2

    .line 304
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    .line 306
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 312
    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 318
    .line 319
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 320
    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const v4, 0x7f071224

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    int-to-float v2, v2

    .line 333
    mul-float v2, v2, v0

    .line 334
    .line 335
    float-to-int v2, v2

    .line 336
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 337
    .line 338
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 339
    .line 340
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 344
    .line 345
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    int-to-float v2, v2

    .line 356
    mul-float v2, v2, v0

    .line 357
    .line 358
    float-to-int v2, v2

    .line 359
    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 360
    .line 361
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    int-to-float v3, v3

    .line 370
    mul-float v3, v3, v0

    .line 371
    .line 372
    float-to-int v3, v3

    .line 373
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setSize(II)V

    .line 374
    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 377
    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 383
    .line 384
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 385
    .line 386
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    const v3, 0x7f0713f9

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    int-to-float v2, v2

    .line 398
    mul-float v2, v2, v0

    .line 399
    .line 400
    float-to-int v2, v2

    .line 401
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 402
    .line 403
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 404
    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    int-to-float v2, v2

    .line 414
    mul-float v2, v2, v0

    .line 415
    .line 416
    float-to-int v2, v2

    .line 417
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 418
    .line 419
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 425
    .line 426
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 427
    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    const v3, 0x7f071353

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    int-to-float v2, v2

    .line 440
    mul-float v2, v2, v0

    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 444
    .line 445
    .line 446
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 447
    .line 448
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 449
    .line 450
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    const v4, 0x7f071369

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    int-to-float v2, v2

    .line 462
    mul-float v2, v2, v0

    .line 463
    .line 464
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 465
    .line 466
    .line 467
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 468
    .line 469
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 470
    .line 471
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    int-to-float v2, v2

    .line 480
    mul-float v2, v2, v0

    .line 481
    .line 482
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 483
    .line 484
    .line 485
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    .line 486
    .line 487
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 488
    .line 489
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    const v4, 0x7f071326

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    int-to-float v2, v2

    .line 501
    mul-float v2, v2, v0

    .line 502
    .line 503
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 504
    .line 505
    .line 506
    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 2
    .line 3
    iget v0, v0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    .line 26
    iget v3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne v3, v1, :cond_1

    .line 30
    .line 31
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-ne v3, v2, :cond_2

    .line 35
    .line 36
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x7f071358

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const v4, 0x7f07135c

    .line 74
    .line 75
    .line 76
    if-lez v3, :cond_5

    .line 77
    .line 78
    div-int/2addr v3, v2

    .line 79
    iget-object v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    sub-int/2addr v3, v5

    .line 90
    div-int/2addr v3, v2

    .line 91
    div-int/2addr v3, v2

    .line 92
    iget-object v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 93
    .line 94
    iget v5, v5, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 95
    .line 96
    if-ne v5, v2, :cond_5

    .line 97
    .line 98
    iget v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 99
    .line 100
    if-ne v5, v1, :cond_4

    .line 101
    .line 102
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    if-ne v5, v2, :cond_5

    .line 106
    .line 107
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 108
    .line 109
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    return-void
.end method


# virtual methods
.method c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d0436

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 16
    .line 17
    const v1, 0x7f0a0a3f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a0fd7

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f0a0213

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a19f0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 64
    .line 65
    const v1, 0x7f0a0a15

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 77
    .line 78
    const v1, 0x7f0a19d3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 90
    .line 91
    const v1, 0x7f0a19dc

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 103
    .line 104
    const v1, 0x7f0a194c

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 116
    .line 117
    const v1, 0x7f0a0a85

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 129
    .line 130
    const v1, 0x7f0a1a2f

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 142
    .line 143
    const v1, 0x7f0a0f1f

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 155
    .line 156
    const v1, 0x7f0a0a6a

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/TextView;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 168
    .line 169
    const v1, 0x7f0a0a6c

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/widget/TextView;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 181
    .line 182
    const v1, 0x7f0a1bb5

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 190
    .line 191
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 194
    .line 195
    const v1, 0x7f0a0f39

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Landroid/widget/LinearLayout;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->h:Landroid/widget/LinearLayout;

    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 207
    .line 208
    const v1, 0x7f0a1405

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 218
    .line 219
    const v2, 0x7f0a09eb

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 229
    .line 230
    iget v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 231
    .line 232
    const/4 v2, 0x1

    .line 233
    if-eq v0, v2, :cond_3

    .line 234
    .line 235
    const/4 v3, 0x2

    .line 236
    if-eq v0, v3, :cond_2

    .line 237
    .line 238
    const/4 v3, 0x3

    .line 239
    if-eq v0, v3, :cond_1

    .line 240
    .line 241
    const/4 v3, 0x4

    .line 242
    if-eq v0, v3, :cond_0

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 246
    .line 247
    const-string v3, "4P"

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 254
    .line 255
    const-string v3, "3P"

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 262
    .line 263
    const-string v3, "2P"

    .line 264
    .line 265
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 270
    .line 271
    const-string v3, "1P"

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;

    .line 283
    .line 284
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 291
    .line 292
    const/4 v1, -0x2

    .line 293
    const/high16 v3, 0x3f800000    # 1.0f

    .line 294
    .line 295
    const/4 v4, 0x0

    .line 296
    invoke-direct {v0, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 297
    .line 298
    .line 299
    iget v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 300
    .line 301
    if-le v1, v2, :cond_4

    .line 302
    .line 303
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const v2, 0x7f07133d

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 317
    .line 318
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    .line 319
    .line 320
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    .line 321
    .line 322
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "isLeader",
            "isCurrentUser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->n:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x7f080e56

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 p3, 0x4

    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->h:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const v0, 0x7f080e43

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 96
    .line 97
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const v0, 0x7f080e3f

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView;->e:Lapp/mgsim/arena/UserType;

    .line 120
    .line 121
    sget-object p2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 122
    .line 123
    if-ne p1, p2, :cond_1

    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 142
    .line 143
    invoke-virtual {p1, v3, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 147
    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 167
    .line 168
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 177
    .line 178
    new-instance p2, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;

    .line 179
    .line 180
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sget-object v4, Lcom/papa91/battle/protocol/RoomPosition$State;->READY:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 223
    .line 224
    if-ne v0, v4, :cond_3

    .line 225
    .line 226
    if-nez p2, :cond_3

    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v4, "RoomPosition player Avatar:"

    .line 245
    .line 246
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v4, "GameRoomActivity"

    .line 261
    .line 262
    invoke-static {v4, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/l;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    .line 284
    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v5, "ms"

    .line 298
    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_4

    .line 316
    .line 317
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    .line 318
    .line 319
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    const/4 v4, 0x1

    .line 339
    if-ne v0, v4, :cond_5

    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    .line 342
    .line 343
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_6

    .line 359
    .line 360
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 361
    .line 362
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 367
    .line 368
    invoke-virtual {v0, v3, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 369
    .line 370
    .line 371
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 372
    .line 373
    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 374
    .line 375
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 387
    .line 388
    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 389
    .line 390
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 398
    .line 399
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    packed-switch p1, :pswitch_data_0

    .line 407
    .line 408
    .line 409
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 410
    .line 411
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 415
    .line 416
    const v0, 0x7f080cf9

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 425
    .line 426
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 430
    .line 431
    const v0, 0x7f080d02

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 435
    .line 436
    .line 437
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 438
    .line 439
    const v0, 0x7f080d03

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 447
    .line 448
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 452
    .line 453
    const v0, 0x7f080cfc

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 457
    .line 458
    .line 459
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 460
    .line 461
    const v0, 0x7f080cfd

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 465
    .line 466
    .line 467
    goto :goto_5

    .line 468
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 469
    .line 470
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 474
    .line 475
    const v0, 0x7f080cfe

    .line 476
    .line 477
    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 479
    .line 480
    .line 481
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 482
    .line 483
    const v0, 0x7f080cff

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 491
    .line 492
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 496
    .line 497
    const v0, 0x7f080cfa

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 501
    .line 502
    .line 503
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 504
    .line 505
    const v0, 0x7f080cfb

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    .line 510
    .line 511
    goto :goto_5

    .line 512
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 513
    .line 514
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 518
    .line 519
    const v0, 0x7f080d00

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 523
    .line 524
    .line 525
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 526
    .line 527
    const v0, 0x7f080d01

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    .line 532
    .line 533
    goto :goto_5

    .line 534
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 535
    .line 536
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 540
    .line 541
    const v0, 0x7f080d04

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 545
    .line 546
    .line 547
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 548
    .line 549
    const v0, 0x7f08023e

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 553
    .line 554
    .line 555
    :goto_5
    if-eqz p2, :cond_7

    .line 556
    .line 557
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 558
    .line 559
    const p2, 0x7f080e42

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 563
    .line 564
    .line 565
    goto :goto_6

    .line 566
    :cond_7
    if-eqz p3, :cond_8

    .line 567
    .line 568
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 569
    .line 570
    const p2, 0x7f080e57

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 574
    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 578
    .line 579
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 580
    .line 581
    .line 582
    :goto_6
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
