.class public final Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->initView(Landroid/os/Bundle;)V
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
        "com/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;->this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

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
    .locals 1

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
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;->this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {p1, v0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->access$setScrolling$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;Z)V

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;->this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->access$expGame(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;->this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    aget p3, p1, p3

    .line 17
    .line 18
    invoke-static {p2, p3}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->access$setMFirstVisiblePosition$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;->this$0:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    aget p1, p1, p3

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->access$setMLastVisibleIndex$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
