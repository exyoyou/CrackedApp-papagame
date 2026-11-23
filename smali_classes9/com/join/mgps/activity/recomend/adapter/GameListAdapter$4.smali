.class public final Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;
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
        "Lcom/join/android/app/mgsim/wufun/databinding/e50;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J(\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/mgps/activity/recomend/adapter/GameListAdapter$4",
        "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;",
        "Lcom/join/mgps/dto/MultiRecommendBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemRecommendGame4Binding;",
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 2
    .line 3
    const p1, 0x7f0d047b

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;->onBind(Lv2/a;ILcom/join/mgps/dto/MultiRecommendBean;)V

    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/mgps/dto/MultiRecommendBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/e50;",
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

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBean;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/join/android/app/mgsim/wufun/databinding/e50;->n(Lcom/join/mgps/dto/AppBean;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter$4;->this$0:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/join/mgps/dto/AppBean;

    :cond_3
    invoke-static {p2, p1, v0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;->access$onBindGameList(Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;Lv2/a;Lcom/join/mgps/dto/AppBean;)V

    return-void
.end method
