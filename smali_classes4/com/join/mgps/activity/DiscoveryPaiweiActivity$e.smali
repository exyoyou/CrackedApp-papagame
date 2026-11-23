.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$400(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$000(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->rvGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$500(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    add-int/lit8 p2, p2, -0x3

    .line 47
    .line 48
    if-lt p1, p2, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$608(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;->t:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->getPaiweiGameList()V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
