.class public Lcom/join/mgps/customview/DrawableDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->g:Z

    const v1, 0x1010214

    .line 4
    filled-new-array {v1}, [I

    move-result-object v1

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "showFirstDivider",
            "showLastDivider"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput-boolean p3, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->f:Z

    .line 10
    iput-boolean p4, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "divider"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->f:Z

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->g:Z

    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "divider",
            "showFirstDivider",
            "showLastDivider"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iput-boolean p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->f:Z

    .line 17
    iput-boolean p3, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->g:Z

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "DividerItemDecoration can only be used with a LinearLayoutManager."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "DividerItemDecoration can only be used with a LinearLayoutManager."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 p4, 0x1

    .line 14
    if-ge p2, p4, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-direct {p0, p3}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p2, p4, :cond_2

    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "parent",
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p3, v2, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    sub-int/2addr v5, v6

    .line 40
    move v6, v3

    .line 41
    move v1, v4

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    sub-int/2addr v5, v6

    .line 64
    move v6, v3

    .line 65
    move v3, v5

    .line 66
    const/4 v5, 0x0

    .line 67
    :goto_0
    iget-boolean v7, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->f:Z

    .line 68
    .line 69
    xor-int/2addr v7, v2

    .line 70
    :goto_1
    if-ge v7, v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 81
    .line 82
    if-ne p3, v2, :cond_3

    .line 83
    .line 84
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 95
    .line 96
    sub-int/2addr v3, v4

    .line 97
    sub-int v4, v3, v6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 105
    .line 106
    sub-int/2addr v3, v4

    .line 107
    add-int v4, v3, v6

    .line 108
    .line 109
    move v10, v4

    .line 110
    move v4, v3

    .line 111
    move v3, v10

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 124
    .line 125
    sub-int/2addr v1, v5

    .line 126
    sub-int v5, v1, v6

    .line 127
    .line 128
    move v10, v5

    .line 129
    move v5, v1

    .line 130
    move v1, v10

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 137
    .line 138
    sub-int/2addr v1, v5

    .line 139
    add-int v5, v1, v6

    .line 140
    .line 141
    :goto_2
    iget-object v8, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    invoke-virtual {v8, v1, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    .line 145
    .line 146
    iget-object v8, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v7, v7, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iget-boolean v7, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->g:Z

    .line 155
    .line 156
    if-eqz v7, :cond_7

    .line 157
    .line 158
    if-lez v0, :cond_7

    .line 159
    .line 160
    sub-int/2addr v0, v2

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 170
    .line 171
    if-ne p3, v2, :cond_6

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 178
    .line 179
    add-int v4, p2, p3

    .line 180
    .line 181
    add-int v3, v4, v6

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 189
    .line 190
    add-int v1, p2, p3

    .line 191
    .line 192
    add-int v5, v1, v6

    .line 193
    .line 194
    :goto_3
    iget-object p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    invoke-virtual {p2, v1, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/join/mgps/customview/DrawableDividerItemDecoration;->e:Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    return-void
.end method
