.class Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleSevenActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

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
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->autoPlay()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->access$000(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p2, 0x0

    .line 23
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->access$102(Lcom/join/mgps/activity/CollectionModuleSevenActivity;Z)Z

    .line 24
    .line 25
    .line 26
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {p2, p3}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->access$202(Lcom/join/mgps/activity/CollectionModuleSevenActivity;I)I

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;->t:Lcom/join/mgps/activity/CollectionModuleSevenActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p2, p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->access$302(Lcom/join/mgps/activity/CollectionModuleSevenActivity;I)I

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
