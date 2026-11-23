.class public final enum Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GAME_UI_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum HM_FIRST_FRAME_ARRIVAL:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum HM_START_PLAY:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum HM_START_PLAY_REQUEST:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public static final enum QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mState:I


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY_REQUEST:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_FIRST_FRAME_ARRIVAL:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 2
    .line 3
    const-string v1, "\u521d\u59cb\u5316"

    .line 4
    .line 5
    const-string v2, "INIT"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 15
    .line 16
    const-string v1, "\u8d44\u6e90\u52a0\u8f7d"

    .line 17
    .line 18
    const-string v2, "HM_LOAD_RESOURCE"

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 27
    .line 28
    const-string v1, "\u5f00\u59cb\u8bf7\u6c42"

    .line 29
    .line 30
    const-string v2, "HM_START_PLAY_REQUEST"

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY_REQUEST:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 39
    .line 40
    const-string v1, "\u5f00\u59cb\u6e38\u620f"

    .line 41
    .line 42
    const-string v2, "HM_START_PLAY"

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 49
    .line 50
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 51
    .line 52
    const-string v1, "\u9996\u5e27\u5230\u8fbe"

    .line 53
    .line 54
    const-string v2, "HM_FIRST_FRAME_ARRIVAL"

    .line 55
    .line 56
    const/4 v4, 0x5

    .line 57
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_FIRST_FRAME_ARRIVAL:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 61
    .line 62
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    const-string v2, "\u6392\u961f\u6d88\u606f\u66f4\u65b0"

    .line 66
    .line 67
    const-string v3, "QUEUE"

    .line 68
    .line 69
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 73
    .line 74
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->$values()[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->$VALUES:[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "state",
            "desc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->mState:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->mDesc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->$VALUES:[Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->mDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->mState:I

    .line 2
    .line 3
    return v0
.end method
