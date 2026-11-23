.class public Lcom/join/mgps/customview/DragView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/DragView$c;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/ViewGroup$MarginLayoutParams;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/join/mgps/customview/DragView$c;

.field private p:I

.field private q:I


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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/DragView;->n:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->d:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0711b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/DragView;->getStatusBarHeight()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/DragView;->q:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07131e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/DragView;->p:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 9
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/join/mgps/customview/DragView;->b:I

    .line 10
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p0, Lcom/join/mgps/customview/DragView;->q:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/join/mgps/customview/DragView;->c:I

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/DragView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/DragView;->i:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/DragView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->i:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/DragView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/DragView;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/DragView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/DragView;->b:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/customview/DragView$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/DragView$a;-><init>(Lcom/join/mgps/customview/DragView;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "start",
            "end",
            "isLeft"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    int-to-float v2, p1

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    int-to-float p2, p2

    .line 10
    aput p2, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-wide/16 v0, 0x190

    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Lcom/join/mgps/customview/DragView$b;

    .line 23
    .line 24
    invoke-direct {v0, p0, p3, p1}, Lcom/join/mgps/customview/DragView$b;-><init>(Lcom/join/mgps/customview/DragView;ZI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
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
    if-eqz v0, :cond_9

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v1, :cond_5

    .line 11
    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/DragView;->n:Z

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    iget v3, p0, Lcom/join/mgps/customview/DragView;->e:I

    .line 24
    .line 25
    sub-int/2addr v0, v3

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    iget v4, p0, Lcom/join/mgps/customview/DragView;->f:I

    .line 32
    .line 33
    sub-int/2addr v3, v4

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    add-int/2addr v4, v0

    .line 39
    iput v4, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    add-int/2addr v4, v3

    .line 46
    iput v4, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v4, v0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v3

    .line 58
    iget v3, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 59
    .line 60
    if-gez v3, :cond_1

    .line 61
    .line 62
    iput v2, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int v4, v2, v3

    .line 69
    .line 70
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/DragView;->b:I

    .line 71
    .line 72
    if-le v4, v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    sub-int v3, v2, v3

    .line 79
    .line 80
    iput v3, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 81
    .line 82
    move v4, v2

    .line 83
    :cond_2
    iget v2, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 84
    .line 85
    iget v3, p0, Lcom/join/mgps/customview/DragView;->p:I

    .line 86
    .line 87
    if-ge v2, v3, :cond_3

    .line 88
    .line 89
    iput v3, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, v3

    .line 96
    :cond_3
    iget v2, p0, Lcom/join/mgps/customview/DragView;->c:I

    .line 97
    .line 98
    if-le v0, v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-int v0, v2, v0

    .line 105
    .line 106
    iput v0, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 107
    .line 108
    move v0, v2

    .line 109
    :cond_4
    iget v2, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 110
    .line 111
    iget v3, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 112
    .line 113
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    float-to-int p1, p1

    .line 121
    iput p1, p0, Lcom/join/mgps/customview/DragView;->e:I

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    float-to-int p1, p1

    .line 128
    iput p1, p0, Lcom/join/mgps/customview/DragView;->f:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragView;->n:Z

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/join/mgps/customview/DragView;->i:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .line 143
    iget v4, p0, Lcom/join/mgps/customview/DragView;->h:I

    .line 144
    .line 145
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    float-to-int v0, v0

    .line 155
    iput v0, p0, Lcom/join/mgps/customview/DragView;->l:I

    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    float-to-int p2, p2

    .line 162
    iput p2, p0, Lcom/join/mgps/customview/DragView;->m:I

    .line 163
    .line 164
    iget p2, p0, Lcom/join/mgps/customview/DragView;->j:I

    .line 165
    .line 166
    iget v0, p0, Lcom/join/mgps/customview/DragView;->l:I

    .line 167
    .line 168
    sub-int/2addr p2, v0

    .line 169
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    const/4 v0, 0x6

    .line 174
    if-ge p2, v0, :cond_7

    .line 175
    .line 176
    iget p2, p0, Lcom/join/mgps/customview/DragView;->k:I

    .line 177
    .line 178
    iget v4, p0, Lcom/join/mgps/customview/DragView;->m:I

    .line 179
    .line 180
    sub-int/2addr p2, v4

    .line 181
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-ge p2, v0, :cond_7

    .line 186
    .line 187
    return v2

    .line 188
    :cond_7
    iget p2, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    div-int/2addr p1, v3

    .line 195
    add-int/2addr p2, p1

    .line 196
    iget p1, p0, Lcom/join/mgps/customview/DragView;->b:I

    .line 197
    .line 198
    div-int/lit8 v0, p1, 0x2

    .line 199
    .line 200
    if-ge p2, v0, :cond_8

    .line 201
    .line 202
    iget p2, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 203
    .line 204
    div-int/2addr p1, v3

    .line 205
    invoke-virtual {p0, p2, p1, v1}, Lcom/join/mgps/customview/DragView;->f(IIZ)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_8
    iget p2, p0, Lcom/join/mgps/customview/DragView;->g:I

    .line 210
    .line 211
    div-int/2addr p1, v3

    .line 212
    invoke-virtual {p0, p2, p1, v2}, Lcom/join/mgps/customview/DragView;->f(IIZ)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    float-to-int p1, p1

    .line 221
    iput p1, p0, Lcom/join/mgps/customview/DragView;->e:I

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    float-to-int p1, p1

    .line 228
    iput p1, p0, Lcom/join/mgps/customview/DragView;->f:I

    .line 229
    .line 230
    iget p2, p0, Lcom/join/mgps/customview/DragView;->e:I

    .line 231
    .line 232
    iput p2, p0, Lcom/join/mgps/customview/DragView;->j:I

    .line 233
    .line 234
    iput p1, p0, Lcom/join/mgps/customview/DragView;->k:I

    .line 235
    .line 236
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onTouchEvent:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/DragView;->o:Lcom/join/mgps/customview/DragView$c;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/DragView;->o:Lcom/join/mgps/customview/DragView$c;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/join/mgps/customview/DragView$c;->a()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, ">>>>>>>>>onTouchEvent:"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public setOnDragViewClickListener(Lcom/join/mgps/customview/DragView$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/DragView;->o:Lcom/join/mgps/customview/DragView$c;

    .line 2
    .line 3
    return-void
.end method
