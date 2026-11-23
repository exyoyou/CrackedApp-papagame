.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;


# direct methods
.method private constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->i(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->j(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->e(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Z

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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->i(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->i(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionStart",
            "itemCount",
            "payload"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromPosition",
            "toPosition",
            "itemCount"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$e;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
