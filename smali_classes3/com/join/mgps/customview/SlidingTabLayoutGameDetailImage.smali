.class public Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;,
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;
    }
.end annotation


# static fields
.field private static final n:I = 0x18

.field private static final o:I = 0x10

.field private static final p:I = 0xc


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroidx/viewpager/widget/ViewPager;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final i:Lcom/join/mgps/customview/o0;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/join/mgps/dto/GamedetialModleFourBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Ljava/util/List;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/o0;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/o0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 12
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v4, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-ge v5, v6, :cond_8

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v0, v6}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g(Landroid/content/Context;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const v7, 0x7f0a0949

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const v8, 0x7f0a0864

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    .line 57
    const v9, 0x7f0a10d8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Landroid/widget/TextView;

    .line 65
    .line 66
    const v10, 0x7f0a125a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-boolean v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Z

    .line 84
    .line 85
    if-eqz v11, :cond_0

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 94
    .line 95
    const/high16 v12, 0x3f800000    # 1.0f

    .line 96
    .line 97
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 98
    .line 99
    iget v12, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:I

    .line 100
    .line 101
    invoke-virtual {v11, v12, v4, v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j()Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    const-string v12, " ]"

    .line 109
    .line 110
    const-string v13, "\n[ "

    .line 111
    .line 112
    const-string v14, ""

    .line 113
    .line 114
    if-eqz v11, :cond_3

    .line 115
    .line 116
    if-nez v5, :cond_1

    .line 117
    .line 118
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 119
    .line 120
    invoke-virtual {v11}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    const/16 v10, 0x8

    .line 128
    .line 129
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    move-object v10, v14

    .line 133
    move-object v14, v11

    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i()Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-eqz v10, :cond_2

    .line 141
    .line 142
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 143
    .line 144
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    add-int/lit8 v11, v5, -0x1

    .line 149
    .line 150
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    check-cast v10, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 155
    .line 156
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getTitle()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getCount()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_2
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 192
    .line 193
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    if-eqz v10, :cond_5

    .line 198
    .line 199
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 200
    .line 201
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    add-int/lit8 v11, v5, -0x1

    .line 206
    .line 207
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    if-eqz v10, :cond_5

    .line 212
    .line 213
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 214
    .line 215
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 224
    .line 225
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    if-eqz v10, :cond_5

    .line 230
    .line 231
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 232
    .line 233
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 242
    .line 243
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i()Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_4

    .line 257
    .line 258
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 259
    .line 260
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    check-cast v10, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 269
    .line 270
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    new-instance v11, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getTitle()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getCount()I

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    goto :goto_2

    .line 304
    :cond_4
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 305
    .line 306
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    if-eqz v10, :cond_5

    .line 311
    .line 312
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 313
    .line 314
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    if-eqz v10, :cond_5

    .line 323
    .line 324
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 325
    .line 326
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 335
    .line 336
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    if-eqz v10, :cond_5

    .line 341
    .line 342
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 343
    .line 344
    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 353
    .line 354
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    :goto_1
    move-object/from16 v16, v14

    .line 363
    .line 364
    move-object v14, v10

    .line 365
    move-object/from16 v10, v16

    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_5
    move-object v10, v14

    .line 369
    :goto_2
    invoke-static {v8, v14}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g:Landroid/util/SparseArray;

    .line 379
    .line 380
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    check-cast v8, Ljava/lang/String;

    .line 385
    .line 386
    if-eqz v8, :cond_6

    .line 387
    .line 388
    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    :cond_6
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 392
    .line 393
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 394
    .line 395
    .line 396
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 397
    .line 398
    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-ne v5, v8, :cond_7

    .line 403
    .line 404
    const/4 v8, 0x1

    .line 405
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_8
    return-void
.end method

.method private l(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabIndex",
            "positionOffset"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-ltz p1, :cond_3

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, p2

    .line 27
    if-gtz p1, :cond_1

    .line 28
    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b:I

    .line 32
    .line 33
    sub-int/2addr v0, p1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected g(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d085b

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getMarginWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public h(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/facebook/drawee/generic/a;

    .line 11
    .line 12
    const v1, 0x7f080caf

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/facebook/drawee/generic/a;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/a;->C(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/facebook/drawee/generic/a;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/facebook/drawee/generic/a;->X(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "desc"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomTabColorizer(Lcom/join/mgps/customview/SlidingTabLayout$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabColorizer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/o0;->d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutResId",
            "textViewId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d:I

    .line 4
    .line 5
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->m:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distributeEvenly"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMarginWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marginWidth"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/o0;->e([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
