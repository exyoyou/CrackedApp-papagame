.class Lcom/xuanyu/stickyheader/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuanyu/stickyheader/i;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xuanyu/stickyheader/i;


# direct methods
.method constructor <init>(Lcom/xuanyu/stickyheader/i;)V
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
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

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
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 5
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
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p1}, Lcom/xuanyu/stickyheader/i;->c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p2}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p2}, Lcom/xuanyu/stickyheader/i;->f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p1}, Lcom/xuanyu/stickyheader/i;->c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p2}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p2}, Lcom/xuanyu/stickyheader/i;->f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    invoke-static {p3}, Lcom/xuanyu/stickyheader/i;->e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 7
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
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    const-wide/16 v5, 0x64

    .line 38
    .line 39
    add-long/2addr v3, v5

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 7
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
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    const-wide/16 v5, 0x64

    .line 38
    .line 39
    add-long/2addr v3, v5

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 7
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
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$b;->b:Lcom/xuanyu/stickyheader/i;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    const-wide/16 v5, 0x12c

    .line 38
    .line 39
    add-long/2addr v3, v5

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
