.class Lcom/join/mgps/fragment/roomlist/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/c;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$g;->b:Lcom/join/mgps/fragment/roomlist/c;

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
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$g;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$g;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 12
    .line 13
    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528!"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$g;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$g;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshData(Z)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
