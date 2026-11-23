.class Lcom/join/mgps/customview/XListView3$b;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/XListView3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListView3;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView3;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3$b;->a:Lcom/join/mgps/customview/XListView3;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "checkCanDoRefresh: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3$b;->a:Lcom/join/mgps/customview/XListView3;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/customview/XListView3;->c(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3$b;->a:Lcom/join/mgps/customview/XListView3;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView3;->t()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3$b;->a:Lcom/join/mgps/customview/XListView3;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/customview/XListView3;->b(Lcom/join/mgps/customview/XListView3;)Lcom/join/mgps/customview/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3$b;->a:Lcom/join/mgps/customview/XListView3;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/customview/XListView3;->b(Lcom/join/mgps/customview/XListView3;)Lcom/join/mgps/customview/j;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
