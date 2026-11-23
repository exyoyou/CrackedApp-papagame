.class Lcom/join/mgps/customview/MyRecyclerView$a;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/MyRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyRecyclerView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
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
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
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
    const-string p1, "onRefreshBegin----------"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/g1;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/customview/MyRecyclerView;->a(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/customview/MyRecyclerView;->a(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
