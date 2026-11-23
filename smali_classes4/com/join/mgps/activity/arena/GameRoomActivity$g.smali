.class Lcom/join/mgps/activity/arena/GameRoomActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->initOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

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
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v0, "start game so fast ,waiting a moment!"

    .line 16
    .line 17
    const-string v1, "GameRoomActivity"

    .line 18
    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 26
    .line 27
    iget-wide v6, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 28
    .line 29
    cmp-long p1, v6, v4

    .line 30
    .line 31
    if-lez p1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 38
    .line 39
    iget-wide v6, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 40
    .line 41
    sub-long/2addr v4, v6

    .line 42
    cmp-long p1, v4, v2

    .line 43
    .line 44
    if-gez p1, :cond_0

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1700(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v6, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 71
    .line 72
    const-string v7, "FIGHT_LOBBY"

    .line 73
    .line 74
    const/4 v8, 0x3

    .line 75
    if-ne p1, v6, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1800(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v6, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_GOTO_GAME_NOW:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 84
    .line 85
    if-eq p1, v6, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1800(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object v6, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 94
    .line 95
    if-ne p1, v6, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1800(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 105
    .line 106
    if-ne p1, v0, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 109
    .line 110
    const-string v0, "\u7b49\u5f85\u5176\u4ed6\u73a9\u5bb6\u51c6\u5907!"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 117
    .line 118
    iget-wide v9, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 119
    .line 120
    cmp-long p1, v9, v4

    .line 121
    .line 122
    if-lez p1, :cond_4

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 129
    .line 130
    iget-wide v9, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 131
    .line 132
    sub-long/2addr v4, v9

    .line 133
    cmp-long p1, v4, v2

    .line 134
    .line 135
    if-gez p1, :cond_4

    .line 136
    .line 137
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 142
    .line 143
    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->context:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1900(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g$a;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity$g;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v8, p1, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget-object v0, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 165
    .line 166
    if-ne p1, v0, :cond_6

    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 169
    .line 170
    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->context:Landroid/content/Context;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$2100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;

    .line 177
    .line 178
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity$g;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v8, p1, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget-object v0, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    .line 192
    .line 193
    if-ne p1, v0, :cond_7

    .line 194
    .line 195
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 196
    .line 197
    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5f00\u59cb!"

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_1
    return-void
.end method
