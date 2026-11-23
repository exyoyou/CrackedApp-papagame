.class public final Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;->onBind(Lv2/a;ILcom/join/mgps/dto/MultiRecommendBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $item:Lcom/join/mgps/dto/MultiRecommendBean;

.field final synthetic this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;Lcom/join/mgps/dto/MultiRecommendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;->$item:Lcom/join/mgps/dto/MultiRecommendBean;

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

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;->$item:Lcom/join/mgps/dto/MultiRecommendBean;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "getData(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;->expGame(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
