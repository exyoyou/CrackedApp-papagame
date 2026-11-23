.class public Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;,
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;
    }
.end annotation


# static fields
.field private static final o:I = 0x18

.field private static final p:I = 0x10

.field private static final q:I = 0xc


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
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->n:Ljava/util/List;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->b:I

    .line 12
    new-instance p3, Lcom/join/mgps/customview/o0;

    invoke-direct {p3, p1}, Lcom/join/mgps/customview/o0;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

    .line 13
    filled-new-array {p2}, [I

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/join/mgps/customview/o0;->e([I)V

    const/4 p1, -0x1

    const/4 p2, -0x2

    .line 14
    invoke-virtual {p0, p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h(Landroid/content/Context;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f0a0949

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const v7, 0x7f0a0864

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-boolean v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Z

    .line 76
    .line 77
    if-eqz v8, :cond_0

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 86
    .line 87
    const/high16 v9, 0x3f800000    # 1.0f

    .line 88
    .line 89
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    .line 91
    iget v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:I

    .line 92
    .line 93
    invoke-virtual {v8, v9, v3, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->n:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Lcom/join/mgps/dto/GameDetailOneTouchSkill;

    .line 103
    .line 104
    invoke-virtual {v8}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getPic()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v8, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v8, :cond_1

    .line 123
    .line 124
    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

    .line 128
    .line 129
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Lcom/facebook/drawee/generic/a;

    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/facebook/drawee/generic/a;->p()Lcom/facebook/drawee/generic/RoundingParams;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 142
    .line 143
    .line 144
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroidx/viewpager/widget/ViewPager;

    .line 145
    .line 146
    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-ne v4, v8, :cond_2

    .line 151
    .line 152
    const/4 v8, 0x1

    .line 153
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/facebook/drawee/generic/a;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/facebook/drawee/generic/a;->p()Lcom/facebook/drawee/generic/RoundingParams;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-string v6, "#FFB38534"

    .line 170
    .line 171
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/RoundingParams;->p(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const v8, 0x7f07133c

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    int-to-float v6, v6

    .line 190
    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/RoundingParams;->q(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Lcom/facebook/drawee/generic/a;

    .line 198
    .line 199
    invoke-virtual {v6, v5}, Lcom/facebook/drawee/generic/a;->X(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 200
    .line 201
    .line 202
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    return-void
.end method

.method private k(II)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

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
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->b:I

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
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarginWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:I

    .line 2
    .line 3
    return v0
.end method

.method protected h(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i(Landroid/content/Context;)Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0a0864

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    const/16 v2, 0x11

    .line 33
    .line 34
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v3, 0x7f0711b5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const v4, 0x7f0712aa

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    const p1, 0x7f080a53

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    const p1, 0x7f0a0949

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v3, 0x7f071353

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const v3, 0x7f071331

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    .line 126
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x4

    .line 132
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public i(Landroid/content/Context;)Landroid/widget/ImageView;
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

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroidx/viewpager/widget/ViewPager;

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
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k(II)V

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g:Landroid/util/SparseArray;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->d:I

    .line 4
    .line 5
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->n:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
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
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Z

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:I

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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:Lcom/join/mgps/customview/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
