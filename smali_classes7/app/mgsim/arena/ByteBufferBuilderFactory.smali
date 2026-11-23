.class public Lapp/mgsim/arena/ByteBufferBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final version:I = 0x2


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

.method public static battleScoreBoardReq(IIJLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setBattleScoreBoard(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static cancelSubscribeGameRoom(J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    .line 9
    if-eq p1, v2, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setClosePosition(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private static createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    add-int/lit8 v1, v0, 0x4

    .line 7
    .line 8
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createBuffer(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public static createRejoinRoomReq(IIJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->RE_CONNECTION_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static createRomLoadedReq(IIJLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setBattleScoreBoard(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static createRoom(IJJIIZZZZZ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p5}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-virtual {p5, p10}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    invoke-virtual {p5, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p8}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p9}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p11}, Lcom/papa91/battle/protocol/Params$Builder;->setFromLive(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 p1, 0x2

    .line 60
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public static fastJoinRoom(JIIZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, p5, p6}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static getFrameForwardServer(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static getKickPlayerInfo(IIIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static joinBattleArea(Lcom/papa91/battle/protocol/BattleArea;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static joinRoom(ILjava/lang/String;ZIJ)Ljava/nio/ByteBuffer;
    .locals 1

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
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p3, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object p2, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p4, p5}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static kickOutRoomPosition(IIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static leaveRoom(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static lobbyStartGame(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static login(Ljava/lang/String;ILjava/lang/String;J)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setDeviceId(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setToken(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 p1, 0x2

    .line 46
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static ping(J)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/papa91/battle/protocol/Params$Builder;->setTimestamp(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static playerReadyGame(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static searchRoomByID(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static setAllowPcJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static setAllowPeripheralJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static setAllowSpectatorJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static setChallengeCoins(IIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static setRoomPassword(ILjava/lang/String;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static setRoomServerPlayMode(IIJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p0, v2, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->ZONE:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p1, 0x2

    .line 40
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static shareJoinRoom(JIJLjava/lang/String;IZJ)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    invoke-virtual {p5, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p5}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    invoke-virtual {p5, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    invoke-virtual {p5, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p2, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x2

    .line 81
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p8, p9}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public static spectatorSit(IIIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static subscribeGameRoom(ILcom/papa91/battle/protocol/Params$RoomType;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request$Builder;->build()Lcom/papa91/battle/protocol/Request;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
