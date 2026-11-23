.class public Lcom/join/mgps/aidl/FightProtocalManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ackSignal:B

.field static jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    sput-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocal"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    int-to-byte p0, p0

    .line 13
    sput-byte p0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 16
    .line 17
    .line 18
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static ackReceivedSignal(Lcom/join/mgps/aidl/FightProtocal;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocal"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method public static ackSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "gameName",
            "opponent"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 11
    .line 12
    mul-double v1, v1, v3

    .line 13
    .line 14
    double-to-int v1, v1

    .line 15
    int-to-byte v1, v1

    .line 16
    sput-byte v1, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setGameId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/aidl/FightProtocal;->setGameName(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 27
    .line 28
    .line 29
    sget-byte p0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fightProtocal"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-byte v0, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 18
    .line 19
    .line 20
    sget-byte v0, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/FightProtocal;->setBrand(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static ackSync()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static disconnect()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 11
    .line 12
    mul-double v1, v1, v3

    .line 13
    .line 14
    double-to-int v1, v1

    .line 15
    int-to-byte v1, v1

    .line 16
    sput-byte v1, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setNo(B)V

    .line 19
    .line 20
    .line 21
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static startGame()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/aidl/FightProtocal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/aidl/FightProtocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-byte v1, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/aidl/FightProtocal;->setType(B)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/join/mgps/aidl/FightProtocalManager;->jsonMapper:Lcom/join/android/app/common/utils/JsonMapper;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
