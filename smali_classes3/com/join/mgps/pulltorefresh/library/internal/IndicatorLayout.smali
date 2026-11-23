.class public Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final g:I = 0x96


# instance fields
.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/widget/ImageView;

.field private final e:Landroid/view/animation/Animation;

.field private final f:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mode"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f080af9

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f070be0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout$a;->a:[I

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    aget p2, v1, p2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    if-eq p2, v1, :cond_0

    .line 58
    .line 59
    const p2, 0x7f080afb

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    const p2, 0x7f0100a1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0100a7

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const p2, 0x7f080afa

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 79
    .line 80
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 81
    .line 82
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-float v2, v2

    .line 95
    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    .line 97
    div-float/2addr v2, v3

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    int-to-float v0, v0

    .line 103
    div-float/2addr v0, v3

    .line 104
    const/high16 v3, 0x43340000    # 180.0f

    .line 105
    .line 106
    invoke-virtual {p2, v3, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f01009f

    .line 115
    .line 116
    .line 117
    const v0, 0x7f0100a5

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 125
    .line 126
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 139
    .line 140
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance p2, Landroid/view/animation/RotateAnimation;

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    const/high16 v6, 0x3f000000    # 0.5f

    .line 150
    .line 151
    const/4 v7, 0x1

    .line 152
    const/high16 v8, 0x3f000000    # 0.5f

    .line 153
    .line 154
    move-object v2, p2

    .line 155
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 156
    .line 157
    .line 158
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    .line 162
    .line 163
    const-wide/16 v2, 0x96

    .line 164
    .line 165
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 169
    .line 170
    .line 171
    new-instance p2, Landroid/view/animation/RotateAnimation;

    .line 172
    .line 173
    const/high16 v5, -0x3ccc0000    # -180.0f

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v9, 0x1

    .line 177
    const/high16 v10, 0x3f000000    # 0.5f

    .line 178
    .line 179
    move-object v4, p2

    .line 180
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 181
    .line 182
    .line 183
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->f:Landroid/view/animation/Animation;

    .line 184
    .line 185
    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 192
    .line 193
    .line 194
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 10
    .line 11
    if-ne v3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    :goto_1
    return v1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->f:Landroid/view/animation/Animation;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
