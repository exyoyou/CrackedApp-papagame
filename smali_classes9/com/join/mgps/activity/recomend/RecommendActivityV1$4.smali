.class Lcom/join/mgps/activity/recomend/RecommendActivityV1$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

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
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$400(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
