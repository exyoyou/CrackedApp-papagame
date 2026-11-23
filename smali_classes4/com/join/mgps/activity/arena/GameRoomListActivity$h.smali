.class Lcom/join/mgps/activity/arena/GameRoomListActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/f2$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->initRoomSelecterlayout()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positon"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 30
    .line 31
    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 32
    .line 33
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 88
    .line 89
    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 90
    .line 91
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->t0(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :catch_1
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfig()V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2900(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->onGameSeriesSelected()V

    .line 191
    .line 192
    .line 193
    return-void
.end method
