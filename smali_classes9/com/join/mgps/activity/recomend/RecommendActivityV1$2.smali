.class Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivityV1;->afterView()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

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
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

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
    invoke-static {p1, p2}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$002(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Z)Z

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
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    aget p3, p1, p3

    .line 16
    .line 17
    invoke-static {p2, p3}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$102(Lcom/join/mgps/activity/recomend/RecommendActivityV1;I)I

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    aget p1, p1, p3

    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$202(Lcom/join/mgps/activity/recomend/RecommendActivityV1;I)I

    .line 26
    .line 27
    .line 28
    return-void
.end method
