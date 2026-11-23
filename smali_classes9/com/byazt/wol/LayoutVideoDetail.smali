.class public Lcom/byazt/wol/LayoutVideoDetail;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x160,
        0x883
    }
.end annotation


# instance fields
.field public c:Landroid/graphics/drawable/Drawable;

.field public tt:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->c(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7e06fe95

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "#FF1A1A1A"

    .line 43
    .line 44
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "#00000000"

    .line 49
    .line 50
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    filled-new-array {v4, v5}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x10

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    const v5, 0x7e06ffb9

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 78
    .line 79
    .line 80
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/high16 v6, 0x41400000    # 12.0f

    .line 86
    .line 87
    invoke-static {p1, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    .line 100
    .line 101
    const-string v5, "#959595"

    .line 102
    .line 103
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    new-instance v7, Lcom/byazt/vfu/c;

    .line 108
    .line 109
    const/16 v8, 0x30

    .line 110
    .line 111
    invoke-direct {v7, v8}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v5}, Lcom/byazt/vfu/c;->c(I)V

    .line 115
    .line 116
    .line 117
    const/high16 v5, 0x40000000    # 2.0f

    .line 118
    .line 119
    invoke-static {p1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    int-to-float v5, v5

    .line 124
    invoke-virtual {v7, v5}, Lcom/byazt/vfu/c;->c(F)V

    .line 125
    .line 126
    .line 127
    const-string v9, "#FFFFFF"

    .line 128
    .line 129
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    new-instance v10, Lcom/byazt/vfu/c;

    .line 134
    .line 135
    invoke-direct {v10, v8}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v9}, Lcom/byazt/vfu/c;->c(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v5}, Lcom/byazt/vfu/c;->c(F)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    .line 145
    .line 146
    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 147
    .line 148
    .line 149
    const v8, 0x10100a7

    .line 150
    .line 151
    .line 152
    filled-new-array {v8}, [I

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v5, v8, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    new-array v8, v7, [I

    .line 161
    .line 162
    invoke-virtual {v5, v8, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    new-instance v4, Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    const v5, 0x7e06fefa

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 180
    .line 181
    .line 182
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 183
    .line 184
    invoke-direct {v5, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 195
    .line 196
    .line 197
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 198
    .line 199
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 203
    .line 204
    .line 205
    const/high16 v8, 0x41880000    # 17.0f

    .line 206
    .line 207
    const/4 v9, 0x2

    .line 208
    invoke-virtual {v4, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    sget v8, Lcom/byazt/lbn/tt$c;->uj:I

    .line 215
    .line 216
    invoke-virtual {v4, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    new-instance v4, Landroid/widget/LinearLayout;

    .line 223
    .line 224
    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    const v10, 0x7e06ff55

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    .line 231
    .line 232
    .line 233
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 234
    .line 235
    invoke-direct {v10, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v8, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    const p1, 0x7e06ff86

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 259
    .line 260
    .line 261
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    invoke-direct {p1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    const/16 p1, 0x11

    .line 270
    .line 271
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/wol/LayoutVideoDetail;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wol/LayoutVideoDetail;->c:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7e06ff02

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->tt(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    new-instance v0, Lcom/byazt/wol/uj;

    invoke-direct {v0}, Lcom/byazt/wol/uj;-><init>()V

    invoke-virtual {v0, p1}, Lcom/byazt/wol/uj;->inflate(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->ve(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->uj(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->n(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->sp(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->x(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    new-instance v0, Lcom/byazt/lbn/TTViewStub;

    new-instance v1, Lcom/byazt/wol/a;

    invoke-direct {v1}, Lcom/byazt/wol/a;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    const v1, 0x7e06ff20

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 16
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    new-instance v0, Lcom/byazt/lbn/TTViewStub;

    new-instance v1, Lcom/byazt/wol/tt;

    invoke-direct {v1}, Lcom/byazt/wol/tt;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    const v1, 0x7e06fed2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 20
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->i(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/byazt/wol/LayoutVideoDetail;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byazt/wol/LayoutVideoDetail;->tt:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p1, v0, v1}, Lcom/byazt/vfu/n;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/wol/LayoutVideoDetail;->c(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method private da(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 1
    const-string v0, "#959595"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/byazt/vfu/c;

    .line 8
    .line 9
    const/16 v2, 0x30

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/byazt/vfu/c;->c(I)V

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    invoke-virtual {v1, p1}, Lcom/byazt/vfu/c;->c(F)V

    .line 25
    .line 26
    .line 27
    const-string v0, "#FFFFFF"

    .line 28
    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-instance v3, Lcom/byazt/vfu/c;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Lcom/byazt/vfu/c;->c(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Lcom/byazt/vfu/c;->c(F)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 47
    .line 48
    .line 49
    const v0, 0x10100a7

    .line 50
    .line 51
    .line 52
    filled-new-array {v0}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [I

    .line 61
    .line 62
    invoke-virtual {p1, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method

.method private i(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7e06ff2f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    const/high16 v1, 0x42300000    # 44.0f

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x2

    .line 28
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/high16 v2, 0x41400000    # 12.0f

    .line 32
    .line 33
    invoke-static {p1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->da(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail;->da(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "\u5173\u95ed"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method private n(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7e06ff12

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    const p1, 0x800033

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    .line 30
    .line 31
    const/high16 v2, 0x41880000    # 17.0f

    .line 32
    .line 33
    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "#FF1A1A1A"

    .line 56
    .line 57
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v4, "#00000000"

    .line 62
    .line 63
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    filled-new-array {v3, v4}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    sget v2, Lcom/byazt/lbn/tt$c;->uj:I

    .line 78
    .line 79
    sget v3, Lcom/byazt/lbn/tt$c;->n:I

    .line 80
    .line 81
    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .line 86
    const/4 v2, -0x2

    .line 87
    invoke-direct {v1, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x9

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    .line 94
    .line 95
    const/16 p1, 0x14

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    .line 99
    .line 100
    const/16 p1, 0xa

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method private sp(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance v0, Lcom/byazt/ff/TTProgressBar;

    .line 2
    .line 3
    const v1, 0x103001f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, p1, v2, v1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 12
    .line 13
    .line 14
    const v3, 0x7e06fec5

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    .line 22
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 23
    .line 24
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, -0x1

    .line 29
    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x64

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "#A5FFFFFF"

    .line 54
    .line 55
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    .line 61
    .line 62
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-static {p1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    int-to-float v3, v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 70
    .line 71
    .line 72
    const/high16 v4, 0x40000000    # 2.0f

    .line 73
    .line 74
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v2, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v6, "#FFFFFFFF"

    .line 87
    .line 88
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 99
    .line 100
    .line 101
    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    .line 102
    .line 103
    const/4 v7, 0x3

    .line 104
    const/4 v8, 0x1

    .line 105
    invoke-direct {v6, v4, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 109
    .line 110
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v9, "#FFF85959"

    .line 114
    .line 115
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    .line 129
    .line 130
    invoke-direct {p1, v4, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 131
    .line 132
    .line 133
    new-array v3, v7, [Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    aput-object v2, v3, v1

    .line 136
    .line 137
    aput-object v6, v3, v8

    .line 138
    .line 139
    const/4 v1, 0x2

    .line 140
    aput-object p1, v3, v1

    .line 141
    .line 142
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 143
    .line 144
    invoke-direct {p1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, p1}, Lcom/byazt/vfu/sp;->c(Landroid/widget/ProgressBar;Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    const/16 p1, 0x8

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/wol/LayoutVideoDetail;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wol/LayoutVideoDetail;->tt:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private tt(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7e06ffbc    # 4.48611E37f

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 7
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7e06fec3

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 9
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    new-instance v2, Lcom/byazt/ff/TTProgressBar;

    invoke-direct {v2, p1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    const v3, 0x7e06feaf

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 13
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42700000    # 60.0f

    .line 14
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    .line 15
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance v3, Lcom/byazt/wol/LayoutVideoDetail$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/byazt/wol/LayoutVideoDetail$1;-><init>(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V

    const-string v5, "tt_normalscreen_loading"

    const/16 v6, 0x140

    invoke-static {p1, v5, v3, v6}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 19
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v5, 0x7e06ff6f

    .line 20
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 21
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0x8

    .line 26
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7e06fea2

    .line 28
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 29
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    new-instance v5, Lcom/byazt/wol/LayoutVideoDetail$2;

    invoke-direct {v5, p0, p1, v4}, Lcom/byazt/wol/LayoutVideoDetail$2;-><init>(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Landroid/widget/ImageView;)V

    const-string v8, "tt_refreshing_video_textpage_pressed"

    invoke-static {p1, v8, v5, v6}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 32
    new-instance v5, Lcom/byazt/wol/LayoutVideoDetail$3;

    invoke-direct {v5, p0, p1, v4}, Lcom/byazt/wol/LayoutVideoDetail$3;-><init>(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Landroid/widget/ImageView;)V

    const-string v8, "tt_refreshing_video_textpage_normal"

    invoke-static {p1, v8, v5, v6}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 33
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p1, 0x7e06ff94

    .line 34
    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    .line 35
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u8bd5"

    .line 36
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x999999

    .line 37
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private uj(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7e06fede

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "#26000000"

    .line 18
    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    .line 25
    .line 26
    const/high16 v2, 0x40800000    # 4.0f

    .line 27
    .line 28
    invoke-static {p1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "#959595"

    .line 45
    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Lcom/byazt/vfu/c;

    .line 51
    .line 52
    const/16 v3, 0x30

    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/byazt/vfu/c;->c(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v1, 0x40000000    # 2.0f

    .line 61
    .line 62
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    invoke-virtual {v2, v1}, Lcom/byazt/vfu/c;->c(F)V

    .line 68
    .line 69
    .line 70
    const-string v4, "#FFFFFF"

    .line 71
    .line 72
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    new-instance v5, Lcom/byazt/vfu/c;

    .line 77
    .line 78
    invoke-direct {v5, v3}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Lcom/byazt/vfu/c;->c(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v1}, Lcom/byazt/vfu/c;->c(F)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 88
    .line 89
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 90
    .line 91
    .line 92
    const v3, 0x10100a7

    .line 93
    .line 94
    .line 95
    filled-new-array {v3}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    new-array v3, v2, [I

    .line 104
    .line 105
    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    const/high16 v1, 0x41f00000    # 30.0f

    .line 112
    .line 113
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    .line 119
    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    const/16 v1, 0x15

    .line 123
    .line 124
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    .line 126
    .line 127
    const/16 v1, 0xb

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    .line 131
    .line 132
    const/high16 v1, 0x40e00000    # 7.0f

    .line 133
    .line 134
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {v3, v2, p1, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method private ve(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7e06feaa

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v2, -0x2

    .line 15
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0xd

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "tt_new_play_video"

    .line 32
    .line 33
    const/16 v2, 0x140

    .line 34
    .line 35
    invoke-static {p1, v1, v0, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method private x(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v2, 0x7e06feac

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    const/high16 v3, 0x42200000    # 40.0f

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, -0x1

    .line 23
    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xc

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0xb

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x10

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x8

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const v7, 0x7e06ff63

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 62
    .line 63
    .line 64
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v8, -0x2

    .line 67
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    const/high16 v9, 0x41800000    # 16.0f

    .line 71
    .line 72
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/high16 v11, 0x41400000    # 12.0f

    .line 77
    .line 78
    invoke-static {v0, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    invoke-virtual {v7, v10, v3, v12, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    const-string v7, "00:00"

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    const/4 v10, 0x2

    .line 97
    const/high16 v12, 0x41200000    # 10.0f

    .line 98
    .line 99
    invoke-virtual {v6, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Landroid/widget/SeekBar;

    .line 106
    .line 107
    invoke-direct {v6, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    const v13, 0x7e06ffa0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v13}, Landroid/view/View;->setId(I)V

    .line 114
    .line 115
    .line 116
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .line 118
    const/high16 v14, 0x3f800000    # 1.0f

    .line 119
    .line 120
    invoke-direct {v13, v3, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    .line 122
    .line 123
    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 124
    .line 125
    invoke-virtual {v6, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    const/16 v2, 0x64

    .line 133
    .line 134
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 135
    .line 136
    .line 137
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    const/16 v15, 0x1d

    .line 140
    .line 141
    const/high16 v5, 0x40800000    # 4.0f

    .line 142
    .line 143
    if-lt v2, v15, :cond_0

    .line 144
    .line 145
    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-static {v6, v2}, Lcom/aggmoread/sdk/z/a/t/i;->a(Landroid/widget/SeekBar;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-static {v6, v2}, Lg2/a;->a(Landroid/widget/SeekBar;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 165
    .line 166
    :goto_0
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 170
    .line 171
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v5, "#A5FFFFFF"

    .line 175
    .line 176
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    int-to-float v5, v5

    .line 188
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 189
    .line 190
    .line 191
    const/high16 v13, 0x40000000    # 2.0f

    .line 192
    .line 193
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    invoke-virtual {v2, v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 198
    .line 199
    .line 200
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 201
    .line 202
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v16, "#FFFFFFFF"

    .line 206
    .line 207
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    invoke-virtual {v15, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 218
    .line 219
    .line 220
    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    .line 221
    .line 222
    const/4 v9, 0x3

    .line 223
    const/4 v11, 0x1

    .line 224
    invoke-direct {v12, v15, v9, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 225
    .line 226
    .line 227
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 228
    .line 229
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v17, "#FFF85959"

    .line 233
    .line 234
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v15, v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    .line 248
    .line 249
    invoke-direct {v5, v15, v9, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 250
    .line 251
    .line 252
    new-array v8, v9, [Landroid/graphics/drawable/Drawable;

    .line 253
    .line 254
    aput-object v2, v8, v3

    .line 255
    .line 256
    aput-object v12, v8, v11

    .line 257
    .line 258
    aput-object v5, v8, v10

    .line 259
    .line 260
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    .line 261
    .line 262
    invoke-direct {v2, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 269
    .line 270
    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    .line 271
    .line 272
    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-direct {v2, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    .line 288
    .line 289
    const/high16 v8, 0x41700000    # 15.0f

    .line 290
    .line 291
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 299
    .line 300
    .line 301
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 302
    .line 303
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v0, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    int-to-float v8, v8

    .line 311
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    .line 313
    .line 314
    const-string v8, "#1E000000"

    .line 315
    .line 316
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    .line 331
    .line 332
    new-instance v2, Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    const v5, 0x7e06fed4

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 341
    .line 342
    .line 343
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    .line 345
    const/4 v6, -0x2

    .line 346
    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 347
    .line 348
    .line 349
    const/high16 v6, 0x41400000    # 12.0f

    .line 350
    .line 351
    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    const/high16 v8, 0x41800000    # 16.0f

    .line 356
    .line 357
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    invoke-virtual {v5, v6, v3, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    .line 372
    .line 373
    const/high16 v5, 0x41200000    # 10.0f

    .line 374
    .line 375
    invoke-virtual {v2, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    new-instance v2, Landroid/widget/ImageView;

    .line 382
    .line 383
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    const v5, 0x7e06fecd

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 390
    .line 391
    .line 392
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    .line 394
    const/4 v6, -0x2

    .line 395
    invoke-direct {v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    .line 397
    .line 398
    const/high16 v4, 0x41800000    # 16.0f

    .line 399
    .line 400
    invoke-static {v0, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    invoke-static {v0, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    invoke-virtual {v5, v6, v3, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    .line 414
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    .line 418
    .line 419
    const/16 v3, 0x8

    .line 420
    .line 421
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    const-string v3, "tt_enlarge_video"

    .line 425
    .line 426
    const/16 v4, 0x140

    .line 427
    .line 428
    invoke-static {v0, v3, v2, v4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    .line 433
    .line 434
    return-object v1
.end method
