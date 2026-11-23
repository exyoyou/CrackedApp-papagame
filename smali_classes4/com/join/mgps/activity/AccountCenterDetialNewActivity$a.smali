.class Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 10
    .line 11
    iget p1, p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;->a:I

    .line 12
    .line 13
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1d

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Ljava/util/List;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;->d:Lit/sephiroth/android/library/widget/HListView;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/adapter/x;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->context:Landroid/content/Context;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v0, v1, p2, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1d

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const v0, 0x7f0d01a1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 28
    .line 29
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const v0, 0x7f0d0330

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 51
    .line 52
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method
