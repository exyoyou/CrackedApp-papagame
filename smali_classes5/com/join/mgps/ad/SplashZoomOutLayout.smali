.class public Lcom/join/mgps/ad/SplashZoomOutLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "m"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 7
    .line 8
    .line 9
    const/high16 v1, 0x41200000    # 10.0f

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 19
    .line 20
    .line 21
    iput p2, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->d:I

    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->i:I

    .line 32
    .line 33
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/join/mgps/ad/SplashZoomOutLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->e:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/ad/SplashZoomOutLayout$a;-><init>(Lcom/join/mgps/ad/SplashZoomOutLayout;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_5

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v3, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->b:F

    .line 22
    .line 23
    add-float/2addr v0, v3

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->c:F

    .line 29
    .line 30
    add-float/2addr v3, v4

    .line 31
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->g:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    sub-float v5, v0, v5

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-float/2addr v4, v5

    .line 44
    iput v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->g:F

    .line 45
    .line 46
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->h:F

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sub-float v5, v3, v5

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    add-float/2addr v4, v5

    .line 59
    iput v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->h:F

    .line 60
    .line 61
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->d:I

    .line 62
    .line 63
    int-to-float v5, v4

    .line 64
    cmpg-float v5, v0, v5

    .line 65
    .line 66
    if-gez v5, :cond_1

    .line 67
    .line 68
    int-to-float v0, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget v5, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->e:I

    .line 71
    .line 72
    int-to-float v6, v5

    .line 73
    cmpl-float v6, v0, v6

    .line 74
    .line 75
    if-lez v6, :cond_2

    .line 76
    .line 77
    int-to-float v0, v5

    .line 78
    :cond_2
    :goto_0
    int-to-float v5, v4

    .line 79
    cmpg-float v5, v3, v5

    .line 80
    .line 81
    if-gez v5, :cond_3

    .line 82
    .line 83
    :goto_1
    int-to-float v3, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->f:I

    .line 86
    .line 87
    int-to-float v5, v4

    .line 88
    cmpl-float v5, v3, v5

    .line 89
    .line 90
    if-lez v5, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->b:F

    .line 118
    .line 119
    add-float/2addr v0, v4

    .line 120
    const/high16 v4, 0x40000000    # 2.0f

    .line 121
    .line 122
    mul-float v0, v0, v4

    .line 123
    .line 124
    iget v4, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->e:I

    .line 125
    .line 126
    int-to-float v5, v4

    .line 127
    cmpl-float v0, v0, v5

    .line 128
    .line 129
    if-lez v0, :cond_6

    .line 130
    .line 131
    int-to-float v0, v4

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    iget v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->d:I

    .line 134
    .line 135
    int-to-float v0, v0

    .line 136
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->g:F

    .line 152
    .line 153
    iget v1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->i:I

    .line 154
    .line 155
    int-to-float v2, v1

    .line 156
    cmpl-float v0, v0, v2

    .line 157
    .line 158
    if-gtz v0, :cond_7

    .line 159
    .line 160
    iget v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->h:F

    .line 161
    .line 162
    int-to-float v1, v1

    .line 163
    cmpl-float v0, v0, v1

    .line 164
    .line 165
    if-lez v0, :cond_9

    .line 166
    .line 167
    :cond_7
    return v3

    .line 168
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    sub-float/2addr v0, v1

    .line 177
    iput v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->b:F

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    sub-float/2addr v0, v1

    .line 188
    iput v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->c:F

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->g:F

    .line 192
    .line 193
    iput v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout;->h:F

    .line 194
    .line 195
    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    return p1
.end method
