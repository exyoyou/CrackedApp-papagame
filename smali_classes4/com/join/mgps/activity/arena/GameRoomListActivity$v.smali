.class Lcom/join/mgps/activity/arena/GameRoomListActivity$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/h0$e;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleArea"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$402(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1700(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ne p1, v1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1700(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 55
    .line 56
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1700(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public b(Lcom/join/mgps/dto/GameConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameConfig"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mSelGameConfig:Lcom/join/mgps/dto/GameConfig;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
