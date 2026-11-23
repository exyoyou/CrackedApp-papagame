.class Lcom/join/mgps/fragment/z4$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/fragment/z4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

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
    .locals 3
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
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/fragment/z4;->x:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "1"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/join/mgps/fragment/z4;->I:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/fragment/z4;->J:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/join/mgps/fragment/z4;->I:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/fragment/z4;->J:Ljava/lang/Runnable;

    .line 32
    .line 33
    const-wide/16 v1, 0x1f4

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/fragment/z4;->R(Lcom/join/mgps/fragment/z4;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p2, 0x0

    .line 50
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/z4;->U(Lcom/join/mgps/fragment/z4;Z)Z

    .line 51
    .line 52
    .line 53
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
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    aget p3, p1, p3

    .line 12
    .line 13
    invoke-static {p2, p3}, Lcom/join/mgps/fragment/z4;->V(Lcom/join/mgps/fragment/z4;I)I

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/fragment/z4$a;->t:Lcom/join/mgps/fragment/z4;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    aget p1, p1, p3

    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/join/mgps/fragment/z4;->W(Lcom/join/mgps/fragment/z4;I)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
