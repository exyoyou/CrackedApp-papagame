.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->e(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->f(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

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
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
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
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->setFooterDefault()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;->onRefresh()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
