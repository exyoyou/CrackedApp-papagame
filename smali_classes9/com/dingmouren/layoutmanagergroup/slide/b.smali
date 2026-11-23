.class public Lcom/dingmouren/layoutmanagergroup/slide/b;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/dingmouren/layoutmanagergroup/slide/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dingmouren/layoutmanagergroup/slide/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/slide/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/slide/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/util/List;Lcom/dingmouren/layoutmanagergroup/slide/c;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/dingmouren/layoutmanagergroup/slide/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 5
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/slide/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/slide/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->b:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->c:Lcom/dingmouren/layoutmanagergroup/slide/c;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    mul-float p1, p1, p2

    .line 11
    .line 12
    return p1
.end method


# virtual methods
.method public c(Lcom/dingmouren/layoutmanagergroup/slide/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dingmouren/layoutmanagergroup/slide/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->c:Lcom/dingmouren/layoutmanagergroup/slide/c;

    .line 2
    .line 3
    return-void
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0xc

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 7

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 p5, 0x1

    .line 7
    if-ne p6, p5, :cond_6

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/dingmouren/layoutmanagergroup/slide/b;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    .line 10
    .line 11
    .line 12
    move-result p6

    .line 13
    div-float/2addr p4, p6

    .line 14
    const/high16 p6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpl-float p7, p4, p6

    .line 17
    .line 18
    if-lez p7, :cond_0

    .line 19
    .line 20
    const/high16 p4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 p7, -0x40800000    # -1.0f

    .line 24
    .line 25
    cmpg-float v0, p4, p7

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    const/high16 p4, -0x40800000    # -1.0f

    .line 30
    .line 31
    :cond_1
    :goto_0
    const/high16 p7, 0x41700000    # 15.0f

    .line 32
    .line 33
    mul-float p7, p7, p4

    .line 34
    .line 35
    invoke-virtual {p1, p7}, Landroid/view/View;->setRotation(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result p7

    .line 42
    const/4 v0, 0x3

    .line 43
    const/high16 v1, 0x41600000    # 14.0f

    .line 44
    .line 45
    const v2, 0x3dcccccd    # 0.1f

    .line 46
    .line 47
    .line 48
    if-le p7, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :goto_1
    add-int/lit8 v3, p7, -0x1

    .line 52
    .line 53
    if-ge v0, v3, :cond_3

    .line 54
    .line 55
    sub-int v3, p7, v0

    .line 56
    .line 57
    sub-int/2addr v3, p5

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    int-to-float v3, v3

    .line 63
    mul-float v5, v3, v2

    .line 64
    .line 65
    sub-float v5, p6, v5

    .line 66
    .line 67
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    mul-float v6, v6, v2

    .line 72
    .line 73
    add-float/2addr v6, v5

    .line 74
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 75
    .line 76
    .line 77
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    mul-float v6, v6, v2

    .line 82
    .line 83
    add-float/2addr v5, v6

    .line 84
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 85
    .line 86
    .line 87
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-float/2addr v3, v5

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    int-to-float v5, v5

    .line 97
    mul-float v3, v3, v5

    .line 98
    .line 99
    div-float/2addr v3, v1

    .line 100
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v0, 0x0

    .line 107
    :goto_2
    add-int/lit8 v3, p7, -0x1

    .line 108
    .line 109
    if-ge v0, v3, :cond_3

    .line 110
    .line 111
    sub-int v3, p7, v0

    .line 112
    .line 113
    sub-int/2addr v3, p5

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    int-to-float v3, v3

    .line 119
    mul-float v5, v3, v2

    .line 120
    .line 121
    sub-float v5, p6, v5

    .line 122
    .line 123
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    mul-float v6, v6, v2

    .line 128
    .line 129
    add-float/2addr v6, v5

    .line 130
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 131
    .line 132
    .line 133
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    mul-float v6, v6, v2

    .line 138
    .line 139
    add-float/2addr v5, v6

    .line 140
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 141
    .line 142
    .line 143
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    sub-float/2addr v3, v5

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    int-to-float v5, v5

    .line 153
    mul-float v3, v3, v5

    .line 154
    .line 155
    div-float/2addr v3, v1

    .line 156
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->c:Lcom/dingmouren/layoutmanagergroup/slide/c;

    .line 163
    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    const/4 p2, 0x0

    .line 167
    cmpl-float p6, p4, p2

    .line 168
    .line 169
    if-eqz p6, :cond_5

    .line 170
    .line 171
    cmpg-float p2, p4, p2

    .line 172
    .line 173
    if-gez p2, :cond_4

    .line 174
    .line 175
    const/4 p2, 0x4

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/16 p2, 0x8

    .line 178
    .line 179
    :goto_3
    invoke-interface {p1, p3, p4, p2}, Lcom/dingmouren/layoutmanagergroup/slide/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FI)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_5
    invoke-interface {p1, p3, p4, p5}, Lcom/dingmouren/layoutmanagergroup/slide/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FI)V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_4
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->c:Lcom/dingmouren/layoutmanagergroup/slide/c;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne p2, v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :cond_0
    invoke-interface {v1, p1, v0, v2}, Lcom/dingmouren/layoutmanagergroup/slide/c;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/b;->c:Lcom/dingmouren/layoutmanagergroup/slide/c;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/dingmouren/layoutmanagergroup/slide/c;->b()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
