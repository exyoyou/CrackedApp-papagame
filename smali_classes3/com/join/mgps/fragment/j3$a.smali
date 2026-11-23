.class Lcom/join/mgps/fragment/j3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j3;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/j3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$a;->b:Lcom/join/mgps/fragment/j3;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$a;->b:Lcom/join/mgps/fragment/j3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/fragment/j3;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/join/mgps/fragment/j3;->q:I

    .line 8
    .line 9
    iget v2, v0, Lcom/join/mgps/fragment/j3;->k:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/j3;->P(Lcom/join/mgps/fragment/j3;II)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/fragment/j3;->T()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
