.class public Lcom/join/mgps/customview/guideview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final i:I = 0x1e

.field static final synthetic j:Z


# instance fields
.field private b:Lcom/join/mgps/customview/guideview/Configuration;

.field private c:Lcom/join/mgps/customview/guideview/MaskView;

.field private d:[Lcom/join/mgps/customview/guideview/b;

.field private e:Z

.field private f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

.field private g:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

.field h:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/guideview/d;->e:Z

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/customview/guideview/d;->h:F

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/guideview/d;)Lcom/join/mgps/customview/guideview/GuideBuilder$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/guideview/d;->f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/guideview/d;)Lcom/join/mgps/customview/guideview/MaskView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/guideview/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/guideview/d;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/join/mgps/customview/guideview/MaskView;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "overlay"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/view/ViewGroup;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/guideview/MaskView;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/guideview/MaskView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 23
    .line 24
    iget v2, v2, Lcom/join/mgps/customview/guideview/Configuration;->n:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->f(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 34
    .line 35
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->i:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->e(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 41
    .line 42
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->l:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->g(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 48
    .line 49
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->c:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->j(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 55
    .line 56
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->d:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->l(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 62
    .line 63
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->e:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->n(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 69
    .line 70
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->f:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->m(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 76
    .line 77
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->g:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->k(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 83
    .line 84
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->m:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->h(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 90
    .line 91
    iget-boolean v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->p:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/guideview/MaskView;->i(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    new-array v2, v2, [I

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 106
    .line 107
    .line 108
    aget p2, v2, v1

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    aget v2, v2, v3

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 p2, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 117
    .line 118
    iget-object v4, v3, Lcom/join/mgps/customview/guideview/Configuration;->b:Landroid/view/View;

    .line 119
    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    iget-object v3, v3, Lcom/join/mgps/customview/guideview/Configuration;->t:Landroid/graphics/Rect;

    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/guideview/MaskView;->o(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-static {v4, p2, v2}, Lcom/join/mgps/customview/guideview/a;->b(Landroid/view/View;II)Landroid/graphics/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/guideview/MaskView;->o(Landroid/graphics/Rect;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget v3, v3, Lcom/join/mgps/customview/guideview/Configuration;->k:I

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_4

    .line 151
    .line 152
    invoke-static {v3, p2, v2}, Lcom/join/mgps/customview/guideview/a;->b(Landroid/view/View;II)Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/guideview/MaskView;->o(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 160
    .line 161
    iget-boolean p2, p2, Lcom/join/mgps/customview/guideview/Configuration;->h:Z

    .line 162
    .line 163
    if-eqz p2, :cond_5

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    iget-object p2, p0, Lcom/join/mgps/customview/guideview/d;->d:[Lcom/join/mgps/customview/guideview/b;

    .line 173
    .line 174
    array-length v2, p2

    .line 175
    :goto_4
    if-ge v1, v2, :cond_6

    .line 176
    .line 177
    aget-object v3, p2, v1

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-static {v4, v3}, Lcom/join/mgps/customview/guideview/a;->a(Landroid/view/LayoutInflater;Lcom/join/mgps/customview/guideview/b;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    return-object v0
.end method

.method private g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->d:[Lcom/join/mgps/customview/guideview/b;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->g:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/guideview/d;->g()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 16
    .line 17
    iget v1, v1, Lcom/join/mgps/customview/guideview/Configuration;->s:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 29
    .line 30
    iget v2, v2, Lcom/join/mgps/customview/guideview/Configuration;->s:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/join/mgps/customview/guideview/d$b;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/guideview/d$b;-><init>(Lcom/join/mgps/customview/guideview/d;Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/join/mgps/customview/guideview/GuideBuilder$b;->onDismiss()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/guideview/d;->g()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method h(Lcom/join/mgps/customview/guideview/GuideBuilder$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/d;->f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 2
    .line 3
    return-void
.end method

.method i([Lcom/join/mgps/customview/guideview/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "components"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/d;->d:[Lcom/join/mgps/customview/guideview/b;

    .line 2
    .line 3
    return-void
.end method

.method j(Lcom/join/mgps/customview/guideview/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lcom/join/mgps/customview/guideview/GuideBuilder$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSlideListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/guideview/d;->g:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 2
    .line 3
    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/guideview/d;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/guideview/d;->n(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public n(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "overlay"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/guideview/d;->f(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/join/mgps/customview/guideview/MaskView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/customview/guideview/Configuration;->b:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 39
    .line 40
    iget p2, p2, Lcom/join/mgps/customview/guideview/Configuration;->r:I

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    if-eq p2, v0, :cond_1

    .line 44
    .line 45
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/join/mgps/customview/guideview/d$a;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/guideview/d$a;-><init>(Lcom/join/mgps/customview/guideview/d;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/customview/guideview/d;->c:Lcom/join/mgps/customview/guideview/MaskView;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/guideview/d;->f:Lcom/join/mgps/customview/guideview/GuideBuilder$b;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/join/mgps/customview/guideview/GuideBuilder$b;->onShown()V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/join/mgps/customview/guideview/Configuration;->o:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/customview/guideview/d;->e()V

    .line 21
    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/guideview/d;->h:F

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_3

    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/customview/guideview/d;->h:F

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-float/2addr v0, v2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/high16 v3, 0x41f00000    # 30.0f

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/join/mgps/customview/guideview/c;->a(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    cmpl-float v0, v0, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/customview/guideview/d;->g:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sget-object p2, Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;->UP:Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;

    .line 48
    .line 49
    invoke-interface {p1, p2}, Lcom/join/mgps/customview/guideview/GuideBuilder$a;->a(Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iget v0, p0, Lcom/join/mgps/customview/guideview/d;->h:F

    .line 58
    .line 59
    sub-float/2addr p2, v0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, v3}, Lcom/join/mgps/customview/guideview/c;->a(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    cmpl-float p1, p2, p1

    .line 70
    .line 71
    if-lez p1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/guideview/d;->g:Lcom/join/mgps/customview/guideview/GuideBuilder$a;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    sget-object p2, Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;->DOWN:Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;

    .line 78
    .line 79
    invoke-interface {p1, p2}, Lcom/join/mgps/customview/guideview/GuideBuilder$a;->a(Lcom/join/mgps/customview/guideview/GuideBuilder$SlideState;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/guideview/d;->b:Lcom/join/mgps/customview/guideview/Configuration;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-boolean p1, p1, Lcom/join/mgps/customview/guideview/Configuration;->o:Z

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/mgps/customview/guideview/d;->e()V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    return v1
.end method
