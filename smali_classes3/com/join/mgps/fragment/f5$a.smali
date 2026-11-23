.class Lcom/join/mgps/fragment/f5$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f5;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/fragment/f5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

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
    .locals 1
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
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/fragment/f5;->R(Lcom/join/mgps/fragment/f5;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p2, 0x0

    .line 28
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f5;->S(Lcom/join/mgps/fragment/f5;Z)Z

    .line 29
    .line 30
    .line 31
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
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f5;->P(Lcom/join/mgps/fragment/f5;I)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$a;->t:Lcom/join/mgps/fragment/f5;

    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f5;->Q(Lcom/join/mgps/fragment/f5;I)I

    .line 24
    .line 25
    .line 26
    return-void
.end method
