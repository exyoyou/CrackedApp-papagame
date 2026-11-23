.class Lcom/join/mgps/activity/arena/GameRoomListActivity$k;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshGameRoomList(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$202(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
