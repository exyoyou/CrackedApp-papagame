.class public Lm/framework/ui/widget/slidingmenu/BodyContainer;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# static fields
.field private static final MENU_COVER_ALPHA:I = 0xe6

.field private static final MIN_FLING_VEL:I = 0x1f4


# instance fields
.field private downX:F

.field private maxVelocity:I

.field private menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x4f000000

    .line 9
    .line 10
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 11
    .line 12
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 18
    .line 19
    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 26
    .line 27
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 28
    .line 29
    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getShowMenuWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    cmpl-float v0, v0, v1

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    .line 38
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :cond_1
    const/high16 v0, 0x4f000000

    .line 44
    .line 45
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 53
    .line 54
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 55
    .line 56
    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 63
    .line 64
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 65
    .line 66
    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    cmpl-float v0, v0, v2

    .line 72
    .line 73
    if-lez v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 80
    .line 81
    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget v2, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    .line 86
    .line 87
    int-to-float v2, v2

    .line 88
    cmpl-float v0, v0, v2

    .line 89
    .line 90
    if-lez v0, :cond_3

    .line 91
    .line 92
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    mul-int/lit16 p1, p1, 0xe6

    .line 5
    .line 6
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 7
    .line 8
    invoke-virtual {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    div-int/2addr p1, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 19
    .line 20
    invoke-virtual {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuCover()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-eq v0, v3, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 28
    .line 29
    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 36
    .line 37
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 38
    .line 39
    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    cmpg-float v0, v0, v2

    .line 45
    .line 46
    if-gez v0, :cond_1

    .line 47
    .line 48
    return v1

    .line 49
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 55
    .line 56
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 63
    .line 64
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 65
    .line 66
    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-float v0, v0

    .line 71
    cmpg-float p1, p1, v0

    .line 72
    .line 73
    if-gez p1, :cond_3

    .line 74
    .line 75
    return v1

    .line 76
    :cond_3
    const/high16 p1, 0x4f000000

    .line 77
    .line 78
    iput p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 79
    .line 80
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 81
    .line 82
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    .line 83
    .line 84
    int-to-float v0, v0

    .line 85
    const/16 v1, 0x3e8

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 109
    .line 110
    sub-float v3, p1, v1

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    cmpl-float v3, v3, v4

    .line 114
    .line 115
    if-lez v3, :cond_4

    .line 116
    .line 117
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 118
    .line 119
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    add-float/2addr p1, v1

    .line 124
    cmpg-float p1, p1, v4

    .line 125
    .line 126
    if-gez p1, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 129
    .line 130
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 135
    .line 136
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    div-int/lit8 p1, p1, 0x2

    .line 141
    .line 142
    if-le v0, p1, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 145
    .line 146
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 151
    .line 152
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    .line 153
    .line 154
    .line 155
    :goto_0
    return v2
.end method
