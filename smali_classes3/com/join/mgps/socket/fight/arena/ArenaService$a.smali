.class Lcom/join/mgps/socket/fight/arena/ArenaService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/ArenaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/ArenaService;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V
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
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public executeRequest(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->k(Lapp/mgsim/arena/ArenaRequest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    const-string v1, "-----onError  ----- "

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->f(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/AreaInfo;)Lapp/mgsim/arena/AreaInfo;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->g(Lcom/join/mgps/socket/fight/arena/ArenaService;Z)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->h(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/UDPHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->stop()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 36
    .line 37
    invoke-virtual {v0}, Lapp/mgsim/arena/CheckThread;->stop()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->w(Lapp/mgsim/arena/SocketError;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onServerResponse(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->r(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public onSocketConnected()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    const-string v1, "-----mArenaListener onSocketConnected----"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lapp/mgsim/arena/CheckThread;->setContinue(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lapp/mgsim/arena/ArenaSocketThread;->setLastHeartBeatStartTime(J)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/Thread;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 74
    .line 75
    invoke-static {v2, v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->c(Lcom/join/mgps/socket/fight/arena/ArenaService;Ljava/lang/String;I)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_0

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const-string v2, "register_type_public"

    .line 98
    .line 99
    invoke-static {v2}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 110
    .line 111
    invoke-static {v4, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->e(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/ArenaRequest;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    const-string v2, ""

    .line 116
    .line 117
    invoke-static {v0, v1, v2, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->login(Ljava/lang/String;ILjava/lang/String;J)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v3, v0}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public onSocketDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    .line 2
    .line 3
    const-string v1, "-----mArenaListener onSocketDisconnected----"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "\u4e0e\u5927\u5385\u670d\u52a1\u5668\u8fde\u63a5\u65ad\u5f00\uff01"

    .line 9
    .line 10
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->onError(Lapp/mgsim/arena/SocketError;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
