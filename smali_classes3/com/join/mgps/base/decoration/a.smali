.class public abstract Lcom/join/mgps/base/decoration/a;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/base/decoration/a$b;,
        Lcom/join/mgps/base/decoration/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniversalItemDecoration"


# instance fields
.field public decorations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/mgps/base/decoration/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mTotalColumn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/base/decoration/a;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    return-void
.end method

.method public static string2Int(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "defValue"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    return p1
.end method


# virtual methods
.method public abstract getItemOffsets(I)Lcom/join/mgps/base/decoration/a$b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
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
    iget-object p4, p0, Lcom/join/mgps/base/decoration/a;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p4, :cond_0

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p4, p0, Lcom/join/mgps/base/decoration/a;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4
    :cond_0
    iget p4, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 5
    iget-object p4, p0, Lcom/join/mgps/base/decoration/a;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    iput p4, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    .line 6
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p3}, Lcom/join/mgps/base/decoration/a;->getItemOffsets(I)Lcom/join/mgps/base/decoration/a$b;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p4, 0x0

    if-nez p3, :cond_2

    .line 9
    iput p4, p2, Lcom/join/mgps/base/decoration/a$b;->b:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/base/decoration/a$b;

    if-eqz v0, :cond_4

    .line 11
    iget p4, p2, Lcom/join/mgps/base/decoration/a$b;->a:I

    iget v2, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    if-ne p4, v2, :cond_3

    iget p4, v0, Lcom/join/mgps/base/decoration/a$b;->a:I

    invoke-virtual {p0, v1, p4}, Lcom/join/mgps/base/decoration/a;->isRight(II)Z

    move-result p4

    if-nez p4, :cond_3

    .line 12
    iget p4, v0, Lcom/join/mgps/base/decoration/a$b;->b:I

    iget v0, v0, Lcom/join/mgps/base/decoration/a$b;->a:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    rem-int/2addr p4, v1

    sub-int/2addr v1, p4

    add-int/2addr v0, v1

    iput v0, p2, Lcom/join/mgps/base/decoration/a$b;->b:I

    goto :goto_0

    .line 13
    :cond_3
    iget p4, v0, Lcom/join/mgps/base/decoration/a$b;->b:I

    iget v0, v0, Lcom/join/mgps/base/decoration/a$b;->a:I

    add-int/2addr p4, v0

    iput p4, p2, Lcom/join/mgps/base/decoration/a$b;->b:I

    goto :goto_0

    .line 14
    :cond_4
    iput p4, p2, Lcom/join/mgps/base/decoration/a$b;->b:I

    .line 15
    :goto_0
    iget p4, p2, Lcom/join/mgps/base/decoration/a$b;->c:I

    iget v0, p2, Lcom/join/mgps/base/decoration/a$b;->e:I

    iget v1, p2, Lcom/join/mgps/base/decoration/a$b;->d:I

    iget v2, p2, Lcom/join/mgps/base/decoration/a$b;->f:I

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isLeft(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    sub-int/2addr p1, v0

    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/join/mgps/base/decoration/a$b;

    .line 31
    .line 32
    iget v1, v1, Lcom/join/mgps/base/decoration/a$b;->b:I

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/mgps/base/decoration/a$b;

    .line 45
    .line 46
    iget p1, p1, Lcom/join/mgps/base/decoration/a$b;->a:I

    .line 47
    .line 48
    add-int/2addr v1, p1

    .line 49
    iget p1, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    .line 50
    .line 51
    rem-int/2addr v1, p1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    :cond_2
    :goto_0
    return v0
.end method

.method public isRight(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "column"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    sub-int/2addr p1, v2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/base/decoration/a$b;

    .line 30
    .line 31
    iget v1, v1, Lcom/join/mgps/base/decoration/a$b;->b:I

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/join/mgps/base/decoration/a$b;

    .line 44
    .line 45
    iget p1, p1, Lcom/join/mgps/base/decoration/a$b;->a:I

    .line 46
    .line 47
    add-int/2addr v1, p1

    .line 48
    iget p1, p0, Lcom/join/mgps/base/decoration/a;->mTotalColumn:I

    .line 49
    .line 50
    rem-int/2addr v1, p1

    .line 51
    add-int/2addr v1, p2

    .line 52
    if-ne v1, p1, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    :cond_1
    :goto_0
    return v0
.end method

.method public isTop(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colNum",
            "pos"
        }
    .end annotation

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
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
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_5

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v5, v1}, Lcom/join/mgps/base/decoration/a;->string2Int(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    move-object/from16 v6, p0

    .line 31
    .line 32
    iget-object v7, v6, Lcom/join/mgps/base/decoration/a;->decorations:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/join/mgps/base/decoration/a$b;

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    .line 60
    add-int v13, v8, v9

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    .line 68
    sub-int v14, v8, v9

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 75
    .line 76
    add-int v15, v8, v9

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 83
    .line 84
    sub-int/2addr v4, v7

    .line 85
    iget v7, v5, Lcom/join/mgps/base/decoration/a$b;->f:I

    .line 86
    .line 87
    if-eqz v7, :cond_1

    .line 88
    .line 89
    iget v8, v5, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 90
    .line 91
    sub-int v9, v14, v8

    .line 92
    .line 93
    iget v8, v5, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 94
    .line 95
    add-int v11, v15, v8

    .line 96
    .line 97
    add-int v12, v13, v7

    .line 98
    .line 99
    move-object v7, v5

    .line 100
    move-object/from16 v8, p1

    .line 101
    .line 102
    move v10, v13

    .line 103
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/base/decoration/a$b;->a(Landroid/graphics/Canvas;IIII)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget v7, v5, Lcom/join/mgps/base/decoration/a$b;->e:I

    .line 107
    .line 108
    if-eqz v7, :cond_2

    .line 109
    .line 110
    iget v8, v5, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 111
    .line 112
    sub-int v9, v14, v8

    .line 113
    .line 114
    sub-int v10, v4, v7

    .line 115
    .line 116
    iget v7, v5, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 117
    .line 118
    add-int v11, v15, v7

    .line 119
    .line 120
    move-object v7, v5

    .line 121
    move-object/from16 v8, p1

    .line 122
    .line 123
    move v12, v4

    .line 124
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/base/decoration/a$b;->a(Landroid/graphics/Canvas;IIII)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget v7, v5, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 128
    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    sub-int v9, v14, v7

    .line 132
    .line 133
    move-object v7, v5

    .line 134
    move-object/from16 v8, p1

    .line 135
    .line 136
    move v10, v4

    .line 137
    move v11, v14

    .line 138
    move v12, v13

    .line 139
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/base/decoration/a$b;->a(Landroid/graphics/Canvas;IIII)V

    .line 140
    .line 141
    .line 142
    :cond_3
    iget v7, v5, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 143
    .line 144
    if-eqz v7, :cond_4

    .line 145
    .line 146
    add-int v11, v15, v7

    .line 147
    .line 148
    move-object v7, v5

    .line 149
    move-object/from16 v8, p1

    .line 150
    .line 151
    move v9, v15

    .line 152
    move v10, v4

    .line 153
    move v12, v13

    .line 154
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/base/decoration/a$b;->a(Landroid/graphics/Canvas;IIII)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    move-object/from16 v6, p0

    .line 162
    .line 163
    return-void
.end method
