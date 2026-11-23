.class public Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Z

.field private f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    return-void
.end method

.method private refreshLoadMoreState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->j(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->n:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->n(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->f(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :goto_1
    add-int/2addr v1, v2

    .line 31
    :goto_2
    add-int/2addr v1, v0

    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    sub-int/2addr p1, v1

    .line 20
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p1, v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    return-wide v0

    .line 35
    :cond_0
    const-wide/16 v0, -0x1

    .line 36
    .line 37
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-boolean v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    sub-int v2, p1, v3

    .line 20
    .line 21
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v3, v4}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->d(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "XRecyclerView require itemViewType in adapter should be less than 10000 "

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isRefreshHeader(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    iget-boolean v3, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const/16 p1, 0x2710

    .line 57
    .line 58
    return p1

    .line 59
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isHeader(I)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    add-int/lit8 p1, p1, -0x1

    .line 70
    .line 71
    :cond_4
    invoke-static {}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->e()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isFooter(I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    const/16 p1, 0x2711

    .line 93
    .line 94
    return p1

    .line 95
    :cond_6
    if-ge v2, v0, :cond_7

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1

    .line 104
    :cond_7
    return v1
.end method

.method public isFooter(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->f(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v0, v2

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_0
    return v1
.end method

.method public isHeader(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->n(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v0

    .line 20
    if-ge p1, v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1
.end method

.method public isRefreshHeader(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :cond_0
    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    .line 14
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$a;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$a;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isRefreshHeader(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->refreshLoadMoreState()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "payloads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isRefreshHeader(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->refreshLoadMoreState()V

    return-void

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->e:Z

    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->b(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$b;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-static {v0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->c(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const/16 v0, 0x2711

    .line 28
    .line 29
    if-ne p2, v0, :cond_2

    .line 30
    .line 31
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$b;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->g:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 36
    .line 37
    invoke-direct {p1, p0, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isHeader(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isRefreshHeader(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->isFooter(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$h;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
