.class abstract Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 12
    .line 13
    int-to-float v2, v0

    .line 14
    mul-float p1, p1, v2

    .line 15
    .line 16
    float-to-int p1, p1

    .line 17
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 2
    .line 3
    return v0
.end method

.method protected layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int/2addr v4, v6

    .line 42
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    .line 44
    sub-int/2addr v4, v6

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    add-int/2addr v6, v7

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    sub-int/2addr v6, v7

    .line 59
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    .line 61
    sub-int/2addr v6, v7

    .line 62
    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    add-int/2addr p1, v3

    .line 90
    iput p1, v5, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    sub-int/2addr p1, v2

    .line 99
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    :cond_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget v1, v1, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;->gravity:I

    .line 104
    .line 105
    invoke-static {v1}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->resolveGravity(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    move-object v6, p1

    .line 118
    move v7, p3

    .line 119
    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 129
    .line 130
    sub-int/2addr v2, p3

    .line 131
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    sub-int/2addr v4, p3

    .line 136
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 137
    .line 138
    .line 139
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    sub-int/2addr p1, p2

    .line 146
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 147
    .line 148
    return-void

    .line 149
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 154
    .line 155
    return-void
.end method

.method public onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v3, -0x2

    .line 12
    if-ne v1, v3, :cond_5

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p0, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    move-object v4, p2

    .line 38
    invoke-static {p2, v5}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 48
    .line 49
    .line 50
    return v5

    .line 51
    :cond_1
    move-object v4, p2

    .line 52
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    sub-int/2addr v6, v7

    .line 67
    invoke-virtual {p0, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/2addr v6, v3

    .line 72
    if-ne v1, v2, :cond_4

    .line 73
    .line 74
    const/high16 v1, 0x40000000    # 2.0f

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/high16 v1, -0x80000000

    .line 78
    .line 79
    :goto_0
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    move-object v6, p1

    .line 84
    move-object v7, p2

    .line 85
    move v8, p3

    .line 86
    move/from16 v9, p4

    .line 87
    .line 88
    move/from16 v11, p6

    .line 89
    .line 90
    invoke-virtual/range {v6 .. v11}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 91
    .line 92
    .line 93
    return v5

    .line 94
    :cond_5
    const/4 v1, 0x0

    .line 95
    return v1
.end method

.method public final setOverlayTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    return-void
.end method
