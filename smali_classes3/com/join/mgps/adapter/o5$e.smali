.class Lcom/join/mgps/adapter/o5$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/o5;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Ljava/util/List;

.field final synthetic u:Lcom/join/mgps/adapter/o5$q;

.field final synthetic v:Lcom/join/mgps/adapter/o5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;Lcom/join/mgps/adapter/o5$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$recomList",
            "val$finalViewHolderRecommendStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$e;->v:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/o5$e;->t:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/o5$e;->u:Lcom/join/mgps/adapter/o5$q;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/adapter/o5$e;->v:Lcom/join/mgps/adapter/o5;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/adapter/o5$e;->t:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/o5$e;->u:Lcom/join/mgps/adapter/o5$q;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    invoke-static {p1, p2, v0}, Lcom/join/mgps/adapter/o5;->t(Lcom/join/mgps/adapter/o5;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    .line 14
    .line 15
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
    return-void
.end method
