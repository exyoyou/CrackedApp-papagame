.class Lcom/join/mgps/fragment/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/d0;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d0;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/d0$b;->b:Lcom/join/mgps/fragment/d0;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$b;->b:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/d0;->j:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/join/mgps/fragment/d0;->n:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/d0;->N(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v1, v0, Lcom/join/mgps/fragment/d0;->n:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/d0;->loadData(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$b;->b:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/fragment/d0;->n:I

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$b;->b:Lcom/join/mgps/fragment/d0;

    .line 12
    .line 13
    iget v1, v0, Lcom/join/mgps/fragment/d0;->j:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, v0, Lcom/join/mgps/fragment/d0;->n:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/d0;->N(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v1, v0, Lcom/join/mgps/fragment/d0;->n:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/d0;->loadData(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
