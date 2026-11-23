.class public final Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;
.super Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl<",
        "Lcom/join/mgps/dto/MultiRecommendBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/a50;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J(\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/mgps/activity/recomend/adapter/GameListAdapter$3",
        "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;",
        "Lcom/join/mgps/dto/MultiRecommendBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemRecommendGame2Binding;",
        "onBind",
        "",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "position",
        "",
        "item",
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
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 2
    .line 3
    const p1, 0x7f0d0479

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;->onBind(Lv2/a;ILcom/join/mgps/dto/MultiRecommendBean;)V

    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/mgps/dto/MultiRecommendBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/a50;",
            ">;I",
            "Lcom/join/mgps/dto/MultiRecommendBean;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/a50;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/a50;->b:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 3
    :goto_0
    new-instance v1, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;

    invoke-direct {v1}, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;-><init>()V

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    :cond_3
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/a50;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_4
    if-eqz p2, :cond_5

    .line 9
    new-instance p1, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;

    iget-object v0, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    invoke-direct {p1, v0, p3}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$3$onBind$1;-><init>(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;Lcom/join/mgps/dto/MultiRecommendBean;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_5
    return-void
.end method
