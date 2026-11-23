.class public Lcom/papa91/arc/view/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;,
        Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;
    }
.end annotation


# static fields
.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mBarColor:I

.field private mBarStrokeColor:I

.field private mBarStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mHeight:I

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorBounceEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mIsFirstDraw:Z

.field private mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/papa91/arc/view/OnTabSelectListener;

.field private mRadiusArr:[F

.field private mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mRectMarginBottom:F

.field private mRectMarginLeft:F

.field private mRectMarginRight:F

.field private mRectMarginTop:F

.field private mSliderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:[Ljava/lang/String;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private shader:Landroid/graphics/LinearGradient;

.field private shaderColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    const-string p3, "#4f4740"

    .line 9
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#877564"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    filled-new-array {v1, v2, p3}, [I

    move-result-object p3

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->shaderColors:[I

    .line 10
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p3, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 11
    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 12
    iput-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 13
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 15
    new-instance p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 16
    new-instance p3, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    const/4 p3, 0x0

    .line 17
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 18
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 19
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->shape_slider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    .line 23
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    .line 26
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "-2"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x10100f5

    .line 29
    filled-new-array {v1}, [I

    move-result-object v1

    .line 30
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 31
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mHeight:I

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :goto_1
    new-instance p1, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;

    invoke-direct {p1, p0}, Lcom/papa91/arc/view/SegmentTabLayout$PointEvaluator;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    aput-object v1, p2, p3

    iget-object p3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 34
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/view/SegmentTabLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mListener:Lcom/papa91/arc/view/OnTabSelectListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object v1, v1, p1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/papa91/arc/view/SegmentTabLayout$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/SegmentTabLayout$1;-><init>(Lcom/papa91/arc/view/SegmentTabLayout;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    .line 40
    const/4 v2, -0x2

    .line 41
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    cmpl-float v2, v2, v3

    .line 48
    .line 49
    if-lez v2, :cond_1

    .line 50
    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 54
    .line 55
    float-to-int v2, v2

    .line 56
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {v1, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private calcIndicatorRect()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    float-to-int v2, v2

    .line 28
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    float-to-int v0, v0

    .line 31
    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    const/4 v3, 0x6

    .line 37
    const/4 v4, 0x5

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x1

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 50
    .line 51
    iget v10, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 52
    .line 53
    aput v10, v0, v8

    .line 54
    .line 55
    aput v10, v0, v9

    .line 56
    .line 57
    aput v1, v0, v7

    .line 58
    .line 59
    aput v1, v0, v6

    .line 60
    .line 61
    aput v1, v0, v5

    .line 62
    .line 63
    aput v1, v0, v4

    .line 64
    .line 65
    aput v10, v0, v3

    .line 66
    .line 67
    aput v10, v0, v2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget v10, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 71
    .line 72
    sub-int/2addr v10, v9

    .line 73
    if-ne v0, v10, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 76
    .line 77
    aput v1, v0, v8

    .line 78
    .line 79
    aput v1, v0, v9

    .line 80
    .line 81
    iget v8, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 82
    .line 83
    aput v8, v0, v7

    .line 84
    .line 85
    aput v8, v0, v6

    .line 86
    .line 87
    aput v8, v0, v5

    .line 88
    .line 89
    aput v8, v0, v4

    .line 90
    .line 91
    aput v1, v0, v3

    .line 92
    .line 93
    aput v1, v0, v2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 97
    .line 98
    aput v1, v0, v8

    .line 99
    .line 100
    aput v1, v0, v9

    .line 101
    .line 102
    aput v1, v0, v7

    .line 103
    .line 104
    aput v1, v0, v6

    .line 105
    .line 106
    aput v1, v0, v5

    .line 107
    .line 108
    aput v1, v0, v4

    .line 109
    .line 110
    aput v1, v0, v3

    .line 111
    .line 112
    aput v1, v0, v2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 116
    .line 117
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 118
    .line 119
    aput v1, v0, v8

    .line 120
    .line 121
    aput v1, v0, v9

    .line 122
    .line 123
    aput v1, v0, v7

    .line 124
    .line 125
    aput v1, v0, v6

    .line 126
    .line 127
    aput v1, v0, v5

    .line 128
    .line 129
    aput v1, v0, v4

    .line 130
    .line 131
    aput v1, v0, v3

    .line 132
    .line 133
    aput v1, v0, v2

    .line 134
    .line 135
    :goto_1
    return-void
.end method

.method private calcOffset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    iput v2, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 31
    .line 32
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 33
    .line 34
    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastTab:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    iput v2, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 54
    .line 55
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, v1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 66
    .line 67
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 68
    .line 69
    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 70
    .line 71
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 72
    .line 73
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 74
    .line 75
    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 76
    .line 77
    iget v3, v2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 78
    .line 79
    cmpl-float v1, v1, v3

    .line 80
    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 84
    .line 85
    iget v3, v2, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 86
    .line 87
    cmpl-float v1, v1, v3

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    const/4 v3, 0x2

    .line 98
    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    aput-object v0, v3, v4

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    aput-object v2, v3, v0

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentP:Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 121
    .line 122
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 123
    .line 124
    iget v0, v0, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 125
    .line 126
    const-wide/16 v2, 0x0

    .line 127
    .line 128
    cmpl-float v0, v1, v0

    .line 129
    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    iput-wide v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    iget-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 136
    .line 137
    cmp-long v4, v0, v2

    .line 138
    .line 139
    if-gtz v4, :cond_6

    .line 140
    .line 141
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    const-wide/16 v0, 0x1f4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    const-wide/16 v0, 0xfa

    .line 149
    .line 150
    :goto_2
    iput-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 151
    .line 152
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    iget-wide v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 155
    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    .line 163
    .line 164
    :goto_4
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_left:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginLeft:F

    .line 20
    .line 21
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_top:I

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    .line 28
    .line 29
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_right:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginRight:F

    .line 41
    .line 42
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_rect_margin_bottom:I

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    .line 49
    .line 50
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_color:I

    .line 51
    .line 52
    const-string v1, "#222831"

    .line 53
    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 63
    .line 64
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_height:I

    .line 65
    .line 66
    const/high16 v1, -0x40800000    # -1.0f

    .line 67
    .line 68
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 73
    .line 74
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_corner_radius:I

    .line 75
    .line 76
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 81
    .line 82
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_left:I

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 94
    .line 95
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_top:I

    .line 96
    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 102
    .line 103
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_right:I

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    int-to-float v2, v2

    .line 110
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 115
    .line 116
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_margin_bottom:I

    .line 117
    .line 118
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 123
    .line 124
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_anim_enable:I

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 132
    .line 133
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_bounce_enable:I

    .line 134
    .line 135
    const/4 v3, 0x1

    .line 136
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 141
    .line 142
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_indicator_anim_duration:I

    .line 143
    .line 144
    const/4 v4, -0x1

    .line 145
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    int-to-long v4, p2

    .line 150
    iput-wide v4, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 151
    .line 152
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_color:I

    .line 153
    .line 154
    iget v4, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 155
    .line 156
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    .line 161
    .line 162
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_width:I

    .line 163
    .line 164
    const/high16 v4, 0x3f800000    # 1.0f

    .line 165
    .line 166
    invoke-virtual {p0, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    int-to-float v5, v5

    .line 171
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 176
    .line 177
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_divider_padding:I

    .line 178
    .line 179
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 184
    .line 185
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textsize:I

    .line 186
    .line 187
    const/high16 v5, 0x41500000    # 13.0f

    .line 188
    .line 189
    invoke-virtual {p0, v5}, Lcom/papa91/arc/view/SegmentTabLayout;->sp2px(F)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    int-to-float v5, v5

    .line 194
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 199
    .line 200
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textSelectColor:I

    .line 201
    .line 202
    const-string v5, "#ffffff"

    .line 203
    .line 204
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 213
    .line 214
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textUnselectColor:I

    .line 215
    .line 216
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 217
    .line 218
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 223
    .line 224
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textBold:I

    .line 225
    .line 226
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 231
    .line 232
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_textAllCaps:I

    .line 233
    .line 234
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 239
    .line 240
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_space_equal:I

    .line 241
    .line 242
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    iput-boolean p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 247
    .line 248
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_width:I

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    int-to-float v1, v1

    .line 255
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 260
    .line 261
    sget v1, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_tab_padding:I

    .line 262
    .line 263
    iget-boolean v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 264
    .line 265
    if-nez v3, :cond_1

    .line 266
    .line 267
    cmpl-float p2, p2, v0

    .line 268
    .line 269
    if-lez p2, :cond_0

    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_0
    const/high16 p2, 0x41200000    # 10.0f

    .line 273
    .line 274
    invoke-virtual {p0, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    goto :goto_1

    .line 279
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    :goto_1
    int-to-float p2, p2

    .line 284
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 289
    .line 290
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_color:I

    .line 291
    .line 292
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarColor:I

    .line 297
    .line 298
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_stroke_color:I

    .line 299
    .line 300
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 301
    .line 302
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeColor:I

    .line 307
    .line 308
    sget p2, Lorg/ppsspp/ppsspp/R$styleable;->SegmentTabLayout_tl_bar_stroke_width:I

    .line 309
    .line 310
    invoke-virtual {p0, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    int-to-float v0, v0

    .line 315
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    iput p2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeWidth:F

    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method private updateTabSelection(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

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
    sget v5, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    .line 20
    .line 21
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 33
    .line 34
    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget v5, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 38
    .line 39
    if-ne v5, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
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
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_4

    .line 6
    .line 7
    iget-object v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 14
    .line 15
    float-to-int v4, v3

    .line 16
    float-to-int v3, v3

    .line 17
    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    sget v3, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 27
    .line 28
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 29
    .line 30
    if-ne v1, v3, :cond_0

    .line 31
    .line 32
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 41
    .line 42
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget v3, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    if-ne v3, v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    if-nez v3, :cond_3

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

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
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 2
    .line 3
    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 2
    .line 3
    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_tab_title:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    return-object p1
.end method

.method public isIndicatorAnimEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIndicatorBounceEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->layout_tab_segment:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->addTab(ILandroid/view/View;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v1, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->left:F

    .line 10
    .line 11
    float-to-int v1, v1

    .line 12
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    iget p1, p1, Lcom/papa91/arc/view/SegmentTabLayout$IndicatorPoint;->right:F

    .line 15
    .line 16
    float-to-int p1, p1

    .line 17
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_8

    .line 13
    .line 14
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 15
    .line 16
    if-gtz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    cmpg-float v1, v1, v2

    .line 32
    .line 33
    if-gez v1, :cond_1

    .line 34
    .line 35
    int-to-float v1, v8

    .line 36
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 37
    .line 38
    sub-float/2addr v1, v3

    .line 39
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 40
    .line 41
    sub-float/2addr v1, v3

    .line 42
    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 43
    .line 44
    :cond_1
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 45
    .line 46
    const/high16 v3, 0x40000000    # 2.0f

    .line 47
    .line 48
    cmpg-float v4, v1, v2

    .line 49
    .line 50
    if-ltz v4, :cond_2

    .line 51
    .line 52
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 53
    .line 54
    div-float/2addr v4, v3

    .line 55
    cmpl-float v1, v1, v4

    .line 56
    .line 57
    if-lez v1, :cond_3

    .line 58
    .line 59
    :cond_2
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 60
    .line 61
    div-float/2addr v1, v3

    .line 62
    iput v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 63
    .line 64
    :cond_3
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 65
    .line 66
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarColor:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 72
    .line 73
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeWidth:F

    .line 74
    .line 75
    float-to-int v3, v3

    .line 76
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mBarStrokeColor:I

    .line 77
    .line 78
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 82
    .line 83
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    int-to-float v3, v3

    .line 95
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginLeft:F

    .line 96
    .line 97
    add-float/2addr v3, v4

    .line 98
    float-to-int v3, v3

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    int-to-float v4, v4

    .line 104
    iget v5, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    .line 105
    .line 106
    add-float/2addr v4, v5

    .line 107
    float-to-int v4, v4

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    sub-int/2addr v5, v6

    .line 117
    int-to-float v5, v5

    .line 118
    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginRight:F

    .line 119
    .line 120
    sub-float/2addr v5, v6

    .line 121
    float-to-int v5, v5

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    sub-int/2addr v6, v10

    .line 131
    int-to-float v6, v6

    .line 132
    iget v10, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    .line 133
    .line 134
    sub-float/2addr v6, v10

    .line 135
    float-to-int v6, v6

    .line 136
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 140
    .line 141
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    .line 143
    .line 144
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 145
    .line 146
    const/4 v10, 0x0

    .line 147
    cmpl-float v2, v1, v2

    .line 148
    .line 149
    if-lez v2, :cond_4

    .line 150
    .line 151
    iget-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 157
    .line 158
    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    .line 162
    .line 163
    const/4 v11, 0x0

    .line 164
    :goto_0
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

    .line 165
    .line 166
    add-int/lit8 v1, v1, -0x1

    .line 167
    .line 168
    if-ge v11, v1, :cond_4

    .line 169
    .line 170
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    add-int/2addr v3, v9

    .line 183
    int-to-float v13, v3

    .line 184
    iget v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 185
    .line 186
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginTop:F

    .line 187
    .line 188
    add-float v14, v3, v4

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    add-int/2addr v3, v9

    .line 195
    int-to-float v15, v3

    .line 196
    int-to-float v3, v8

    .line 197
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 198
    .line 199
    sub-float v4, v3, v4

    .line 200
    .line 201
    iget v5, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRectMarginBottom:F

    .line 202
    .line 203
    sub-float v16, v4, v5

    .line 204
    .line 205
    iget-object v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->shaderColors:[I

    .line 206
    .line 207
    const/16 v18, 0x0

    .line 208
    .line 209
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 210
    .line 211
    move-object v12, v2

    .line 212
    move-object/from16 v17, v4

    .line 213
    .line 214
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 215
    .line 216
    .line 217
    iput-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->shader:Landroid/graphics/LinearGradient;

    .line 218
    .line 219
    iget-object v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 220
    .line 221
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    add-int/2addr v2, v9

    .line 229
    int-to-float v2, v2

    .line 230
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    add-int/2addr v1, v9

    .line 237
    int-to-float v5, v1

    .line 238
    iget v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

    .line 239
    .line 240
    sub-float v6, v3, v1

    .line 241
    .line 242
    iget-object v12, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 243
    .line 244
    move-object/from16 v1, p1

    .line 245
    .line 246
    move v3, v4

    .line 247
    move v4, v5

    .line 248
    move v5, v6

    .line 249
    move-object v6, v12

    .line 250
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v11, v11, 0x1

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_4
    iget-boolean v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 257
    .line 258
    if-eqz v1, :cond_5

    .line 259
    .line 260
    iget-boolean v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 261
    .line 262
    if-eqz v1, :cond_6

    .line 263
    .line 264
    iput-boolean v10, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIsFirstDraw:Z

    .line 265
    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcIndicatorRect()V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcIndicatorRect()V

    .line 271
    .line 272
    .line 273
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    if-eqz v1, :cond_7

    .line 276
    .line 277
    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 278
    .line 279
    float-to-int v2, v2

    .line 280
    add-int/2addr v2, v9

    .line 281
    iget-object v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 282
    .line 283
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 284
    .line 285
    add-int/2addr v2, v4

    .line 286
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 287
    .line 288
    float-to-int v5, v4

    .line 289
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 290
    .line 291
    add-int/2addr v9, v3

    .line 292
    int-to-float v3, v9

    .line 293
    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 294
    .line 295
    sub-float/2addr v3, v6

    .line 296
    float-to-int v3, v3

    .line 297
    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 298
    .line 299
    add-float/2addr v4, v6

    .line 300
    float-to-int v4, v4

    .line 301
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_7
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 311
    .line 312
    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 318
    .line 319
    iget v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 320
    .line 321
    float-to-int v2, v2

    .line 322
    add-int/2addr v2, v9

    .line 323
    iget-object v3, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 324
    .line 325
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 326
    .line 327
    add-int/2addr v2, v4

    .line 328
    iget v4, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 329
    .line 330
    float-to-int v5, v4

    .line 331
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 332
    .line 333
    add-int/2addr v9, v3

    .line 334
    int-to-float v3, v9

    .line 335
    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 336
    .line 337
    sub-float/2addr v3, v6

    .line 338
    float-to-int v3, v3

    .line 339
    iget v6, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

    .line 340
    .line 341
    add-float/2addr v4, v6

    .line 342
    float-to-int v4, v4

    .line 343
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 347
    .line 348
    iget-object v2, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mRadiusArr:[F

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 354
    .line 355
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    .line 357
    .line 358
    :cond_8
    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

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
    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

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
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

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
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 39
    .line 40
    .line 41
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
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

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
    iget v2, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

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

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 2
    .line 3
    iput v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mLastTab:I

    .line 4
    .line 5
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mCurrentTab:I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabSelection(I)V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->calcOffset()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerColor:I

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerPadding:F

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mDividerWidth:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorColor:I

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorHeight:F

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 21
    .line 22
    invoke-virtual {p0, p4}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mListener:Lcom/papa91/arc/view/OnTabSelectListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->notifyDataSetChanged()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Titles can not be NULL or EMPTY !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTabData([Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    return-void
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabPadding:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabWidth:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextAllCaps:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextBold:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextSelectColor:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextUnselectColor:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->sp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTextsize:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/view/SegmentTabLayout;->updateTabStyles()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showDot(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mTabCount:I

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
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->showMsg(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showMsg(II)V
    .locals 0

    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout;->mContext:Landroid/content/Context;

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
