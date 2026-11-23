.class public Lcom/mingle/widget/LoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final j:I = 0x1f4

.field private static k:F = 200.0f


# instance fields
.field private b:Lcom/mingle/widget/ShapeLoadingView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/nineoldandroids/animation/d;

.field private h:Ljava/lang/Runnable;

.field public i:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 3
    new-instance p1, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p1, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p1, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    const p1, 0x3f99999a    # 1.2f

    .line 4
    iput p1, p0, Lcom/mingle/widget/LoadingView;->i:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 7
    new-instance v0, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    const v0, 0x3f99999a    # 1.2f

    .line 8
    iput v0, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 12
    new-instance p3, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p3, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    const p3, 0x3f99999a    # 1.2f

    .line 13
    iput p3, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 16
    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 17
    new-instance p3, Lcom/mingle/widget/LoadingView$a;

    invoke-direct {p3, p0}, Lcom/mingle/widget/LoadingView$a;-><init>(Lcom/mingle/widget/LoadingView;)V

    iput-object p3, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    const p3, 0x3f99999a    # 1.2f

    .line 18
    iput p3, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mingle/widget/LoadingView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mingle/widget/LoadingView;)Lcom/mingle/widget/ShapeLoadingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mingle/shapeloading/R$styleable;->LoadingView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget p2, Lcom/mingle/shapeloading/R$styleable;->LoadingView_loadingText:I

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/mingle/widget/LoadingView;->f:Ljava/lang/String;

    .line 14
    .line 15
    sget p2, Lcom/mingle/shapeloading/R$styleable;->LoadingView_loadingTextAppearance:I

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/mingle/widget/LoadingView;->e:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private e(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/d;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mingle/widget/LoadingView;->g:Lcom/nineoldandroids/animation/d;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->h:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public b(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    mul-float p1, p1, v0

    .line 16
    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    add-float/2addr p1, v0

    .line 20
    float-to-int p1, p1

    .line 21
    return p1
.end method

.method public c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    aput v3, v2, v4

    .line 9
    .line 10
    sget v3, Lcom/mingle/widget/LoadingView;->k:F

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aput v3, v2, v5

    .line 14
    .line 15
    const-string v3, "translationY"

    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/ImageView;

    .line 22
    .line 23
    new-array v3, v1, [F

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    const-string v6, "scaleX"

    .line 29
    .line 30
    invoke-static {v2, v6, v3}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-wide/16 v6, 0x1f4

    .line 35
    .line 36
    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 40
    .line 41
    iget v8, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 42
    .line 43
    invoke-direct {v3, v8}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/nineoldandroids/animation/d;

    .line 50
    .line 51
    invoke-direct {v3}, Lcom/nineoldandroids/animation/d;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v6, v7}, Lcom/nineoldandroids/animation/d;->E(J)Lcom/nineoldandroids/animation/d;

    .line 55
    .line 56
    .line 57
    new-array v1, v1, [Lcom/nineoldandroids/animation/a;

    .line 58
    .line 59
    aput-object v0, v1, v4

    .line 60
    .line 61
    aput-object v2, v1, v5

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Lcom/nineoldandroids/animation/d;->D([Lcom/nineoldandroids/animation/a;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/mingle/widget/LoadingView$c;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$c;-><init>(Lcom/mingle/widget/LoadingView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/d;->r()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    sget v3, Lcom/mingle/widget/LoadingView;->k:F

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput v3, v2, v4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    aput v3, v2, v5

    .line 14
    .line 15
    const-string v3, "translationY"

    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/ImageView;

    .line 22
    .line 23
    new-array v3, v1, [F

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    const-string v6, "scaleX"

    .line 29
    .line 30
    invoke-static {v2, v6, v3}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lcom/mingle/widget/LoadingView$d;->a:[I

    .line 35
    .line 36
    iget-object v6, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/mingle/widget/ShapeLoadingView;->getShape()Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    aget v3, v3, v6

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    const-string v7, "rotation"

    .line 50
    .line 51
    if-eq v3, v5, :cond_2

    .line 52
    .line 53
    if-eq v3, v1, :cond_1

    .line 54
    .line 55
    if-eq v3, v6, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 60
    .line 61
    new-array v8, v1, [F

    .line 62
    .line 63
    fill-array-data v8, :array_1

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 72
    .line 73
    new-array v8, v1, [F

    .line 74
    .line 75
    fill-array-data v8, :array_2

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 84
    .line 85
    new-array v8, v1, [F

    .line 86
    .line 87
    fill-array-data v8, :array_3

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_0
    const-wide/16 v7, 0x1f4

    .line 95
    .line 96
    invoke-virtual {v0, v7, v8}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v7, v8}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 100
    .line 101
    .line 102
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    .line 103
    .line 104
    iget v10, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 105
    .line 106
    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    .line 113
    .line 114
    iget v10, p0, Lcom/mingle/widget/LoadingView;->i:F

    .line 115
    .line 116
    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v9}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 120
    .line 121
    .line 122
    new-instance v9, Lcom/nineoldandroids/animation/d;

    .line 123
    .line 124
    invoke-direct {v9}, Lcom/nineoldandroids/animation/d;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v7, v8}, Lcom/nineoldandroids/animation/d;->E(J)Lcom/nineoldandroids/animation/d;

    .line 128
    .line 129
    .line 130
    new-array v6, v6, [Lcom/nineoldandroids/animation/a;

    .line 131
    .line 132
    aput-object v0, v6, v4

    .line 133
    .line 134
    aput-object v3, v6, v5

    .line 135
    .line 136
    aput-object v2, v6, v1

    .line 137
    .line 138
    invoke-virtual {v9, v6}, Lcom/nineoldandroids/animation/d;->D([Lcom/nineoldandroids/animation/a;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/mingle/widget/LoadingView$b;

    .line 142
    .line 143
    invoke-direct {v0, p0}, Lcom/mingle/widget/LoadingView$b;-><init>(Lcom/mingle/widget/LoadingView;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Lcom/nineoldandroids/animation/d;->r()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 4
        0x0
        -0x3d100000    # -120.0f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/mingle/shapeloading/R$layout;->load_view:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0x42580000    # 54.0f

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/mingle/widget/LoadingView;->b(F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    sput v1, Lcom/mingle/widget/LoadingView;->k:F

    .line 27
    .line 28
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v2, -0x2

    .line 31
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x11

    .line 35
    .line 36
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    .line 38
    sget v2, Lcom/mingle/shapeloading/R$id;->shapeLoadingView:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/mingle/widget/ShapeLoadingView;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->b:Lcom/mingle/widget/ShapeLoadingView;

    .line 47
    .line 48
    sget v2, Lcom/mingle/shapeloading/R$id;->indication:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .line 56
    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->c:Landroid/widget/ImageView;

    .line 57
    .line 58
    sget v2, Lcom/mingle/shapeloading/R$id;->promptTV:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v2, p0, Lcom/mingle/widget/LoadingView;->d:Landroid/widget/TextView;

    .line 67
    .line 68
    iget v3, p0, Lcom/mingle/widget/LoadingView;->e:I

    .line 69
    .line 70
    const/4 v4, -0x1

    .line 71
    if-eq v3, v4, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget v4, p0, Lcom/mingle/widget/LoadingView;->e:I

    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v2, p0, Lcom/mingle/widget/LoadingView;->f:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/mingle/widget/LoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v0, 0x384

    .line 91
    .line 92
    invoke-direct {p0, v0, v1}, Lcom/mingle/widget/LoadingView;->e(J)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/mingle/widget/LoadingView;->d:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0xc8

    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/mingle/widget/LoadingView;->e(J)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/mingle/widget/LoadingView;->f()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
