.class final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\"\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "<init>",
        "(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V",
        "onChanged",
        "",
        "onItemRangeInserted",
        "positionStart",
        "",
        "itemCount",
        "onItemRangeChanged",
        "payload",
        "",
        "onItemRangeRemoved",
        "onItemRangeMoved",
        "fromPosition",
        "toPosition",
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
.field final synthetic this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMEmptyView$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getPullRefreshEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getLoadingMoreEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x0

    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMEmptyView$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMEmptyView$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
