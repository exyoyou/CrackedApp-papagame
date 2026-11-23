.class public Lcom/join/mgps/customview/ViewPagerCompat;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "checkV",
            "dx",
            "x",
            "y"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v7, p3

    .line 3
    .line 4
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    move-object v8, v0

    .line 9
    check-cast v8, Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v11, 0x1

    .line 24
    sub-int/2addr v1, v11

    .line 25
    move v12, v1

    .line 26
    :goto_0
    if-ltz v12, :cond_1

    .line 27
    .line 28
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    add-int v1, p4, v9

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lt v1, v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ge v1, v3, :cond_0

    .line 45
    .line 46
    add-int v3, p5, v10

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-lt v3, v4, :cond_0

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v3, v4, :cond_0

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    sub-int v5, v1, v5

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int v6, v3, v1

    .line 72
    .line 73
    move-object v1, p0

    .line 74
    move v3, v4

    .line 75
    move/from16 v4, p3

    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/customview/ViewPagerCompat;->canScroll(Landroid/view/View;ZIII)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    return v11

    .line 84
    :cond_0
    add-int/lit8 v12, v12, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    if-eqz p2, :cond_3

    .line 88
    .line 89
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    neg-int v1, v7

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    return v0

    .line 99
    :cond_2
    neg-int v1, v7

    .line 100
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    return v0

    .line 105
    :cond_3
    const/4 v0, 0x0

    .line 106
    return v0
.end method
