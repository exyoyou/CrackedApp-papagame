.class Lcom/join/mgps/activity/arena/GameRoomActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->showRoomTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 25
    .line 26
    const-string v1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5b58\u6863!"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 41
    .line 42
    const-string v1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\u7f51\u7edc\u5b58\u6863\uff01"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x2

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1600(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/dto/ArchiveBean;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x1

    .line 79
    aput-object v2, v1, v3

    .line 80
    .line 81
    const-string v2, "net_archive"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->z()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->C()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 109
    .line 110
    const-string v1, "\u5f53\u524d\u6e38\u620f\u6682\u65e0\u7f51\u7edc\u5b58\u6863!"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public b(IZZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomType",
            "roomxingzhi",
            "allowSee",
            "roomPass"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    :goto_0
    const/4 v4, 0x0

    .line 28
    const-string v5, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\uff01"

    .line 29
    .line 30
    const-string v6, "register_type_GameRoomActivity"

    .line 31
    .line 32
    if-eq p1, v0, :cond_6

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v7, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 43
    .line 44
    if-ne v0, v7, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 47
    .line 48
    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6ePC!"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 63
    .line 64
    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 71
    .line 72
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 73
    .line 74
    iget-object v7, v7, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 75
    .line 76
    invoke-static {v0, v7}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 83
    .line 84
    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e!"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    if-ne p1, v2, :cond_5

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 p1, 0x1

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {v6, v2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v1, :cond_a

    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 133
    .line 134
    if-ne p1, v0, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 137
    .line 138
    const-string p3, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u65c1\u89c2!"

    .line 139
    .line 140
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_8

    .line 151
    .line 152
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 153
    .line 154
    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_9

    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 169
    .line 170
    invoke-static {p1, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2302(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 175
    .line 176
    invoke-static {p1, v4}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2302(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z

    .line 177
    .line 178
    .line 179
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 180
    .line 181
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eq p1, p3, :cond_a

    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 194
    .line 195
    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {v6, p3, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomSpectatorJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    invoke-virtual {p1, p3}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    :goto_4
    const-string p1, ""

    .line 215
    .line 216
    if-nez p2, :cond_b

    .line 217
    .line 218
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 219
    .line 220
    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-nez p2, :cond_c

    .line 227
    .line 228
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 229
    .line 230
    invoke-static {p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 235
    .line 236
    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 237
    .line 238
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {v6, p3, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_b
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 266
    .line 267
    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 268
    .line 269
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-eqz p2, :cond_c

    .line 274
    .line 275
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 276
    .line 277
    invoke-static {p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 282
    .line 283
    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 284
    .line 285
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    invoke-static {v6, p3, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 294
    .line 295
    .line 296
    :cond_c
    :goto_5
    return-void
.end method
