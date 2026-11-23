.class Lcom/join/mgps/activity/GameMainActivity4$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity4;->access$800(Lcom/join/mgps/activity/GameMainActivity4;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget p1, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p1, v0, :cond_5

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x5

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$1000(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    if-ne p1, v0, :cond_4

    .line 33
    .line 34
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$1000(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-void

    .line 40
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$1000(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity4;->access$800(Lcom/join/mgps/activity/GameMainActivity4;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameMainActivity4;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "cmd_login"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameMainActivity4;->gameMainNewYueZhanRl()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "cmd_create_game_room"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "cmd_join_room"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameMainActivity4;->hideLoadingDialog()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/join/mgps/activity/GameMainActivity4;->access$600(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/join/mgps/activity/GameMainActivity4;->access$600(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/join/mgps/activity/GameMainActivity4;->access$600(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v2, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$900(Lcom/join/mgps/activity/GameMainActivity4;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$i;->a:Lcom/join/mgps/activity/GameMainActivity4;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v0, "game_main"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_0
    return-void
.end method
