.class Lcom/join/mgps/fragment/roomlist/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/roomlist/c$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/roomlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/fragment/roomlist/c;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    iput p1, v0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "----onRoomSortChanged onShowPeripheralChanged---  sort data start  Time :"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->Y(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {p1, v2, v3}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->n0()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->P(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/fragment/roomlist/c$n;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-interface {p1, v2, v3}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "----onRoomSortChanged onShowPeripheralChanged ---sort data spend  Time :"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    sub-long/2addr v3, v0

    .line 108
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public b(Lcom/join/mgps/dto/GameConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->r0(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v0, 0x2

    .line 88
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->T(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 127
    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getInviteFriend()Lcom/join/mgps/dto/FriendBean;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getInviteFriend()Lcom/join/mgps/dto/FriendBean;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 164
    .line 165
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->setInviteFriend(Lcom/join/mgps/dto/FriendBean;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 201
    .line 202
    invoke-static {v1}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->createRoom(Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const/16 v1, 0x3f5

    .line 217
    .line 218
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/roomlist/c;->M0(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    :cond_3
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "----onRoomSortChanged onGameListSelected---  gameId :"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "----onRoomSortChanged onGameListSelected---  sort data start  Time :"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 62
    .line 63
    invoke-static {v2, p1}, Lcom/join/mgps/fragment/roomlist/c;->Z(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->Y(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    monitor-enter v2

    .line 85
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/join/mgps/fragment/roomlist/c;->Q(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->X(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 117
    .line 118
    .line 119
    monitor-exit v2

    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    invoke-static {v2, v3, p1}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->n0()V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v3, "----onRoomSortChanged onGameListSelected---sort data spend  Time :"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    sub-long/2addr v3, v0

    .line 162
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public d(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sortType",
            "roomType"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "----onRoomSortChanged onPrioritySortChanged---  sort data start  Time :"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->U(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 33
    .line 34
    iput p2, v2, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->V(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/join/mgps/fragment/roomlist/c;->W(Lcom/join/mgps/fragment/roomlist/c;I)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->X(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->Y(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {p1, p2, v2}, Lcom/join/mgps/fragment/roomlist/c;->O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->n0()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/fragment/roomlist/c;->P(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/fragment/roomlist/c$n;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/join/mgps/fragment/roomlist/c;->M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/join/mgps/fragment/roomlist/c;->S(Lcom/join/mgps/fragment/roomlist/c;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-interface {p1, p2, v2}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$k;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "----onRoomSortChanged onPrioritySortChanged---sort data spend  Time :"

    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    sub-long/2addr v2, v0

    .line 116
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
