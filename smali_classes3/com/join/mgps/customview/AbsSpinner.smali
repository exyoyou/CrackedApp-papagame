.class public abstract Lcom/join/mgps/customview/AbsSpinner;
.super Lcom/join/mgps/customview/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AbsSpinner$b;,
        Lcom/join/mgps/customview/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/customview/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field I:Landroid/widget/SpinnerAdapter;

.field J:I

.field K:I

.field L:Z

.field M:I

.field N:I

.field O:I

.field P:I

.field Q:Landroid/graphics/Rect;

.field R:Landroid/view/View;

.field S:Landroid/view/animation/Interpolator;

.field T:Lcom/join/mgps/customview/AbsSpinner$b;

.field private U:Landroid/database/DataSetObserver;

.field private V:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->M:I

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->N:I

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->O:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->P:I

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->R:Landroid/view/View;

    .line 8
    new-instance p1, Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AbsSpinner$b;-><init>(Lcom/join/mgps/customview/AbsSpinner;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/AbsSpinner;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->M:I

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->N:I

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->O:I

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->P:I

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->R:Landroid/view/View;

    .line 18
    new-instance p1, Lcom/join/mgps/customview/AbsSpinner$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AbsSpinner$b;-><init>(Lcom/join/mgps/customview/AbsSpinner;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/AbsSpinner;->u()V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/customview/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method final k()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->M:I

    .line 12
    .line 13
    if-le v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->N:I

    .line 28
    .line 29
    if-le v2, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :cond_1
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->O:I

    .line 44
    .line 45
    if-le v2, v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :cond_2
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v3, p0, Lcom/join/mgps/customview/AbsSpinner;->P:I

    .line 60
    .line 61
    if-le v2, v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :cond_3
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->k()V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    const/4 v3, 0x0

    .line 82
    if-ltz v1, :cond_8

    .line 83
    .line 84
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 85
    .line 86
    if-eqz v4, :cond_8

    .line 87
    .line 88
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 89
    .line 90
    invoke-virtual {v4, v1}, Lcom/join/mgps/customview/AbsSpinner$b;->b(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-nez v4, :cond_5

    .line 95
    .line 96
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-interface {v4, v1, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :cond_5
    if-eqz v4, :cond_6

    .line 104
    .line 105
    iget-object v5, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 106
    .line 107
    invoke-virtual {v5, v1, v4}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    if-eqz v4, :cond_8

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_7

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/join/mgps/customview/AbsSpinner;->L:Z

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/join/mgps/customview/AbsSpinner;->L:Z

    .line 128
    .line 129
    :cond_7
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/AbsSpinner;->s(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 137
    .line 138
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 139
    .line 140
    add-int/2addr v1, v5

    .line 141
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 142
    .line 143
    add-int/2addr v1, v2

    .line 144
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/AbsSpinner;->t(Landroid/view/View;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    iget-object v4, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    add-int/2addr v2, v5

    .line 153
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    add-int/2addr v2, v4

    .line 156
    move v3, v1

    .line 157
    move v1, v2

    .line 158
    const/4 v2, 0x0

    .line 159
    goto :goto_0

    .line 160
    :cond_8
    const/4 v1, 0x0

    .line 161
    :goto_0
    if-eqz v2, :cond_9

    .line 162
    .line 163
    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 164
    .line 165
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 166
    .line 167
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    add-int/2addr v3, v4

    .line 170
    if-nez v0, :cond_9

    .line 171
    .line 172
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 175
    .line 176
    add-int/2addr v1, v0

    .line 177
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 202
    .line 203
    .line 204
    iput p2, p0, Lcom/join/mgps/customview/AbsSpinner;->J:I

    .line 205
    .line 206
    iput p1, p0, Lcom/join/mgps/customview/AbsSpinner;->K:I

    .line 207
    .line 208
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->b:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 24
    .line 25
    iget p1, p1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->c:I

    .line 26
    .line 27
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->d:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->h:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/customview/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iput-wide v2, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->b:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->c:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    iput v0, v1, Lcom/join/mgps/customview/AbsSpinner$SavedState;->c:I

    .line 31
    .line 32
    :goto_0
    return-object v1
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/AbsSpinner;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method final s(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->U:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    iput-wide v1, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    if-eqz p1, :cond_2

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    iput v1, p0, Lcom/join/mgps/customview/AdapterView;->u:I

    .line 9
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 11
    new-instance p1, Lcom/join/mgps/customview/AdapterView$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/AdapterView$c;-><init>(Lcom/join/mgps/customview/AdapterView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->U:Landroid/database/DataSetObserver;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 16
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    if-nez p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->d()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    return-void
.end method

.method public final setSelection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "animate"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    if-gt p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/AbsSpinner;->z(IZ)V

    return-void
.end method

.method final t(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method abstract v(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delta",
            "animate"
        }
    .end annotation
.end method

.method public final w(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->V:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->V:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, -0x1

    .line 47
    return p1
.end method

.method final x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 15
    .line 16
    add-int/2addr v4, v2

    .line 17
    invoke-virtual {v1, v4, v3}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method final y()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7
    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 11
    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 13
    .line 14
    iput-wide v1, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method final z(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "animate"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/AbsSpinner;->L:Z

    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 9
    .line 10
    sub-int v0, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/customview/AbsSpinner;->v(IZ)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/join/mgps/customview/AbsSpinner;->L:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method
