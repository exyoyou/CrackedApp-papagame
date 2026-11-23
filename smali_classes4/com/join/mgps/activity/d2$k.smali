.class Lcom/join/mgps/activity/d2$k;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d2;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic u:Lcom/join/mgps/activity/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d2;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$layoutManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/d2$k;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/d2;->X:Lcom/join/android/app/component/video/c;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/activity/d2;->X:Lcom/join/android/app/component/video/c;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->l(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/d2;->expListPoint()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p2, 0x0

    .line 37
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/d2;->M(Lcom/join/mgps/activity/d2;Z)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
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
    iget-object p2, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 5
    .line 6
    iget-object p3, p0, Lcom/join/mgps/activity/d2$k;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-static {p2, p3}, Lcom/join/mgps/activity/d2;->P(Lcom/join/mgps/activity/d2;I)I

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 16
    .line 17
    iget-object p3, p0, Lcom/join/mgps/activity/d2$k;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-static {p2, p3}, Lcom/join/mgps/activity/d2;->S(Lcom/join/mgps/activity/d2;I)I

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 27
    .line 28
    iget-object p3, p2, Lcom/join/mgps/activity/d2;->X:Lcom/join/android/app/component/video/c;

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 39
    .line 40
    iget-object p3, p2, Lcom/join/mgps/activity/d2;->X:Lcom/join/android/app/component/video/c;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/join/mgps/activity/d2;->N(Lcom/join/mgps/activity/d2;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/activity/d2;->R(Lcom/join/mgps/activity/d2;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/join/mgps/activity/d2;->N(Lcom/join/mgps/activity/d2;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/d2$k;->u:Lcom/join/mgps/activity/d2;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/join/mgps/activity/d2;->T(Lcom/join/mgps/activity/d2;)Lcom/join/mgps/adapter/x1;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/adapter/x1;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/join/android/app/component/video/c;->h(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method
