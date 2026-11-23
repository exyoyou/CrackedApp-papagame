.class public Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullingLock:Z

.field private refreshTime:J

.field private requesting:Z

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopRequest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canPull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->isPullReady()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method private getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x3

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method private performRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 9
    .line 10
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onRequest()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 3
    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onReversed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private stopRequest()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_5

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->canPull()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    :cond_1
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    iget v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    .line 39
    .line 40
    sub-float v4, v0, v4

    .line 41
    .line 42
    const/high16 v5, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float/2addr v4, v5

    .line 45
    add-float/2addr v1, v4

    .line 46
    float-to-int v1, v1

    .line 47
    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 48
    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    neg-int v1, v1

    .line 52
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget v3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 64
    .line 65
    mul-int/lit8 v3, v3, 0x64

    .line 66
    .line 67
    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 68
    .line 69
    div-int/2addr v3, v2

    .line 70
    invoke-virtual {v1, v3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iput v3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 79
    .line 80
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_0
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 87
    .line 88
    if-nez v0, :cond_8

    .line 89
    .line 90
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 91
    .line 92
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 93
    .line 94
    if-le v0, v1, :cond_7

    .line 95
    .line 96
    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 97
    .line 98
    neg-int v0, v1

    .line 99
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->scrollTo(II)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    if-eqz v0, :cond_a

    .line 118
    .line 119
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 131
    .line 132
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 133
    .line 134
    neg-int v0, v0

    .line 135
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->scrollTo(II)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    .line 144
    .line 145
    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    return p1
.end method

.method public lockPulling()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    .line 3
    .line 4
    return-void
.end method

.method public performPulling(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 2
    .line 3
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    neg-int v0, v0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    .line 3
    .line 4
    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 24
    .line 25
    .line 26
    const/16 v4, 0xb

    .line 27
    .line 28
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    .line 30
    .line 31
    const/16 v5, 0xa

    .line 32
    .line 33
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 34
    .line 35
    .line 36
    iget-object v6, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getHeaderView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 58
    .line 59
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    .line 61
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 62
    .line 63
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 76
    .line 77
    neg-int v0, v0

    .line 78
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 79
    .line 80
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public stopPulling()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    .line 15
    .line 16
    sub-long/2addr v2, v0

    .line 17
    invoke-virtual {p0, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
