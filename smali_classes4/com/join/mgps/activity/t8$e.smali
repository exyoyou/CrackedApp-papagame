.class Lcom/join/mgps/activity/t8$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t8;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iget-object v0, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-static {v0, v3}, Lcom/join/mgps/activity/t8;->a0(Lcom/join/mgps/activity/t8;Z)Z

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_3

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->p(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/join/mgps/activity/t8;->X(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/adapter/f6;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr p2, v1

    .line 37
    if-lt p1, p2, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->b0(Lcom/join/mgps/activity/t8;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->c0(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/callbacks/k;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, v2}, Lcom/join/mgps/callbacks/k;->y(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->c0(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/callbacks/k;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1, v1}, Lcom/join/mgps/callbacks/k;->y(Z)V

    .line 65
    .line 66
    .line 67
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->d0(Lcom/join/mgps/activity/t8;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->c0(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/callbacks/k;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1, v2}, Lcom/join/mgps/callbacks/k;->y(Z)V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
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
            "rv",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Lcom/join/mgps/activity/t8;->f0(Lcom/join/mgps/activity/t8;I)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/t8$e;->t:Lcom/join/mgps/activity/t8;

    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p1, p2}, Lcom/join/mgps/activity/t8;->Q(Lcom/join/mgps/activity/t8;I)I

    .line 24
    .line 25
    .line 26
    return-void
.end method
