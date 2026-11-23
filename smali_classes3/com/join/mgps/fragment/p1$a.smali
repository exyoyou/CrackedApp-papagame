.class Lcom/join/mgps/fragment/p1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p1;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/p1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/p1;->n:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/join/mgps/fragment/p1;->n:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/p1;->R(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/p1;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/p1;->O(Lcom/join/mgps/fragment/p1;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, Lcom/join/mgps/fragment/p1;->n:I

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/fragment/p1;->P(Lcom/join/mgps/fragment/p1;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$a;->a:Lcom/join/mgps/fragment/p1;

    .line 27
    .line 28
    iget v1, v0, Lcom/join/mgps/fragment/p1;->n:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/p1;->R(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
