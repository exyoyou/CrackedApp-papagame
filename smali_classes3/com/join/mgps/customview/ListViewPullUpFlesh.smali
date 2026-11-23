.class public Lcom/join/mgps/customview/ListViewPullUpFlesh;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ListViewPullUpFlesh$a;
    }
.end annotation


# static fields
.field private static A:Z = false

.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x2

.field private static final y:I = 0x3

.field private static final z:F = 3.0f


# instance fields
.field b:I

.field c:I

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Z

.field private p:I

.field q:Z

.field r:F

.field s:F

.field t:F

.field u:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->a(Landroid/content/Context;)V

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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/view/animation/RotateAnimation;

    .line 2
    .line 3
    const/high16 v1, -0x3ccc0000    # -180.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/high16 v4, 0x3f000000    # 0.5f

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/high16 v6, 0x3f000000    # 0.5f

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 14
    .line 15
    .line 16
    iput-object v7, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    .line 17
    .line 18
    const-wide/16 v0, 0x96

    .line 19
    .line 20
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->m:Landroid/view/animation/Animation;

    .line 29
    .line 30
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 31
    .line 32
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/view/animation/RotateAnimation;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/high16 v7, -0x3ccc0000    # -180.0f

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    const/high16 v9, 0x3f000000    # 0.5f

    .line 45
    .line 46
    const/4 v10, 0x1

    .line 47
    const/high16 v11, 0x3f000000    # 0.5f

    .line 48
    .line 49
    move-object v5, v2

    .line 50
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Landroid/view/animation/Animation;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Landroid/view/animation/Animation;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Landroid/view/animation/Animation;

    .line 64
    .line 65
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const v0, 0x7f0d0641

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 86
    .line 87
    const v0, 0x7f0a011d

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ImageView;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->n:Landroid/view/animation/Animation;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 104
    .line 105
    const v0, 0x7f0a129c

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/ProgressBar;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 117
    .line 118
    const v0, 0x7f0a1767

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->g:Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 130
    .line 131
    const v0, 0x7f0a113d

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->i:Landroid/widget/TextView;

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 143
    .line 144
    const v0, 0x7f0a1af7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->h:Landroid/widget/TextView;

    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->g:Landroid/widget/TextView;

    .line 156
    .line 157
    const-string v0, "\u4e0a\u62c9\u5237\u65b0"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->h:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ImageView;

    .line 168
    .line 169
    const/16 v0, 0x46

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->e:Landroid/widget/ImageView;

    .line 175
    .line 176
    const/16 v0, 0x32

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 182
    .line 183
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->b(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:I

    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 195
    .line 196
    mul-int/lit8 p1, p1, -0x1

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    const/4 p1, 0x3

    .line 213
    iput p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 214
    .line 215
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:Z

    .line 216
    .line 217
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, -0x2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v3, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 24
    .line 25
    iget v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:I

    .line 26
    .line 27
    mul-int/lit8 v1, v1, -0x5

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    sget-boolean v0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->A:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sput-boolean v2, Lcom/join/mgps/customview/ListViewPullUpFlesh;->A:Z

    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->u:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/ListViewPullUpFlesh$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->u:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/ListViewPullUpFlesh$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->i:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->h:Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "\u6700\u540e\u5237\u65b0\u65f6\u95f4\uff1a"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/util/Date;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->c:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:Z

    .line 13
    .line 14
    if-eqz v0, :cond_e

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_d

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v0, v1, :cond_9

    .line 26
    .line 27
    if-eq v0, v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    sub-int/2addr v5, v4

    .line 40
    if-eq v0, v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    sub-int/2addr v5, v1

    .line 51
    if-ne v0, v5, :cond_e

    .line 52
    .line 53
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 54
    .line 55
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 62
    .line 63
    iget-boolean v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:Z

    .line 64
    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:Z

    .line 70
    .line 71
    :cond_2
    iget v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 72
    .line 73
    if-eq v5, v4, :cond_e

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    if-ne v5, v3, :cond_3

    .line 77
    .line 78
    iget v5, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 79
    .line 80
    sub-float/2addr v5, v0

    .line 81
    cmpl-float v0, v5, v4

    .line 82
    .line 83
    if-lez v0, :cond_3

    .line 84
    .line 85
    iput v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 91
    .line 92
    const/high16 v5, 0x40400000    # 3.0f

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 97
    .line 98
    iget v6, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 99
    .line 100
    sub-float v7, v0, v6

    .line 101
    .line 102
    div-float/2addr v7, v5

    .line 103
    iget v8, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:I

    .line 104
    .line 105
    int-to-float v8, v8

    .line 106
    cmpl-float v7, v7, v8

    .line 107
    .line 108
    if-lez v7, :cond_4

    .line 109
    .line 110
    iget v7, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 111
    .line 112
    sub-float/2addr v7, v6

    .line 113
    const/high16 v8, 0x41100000    # 9.0f

    .line 114
    .line 115
    cmpl-float v7, v7, v8

    .line 116
    .line 117
    if-ltz v7, :cond_4

    .line 118
    .line 119
    iput v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    sub-float/2addr v0, v6

    .line 126
    cmpg-float v0, v0, v4

    .line 127
    .line 128
    if-gtz v0, :cond_5

    .line 129
    .line 130
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 136
    .line 137
    if-ne v0, v1, :cond_7

    .line 138
    .line 139
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 140
    .line 141
    iget v6, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 142
    .line 143
    sub-float/2addr v0, v6

    .line 144
    const/high16 v7, -0x3f600000    # -5.0f

    .line 145
    .line 146
    cmpg-float v0, v0, v7

    .line 147
    .line 148
    if-gez v0, :cond_6

    .line 149
    .line 150
    iput v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 151
    .line 152
    sput-boolean v1, Lcom/join/mgps/customview/ListViewPullUpFlesh;->A:Z

    .line 153
    .line 154
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 159
    .line 160
    sub-float/2addr v6, v0

    .line 161
    cmpl-float v0, v6, v4

    .line 162
    .line 163
    if-ltz v0, :cond_7

    .line 164
    .line 165
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 168
    .line 169
    .line 170
    :cond_7
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 171
    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    if-ne v0, v1, :cond_e

    .line 175
    .line 176
    :cond_8
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->t:F

    .line 177
    .line 178
    iget v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 179
    .line 180
    cmpg-float v3, v0, v1

    .line 181
    .line 182
    if-gez v3, :cond_e

    .line 183
    .line 184
    iget-object v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d:Landroid/view/View;

    .line 185
    .line 186
    sub-float/2addr v1, v0

    .line 187
    div-float/2addr v1, v5

    .line 188
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->l:I

    .line 189
    .line 190
    int-to-float v0, v0

    .line 191
    sub-float/2addr v1, v0

    .line 192
    float-to-int v0, v1

    .line 193
    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_9
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 198
    .line 199
    if-eq v0, v4, :cond_e

    .line 200
    .line 201
    if-nez v0, :cond_b

    .line 202
    .line 203
    iput v3, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    sub-int/2addr v3, v1

    .line 214
    if-eq v0, v3, :cond_a

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    sub-int/2addr v3, v1

    .line 225
    if-ne v0, v3, :cond_b

    .line 226
    .line 227
    :cond_a
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 228
    .line 229
    .line 230
    :cond_b
    iget v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 231
    .line 232
    if-ne v0, v1, :cond_e

    .line 233
    .line 234
    iput v4, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->p:I

    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    sub-int/2addr v3, v1

    .line 245
    if-eq v0, v3, :cond_c

    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    sub-int/2addr v1, v2

    .line 256
    if-ne v0, v1, :cond_e

    .line 257
    .line 258
    :cond_c
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->d()V

    .line 259
    .line 260
    .line 261
    invoke-direct {p0}, Lcom/join/mgps/customview/ListViewPullUpFlesh;->f()V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->s:F

    .line 270
    .line 271
    iput-boolean v2, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:Z

    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_e

    .line 278
    .line 279
    iget-boolean v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:Z

    .line 280
    .line 281
    if-nez v0, :cond_e

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iput v0, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->r:F

    .line 288
    .line 289
    iput-boolean v1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    .line 295
    .line 296
    :cond_e
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    return p1
.end method

.method public setRefreshListener(Lcom/join/mgps/customview/ListViewPullUpFlesh$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->u:Lcom/join/mgps/customview/ListViewPullUpFlesh$a;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/ListViewPullUpFlesh;->o:Z

    .line 5
    .line 6
    return-void
.end method
