.class public Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;
    }
.end annotation


# static fields
.field private static final STYLE_BLOCK:I = 0x2

.field private static final STYLE_NORMAL:I = 0x0

.field private static final STYLE_TRIANGLE:I = 0x1

.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPositionOffset:F

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mHeight:I

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorGravity:I

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorStyle:I

.field private mIndicatorWidth:F

.field private mIndicatorWidthEqualTitle:Z

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScrollX:I

.field private mListener:Ls4/b;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSnapOnTabClick:Z

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabRect:Landroid/graphics/Rect;

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mUnderlineColor:I

.field private mUnderlineGravity:I

.field private mUnderlineHeight:F

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private margin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    .line 6
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    .line 10
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 15
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 16
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout_height"

    .line 22
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-2"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x10100f5

    .line 25
    filled-new-array {v0}, [I

    move-result-object v0

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 27
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mHeight:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mSnapOnTabClick:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)Ls4/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mListener:Ls4/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private addTab(ILjava/lang/String;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "title",
            "tabView"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1a36

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v1, -0x2

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$1;-><init>(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    iget-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-direct {p2, v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    cmpl-float v1, v1, v3

    .line 57
    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    .line 62
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 63
    .line 64
    float-to-int v1, v1

    .line 65
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v2, 0x7f071305

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p2, v0, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {v0, p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private calcIndicatorRect()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 20
    .line 21
    const v4, 0x7f0a1a36

    .line 22
    .line 23
    .line 24
    const/high16 v5, 0x40000000    # 2.0f

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    .line 44
    .line 45
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-float v6, v2, v1

    .line 60
    .line 61
    sub-float/2addr v6, v3

    .line 62
    div-float/2addr v6, v5

    .line 63
    iput v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 64
    .line 65
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 66
    .line 67
    iget v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 68
    .line 69
    add-int/lit8 v6, v6, -0x1

    .line 70
    .line 71
    if-ge v3, v6, :cond_1

    .line 72
    .line 73
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    int-to-float v6, v6

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    int-to-float v7, v7

    .line 91
    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 92
    .line 93
    sub-float v9, v6, v1

    .line 94
    .line 95
    mul-float v9, v9, v8

    .line 96
    .line 97
    add-float/2addr v1, v9

    .line 98
    sub-float v9, v7, v2

    .line 99
    .line 100
    mul-float v8, v8, v9

    .line 101
    .line 102
    add-float/2addr v2, v8

    .line 103
    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 104
    .line 105
    if-nez v8, :cond_1

    .line 106
    .line 107
    iget-boolean v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 108
    .line 109
    if-eqz v8, :cond_1

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 118
    .line 119
    iget v8, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 120
    .line 121
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    .line 123
    .line 124
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sub-float/2addr v7, v6

    .line 139
    sub-float/2addr v7, v3

    .line 140
    div-float/2addr v7, v5

    .line 141
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 142
    .line 143
    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 144
    .line 145
    sub-float/2addr v7, v3

    .line 146
    mul-float v4, v4, v7

    .line 147
    .line 148
    add-float/2addr v3, v4

    .line 149
    iput v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 150
    .line 151
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 152
    .line 153
    float-to-int v4, v1

    .line 154
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 155
    .line 156
    float-to-int v6, v2

    .line 157
    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 160
    .line 161
    if-nez v7, :cond_2

    .line 162
    .line 163
    iget-boolean v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 164
    .line 165
    if-eqz v7, :cond_2

    .line 166
    .line 167
    iget v7, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->margin:F

    .line 168
    .line 169
    add-float/2addr v1, v7

    .line 170
    const/high16 v8, 0x3f800000    # 1.0f

    .line 171
    .line 172
    sub-float/2addr v1, v8

    .line 173
    float-to-int v1, v1

    .line 174
    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 175
    .line 176
    sub-float/2addr v2, v7

    .line 177
    sub-float/2addr v2, v8

    .line 178
    float-to-int v1, v2

    .line 179
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    .line 182
    .line 183
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 184
    .line 185
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 186
    .line 187
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    cmpg-float v1, v1, v2

    .line 191
    .line 192
    if-gez v1, :cond_3

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    int-to-float v1, v1

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    int-to-float v2, v2

    .line 205
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 206
    .line 207
    sub-float/2addr v2, v3

    .line 208
    div-float/2addr v2, v5

    .line 209
    add-float/2addr v1, v2

    .line 210
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 211
    .line 212
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 213
    .line 214
    add-int/lit8 v3, v3, -0x1

    .line 215
    .line 216
    if-ge v2, v3, :cond_4

    .line 217
    .line 218
    iget-object v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 219
    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    div-int/lit8 v0, v0, 0x2

    .line 233
    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    div-int/lit8 v2, v2, 0x2

    .line 239
    .line 240
    add-int/2addr v0, v2

    .line 241
    int-to-float v0, v0

    .line 242
    mul-float v3, v3, v0

    .line 243
    .line 244
    add-float/2addr v1, v3

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 246
    .line 247
    float-to-int v1, v1

    .line 248
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 249
    .line 250
    int-to-float v1, v1

    .line 251
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 252
    .line 253
    add-float/2addr v1, v2

    .line 254
    float-to-int v1, v1

    .line 255
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 256
    .line 257
    :goto_0
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
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

    .line 1
    sget-object v0, Lcom/flyco/tablayout/R$styleable;->SlidingTabLayout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 p2, 0xb

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 15
    .line 16
    const-string v1, "#ffffff"

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne p2, v2, :cond_0

    .line 20
    .line 21
    const-string p2, "#4B6A87"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v1

    .line 25
    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 35
    .line 36
    iget p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne p2, v3, :cond_1

    .line 40
    .line 41
    const/high16 p2, 0x40800000    # 4.0f

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    if-ne p2, v2, :cond_2

    .line 45
    .line 46
    const/4 p2, -0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 p2, 0x2

    .line 49
    :goto_1
    int-to-float p2, p2

    .line 50
    :goto_2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    int-to-float p2, p2

    .line 55
    const/4 v4, 0x6

    .line 56
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 61
    .line 62
    iget p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 63
    .line 64
    const/high16 v4, -0x40800000    # -1.0f

    .line 65
    .line 66
    if-ne p2, v3, :cond_3

    .line 67
    .line 68
    const/high16 p2, 0x41200000    # 10.0f

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/high16 p2, -0x40800000    # -1.0f

    .line 72
    .line 73
    :goto_3
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    int-to-float p2, p2

    .line 78
    const/16 v5, 0xc

    .line 79
    .line 80
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 85
    .line 86
    iget p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-ne p2, v2, :cond_4

    .line 90
    .line 91
    const/high16 p2, -0x40800000    # -1.0f

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    const/4 p2, 0x0

    .line 95
    :goto_4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    int-to-float p2, p2

    .line 100
    const/4 v6, 0x4

    .line 101
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 106
    .line 107
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    int-to-float p2, p2

    .line 112
    const/16 v6, 0x8

    .line 113
    .line 114
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 119
    .line 120
    iget p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 121
    .line 122
    const/high16 v6, 0x40e00000    # 7.0f

    .line 123
    .line 124
    if-ne p2, v2, :cond_5

    .line 125
    .line 126
    const/high16 p2, 0x40e00000    # 7.0f

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    const/4 p2, 0x0

    .line 130
    :goto_5
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    int-to-float p2, p2

    .line 135
    const/16 v7, 0xa

    .line 136
    .line 137
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 142
    .line 143
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    int-to-float p2, p2

    .line 148
    const/16 v7, 0x9

    .line 149
    .line 150
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 155
    .line 156
    iget p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 157
    .line 158
    if-ne p2, v2, :cond_6

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_6
    const/4 v6, 0x0

    .line 162
    :goto_6
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    int-to-float p2, p2

    .line 167
    const/4 v6, 0x7

    .line 168
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 173
    .line 174
    const/4 p2, 0x5

    .line 175
    const/16 v6, 0x50

    .line 176
    .line 177
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    .line 182
    .line 183
    const/16 p2, 0xd

    .line 184
    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 190
    .line 191
    const/16 p2, 0x16

    .line 192
    .line 193
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    .line 202
    .line 203
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    int-to-float p2, p2

    .line 208
    const/16 v7, 0x18

    .line 209
    .line 210
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 215
    .line 216
    const/16 p2, 0x17

    .line 217
    .line 218
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    .line 223
    .line 224
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 233
    .line 234
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    int-to-float p2, p2

    .line 239
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    .line 244
    .line 245
    const/high16 p2, 0x41400000    # 12.0f

    .line 246
    .line 247
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    int-to-float p2, p2

    .line 252
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 257
    .line 258
    const/high16 p2, 0x41600000    # 14.0f

    .line 259
    .line 260
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->sp2px(F)I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    int-to-float p2, p2

    .line 265
    const/16 v2, 0x15

    .line 266
    .line 267
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 272
    .line 273
    const/16 p2, 0x13

    .line 274
    .line 275
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 284
    .line 285
    const-string p2, "#848484"

    .line 286
    .line 287
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    const/16 v1, 0x14

    .line 292
    .line 293
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 298
    .line 299
    const/16 p2, 0x12

    .line 300
    .line 301
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 306
    .line 307
    const/16 p2, 0x11

    .line 308
    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    .line 314
    .line 315
    const/16 p2, 0xf

    .line 316
    .line 317
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    iput-boolean p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 322
    .line 323
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    int-to-float p2, p2

    .line 328
    const/16 v0, 0x10

    .line 329
    .line 330
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 335
    .line 336
    iget-boolean v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 337
    .line 338
    if-nez v0, :cond_8

    .line 339
    .line 340
    cmpl-float p2, p2, v5

    .line 341
    .line 342
    if-lez p2, :cond_7

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_7
    const/high16 p2, 0x41a00000    # 20.0f

    .line 346
    .line 347
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    goto :goto_8

    .line 352
    :cond_8
    :goto_7
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    :goto_8
    int-to-float p2, p2

    .line 357
    const/16 v0, 0xe

    .line 358
    .line 359
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 364
    .line 365
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method private scrollToCurrentTab()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    mul-float v0, v0, v1

    .line 22
    .line 23
    float-to-int v0, v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v1, v0

    .line 37
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 38
    .line 39
    if-gtz v2, :cond_1

    .line 40
    .line 41
    if-lez v0, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    div-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v0, v2

    .line 54
    sub-int/2addr v1, v0

    .line 55
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->calcIndicatorRect()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabRect:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    sub-int/2addr v2, v0

    .line 65
    div-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    add-int/2addr v1, v2

    .line 68
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mLastScrollX:I

    .line 69
    .line 70
    if-eq v1, v0, :cond_3

    .line 71
    .line 72
    iput v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mLastScrollX:I

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method private updateTabSelection(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_5

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_1
    const v5, 0x7f0a1a36

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 36
    .line 37
    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 41
    .line 42
    if-ne v5, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz v4, :cond_3

    .line 52
    .line 53
    const v3, 0x7f0812a6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const v3, 0x7f08129d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_6

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f0a1a36

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 25
    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 37
    .line 38
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 42
    .line 43
    float-to-int v4, v3

    .line 44
    float-to-int v3, v3

    .line 45
    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    if-ne v3, v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    if-nez v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_2
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 91
    .line 92
    if-ne v3, v1, :cond_4

    .line 93
    .line 94
    const v3, 0x7f0812a6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const v3, 0x7f08129d

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    return-void
.end method


# virtual methods
.method public addNewTab(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f0d0628

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/CharSequence;

    .line 42
    .line 43
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, v1, p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->addTab(ILjava/lang/String;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    :goto_1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method protected dp2px(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method

.method public getCurrentTab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getMsgView(I)Lcom/flyco/tablayout/widget/MsgView;
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
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0a1434

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    .line 21
    .line 22
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 2
    .line 3
    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f0a1a36

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    return-object p1
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public hideMsg(I)V
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
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0a1434

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 29
    .line 30
    if-ge v0, v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const v2, 0x7f0d0628

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    .line 63
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {p0, v0, v2, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->addTab(ILjava/lang/String;Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const/4 v9, 0x0

    .line 28
    cmpl-float v1, v0, v9

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 47
    .line 48
    sub-int/2addr v0, v8

    .line 49
    if-ge v10, v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v7

    .line 62
    int-to-float v1, v1

    .line 63
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v7

    .line 70
    int-to-float v3, v0

    .line 71
    int-to-float v0, v6

    .line 72
    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 73
    .line 74
    sub-float v4, v0, v4

    .line 75
    .line 76
    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    move-object v0, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v10, v10, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 86
    .line 87
    const/16 v10, 0x50

    .line 88
    .line 89
    cmpl-float v0, v0, v9

    .line 90
    .line 91
    if-lez v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    .line 94
    .line 95
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    .line 99
    .line 100
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    .line 101
    .line 102
    if-ne v0, v10, :cond_2

    .line 103
    .line 104
    int-to-float v1, v7

    .line 105
    int-to-float v4, v6

    .line 106
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 107
    .line 108
    sub-float v2, v4, v0

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v0, v7

    .line 117
    int-to-float v3, v0

    .line 118
    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    .line 119
    .line 120
    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    int-to-float v1, v7

    .line 126
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    add-int/2addr v0, v7

    .line 134
    int-to-float v3, v0

    .line 135
    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 136
    .line 137
    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mRectPaint:Landroid/graphics/Paint;

    .line 138
    .line 139
    move-object v0, p1

    .line 140
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->calcIndicatorRect()V

    .line 144
    .line 145
    .line 146
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 147
    .line 148
    const/4 v1, 0x2

    .line 149
    if-ne v0, v8, :cond_4

    .line 150
    .line 151
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 152
    .line 153
    cmpl-float v0, v0, v9

    .line 154
    .line 155
    if-lez v0, :cond_a

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    .line 158
    .line 159
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 172
    .line 173
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 174
    .line 175
    add-int/2addr v2, v7

    .line 176
    int-to-float v2, v2

    .line 177
    int-to-float v3, v6

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 184
    .line 185
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    div-int/2addr v4, v1

    .line 188
    add-int/2addr v4, v7

    .line 189
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 190
    .line 191
    div-int/2addr v2, v1

    .line 192
    add-int/2addr v4, v2

    .line 193
    int-to-float v1, v4

    .line 194
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 195
    .line 196
    sub-float v2, v3, v2

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 204
    .line 205
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 206
    .line 207
    add-int/2addr v7, v1

    .line 208
    int-to-float v1, v7

    .line 209
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePath:Landroid/graphics/Path;

    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTrianglePaint:Landroid/graphics/Paint;

    .line 220
    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_4
    if-ne v0, v1, :cond_8

    .line 227
    .line 228
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 229
    .line 230
    cmpg-float v0, v0, v9

    .line 231
    .line 232
    if-gez v0, :cond_5

    .line 233
    .line 234
    int-to-float v0, v6

    .line 235
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 236
    .line 237
    sub-float/2addr v0, v1

    .line 238
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 239
    .line 240
    sub-float/2addr v0, v1

    .line 241
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 242
    .line 243
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 244
    .line 245
    cmpl-float v1, v0, v9

    .line 246
    .line 247
    if-lez v1, :cond_a

    .line 248
    .line 249
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 250
    .line 251
    const/high16 v2, 0x40000000    # 2.0f

    .line 252
    .line 253
    cmpg-float v3, v1, v9

    .line 254
    .line 255
    if-ltz v3, :cond_6

    .line 256
    .line 257
    div-float v3, v0, v2

    .line 258
    .line 259
    cmpl-float v1, v1, v3

    .line 260
    .line 261
    if-lez v1, :cond_7

    .line 262
    .line 263
    :cond_6
    div-float/2addr v0, v2

    .line 264
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 265
    .line 266
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 267
    .line 268
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 274
    .line 275
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 276
    .line 277
    float-to-int v1, v1

    .line 278
    add-int/2addr v1, v7

    .line 279
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 280
    .line 281
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 282
    .line 283
    add-int/2addr v1, v3

    .line 284
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 285
    .line 286
    float-to-int v4, v3

    .line 287
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 288
    .line 289
    add-int/2addr v7, v2

    .line 290
    int-to-float v2, v7

    .line 291
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 292
    .line 293
    sub-float/2addr v2, v5

    .line 294
    float-to-int v2, v2

    .line 295
    iget v5, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 296
    .line 297
    add-float/2addr v3, v5

    .line 298
    float-to-int v3, v3

    .line 299
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 303
    .line 304
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_8
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 316
    .line 317
    cmpl-float v0, v0, v9

    .line 318
    .line 319
    if-lez v0, :cond_a

    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 322
    .line 323
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 326
    .line 327
    .line 328
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    .line 329
    .line 330
    if-ne v0, v10, :cond_9

    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 333
    .line 334
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 335
    .line 336
    float-to-int v1, v1

    .line 337
    add-int/2addr v1, v7

    .line 338
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 339
    .line 340
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 341
    .line 342
    add-int/2addr v1, v3

    .line 343
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 344
    .line 345
    float-to-int v3, v3

    .line 346
    sub-int v3, v6, v3

    .line 347
    .line 348
    iget v4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 349
    .line 350
    float-to-int v5, v4

    .line 351
    sub-int/2addr v3, v5

    .line 352
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 353
    .line 354
    add-int/2addr v7, v2

    .line 355
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 356
    .line 357
    float-to-int v2, v2

    .line 358
    sub-int/2addr v7, v2

    .line 359
    float-to-int v2, v4

    .line 360
    sub-int/2addr v6, v2

    .line 361
    invoke-virtual {v0, v1, v3, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 362
    .line 363
    .line 364
    goto :goto_2

    .line 365
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 366
    .line 367
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 368
    .line 369
    float-to-int v1, v1

    .line 370
    add-int/2addr v1, v7

    .line 371
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorRect:Landroid/graphics/Rect;

    .line 372
    .line 373
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 374
    .line 375
    add-int/2addr v1, v3

    .line 376
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 377
    .line 378
    float-to-int v4, v3

    .line 379
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 380
    .line 381
    add-int/2addr v7, v2

    .line 382
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 383
    .line 384
    float-to-int v2, v2

    .line 385
    sub-int/2addr v7, v2

    .line 386
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 387
    .line 388
    float-to-int v2, v2

    .line 389
    float-to-int v3, v3

    .line 390
    add-int/2addr v2, v3

    .line 391
    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    .line 393
    .line 394
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 395
    .line 396
    iget v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 402
    .line 403
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 404
    .line 405
    .line 406
    :cond_a
    :goto_3
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentPositionOffset:F

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->scrollToCurrentTab()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabSelection(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "mCurrentTab"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 14
    .line 15
    const-string v0, "instanceState"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabSelection(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->scrollToCurrentTab()V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "instanceState"

    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "mCurrentTab"

    .line 16
    .line 17
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTab"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentTab",
            "smoothScroll"
        }
    .end annotation

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mCurrentTab:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerPadding"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerPadding:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerWidth"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mDividerWidth:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorCornerRadius"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorCornerRadius:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorGravity"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorGravity:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorHeight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorHeight:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "indicatorMarginLeft",
            "indicatorMarginTop",
            "indicatorMarginRight",
            "indicatorMarginBottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginLeft:F

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginTop:F

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginRight:F

    .line 21
    .line 22
    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorMarginBottom:F

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorStyle"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorStyle:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorWidth"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidth:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorWidthEqualTitle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorWidthEqualTitle"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mIndicatorWidthEqualTitle:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "leftPadding",
            "bottomPadding"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0a1434

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    const v1, 0x7f0a1a36

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-float/2addr v1, v2

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    .line 73
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    cmpl-float v4, v3, v4

    .line 77
    .line 78
    if-ltz v4, :cond_1

    .line 79
    .line 80
    const/high16 v4, 0x40000000    # 2.0f

    .line 81
    .line 82
    div-float/2addr v3, v4

    .line 83
    div-float/2addr p1, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget v3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 86
    .line 87
    :goto_0
    add-float/2addr v3, p1

    .line 88
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    int-to-float p1, p1

    .line 93
    add-float/2addr v3, p1

    .line 94
    float-to-int p1, v3

    .line 95
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 96
    .line 97
    iget p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mHeight:I

    .line 98
    .line 99
    if-lez p1, :cond_2

    .line 100
    .line 101
    int-to-float p1, p1

    .line 102
    sub-float/2addr p1, v1

    .line 103
    float-to-int p1, p1

    .line 104
    div-int/lit8 p1, p1, 0x2

    .line 105
    .line 106
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    sub-int/2addr p1, p2

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 p1, 0x0

    .line 113
    :goto_1
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void
.end method

.method public setOnTabSelectListener(Ls4/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mListener:Ls4/b;

    .line 2
    .line 3
    return-void
.end method

.method public setSnapOnTabClick(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snapOnTabClick"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mSnapOnTabClick:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTabPadding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabPadding"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabPadding:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSpaceEqual"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabSpaceEqual:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabWidth"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabWidth:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAllCaps"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextAllCaps:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextBold(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textBold"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextBold:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSelectColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextSelectColor:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUnselectColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextUnselectColor:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextsize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textsize"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->sp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTextsize:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlineColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlineGravity"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineGravity:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlineHeight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mUnderlineHeight:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vp"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vp",
            "titles"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 9
    array-length v0, p2

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTitles:Ljava/util/ArrayList;

    .line 12
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles length must be the same as the page count !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vp",
            "titles",
            "fa",
            "fragments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager/widget/ViewPager;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 19
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 21
    new-instance v0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;-><init>(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->notifyDataSetChanged()V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showDot(I)V
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
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->showMsg(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showMsg(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "num"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabCount:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a1434

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {v0, p2}, Lt4/b;->b(Lcom/flyco/tablayout/widget/MsgView;I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    .line 51
    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setMsgMargin(IFF)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mInitSetMap:Landroid/util/SparseArray;

    .line 58
    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method protected sp2px(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 12
    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method
