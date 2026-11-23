.class public final Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic $layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {p1, v0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->access$setScrolling$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Z)V

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->access$expVisibleGames(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-static {p1, p2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->access$setFirstVisiblePosition$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p1, p2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->access$setLastVisibleIndex$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
