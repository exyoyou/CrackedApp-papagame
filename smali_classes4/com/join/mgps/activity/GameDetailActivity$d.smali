.class Lcom/join/mgps/activity/GameDetailActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->AfterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->b:Lcom/join/mgps/activity/GameDetailActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
