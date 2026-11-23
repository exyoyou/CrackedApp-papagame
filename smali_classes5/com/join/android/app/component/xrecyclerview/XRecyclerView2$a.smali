.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setFooterDefault()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->e(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "content",
            "header"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstCompletelyVisiblePosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    return v1
.end method

.method public onRefreshBegin(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->setFooterDefault()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onRefresh()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
