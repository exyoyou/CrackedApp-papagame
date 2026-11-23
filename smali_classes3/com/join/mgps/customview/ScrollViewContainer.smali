.class public Lcom/join/mgps/customview/ScrollViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScrollViewContainer$d;
    }
.end annotation


# static fields
.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:F = 6.5f


# instance fields
.field private b:Z

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:F

.field private m:Lcom/join/mgps/customview/ScrollViewContainer$d;

.field private n:F

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:Landroid/view/View$OnTouchListener;

.field private r:Landroid/view/View$OnTouchListener;


# direct methods
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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Z

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 5
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->r:Landroid/view/View$OnTouchListener;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

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

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Z

    const/4 p2, 0x2

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 13
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/os/Handler;

    .line 14
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 15
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->r:Landroid/view/View$OnTouchListener;

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Z

    const/4 p2, 0x2

    .line 19
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 21
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/os/Handler;

    .line 22
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$b;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 23
    new-instance p1, Lcom/join/mgps/customview/ScrollViewContainer$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ScrollViewContainer$c;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->r:Landroid/view/View$OnTouchListener;

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/ScrollViewContainer;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ScrollViewContainer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 5
    .line 6
    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScrollViewContainer;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 5
    .line 6
    return v0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ScrollViewContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/ScrollViewContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/ScrollViewContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/ScrollViewContainer;)Lcom/join/mgps/customview/ScrollViewContainer$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:Lcom/join/mgps/customview/ScrollViewContainer$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/customview/ScrollViewContainer$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->p:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/ScrollViewContainer$d;-><init>(Lcom/join/mgps/customview/ScrollViewContainer;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:Lcom/join/mgps/customview/ScrollViewContainer$d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v2, :cond_9

    .line 12
    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->i:Z

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:F

    .line 53
    .line 54
    sub-float/2addr v5, v6

    .line 55
    add-float/2addr v0, v5

    .line 56
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 57
    .line 58
    cmpl-float v5, v0, v4

    .line 59
    .line 60
    if-lez v5, :cond_2

    .line 61
    .line 62
    iput v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 63
    .line 64
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 68
    .line 69
    neg-int v4, v1

    .line 70
    int-to-float v4, v4

    .line 71
    cmpg-float v0, v0, v4

    .line 72
    .line 73
    if-gez v0, :cond_3

    .line 74
    .line 75
    neg-int v0, v1

    .line 76
    int-to-float v0, v0

    .line 77
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 78
    .line 79
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 80
    .line 81
    :cond_3
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 82
    .line 83
    const/high16 v1, -0x3f000000    # -8.0f

    .line 84
    .line 85
    cmpg-float v0, v0, v1

    .line 86
    .line 87
    if-gez v0, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->h:Z

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 98
    .line 99
    if-ne v0, v2, :cond_7

    .line 100
    .line 101
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:F

    .line 112
    .line 113
    sub-float/2addr v5, v6

    .line 114
    add-float/2addr v0, v5

    .line 115
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 116
    .line 117
    iget v5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 118
    .line 119
    neg-int v6, v5

    .line 120
    int-to-float v6, v6

    .line 121
    cmpg-float v6, v0, v6

    .line 122
    .line 123
    if-gez v6, :cond_5

    .line 124
    .line 125
    neg-int v0, v5

    .line 126
    int-to-float v0, v0

    .line 127
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 128
    .line 129
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    cmpl-float v0, v0, v4

    .line 133
    .line 134
    if-lez v0, :cond_6

    .line 135
    .line 136
    iput v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 137
    .line 138
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->k:I

    .line 139
    .line 140
    :cond_6
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 141
    .line 142
    rsub-int/lit8 v1, v5, 0x8

    .line 143
    .line 144
    int-to-float v1, v1

    .line 145
    cmpl-float v0, v0, v1

    .line 146
    .line 147
    if-lez v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 154
    .line 155
    add-int/2addr v0, v2

    .line 156
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 157
    .line 158
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:F

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:F

    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 176
    .line 177
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 181
    .line 182
    const/16 v5, 0x2bc

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    iget v5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 194
    .line 195
    cmpl-float v6, v5, v4

    .line 196
    .line 197
    if-eqz v6, :cond_11

    .line 198
    .line 199
    iget v6, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 200
    .line 201
    neg-int v6, v6

    .line 202
    int-to-float v6, v6

    .line 203
    cmpl-float v5, v5, v6

    .line 204
    .line 205
    if-nez v5, :cond_a

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 213
    .line 214
    cmpg-float v5, v5, v6

    .line 215
    .line 216
    if-gez v5, :cond_c

    .line 217
    .line 218
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 219
    .line 220
    iget v4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 221
    .line 222
    neg-int v5, v4

    .line 223
    div-int/2addr v5, v3

    .line 224
    int-to-float v5, v5

    .line 225
    cmpg-float v5, v0, v5

    .line 226
    .line 227
    if-gtz v5, :cond_b

    .line 228
    .line 229
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_b
    neg-int v1, v4

    .line 233
    div-int/2addr v1, v3

    .line 234
    int-to-float v1, v1

    .line 235
    cmpl-float v0, v0, v1

    .line 236
    .line 237
    if-lez v0, :cond_e

    .line 238
    .line 239
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_c
    cmpg-float v0, v0, v4

    .line 243
    .line 244
    if-gez v0, :cond_d

    .line 245
    .line 246
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_d
    iput v2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->j:I

    .line 250
    .line 251
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->m:Lcom/join/mgps/customview/ScrollViewContainer$d;

    .line 252
    .line 253
    const-wide/16 v3, 0x2

    .line 254
    .line 255
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/customview/ScrollViewContainer$d;->b(J)V

    .line 256
    .line 257
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 270
    .line 271
    if-nez v0, :cond_10

    .line 272
    .line 273
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 281
    .line 282
    .line 283
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iput v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->n:F

    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->c:Landroid/view/VelocityTracker;

    .line 290
    .line 291
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 292
    .line 293
    .line 294
    iput v1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->o:I

    .line 295
    .line 296
    :cond_11
    :goto_5
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .line 298
    .line 299
    :catch_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 2
    .line 3
    iget p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 4
    .line 5
    float-to-int p2, p2

    .line 6
    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    iget p5, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 13
    .line 14
    float-to-int p5, p5

    .line 15
    add-int/2addr p4, p5

    .line 16
    const/4 p5, 0x0

    .line 17
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->g:Landroid/view/View;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 29
    .line 30
    float-to-int p3, p3

    .line 31
    add-int/2addr p2, p3

    .line 32
    iget p3, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:I

    .line 33
    .line 34
    iget-object p4, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    iget v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->l:F

    .line 41
    .line 42
    float-to-int v0, v0

    .line 43
    add-int/2addr p4, v0

    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer;->g:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr p4, v0

    .line 51
    add-int/lit8 p4, p4, 0x64

    .line 52
    .line 53
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->b:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->d:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->e:I

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->g:Landroid/view/View;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->r:Landroid/view/View$OnTouchListener;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer;->f:Landroid/view/View;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer;->q:Landroid/view/View$OnTouchListener;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
