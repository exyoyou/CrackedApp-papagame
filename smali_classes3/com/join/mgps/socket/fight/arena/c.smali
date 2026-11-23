.class public Lcom/join/mgps/socket/fight/arena/c;
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

.method public static a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "accountUtil"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eq v0, p1, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eq v0, p1, :cond_1

    .line 50
    .line 51
    return v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eq v0, p1, :cond_2

    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eq p0, p1, :cond_3

    .line 92
    .line 93
    return v1

    .line 94
    :cond_3
    const/4 p0, 0x0

    .line 95
    return p0
.end method

.method public static b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleArea"
        }
    .end annotation

    .line 1
    new-instance v0, Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lapp/mgsim/arena/AreaInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static c(I)Lcom/papa91/battle/protocol/BattleArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 25
    .line 26
    return-object p0
.end method

.method public static d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-string p0, "\u5317\u4eac\u533a"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const-string p0, "\u4e0a\u6d77\u533a"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne p0, v0, :cond_2

    .line 42
    .line 43
    const-string p0, "\u5e7f\u4e1c\u533a"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object p0

    .line 46
    :catch_0
    :cond_2
    const-string p0, "\u5168\u90e8"

    .line 47
    .line 48
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lcom/join/mgps/Util/y0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "retCode"

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v3, "0"

    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const-string p0, "data"

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string v2, "fastbattle.5fun.com"

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const-string v2, "ips"

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-lez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_0
    return-object v0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-object v0
.end method

.method public static f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "accountUtil"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-ne p1, p0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object p0, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    sget-object p0, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 63
    .line 64
    :goto_1
    return-object p0
.end method

.method public static g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "\u672a\u5b9a\u4e49\u534f\u8bae\uff01"

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const-string p0, "\u7cfb\u7edf\u9519\u8bef\uff01"

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    const-string p0, "\u53c2\u6570\u9519\u8bef\uff01"

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_2
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    const-string p0, "\u5185\u90e8\u9519\u8bef\uff01"

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    const/4 v1, 0x7

    .line 30
    if-ne v0, v1, :cond_4

    .line 31
    .line 32
    const-string p0, "\u5bc6\u7801\u9519\u8bef!"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_5

    .line 38
    .line 39
    const-string p0, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563\uff01"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_5
    const/16 v1, 0x9

    .line 43
    .line 44
    if-ne v0, v1, :cond_6

    .line 45
    .line 46
    const-string p0, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_6
    const/16 v1, 0xa

    .line 50
    .line 51
    if-ne v0, v1, :cond_7

    .line 52
    .line 53
    const-string p0, "\u6b64\u623f\u95f4\u9700\u8981\u5bc6\u7801!"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_7
    const/16 v1, 0xb

    .line 57
    .line 58
    if-ne v0, v1, :cond_8

    .line 59
    .line 60
    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_8
    const/16 v1, 0xc

    .line 64
    .line 65
    if-ne v0, v1, :cond_9

    .line 66
    .line 67
    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_9
    const/16 v1, 0xd

    .line 71
    .line 72
    if-ne v0, v1, :cond_a

    .line 73
    .line 74
    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u52a0\u5165\u623f\u95f4\uff01"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_a
    const/16 v1, 0xe

    .line 78
    .line 79
    if-ne v0, v1, :cond_b

    .line 80
    .line 81
    const-string p0, "\u8be5\u623f\u95f4\u5df2\u7ecf\u89e3\u6563!"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_b
    const/16 v1, 0x10

    .line 85
    .line 86
    if-ne v0, v1, :cond_c

    .line 87
    .line 88
    const-string p0, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4!"

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_c
    const/16 v1, 0x11

    .line 92
    .line 93
    if-ne v0, v1, :cond_d

    .line 94
    .line 95
    const-string p0, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165!"

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_d
    const/16 v1, 0xf

    .line 99
    .line 100
    if-eq v0, v1, :cond_f

    .line 101
    .line 102
    const/16 v1, 0x3e8

    .line 103
    .line 104
    if-ne v0, v1, :cond_e

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_e
    const-string p0, ""

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_f
    :goto_0
    iget-object p0, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 111
    .line 112
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_10

    .line 117
    .line 118
    const-string p0, "\u7f51\u7edc\u5f02\u5e38\uff01"

    .line 119
    .line 120
    :cond_10
    return-object p0
.end method

.method public static h(Lcom/papa91/battle/protocol/GameRoom;I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "uid"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne v0, p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_3
    const/4 p0, 0x0

    .line 102
    return-object p0
.end method

.method public static i(Lcom/papa91/battle/protocol/BattleArea;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "battleArea",
            "isFastJoinRoom"
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    const/16 p0, 0x8

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 p0, 0xa

    .line 23
    .line 24
    return p0

    .line 25
    :cond_1
    return v0
.end method

.method public static j(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arenaResponse",
            "serverResponse"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_DISSOLVE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 14
    .line 15
    const-string p1, "push_refresh_room_list_dissolve"

    .line 16
    .line 17
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_UPDATE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 30
    .line 31
    const-string p1, "push_refresh_room_list_update"

    .line 32
    .line 33
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 46
    .line 47
    const-string p1, "push_update_room"

    .line 48
    .line 49
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 62
    .line 63
    const-string p1, "push_dissolve_room"

    .line 64
    .line 65
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_3
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->KICK_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 70
    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 78
    .line 79
    const-string p1, "push_kick_room"

    .line 80
    .line 81
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_4
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_READY_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 86
    .line 87
    if-ne v0, v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 94
    .line 95
    const-string p1, "push_room_ready_timeout_kickout"

    .line 96
    .line 97
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_START_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 101
    .line 102
    if-ne v0, v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 109
    .line 110
    const-string p1, "push_room_start_timeout_kickout"

    .line 111
    .line 112
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->START_GAME_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 116
    .line 117
    if-ne v0, v1, :cond_8

    .line 118
    .line 119
    const-string v0, "push_start_game_room_broadcast"

    .line 120
    .line 121
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->RESULT_SUCCESS:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 128
    .line 129
    if-ne v0, v1, :cond_7

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    invoke-static {p0, p1}, Lcom/join/mgps/socket/fight/arena/c;->k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto :goto_0

    .line 143
    :cond_8
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->GLOBAL_MESSAGE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 144
    .line 145
    if-ne v0, v1, :cond_9

    .line 146
    .line 147
    const-string v0, "push_global_broadcast_all"

    .line 148
    .line 149
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_9
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 159
    .line 160
    if-ne v0, v1, :cond_a

    .line 161
    .line 162
    const-string v0, "push_score_board"

    .line 163
    .line 164
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 171
    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 177
    .line 178
    iget-object v1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 188
    .line 189
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :cond_a
    :goto_0
    return-object p0
.end method

.method public static k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arenaResponse",
            "response"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 25
    .line 26
    const/16 v0, 0xf

    .line 27
    .line 28
    iput v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 56
    .line 57
    const/16 p1, 0x10

    .line 58
    .line 59
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 81
    .line 82
    const/16 p1, 0x11

    .line 83
    .line 84
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 106
    .line 107
    const/16 p1, 0xe

    .line 108
    .line 109
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 131
    .line 132
    const/4 p1, 0x7

    .line 133
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 155
    .line 156
    const/16 p1, 0x8

    .line 157
    .line 158
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_6

    .line 178
    .line 179
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 180
    .line 181
    const/16 p1, 0x9

    .line 182
    .line 183
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 205
    .line 206
    const/16 p1, 0xa

    .line 207
    .line 208
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_8

    .line 228
    .line 229
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 230
    .line 231
    const/16 p1, 0xb

    .line 232
    .line 233
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-eqz v1, :cond_9

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_9

    .line 253
    .line 254
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 255
    .line 256
    const/16 p1, 0xc

    .line 257
    .line 258
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 259
    .line 260
    return-object p0

    .line 261
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_a

    .line 278
    .line 279
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 280
    .line 281
    const/16 p1, 0xd

    .line 282
    .line 283
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 284
    .line 285
    return-object p0

    .line 286
    :cond_a
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->SERVICE_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_c

    .line 293
    .line 294
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->PARAMS_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_c

    .line 301
    .line 302
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->INTERNAL_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_c

    .line 309
    .line 310
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UN_LOGIN_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    goto :goto_0

    .line 319
    :cond_b
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 320
    .line 321
    const/16 v0, 0x3e8

    .line 322
    .line 323
    iput v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 330
    .line 331
    return-object p0

    .line 332
    :cond_c
    :goto_0
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->s(Lcom/papa91/battle/protocol/Response$StatusCode;)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 343
    .line 344
    return-object p0
.end method

.method public static l(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arenaResponse",
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cmd_subscribe_game_roomlist"

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_ING:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 20
    .line 21
    const-string p1, "push_room_list_ing"

    .line 22
    .line 23
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_FINISH:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 32
    .line 33
    if-ne v0, v1, :cond_9

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    aput-object p1, v0, v1

    .line 51
    .line 52
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 53
    .line 54
    const-string p1, "push_room_list_finish"

    .line 55
    .line 56
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    const-string v1, "cmd_get_kick_out_room_position_info"

    .line 61
    .line 62
    if-ne v0, v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_2
    const-string v1, "cmd_get_frameforward_server"

    .line 73
    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    const-string v1, "cmd_create_game_room"

    .line 85
    .line 86
    const-string v2, "cmd_quick_join_room"

    .line 87
    .line 88
    const-string v3, "cmd_share_join_room"

    .line 89
    .line 90
    const-string v4, "cmd_join_room"

    .line 91
    .line 92
    if-eq v0, v1, :cond_6

    .line 93
    .line 94
    if-eq v0, v4, :cond_6

    .line 95
    .line 96
    const-string v1, "cmd_kick_out_room_position"

    .line 97
    .line 98
    if-eq v0, v1, :cond_6

    .line 99
    .line 100
    if-eq v0, v2, :cond_6

    .line 101
    .line 102
    const-string v1, "cmd_search_room_by_id"

    .line 103
    .line 104
    if-eq v0, v1, :cond_6

    .line 105
    .line 106
    const-string v1, "cmd_lobby_start_game"

    .line 107
    .line 108
    if-eq v0, v1, :cond_6

    .line 109
    .line 110
    const-string v1, "cmd_set_room_close_p1_position"

    .line 111
    .line 112
    if-eq v0, v1, :cond_6

    .line 113
    .line 114
    const-string v1, "cmd_set_room_close_p2_position"

    .line 115
    .line 116
    if-eq v0, v1, :cond_6

    .line 117
    .line 118
    const-string v1, "cmd_set_room_close_p3_position"

    .line 119
    .line 120
    if-eq v0, v1, :cond_6

    .line 121
    .line 122
    const-string v1, "cmd_set_room_close_p4_position"

    .line 123
    .line 124
    if-eq v0, v1, :cond_6

    .line 125
    .line 126
    if-eq v0, v3, :cond_6

    .line 127
    .line 128
    const-string v1, "cmd_player_ready_game"

    .line 129
    .line 130
    if-eq v0, v1, :cond_6

    .line 131
    .line 132
    const-string v1, "cmd_set_room_password_altr"

    .line 133
    .line 134
    if-eq v0, v1, :cond_6

    .line 135
    .line 136
    const-string v1, "cmd_set_room_challenge_coins_altr"

    .line 137
    .line 138
    if-eq v0, v1, :cond_6

    .line 139
    .line 140
    const-string v1, "cmd_set_room_spectator_join_altr"

    .line 141
    .line 142
    if-eq v0, v1, :cond_6

    .line 143
    .line 144
    const-string v1, "cmd_set_room_peripheral_join_altr"

    .line 145
    .line 146
    if-eq v0, v1, :cond_6

    .line 147
    .line 148
    const-string v1, "cmd_set_room_pc_join_altr"

    .line 149
    .line 150
    if-eq v0, v1, :cond_6

    .line 151
    .line 152
    const-string v1, "cmd_set_room_server_play_mode"

    .line 153
    .line 154
    if-eq v0, v1, :cond_6

    .line 155
    .line 156
    const-string v1, "cmd_spectator_sit"

    .line 157
    .line 158
    if-ne v0, v1, :cond_4

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    const-string v1, "cmd_send_score_board"

    .line 162
    .line 163
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    iget-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 170
    .line 171
    const-string v1, "cmd_send_rom_loaded"

    .line 172
    .line 173
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 184
    .line 185
    :try_start_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    .line 190
    .line 191
    iget-object v1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 192
    .line 193
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 201
    .line 202
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_6
    :goto_0
    if-eq v0, v4, :cond_7

    .line 211
    .line 212
    if-eq v0, v3, :cond_7

    .line 213
    .line 214
    if-ne v0, v2, :cond_8

    .line 215
    .line 216
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 221
    .line 222
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 227
    .line 228
    :cond_9
    :goto_1
    return-object p0
.end method

.method public static m(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pingTime"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x78

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Lcom/papa91/battle/protocol/GameRoom;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    :cond_3
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v1, 0x0

    .line 56
    :goto_1
    return v1
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/controller/core/d;->r(Landroid/content/Context;)Lcom/papa/controller/core/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "  closed-->"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "  vip-->"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "  uid-->"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "  title getBackgroudColor -->"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "  title getTitle -->"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "  nickname-->"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "  avatar-->"

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "  copper-->"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "  peripheral-->"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v2, "  pingVal-->"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v2, "  state-->"

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0
.end method

.method public static q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "gameRoom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "gameRoom info: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, " gameid->"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, " roomId->"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, " Elite->"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, " password->"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, " hasJoinPassword->"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, " allowSpectatorJoin->"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v2, " allowPeripheralJoin->"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v2, " spectatorNumber->"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v2, " challengeCoins->"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v2, " playerNumber->"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v2, " seatsNumber->"

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v2, " leader->"

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v2, " playerSeconds->"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v2, " RoomState->"

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v2, "-----"

    .line 355
    .line 356
    if-eqz v1, :cond_1

    .line 357
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v3, " room position 1 info: ->"

    .line 364
    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_2

    .line 394
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v3, " room position 2 info: ->"

    .line 401
    .line 402
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    if-eqz v1, :cond_3

    .line 431
    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v3, " room position 3 info: ->"

    .line 438
    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    if-eqz v1, :cond_4

    .line 468
    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    const-string v2, " room position 4 info: ->"

    .line 475
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-static {p0, p1}, Lcom/join/mgps/Util/g1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    return-void
.end method

.method public static r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "simpleRoom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "simpleRoom info: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, " roomId->"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, " gameId->"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, " nickname->"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, " vip->"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, " createAt->"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, " seatsNumber->"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v2, " sitDownloadNumber->"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v2, " hasJoinPassword->"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v2, " allowSpectatorJoin->"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v2, " allowPeripheralJoin->"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v2, " challengeCoins->"

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v2, " state->"

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v2, " playSeconds->"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v2, " Title.getBackgroudColor->"

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v2, " getHasPeripheralPlayer->"

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v2, " Title.Title->"

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v2, " elite->"

    .line 404
    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v2, " copper->"

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-static {p0, p1}, Lcom/join/mgps/Util/g1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    return-void
.end method

.method private static s(Lcom/papa91/battle/protocol/Response$StatusCode;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->SERVICE_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->PARAMS_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->INTERNAL_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->UN_LOGIN_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 20
    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 p0, -0x1

    .line 26
    :goto_0
    return p0
.end method
