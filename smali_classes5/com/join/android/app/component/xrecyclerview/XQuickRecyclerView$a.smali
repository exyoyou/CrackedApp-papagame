.class Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->f(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->g(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->i(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->i(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->g(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
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
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->setFooterDefault()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->a(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->a(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;->onRefresh()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
