.class public Lcom/join/mgps/adapter/GamePaiWeiAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$e;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mContext",
            "itemBeans",
            "onPaiWeiPlayListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->d:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

    .line 9
    .line 10
    move-object p2, p1

    .line 11
    check-cast p2, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    .line 26
    .line 27
    mul-int/lit8 p2, p2, 0x2a

    .line 28
    .line 29
    div-int/lit8 p2, p2, 0x64

    .line 30
    .line 31
    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    .line 32
    .line 33
    const/high16 p3, 0x41a00000    # 20.0f

    .line 34
    .line 35
    invoke-static {p1, p3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sub-int/2addr p2, p1

    .line 40
    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    .line 41
    .line 42
    mul-int/lit16 p2, p2, 0x271

    .line 43
    .line 44
    div-int/lit16 p2, p2, 0x9ba

    .line 45
    .line 46
    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->g:I

    .line 47
    .line 48
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GamePaiWeiAdapter;)Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->d:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f0d0467

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0a09ac

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->b(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a09a1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->f(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0a09a4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->j(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0a09aa

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->l(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 74
    .line 75
    .line 76
    const v1, 0x7f0a09a2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->n(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    const v1, 0x7f0a099d

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->p(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 98
    .line 99
    .line 100
    const v1, 0x7f0a099e

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 108
    .line 109
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->r(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 110
    .line 111
    .line 112
    const v1, 0x7f0a09a5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->t(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    const v1, 0x7f0a09a0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->v(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 134
    .line 135
    .line 136
    const v1, 0x7f0a09a8

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->x(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    const v1, 0x7f0a09a9

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->e(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 158
    .line 159
    .line 160
    const v1, 0x7f0a09a6

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Landroid/widget/ImageButton;

    .line 168
    .line 169
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->h(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;

    .line 181
    .line 182
    move-object v11, v0

    .line 183
    move-object v0, p2

    .line 184
    move-object p2, v11

    .line 185
    :goto_0
    iget-object p3, p3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;->a:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 186
    .line 187
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .line 189
    iget v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    .line 190
    .line 191
    iget v3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->g:I

    .line 192
    .line 193
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 197
    .line 198
    const/high16 v3, 0x40a00000    # 5.0f

    .line 199
    .line 200
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 205
    .line 206
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 207
    .line 208
    const/high16 v3, 0x41200000    # 10.0f

    .line 209
    .line 210
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 215
    .line 216
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 217
    .line 218
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 223
    .line 224
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->a(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/RelativeLayout;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    const/16 v1, 0x8

    .line 232
    .line 233
    const/4 v2, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 235
    .line 236
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const v4, 0x7f080ea4

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    .line 259
    .line 260
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const v4, 0x7f080ea7

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    .line 269
    .line 270
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const v4, 0x7f080ea8

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    .line 279
    .line 280
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const-string v4, "#AB8E55"

    .line 285
    .line 286
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_1
    const/4 v3, 0x1

    .line 296
    const-string v4, "#339CBB"

    .line 297
    .line 298
    const v5, 0x7f080ea3

    .line 299
    .line 300
    .line 301
    const v6, 0x7f080ea5

    .line 302
    .line 303
    .line 304
    if-ne p1, v3, :cond_2

    .line 305
    .line 306
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    const v7, 0x7f080ea9

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    .line 329
    .line 330
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    .line 336
    .line 337
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    .line 343
    .line 344
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :cond_2
    const/4 v3, 0x2

    .line 358
    if-ne p1, v3, :cond_3

    .line 359
    .line 360
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    const v7, 0x7f080ea6

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    .line 383
    .line 384
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    .line 390
    .line 391
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    .line 397
    .line 398
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    .line 408
    .line 409
    goto :goto_2

    .line 410
    :cond_3
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v8, ""

    .line 430
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    add-int/lit8 v9, p1, 0x1

    .line 435
    .line 436
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    if-gt v7, v3, :cond_4

    .line 448
    .line 449
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    const/high16 v10, 0x41c80000    # 25.0f

    .line 454
    .line 455
    invoke-virtual {v7, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 456
    .line 457
    .line 458
    goto :goto_1

    .line 459
    :cond_4
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    const/high16 v10, 0x41800000    # 16.0f

    .line 464
    .line 465
    invoke-virtual {v7, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    .line 467
    .line 468
    :goto_1
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    .line 496
    .line 497
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    .line 503
    .line 504
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    .line 514
    .line 515
    :goto_2
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->s(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getNickname()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .line 525
    .line 526
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getUse_time()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->w(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    if-eqz v3, :cond_5

    .line 553
    .line 554
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-nez v3, :cond_5

    .line 563
    .line 564
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    .line 570
    .line 571
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v3, "\u7b2c"

    .line 581
    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-static {v3}, Lcom/join/mgps/Util/u1;->a(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    .line 610
    .line 611
    goto :goto_3

    .line 612
    :cond_5
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    :goto_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getAvatar()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_6

    .line 628
    .line 629
    iget-object v1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Landroid/content/Context;

    .line 630
    .line 631
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getAvatar()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->q(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->M3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 640
    .line 641
    .line 642
    :cond_6
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-eqz v1, :cond_7

    .line 647
    .line 648
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-nez v1, :cond_7

    .line 657
    .line 658
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->m(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    iget-object v3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    .line 685
    .line 686
    :cond_7
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->g(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageButton;

    .line 687
    .line 688
    .line 689
    move-result-object p2

    .line 690
    new-instance v1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;

    .line 691
    .line 692
    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter;ILcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    .line 697
    .line 698
    return-object v0
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->b()Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

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
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->RANK:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method
