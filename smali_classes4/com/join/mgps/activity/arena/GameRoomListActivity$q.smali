.class Lcom/join/mgps/activity/arena/GameRoomListActivity$q;
.super Lcom/join/mgps/socket/fight/arena/a$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDisable()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;->onDisable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onErrorHint(IILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operation",
            "errorType",
            "value"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/socket/fight/arena/a$b0;->onErrorHint(IILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x65

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x7

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    check-cast p3, Lapp/mgsim/arena/ArenaResponse;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 14
    .line 15
    invoke-static {p1, p3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1500(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lapp/mgsim/arena/ArenaResponse;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
