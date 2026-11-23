.class public Lcom/join/mgps/adapter/CommentAllListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentAllListAdapter$h;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$i;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$k;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$g;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$j;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field h:Lcom/join/mgps/adapter/CommentAllListAdapter$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListAdapter$h;)V
    .locals 1
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
            "mContext",
            "uid",
            "itemBeans",
            "commentScoreSwitch",
            "sgcSwitch",
            "mListenr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->d:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput p5, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->h:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "viewGroup",
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    if-eq p4, v1, :cond_1

    .line 13
    .line 14
    if-eq p4, v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const v4, 0x7f0d016c

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const v4, 0x7f0a03cc

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->b(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 46
    .line 47
    .line 48
    const v4, 0x7f0a1b1a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    .line 57
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    .line 60
    const v4, 0x7f0a1b0c

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->z(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    const v4, 0x7f0a0978

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->B(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    const v4, 0x7f0a0e59

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/join/mgps/customview/VipView;

    .line 92
    .line 93
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->D(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/customview/VipView;)Lcom/join/mgps/customview/VipView;

    .line 94
    .line 95
    .line 96
    const v4, 0x7f0a096f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->F(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 106
    .line 107
    .line 108
    const v4, 0x7f0a0977

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->H(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 118
    .line 119
    .line 120
    const v4, 0x7f0a0970

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->J(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    const v4, 0x7f0a03db

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/join/mgps/customview/MStarBar;

    .line 140
    .line 141
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->L(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/customview/MStarBar;)Lcom/join/mgps/customview/MStarBar;

    .line 142
    .line 143
    .line 144
    const v4, 0x7f0a03dd

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->N(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    const v4, 0x7f0a174b

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 166
    .line 167
    .line 168
    const v4, 0x7f0a0424

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 178
    .line 179
    .line 180
    const v4, 0x7f0a1087

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->j(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 190
    .line 191
    .line 192
    const v4, 0x7f0a0e61

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->n:Landroid/view/View;

    .line 200
    .line 201
    const v4, 0x7f0a1248

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    check-cast v4, Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 211
    .line 212
    .line 213
    const v4, 0x7f0a1219

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 223
    .line 224
    .line 225
    const v4, 0x7f0a121a

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 235
    .line 236
    .line 237
    const v4, 0x7f0a04f1

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Landroid/widget/ImageView;

    .line 245
    .line 246
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 247
    .line 248
    .line 249
    const v4, 0x7f0a0504

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->t(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 259
    .line 260
    .line 261
    const v4, 0x7f0a1032

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Landroid/widget/ImageView;

    .line 269
    .line 270
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->v(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 271
    .line 272
    .line 273
    const v4, 0x7f0a103d

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, Landroid/widget/TextView;

    .line 281
    .line 282
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->x(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    move-object v10, v3

    .line 289
    move-object v3, p2

    .line 290
    move-object p2, v10

    .line 291
    goto :goto_1

    .line 292
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;

    .line 293
    .line 294
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentAllListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 298
    .line 299
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const v4, 0x7f0d0330

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    const v4, 0x7f0a177f

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Landroid/widget/TextView;

    .line 318
    .line 319
    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    .line 320
    .line 321
    const v4, 0x7f0a0e17

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->c:Landroid/view/View;

    .line 329
    .line 330
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    move-object v10, v2

    .line 334
    move-object v2, p2

    .line 335
    move-object p2, v3

    .line 336
    move-object v3, v10

    .line 337
    goto :goto_1

    .line 338
    :cond_2
    if-eq p4, v1, :cond_4

    .line 339
    .line 340
    if-eq p4, v0, :cond_3

    .line 341
    .line 342
    :goto_0
    move-object v3, v2

    .line 343
    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Lcom/join/mgps/adapter/CommentAllListAdapter$k;

    .line 356
    .line 357
    move-object v10, v3

    .line 358
    move-object v3, v2

    .line 359
    move-object v2, v10

    .line 360
    :goto_1
    if-nez p3, :cond_5

    .line 361
    .line 362
    return-object p2

    .line 363
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 364
    .line 365
    const/16 v4, 0x8

    .line 366
    .line 367
    if-eq p4, v1, :cond_15

    .line 368
    .line 369
    if-eq p4, v0, :cond_6

    .line 370
    .line 371
    goto/16 :goto_e

    .line 372
    .line 373
    :cond_6
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 374
    .line 375
    .line 376
    move-result-object p4

    .line 377
    const/high16 v0, -0x1000000

    .line 378
    .line 379
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    .line 383
    .line 384
    .line 385
    move-result p4

    .line 386
    if-lez p4, :cond_7

    .line 387
    .line 388
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 389
    .line 390
    .line 391
    move-result-object p4

    .line 392
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const v2, 0x7f0604f7

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    .line 407
    .line 408
    :cond_7
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    .line 409
    .line 410
    .line 411
    move-result p4

    .line 412
    if-lez p4, :cond_8

    .line 413
    .line 414
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 415
    .line 416
    .line 417
    move-result-object p4

    .line 418
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const v2, 0x7f0604f8

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    .line 433
    .line 434
    :cond_8
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->C(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/VipView;

    .line 435
    .line 436
    .line 437
    move-result-object p4

    .line 438
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    invoke-virtual {p4, v0, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p4

    .line 453
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->d:I

    .line 454
    .line 455
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p4

    .line 463
    const/4 v0, 0x0

    .line 464
    if-eqz p4, :cond_9

    .line 465
    .line 466
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->A(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 467
    .line 468
    .line 469
    move-result-object p4

    .line 470
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    iput p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_9
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->A(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 477
    .line 478
    .line 479
    move-result-object p4

    .line 480
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    :goto_2
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 484
    .line 485
    .line 486
    move-result-object p4

    .line 487
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 495
    .line 496
    .line 497
    move-result-object p4

    .line 498
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 506
    .line 507
    .line 508
    move-result p4

    .line 509
    if-eq p4, v1, :cond_b

    .line 510
    .line 511
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p4

    .line 515
    if-eqz p4, :cond_b

    .line 516
    .line 517
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p4

    .line 521
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result p4

    .line 525
    if-eqz p4, :cond_a

    .line 526
    .line 527
    goto :goto_3

    .line 528
    :cond_a
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 529
    .line 530
    .line 531
    move-result-object p4

    .line 532
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 533
    .line 534
    .line 535
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 536
    .line 537
    .line 538
    move-result-object p4

    .line 539
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    goto :goto_4

    .line 547
    :cond_b
    :goto_3
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 548
    .line 549
    .line 550
    move-result-object p4

    .line 551
    const/4 v2, 0x4

    .line 552
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 553
    .line 554
    .line 555
    :goto_4
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 556
    .line 557
    .line 558
    move-result-object p4

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 565
    .line 566
    .line 567
    move-result-wide v5

    .line 568
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v5, ""

    .line 572
    .line 573
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 584
    .line 585
    .line 586
    move-result-object p4

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    .line 608
    .line 609
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->w(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 610
    .line 611
    .line 612
    move-result-object p4

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    .line 619
    .line 620
    .line 621
    move-result-wide v6

    .line 622
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    .line 634
    .line 635
    new-instance p4, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v2, "000"

    .line 648
    .line 649
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object p4

    .line 656
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 657
    .line 658
    .line 659
    move-result-wide v6

    .line 660
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 661
    .line 662
    .line 663
    move-result-object p4

    .line 664
    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 672
    .line 673
    .line 674
    move-result p4

    .line 675
    if-eq p4, v1, :cond_d

    .line 676
    .line 677
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object p4

    .line 681
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 682
    .line 683
    .line 684
    move-result-object p4

    .line 685
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 686
    .line 687
    .line 688
    move-result p4

    .line 689
    const/4 v2, 0x0

    .line 690
    cmpl-float p4, p4, v2

    .line 691
    .line 692
    if-eqz p4, :cond_d

    .line 693
    .line 694
    iget-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->e:Ljava/lang/String;

    .line 695
    .line 696
    if-eqz p4, :cond_c

    .line 697
    .line 698
    const-string v2, "1"

    .line 699
    .line 700
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result p4

    .line 704
    if-nez p4, :cond_c

    .line 705
    .line 706
    goto :goto_5

    .line 707
    :cond_c
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 708
    .line 709
    .line 710
    move-result-object p4

    .line 711
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 712
    .line 713
    .line 714
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 715
    .line 716
    .line 717
    move-result-object p4

    .line 718
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    invoke-virtual {p4, v2}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 727
    .line 728
    .line 729
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 730
    .line 731
    .line 732
    move-result-object p4

    .line 733
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    float-to-double v6, v2

    .line 746
    invoke-virtual {p4, v6, v7}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 747
    .line 748
    .line 749
    goto :goto_6

    .line 750
    :cond_d
    :goto_5
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 751
    .line 752
    .line 753
    move-result-object p4

    .line 754
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 755
    .line 756
    .line 757
    :goto_6
    iget p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    .line 758
    .line 759
    if-ne p4, v1, :cond_f

    .line 760
    .line 761
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 762
    .line 763
    .line 764
    move-result p4

    .line 765
    if-nez p4, :cond_e

    .line 766
    .line 767
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 768
    .line 769
    .line 770
    move-result-object p4

    .line 771
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    .line 773
    .line 774
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 775
    .line 776
    .line 777
    move-result-object p4

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .line 782
    .line 783
    const-string v6, "\u542f\u52a8\u6e38\u620f "

    .line 784
    .line 785
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    const-string v6, " \u6b21"

    .line 796
    .line 797
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    .line 806
    .line 807
    goto :goto_7

    .line 808
    :cond_e
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 809
    .line 810
    .line 811
    move-result-object p4

    .line 812
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 813
    .line 814
    .line 815
    goto :goto_7

    .line 816
    :cond_f
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 817
    .line 818
    .line 819
    move-result-object p4

    .line 820
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 821
    .line 822
    .line 823
    :goto_7
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 824
    .line 825
    .line 826
    move-result-object p4

    .line 827
    invoke-virtual {p4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object p4

    .line 834
    if-eqz p4, :cond_10

    .line 835
    .line 836
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object p4

    .line 840
    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 841
    .line 842
    .line 843
    move-result-object p4

    .line 844
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    .line 845
    .line 846
    .line 847
    move-result-wide v6

    .line 848
    const-wide v8, 0x4051800000000000L    # 70.0

    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    cmpl-double p4, v6, v8

    .line 854
    .line 855
    if-lez p4, :cond_10

    .line 856
    .line 857
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->G(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 858
    .line 859
    .line 860
    move-result-object p4

    .line 861
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    .line 863
    .line 864
    goto :goto_8

    .line 865
    :cond_10
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->G(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 866
    .line 867
    .line 868
    move-result-object p4

    .line 869
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    .line 871
    .line 872
    :goto_8
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object p4

    .line 876
    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result p4

    .line 880
    if-eqz p4, :cond_11

    .line 881
    .line 882
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->E(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 883
    .line 884
    .line 885
    move-result-object p4

    .line 886
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    .line 888
    .line 889
    goto :goto_9

    .line 890
    :cond_11
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->E(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 891
    .line 892
    .line 893
    move-result-object p4

    .line 894
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    .line 896
    .line 897
    :goto_9
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->I(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 898
    .line 899
    .line 900
    move-result-object p4

    .line 901
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 909
    .line 910
    .line 911
    move-result p4

    .line 912
    if-ne p4, v1, :cond_12

    .line 913
    .line 914
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 915
    .line 916
    .line 917
    move-result-object p4

    .line 918
    const v0, 0x7f081329

    .line 919
    .line 920
    .line 921
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    .line 923
    .line 924
    goto :goto_a

    .line 925
    :cond_12
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 926
    .line 927
    .line 928
    move-result-object p4

    .line 929
    const v0, 0x7f081324

    .line 930
    .line 931
    .line 932
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 933
    .line 934
    .line 935
    :goto_a
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 936
    .line 937
    .line 938
    move-result p4

    .line 939
    if-ne p4, v1, :cond_13

    .line 940
    .line 941
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 942
    .line 943
    .line 944
    move-result-object p4

    .line 945
    const v0, 0x7f080511

    .line 946
    .line 947
    .line 948
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    .line 950
    .line 951
    goto :goto_b

    .line 952
    :cond_13
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 953
    .line 954
    .line 955
    move-result-object p4

    .line 956
    const v0, 0x7f08050f

    .line 957
    .line 958
    .line 959
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 960
    .line 961
    .line 962
    :goto_b
    iget-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Landroid/content/Context;

    .line 963
    .line 964
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    invoke-static {p4, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 973
    .line 974
    .line 975
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 976
    .line 977
    .line 978
    move-result-object p4

    .line 979
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter$a;

    .line 980
    .line 981
    invoke-direct {v0, p0, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    .line 986
    .line 987
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 988
    .line 989
    .line 990
    move-result-object p4

    .line 991
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-direct {p0, p4, v0, p3, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->m(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 996
    .line 997
    .line 998
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 999
    .line 1000
    .line 1001
    move-result-object p4

    .line 1002
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-direct {p0, p4, v0, p3, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->u(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p1

    .line 1013
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/LinearLayout;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    .line 1024
    .line 1025
    .line 1026
    move-result p1

    .line 1027
    if-eqz p1, :cond_14

    .line 1028
    .line 1029
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p1

    .line 1033
    const-string p4, "\u6536\u8d77"

    .line 1034
    .line 1035
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p1

    .line 1042
    const p4, 0x7fffffff

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_c

    .line 1049
    :cond_14
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p1

    .line 1053
    const-string p4, "\u67e5\u770b\u5168\u90e8"

    .line 1054
    .line 1055
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1059
    .line 1060
    .line 1061
    move-result-object p1

    .line 1062
    const/4 p4, 0x5

    .line 1063
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1064
    .line 1065
    .line 1066
    :goto_c
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p1

    .line 1070
    new-instance p4, Lcom/join/mgps/adapter/CommentAllListAdapter$b;

    .line 1071
    .line 1072
    invoke-direct {p4, p0, v3, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p1, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1076
    .line 1077
    .line 1078
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 1079
    .line 1080
    .line 1081
    move-result-object p1

    .line 1082
    new-instance p4, Lcom/join/mgps/adapter/CommentAllListAdapter$c;

    .line 1083
    .line 1084
    invoke-direct {p4, p0, v3, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_e

    .line 1091
    :cond_15
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_hot()I

    .line 1092
    .line 1093
    .line 1094
    move-result p1

    .line 1095
    if-ne p1, v1, :cond_16

    .line 1096
    .line 1097
    iget-object p1, v2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    .line 1098
    .line 1099
    const-string p3, "\u70ed\u95e8\u70b9\u8bc4"

    .line 1100
    .line 1101
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_d

    .line 1105
    :cond_16
    iget-object p1, v2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    .line 1106
    .line 1107
    const-string p3, "\u6700\u65b0\u70b9\u8bc4"

    .line 1108
    .line 1109
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    .line 1111
    .line 1112
    :goto_d
    iget-object p1, v2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->c:Landroid/view/View;

    .line 1113
    .line 1114
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    .line 1116
    .line 1117
    :goto_e
    return-object p2
.end method

.method private l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private m(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListAdapter$f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-wide/16 v3, 0x1

    .line 35
    .line 36
    add-long/2addr v0, v3

    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public d(Lcom/join/mgps/event/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setContent(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->c()D

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentBaseBean;->setStars_score(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public f()Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public g()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->d:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:I

    .line 70
    .line 71
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_1
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->values()[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h()Lcom/join/mgps/adapter/CommentAllListAdapter$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->h:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    const-wide/16 v4, 0x1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ne v2, v6, :cond_1

    .line 33
    .line 34
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 38
    .line 39
    .line 40
    sub-long/2addr v0, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long p2, v0, v4

    .line 44
    .line 45
    if-gez p2, :cond_0

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 48
    .line 49
    const-string p2, "0"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-eq p2, v6, :cond_2

    .line 77
    .line 78
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 79
    .line 80
    invoke-virtual {p2, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    add-long/2addr v0, v4

    .line 91
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public j(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v2, v5, :cond_1

    .line 23
    .line 24
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 28
    .line 29
    .line 30
    sub-long/2addr v0, v3

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long p2, v0, v2

    .line 34
    .line 35
    if-gez p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eq p2, v5, :cond_2

    .line 50
    .line 51
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 52
    .line 53
    invoke-virtual {p2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 57
    .line 58
    add-long/2addr v0, v3

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public k(Lcom/join/mgps/adapter/CommentAllListAdapter$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListenr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->h:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x1

    .line 28
    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-gez v4, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 37
    .line 38
    const-string v0, "0"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public p(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-gez v4, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
