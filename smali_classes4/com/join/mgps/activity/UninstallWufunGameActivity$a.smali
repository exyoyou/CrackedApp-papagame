.class Lcom/join/mgps/activity/UninstallWufunGameActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UninstallWufunGameActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/UninstallWufunGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

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
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$202(Lcom/join/mgps/activity/UninstallWufunGameActivity;Z)Z

    .line 12
    .line 13
    .line 14
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
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-static {p2, p3}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$002(Lcom/join/mgps/activity/UninstallWufunGameActivity;I)I

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$a;->t:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p2, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$102(Lcom/join/mgps/activity/UninstallWufunGameActivity;I)I

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
