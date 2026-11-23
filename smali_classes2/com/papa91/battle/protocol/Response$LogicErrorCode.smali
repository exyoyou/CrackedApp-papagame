.class public final enum Lcom/papa91/battle/protocol/Response$LogicErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogicErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final enum CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final CREATE_ROOM_NO_CHALLENGE_COINS_VALUE:I = 0x5

.field public static final enum ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ERROR_MESSAGE_VALUE:I = 0x8

.field public static final enum JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_FULL_VALUE:I = 0x3

.field public static final enum JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_KICK_VALUE:I = 0xa

.field public static final enum JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NEED_PASSWORD_VALUE:I = 0x4

.field public static final enum JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS_VALUE:I = 0x7

.field public static final enum JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NO_WHITE_VALUE:I = 0xb

.field public static final enum JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_PASSWORD_VALUE:I = 0x1

.field public static final enum NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final NOT_FOUND_ROOM_VALUE:I = 0x2

.field public static final enum ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ROOM_ERROR_DISSOLVE_VALUE:I = 0x9

.field public static final enum ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ROOM_ERROR_NO_CHALLENGE_COINS_VALUE:I = 0x6

.field public static final enum UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final UNDEFINED_EROR_CODE_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field private static final VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 2
    .line 3
    const-string v1, "UNDEFINED_EROR_CODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 12
    .line 13
    const-string v1, "JOIN_GAME_ROOM_ERROR_PASSWORD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 22
    .line 23
    const-string v1, "NOT_FOUND_ROOM"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 30
    .line 31
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 32
    .line 33
    const-string v1, "JOIN_GAME_ROOM_ERROR_FULL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 40
    .line 41
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 42
    .line 43
    const-string v1, "JOIN_GAME_ROOM_ERROR_NEED_PASSWORD"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 50
    .line 51
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 52
    .line 53
    const-string v1, "CREATE_ROOM_NO_CHALLENGE_COINS"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 60
    .line 61
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 62
    .line 63
    const-string v1, "ROOM_ERROR_NO_CHALLENGE_COINS"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 70
    .line 71
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 72
    .line 73
    const-string v1, "JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 80
    .line 81
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 82
    .line 83
    const-string v1, "ERROR_MESSAGE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 91
    .line 92
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 93
    .line 94
    const-string v1, "ROOM_ERROR_DISSOLVE"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 102
    .line 103
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 104
    .line 105
    const-string v1, "JOIN_GAME_ROOM_ERROR_KICK"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 113
    .line 114
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 115
    .line 116
    const-string v1, "JOIN_GAME_ROOM_ERROR_NO_WHITE"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 124
    .line 125
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 126
    .line 127
    const/16 v1, 0xc

    .line 128
    .line 129
    const/4 v2, -0x1

    .line 130
    const-string v3, "UNRECOGNIZED"

    .line 131
    .line 132
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 136
    .line 137
    invoke-static {}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->$values()[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->$VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 142
    .line 143
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode$1;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode$1;-><init>()V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 149
    .line 150
    invoke-static {}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->values()[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 155
    .line 156
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->forNumber(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->$VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
