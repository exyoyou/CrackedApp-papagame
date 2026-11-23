.class Lcom/join/mgps/activity/GameDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->b:Lcom/join/mgps/activity/GameDetailActivity;

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
    const-string v0, "loadmore 11111"

    .line 2
    .line 3
    const-string v1, "gamelist  "

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/join/mgps/activity/GameDetailActivity;->isloding:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 19
    .line 20
    .line 21
    const-string v0, "loadmore 2222"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
