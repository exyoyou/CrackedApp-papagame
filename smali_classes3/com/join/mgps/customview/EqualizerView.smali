.class public Lcom/join/mgps/customview/EqualizerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/animation/AnimatorSet;

.field g:Landroid/animation/AnimatorSet;

.field h:Ljava/lang/Boolean;

.field i:I

.field j:I


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
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerView;->b()V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/EqualizerView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/EqualizerView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerView;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d08a5

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a10c1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->b:Landroid/view/View;

    .line 24
    .line 25
    const v0, 0x7f0a10c2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->c:Landroid/view/View;

    .line 33
    .line 34
    const v0, 0x7f0a10c4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->e:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f0a10c3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->d:Landroid/view/View;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->b:Landroid/view/View;

    .line 53
    .line 54
    iget v1, p0, Lcom/join/mgps/customview/EqualizerView;->i:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->c:Landroid/view/View;

    .line 60
    .line 61
    iget v1, p0, Lcom/join/mgps/customview/EqualizerView;->i:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->d:Landroid/view/View;

    .line 67
    .line 68
    iget v1, p0, Lcom/join/mgps/customview/EqualizerView;->i:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->e:Landroid/view/View;

    .line 74
    .line 75
    iget v1, p0, Lcom/join/mgps/customview/EqualizerView;->i:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/join/mgps/customview/EqualizerView;->e()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->EqualizerView:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    const/high16 v0, -0x1000000

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, Lcom/join/mgps/customview/EqualizerView;->i:I

    .line 20
    .line 21
    const/16 p2, 0xbb8

    .line 22
    .line 23
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lcom/join/mgps/customview/EqualizerView;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/customview/EqualizerView$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerView$a;-><init>(Lcom/join/mgps/customview/EqualizerView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->c:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/join/mgps/customview/EqualizerView$b;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerView$b;-><init>(Lcom/join/mgps/customview/EqualizerView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->d:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/join/mgps/customview/EqualizerView$c;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerView$c;-><init>(Lcom/join/mgps/customview/EqualizerView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->e:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/join/mgps/customview/EqualizerView$d;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/EqualizerView$d;-><init>(Lcom/join/mgps/customview/EqualizerView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->b:Landroid/view/View;

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    new-array v2, v1, [F

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    const-string v3, "scaleY"

    .line 19
    .line 20
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/join/mgps/customview/EqualizerView;->c:Landroid/view/View;

    .line 29
    .line 30
    new-array v5, v1, [F

    .line 31
    .line 32
    fill-array-data v5, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lcom/join/mgps/customview/EqualizerView;->d:Landroid/view/View;

    .line 43
    .line 44
    new-array v6, v1, [F

    .line 45
    .line 46
    fill-array-data v6, :array_2

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    .line 55
    .line 56
    iget-object v6, p0, Lcom/join/mgps/customview/EqualizerView;->e:Landroid/view/View;

    .line 57
    .line 58
    new-array v1, v1, [F

    .line 59
    .line 60
    fill-array-data v1, :array_3

    .line 61
    .line 62
    .line 63
    invoke-static {v6, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    new-array v3, v3, [Landroid/animation/Animator;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    aput-object v4, v3, v6

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    aput-object v5, v3, v4

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    aput-object v0, v3, v4

    .line 88
    .line 89
    const/4 v0, 0x3

    .line 90
    aput-object v1, v3, v0

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 96
    .line 97
    iget v1, p0, Lcom/join/mgps/customview/EqualizerView;->j:I

    .line 98
    .line 99
    int-to-long v1, v1

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 104
    .line 105
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 106
    .line 107
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void

    .line 131
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
        0x3f333333    # 0.7f
        0x3f19999a    # 0.6f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->h:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->f:Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->g:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->b:Landroid/view/View;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    new-array v2, v1, [F

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const v4, 0x3dcccccd    # 0.1f

    .line 39
    .line 40
    .line 41
    aput v4, v2, v3

    .line 42
    .line 43
    const-string v5, "scaleY"

    .line 44
    .line 45
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/join/mgps/customview/EqualizerView;->c:Landroid/view/View;

    .line 50
    .line 51
    new-array v6, v1, [F

    .line 52
    .line 53
    aput v4, v6, v3

    .line 54
    .line 55
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v6, p0, Lcom/join/mgps/customview/EqualizerView;->d:Landroid/view/View;

    .line 60
    .line 61
    new-array v7, v1, [F

    .line 62
    .line 63
    aput v4, v7, v3

    .line 64
    .line 65
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lcom/join/mgps/customview/EqualizerView;->g:Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    const/4 v6, 0x3

    .line 77
    new-array v6, v6, [Landroid/animation/Animator;

    .line 78
    .line 79
    aput-object v4, v6, v3

    .line 80
    .line 81
    aput-object v2, v6, v1

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    aput-object v0, v6, v1

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->g:Landroid/animation/AnimatorSet;

    .line 90
    .line 91
    const-wide/16 v1, 0xc8

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->g:Landroid/animation/AnimatorSet;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerView;->g:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    return-void
.end method
