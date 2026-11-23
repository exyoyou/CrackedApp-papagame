.class public Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private p:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->p:Landroid/view/View$OnTouchListener;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->o:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic a(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->o:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p1
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v0, 0x3dcccccd    # 0.1f

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x3

    .line 15
    if-le p2, v3, :cond_2

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    :goto_0
    if-ltz p2, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v10, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    sub-int/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    sub-int/2addr v5, v6

    .line 48
    div-int/lit8 v6, v4, 0x2

    .line 49
    .line 50
    div-int/lit8 v7, v5, 0x5

    .line 51
    .line 52
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-int v8, v6, v4

    .line 57
    .line 58
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int v9, v7, v4

    .line 63
    .line 64
    move-object v4, p0

    .line 65
    move-object v5, v10

    .line 66
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 67
    .line 68
    .line 69
    if-ne p2, v3, :cond_0

    .line 70
    .line 71
    add-int/lit8 v4, p2, -0x1

    .line 72
    .line 73
    int-to-float v5, v4

    .line 74
    mul-float v5, v5, v0

    .line 75
    .line 76
    sub-float v5, v1, v5

    .line 77
    .line 78
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleX(F)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleY(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    mul-int v4, v4, v5

    .line 89
    .line 90
    div-int/lit8 v4, v4, 0xe

    .line 91
    .line 92
    int-to-float v4, v4

    .line 93
    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    if-lez p2, :cond_1

    .line 98
    .line 99
    int-to-float v4, p2

    .line 100
    mul-float v4, v4, v0

    .line 101
    .line 102
    sub-float v4, v1, v4

    .line 103
    .line 104
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    mul-int v4, v4, p2

    .line 115
    .line 116
    div-int/lit8 v4, v4, 0xe

    .line 117
    .line 118
    int-to-float v4, v4

    .line 119
    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->p:Landroid/view/View$OnTouchListener;

    .line 124
    .line 125
    invoke-virtual {v10, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 132
    .line 133
    :goto_2
    if-ltz p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v9, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    sub-int/2addr v3, v4

    .line 154
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    sub-int/2addr v4, v5

    .line 163
    div-int/lit8 v5, v3, 0x2

    .line 164
    .line 165
    div-int/lit8 v6, v4, 0x5

    .line 166
    .line 167
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    add-int v7, v5, v3

    .line 172
    .line 173
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    add-int v8, v6, v3

    .line 178
    .line 179
    move-object v3, p0

    .line 180
    move-object v4, v9

    .line 181
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 182
    .line 183
    .line 184
    if-lez p2, :cond_3

    .line 185
    .line 186
    int-to-float v3, p2

    .line 187
    mul-float v3, v3, v0

    .line 188
    .line 189
    sub-float v3, v1, v3

    .line 190
    .line 191
    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleX(F)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleY(F)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    mul-int v3, v3, p2

    .line 202
    .line 203
    div-int/lit8 v3, v3, 0xe

    .line 204
    .line 205
    int-to-float v3, v3

    .line 206
    invoke-virtual {v9, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->p:Landroid/view/View$OnTouchListener;

    .line 211
    .line 212
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    .line 214
    .line 215
    :goto_3
    add-int/lit8 p2, p2, -0x1

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    return-void
.end method
