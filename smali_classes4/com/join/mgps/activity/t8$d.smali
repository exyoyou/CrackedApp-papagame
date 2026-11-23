.class Lcom/join/mgps/activity/t8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t8;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/t8$d;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$d;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->Y(Lcom/join/mgps/activity/t8;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/t8;->l0(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$d;->a:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/activity/t8;->Z(Lcom/join/mgps/activity/t8;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/t8$d;->a:Lcom/join/mgps/activity/t8;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/t8$d;->a:Lcom/join/mgps/activity/t8;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->Y(Lcom/join/mgps/activity/t8;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/t8;->l0(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
