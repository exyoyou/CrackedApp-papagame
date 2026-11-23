.class Lcom/join/mgps/activity/arena/GameRoomActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/PlayerInfoContainerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public b(Lcom/papa91/battle/protocol/RoomPosition;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "roomPosition",
            "close",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x4

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/16 p3, 0x101

    .line 27
    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    aput-object p3, p2, v4

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    aput-object p3, p2, v3

    .line 39
    .line 40
    const-string p3, "\u5f53\u524d\u623f\u95f4\u5df2\u5f00\u59cb\uff0c\u8bf7\u5148\u8fdb\u5165\u6e38\u620f\u540e\u518d\u5750\u4e0b"

    .line 41
    .line 42
    aput-object p3, p2, v2

    .line 43
    .line 44
    const-string p3, "\u786e\u5b9a"

    .line 45
    .line 46
    aput-object p3, p2, v1

    .line 47
    .line 48
    const-string p3, "dialog_error_hint"

    .line 49
    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v5, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 61
    .line 62
    if-ne p1, v5, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eq p1, v0, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-array v0, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "\u4f4d\u7f6e\uff1a"

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v5, "P"

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    aput-object v1, v0, v4

    .line 105
    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    sget-object p2, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    sget-object p2, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    .line 112
    .line 113
    :goto_0
    aput-object p2, v0, v3

    .line 114
    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    aput-object p2, v0, v2

    .line 120
    .line 121
    const-string p2, "seat_set"

    .line 122
    .line 123
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    return-void
.end method

.method public c(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "roomPosition",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    const/4 v3, 0x2

    .line 42
    const/4 v4, 0x1

    .line 43
    const-string v5, "P"

    .line 44
    .line 45
    const-string v6, "\u4f4d\u7f6e\uff1a"

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x4

    .line 49
    const-string v9, "seat_set"

    .line 50
    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-array v1, v8, [Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    aput-object v5, v1, v7

    .line 80
    .line 81
    sget-object v5, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 82
    .line 83
    aput-object v5, v1, v4

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    aput-object p2, v1, v3

    .line 90
    .line 91
    aput-object p1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-array v1, v8, [Ljava/lang/Object;

    .line 104
    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    aput-object v5, v1, v7

    .line 124
    .line 125
    sget-object v5, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 126
    .line 127
    aput-object v5, v1, v4

    .line 128
    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    aput-object p2, v1, v3

    .line 134
    .line 135
    aput-object p1, v1, v2

    .line 136
    .line 137
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const/16 v1, 0x101

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v0, v5

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    aput-object v1, v0, v3

    .line 39
    .line 40
    const-string v1, "\u5f53\u524d\u623f\u95f4\u5df2\u5f00\u59cb\uff0c\u8bf7\u5148\u8fdb\u5165\u6e38\u620f\u540e\u518d\u5750\u4e0b"

    .line 41
    .line 42
    aput-object v1, v0, v2

    .line 43
    .line 44
    const-string v1, "\u786e\u5b9a"

    .line 45
    .line 46
    aput-object v1, v0, v4

    .line 47
    .line 48
    const-string v1, "dialog_error_hint"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-array v1, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v6, "\u4f4d\u7f6e\uff1a"

    .line 68
    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, "P"

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    aput-object v4, v1, v5

    .line 85
    .line 86
    sget-object v4, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    .line 87
    .line 88
    aput-object v4, v1, v3

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    aput-object p1, v1, v2

    .line 95
    .line 96
    const-string p1, "seat_set"

    .line 97
    .line 98
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    .line 37
    .line 38
    mul-double v4, v4, v6

    .line 39
    .line 40
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    add-double/2addr v4, v6

    .line 43
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-double v4, v4, v6

    .line 49
    .line 50
    double-to-int v4, v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "register_type_GameRoomActivity"

    .line 62
    .line 63
    invoke-static {v4, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 77
    .line 78
    if-ne v0, v2, :cond_1

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    new-array v2, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    aput-object v1, v2, v3

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    aput-object v1, v2, v4

    .line 88
    .line 89
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 97
    .line 98
    iget-object v6, v6, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    aput-object v5, v0, v3

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    move-object v2, v0

    .line 142
    :catch_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v1, "share_friends_1"

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    return-void
.end method
