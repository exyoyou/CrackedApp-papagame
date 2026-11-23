.class public Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/recycler/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;
    }
.end annotation


# instance fields
.field protected t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

.field private u:[I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->w:I

    .line 6
    .line 7
    return-void
.end method

.method private b([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    array-length v2, p1

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p1, v0

    .line 8
    .line 9
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->w:I

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->w:I

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->v:I

    .line 25
    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 27
    .line 28
    if-lt v0, p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 9
    .line 10
    if-nez p2, :cond_3

    .line 11
    .line 12
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->LinearLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->GridLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->StaggeredGridLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_3
    :goto_0
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$a;->a:[I

    .line 48
    .line 49
    iget-object p3, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->t:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    aget p2, p2, p3

    .line 56
    .line 57
    const/4 p3, 0x1

    .line 58
    if-eq p2, p3, :cond_7

    .line 59
    .line 60
    const/4 p3, 0x2

    .line 61
    if-eq p2, p3, :cond_6

    .line 62
    .line 63
    const/4 p3, 0x3

    .line 64
    if-eq p2, p3, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->u:[I

    .line 70
    .line 71
    if-nez p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    new-array p2, p2, [I

    .line 78
    .line 79
    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->u:[I

    .line 80
    .line 81
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->u:[I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->u:[I

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b([I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->v:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->v:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->v:I

    .line 111
    .line 112
    :goto_1
    return-void
.end method
