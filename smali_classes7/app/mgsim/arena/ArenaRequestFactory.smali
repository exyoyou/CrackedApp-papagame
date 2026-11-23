.class public Lapp/mgsim/arena/ArenaRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancelSubscribeGameRoom()Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_cancel_subscribe_game_room"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "register_type_none"

    .line 9
    .line 10
    iput-object v1, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static changeBattleArea(Ljava/lang/String;Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_join_battle_area"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lapp/mgsim/arena/ArenaRequest;->battleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 9
    .line 10
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static closeSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    invoke-static {p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getCmd(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 11
    .line 12
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 16
    .line 17
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method

.method public static createRoom(Ljava/lang/String;Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 3

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_create_game_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 3
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 4
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 6
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 7
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 3

    .line 8
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_create_game_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 9
    iput-boolean p4, v0, Lapp/mgsim/arena/ArenaRequest;->isFromLive:Z

    .line 10
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 11
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 12
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 14
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 15
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static fastJoinRoom(Ljava/lang/String;JI)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_quick_join_room"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 9
    .line 10
    iput-wide p1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method private static getCmd(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "cmd_set_room_close_p4_position"

    goto :goto_0

    :cond_1
    const-string p0, "cmd_set_room_close_p3_position"

    goto :goto_0

    :cond_2
    const-string p0, "cmd_set_room_close_p2_position"

    goto :goto_0

    :cond_3
    const-string p0, "cmd_set_room_close_p1_position"

    :goto_0
    return-object p0
.end method

.method public static getFrameForwardServer(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_get_frameforward_server"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static getKickOutRoomPositionInfo(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_get_kick_out_room_position_info"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_join_room"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iput-object p2, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 26
    .line 27
    return-object v0
.end method

.method public static kickOutRoomPosition(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_kick_out_room_position"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static leaveRoom(I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_leave_room"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    const-string p0, "register_type_none"

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_login"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public static openSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    invoke-static {p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getCmd(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 11
    .line 12
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 16
    .line 17
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method

.method public static ping()Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_ping"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "register_type_none"

    .line 9
    .line 10
    iput-object v1, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static playerReadyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_player_ready_game"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_search_room_by_id"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static setChallengeGolden(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_challenge_coins_altr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_password_altr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 11
    .line 12
    iput-object p2, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_pc_join_altr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    .line 16
    .line 17
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 18
    .line 19
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public static setRoomPeripheralJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_peripheral_join_altr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 16
    .line 17
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 18
    .line 19
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public static setRoomServerPlayMode(II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_server_play_mode"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lapp/mgsim/arena/ArenaRequest;->playMode:I

    .line 9
    .line 10
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 11
    .line 12
    return-object v0
.end method

.method public static setRoomSpectatorJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_set_room_spectator_join_altr"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 16
    .line 17
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 18
    .line 19
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public static shareJoinRoom(Ljava/lang/String;JIJLjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_share_join_room"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p1, v0, Lapp/mgsim/arena/ArenaRequest;->fightId:J

    .line 11
    .line 12
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 13
    .line 14
    iput-wide p4, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 15
    .line 16
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    iput-object p6, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public static spectatorSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_spectator_sit"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_lobby_start_game"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 9
    .line 10
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public static subscribeRoomList(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    const-string v1, "cmd_subscribe_game_roomlist"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 9
    .line 10
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 11
    .line 12
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method
