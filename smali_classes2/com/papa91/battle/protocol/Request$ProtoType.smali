.class public final enum Lcom/papa91/battle/protocol/Request$ProtoType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Request$ProtoType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final BATTLE_SCORE_BOARD_VALUE:I = 0x26

.field public static final enum CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CANCEL_SUBSCRIBE_GAME_COLLECTION_VALUE:I = 0x20

.field public static final enum CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CANCEL_SUBSCRIBE_GAME_ROOM_VALUE:I = 0x16

.field public static final enum CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CREATE_GAME_ROOM_VALUE:I = 0x4

.field public static final enum DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final DISCONNECT_LEAVE_ROOM_VALUE:I = 0x19

.field public static final enum DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final DISSOLVE_ROOM_VALUE:I = 0x10

.field public static final enum GET_BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final GET_BATTLE_SCORE_BOARD_VALUE:I = 0x27

.field public static final enum GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final GET_KICK_OUT_ROOM_POSITION_INFO_VALUE:I = 0x1b

.field public static final enum GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final GET_UDP_FRAME_SERVER_VALUE:I = 0x1c

.field public static final enum JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final JOIN_BATTLE_AREA_VALUE:I = 0x1d

.field public static final enum JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final JOIN_ROOM_VALUE:I = 0xa

.field public static final enum KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final KICK_OUT_ROOM_POSITION_VALUE:I = 0x11

.field public static final enum LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LEAVE_ROOM_VALUE:I = 0xf

.field public static final enum LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LOBBY_START_GAME_VALUE:I = 0x14

.field public static final enum LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LOGIN_VALUE:I = 0x1

.field public static final enum PING:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PING_VALUE:I = 0x2

.field public static final enum PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PLAYER_JOIN_GAME_VALUE:I = 0x17

.field public static final enum PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PLAYER_READY_GAME_VALUE:I = 0x15

.field public static final enum QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final QUICK_JOIN_ROOM_NET_PC_VALUE:I = 0x25

.field public static final enum QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final QUICK_JOIN_ROOM_PC_VALUE:I = 0x21

.field public static final QUICK_JOIN_ROOM_VALUE:I = 0x12

.field public static final enum RE_CONNECTION_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final RE_CONNECTION_JOIN_ROOM_VALUE:I = 0x28

.field public static final enum ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final ROOM_SPECTATOR_SIT_VALUE:I = 0x1a

.field public static final enum SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SEARCH_ROOM_BY_ID_VALUE:I = 0x13

.field public static final enum SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_ALLOW_PC_JOIN_VALUE:I = 0x23

.field public static final enum SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CHALLENGE_COINS_ATTR_VALUE:I = 0x5

.field public static final enum SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P1_POSITION_VALUE:I = 0xb

.field public static final enum SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P2_POSITION_VALUE:I = 0xc

.field public static final enum SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P3_POSITION_VALUE:I = 0xd

.field public static final enum SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P4_POSITION_VALUE:I = 0xe

.field public static final enum SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_DISABLE_MOBILE_JOIN_VALUE:I = 0x24

.field public static final enum SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_PASSWORD_ATTR_VALUE:I = 0x6

.field public static final enum SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_PERIPHERAL_JOIN_ATTR_VALUE:I = 0x7

.field public static final enum SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_POSITION_ATTR_VALUE:I = 0x9

.field public static final enum SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_SERVER_PLAY_MODE_VALUE:I = 0x22

.field public static final enum SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_SPECTATOR_JOIN_ATTR_VALUE:I = 0x8

.field public static final enum SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SHARE_JOIN_ROOM_VALUE:I = 0x18

.field public static final enum SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SUBSCRIBE_GAME_COLLECTION_VALUE:I = 0x1f

.field public static final enum SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SUBSCRIBE_GAME_ROOM_VALUE:I = 0x3

.field public static final enum UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final UNDEFINED_REQUEST_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

.field private static final VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final VERIFY_JOIN_ROOM_PASSWORD_VALUE:I = 0x1e

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Request$ProtoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 3

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    new-array v0, v0, [Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xe

    .line 82
    .line 83
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    const/16 v1, 0xf

    .line 88
    .line 89
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 90
    .line 91
    aput-object v2, v0, v1

    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 96
    .line 97
    aput-object v2, v0, v1

    .line 98
    .line 99
    const/16 v1, 0x11

    .line 100
    .line 101
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 102
    .line 103
    aput-object v2, v0, v1

    .line 104
    .line 105
    const/16 v1, 0x12

    .line 106
    .line 107
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 108
    .line 109
    aput-object v2, v0, v1

    .line 110
    .line 111
    const/16 v1, 0x13

    .line 112
    .line 113
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 114
    .line 115
    aput-object v2, v0, v1

    .line 116
    .line 117
    const/16 v1, 0x14

    .line 118
    .line 119
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 120
    .line 121
    aput-object v2, v0, v1

    .line 122
    .line 123
    const/16 v1, 0x15

    .line 124
    .line 125
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 126
    .line 127
    aput-object v2, v0, v1

    .line 128
    .line 129
    const/16 v1, 0x16

    .line 130
    .line 131
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 132
    .line 133
    aput-object v2, v0, v1

    .line 134
    .line 135
    const/16 v1, 0x17

    .line 136
    .line 137
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 138
    .line 139
    aput-object v2, v0, v1

    .line 140
    .line 141
    const/16 v1, 0x18

    .line 142
    .line 143
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 144
    .line 145
    aput-object v2, v0, v1

    .line 146
    .line 147
    const/16 v1, 0x19

    .line 148
    .line 149
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 150
    .line 151
    aput-object v2, v0, v1

    .line 152
    .line 153
    const/16 v1, 0x1a

    .line 154
    .line 155
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 156
    .line 157
    aput-object v2, v0, v1

    .line 158
    .line 159
    const/16 v1, 0x1b

    .line 160
    .line 161
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 162
    .line 163
    aput-object v2, v0, v1

    .line 164
    .line 165
    const/16 v1, 0x1c

    .line 166
    .line 167
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 168
    .line 169
    aput-object v2, v0, v1

    .line 170
    .line 171
    const/16 v1, 0x1d

    .line 172
    .line 173
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 174
    .line 175
    aput-object v2, v0, v1

    .line 176
    .line 177
    const/16 v1, 0x1e

    .line 178
    .line 179
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 180
    .line 181
    aput-object v2, v0, v1

    .line 182
    .line 183
    const/16 v1, 0x1f

    .line 184
    .line 185
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 186
    .line 187
    aput-object v2, v0, v1

    .line 188
    .line 189
    const/16 v1, 0x20

    .line 190
    .line 191
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 192
    .line 193
    aput-object v2, v0, v1

    .line 194
    .line 195
    const/16 v1, 0x21

    .line 196
    .line 197
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 198
    .line 199
    aput-object v2, v0, v1

    .line 200
    .line 201
    const/16 v1, 0x22

    .line 202
    .line 203
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 204
    .line 205
    aput-object v2, v0, v1

    .line 206
    .line 207
    const/16 v1, 0x23

    .line 208
    .line 209
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 210
    .line 211
    aput-object v2, v0, v1

    .line 212
    .line 213
    const/16 v1, 0x24

    .line 214
    .line 215
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 216
    .line 217
    aput-object v2, v0, v1

    .line 218
    .line 219
    const/16 v1, 0x25

    .line 220
    .line 221
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 222
    .line 223
    aput-object v2, v0, v1

    .line 224
    .line 225
    const/16 v1, 0x26

    .line 226
    .line 227
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 228
    .line 229
    aput-object v2, v0, v1

    .line 230
    .line 231
    const/16 v1, 0x27

    .line 232
    .line 233
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 234
    .line 235
    aput-object v2, v0, v1

    .line 236
    .line 237
    const/16 v1, 0x28

    .line 238
    .line 239
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->RE_CONNECTION_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 240
    .line 241
    aput-object v2, v0, v1

    .line 242
    .line 243
    const/16 v1, 0x29

    .line 244
    .line 245
    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 246
    .line 247
    aput-object v2, v0, v1

    .line 248
    .line 249
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    .line 3
    const-string v1, "UNDEFINED_REQUEST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 12
    .line 13
    const-string v1, "LOGIN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 22
    .line 23
    const-string v1, "PING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 30
    .line 31
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 32
    .line 33
    const-string v1, "SUBSCRIBE_GAME_ROOM"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 40
    .line 41
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 42
    .line 43
    const-string v1, "CREATE_GAME_ROOM"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 50
    .line 51
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 52
    .line 53
    const-string v1, "SET_ROOM_CHALLENGE_COINS_ATTR"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 60
    .line 61
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 62
    .line 63
    const-string v1, "SET_ROOM_PASSWORD_ATTR"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 70
    .line 71
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 72
    .line 73
    const-string v1, "SET_ROOM_PERIPHERAL_JOIN_ATTR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 80
    .line 81
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 82
    .line 83
    const-string v1, "SET_ROOM_SPECTATOR_JOIN_ATTR"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 91
    .line 92
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 93
    .line 94
    const-string v1, "SET_ROOM_POSITION_ATTR"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 102
    .line 103
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 104
    .line 105
    const-string v1, "JOIN_ROOM"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 113
    .line 114
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 115
    .line 116
    const-string v1, "SET_ROOM_CLOSE_P1_POSITION"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 124
    .line 125
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 126
    .line 127
    const-string v1, "SET_ROOM_CLOSE_P2_POSITION"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 135
    .line 136
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 137
    .line 138
    const-string v1, "SET_ROOM_CLOSE_P3_POSITION"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 146
    .line 147
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 148
    .line 149
    const-string v1, "SET_ROOM_CLOSE_P4_POSITION"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 157
    .line 158
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 159
    .line 160
    const-string v1, "LEAVE_ROOM"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 168
    .line 169
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 170
    .line 171
    const-string v1, "DISSOLVE_ROOM"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 179
    .line 180
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 181
    .line 182
    const-string v1, "KICK_OUT_ROOM_POSITION"

    .line 183
    .line 184
    const/16 v2, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 190
    .line 191
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 192
    .line 193
    const-string v1, "QUICK_JOIN_ROOM"

    .line 194
    .line 195
    const/16 v2, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 201
    .line 202
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 203
    .line 204
    const-string v1, "SEARCH_ROOM_BY_ID"

    .line 205
    .line 206
    const/16 v2, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 212
    .line 213
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 214
    .line 215
    const-string v1, "LOBBY_START_GAME"

    .line 216
    .line 217
    const/16 v2, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 223
    .line 224
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 225
    .line 226
    const-string v1, "PLAYER_READY_GAME"

    .line 227
    .line 228
    const/16 v2, 0x15

    .line 229
    .line 230
    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 234
    .line 235
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 236
    .line 237
    const/16 v1, 0x16

    .line 238
    .line 239
    const/16 v2, 0x16

    .line 240
    .line 241
    const-string v3, "CANCEL_SUBSCRIBE_GAME_ROOM"

    .line 242
    .line 243
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 247
    .line 248
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 249
    .line 250
    const/16 v1, 0x17

    .line 251
    .line 252
    const/16 v2, 0x17

    .line 253
    .line 254
    const-string v3, "PLAYER_JOIN_GAME"

    .line 255
    .line 256
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 257
    .line 258
    .line 259
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 260
    .line 261
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 262
    .line 263
    const/16 v1, 0x18

    .line 264
    .line 265
    const/16 v2, 0x18

    .line 266
    .line 267
    const-string v3, "SHARE_JOIN_ROOM"

    .line 268
    .line 269
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 270
    .line 271
    .line 272
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 273
    .line 274
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 275
    .line 276
    const/16 v1, 0x19

    .line 277
    .line 278
    const/16 v2, 0x19

    .line 279
    .line 280
    const-string v3, "DISCONNECT_LEAVE_ROOM"

    .line 281
    .line 282
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 283
    .line 284
    .line 285
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 286
    .line 287
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 288
    .line 289
    const/16 v1, 0x1a

    .line 290
    .line 291
    const/16 v2, 0x1a

    .line 292
    .line 293
    const-string v3, "ROOM_SPECTATOR_SIT"

    .line 294
    .line 295
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 296
    .line 297
    .line 298
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 299
    .line 300
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 301
    .line 302
    const/16 v1, 0x1b

    .line 303
    .line 304
    const/16 v2, 0x1b

    .line 305
    .line 306
    const-string v3, "GET_KICK_OUT_ROOM_POSITION_INFO"

    .line 307
    .line 308
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 309
    .line 310
    .line 311
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 312
    .line 313
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 314
    .line 315
    const/16 v1, 0x1c

    .line 316
    .line 317
    const/16 v2, 0x1c

    .line 318
    .line 319
    const-string v3, "GET_UDP_FRAME_SERVER"

    .line 320
    .line 321
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 322
    .line 323
    .line 324
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 325
    .line 326
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 327
    .line 328
    const/16 v1, 0x1d

    .line 329
    .line 330
    const/16 v2, 0x1d

    .line 331
    .line 332
    const-string v3, "JOIN_BATTLE_AREA"

    .line 333
    .line 334
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 335
    .line 336
    .line 337
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 338
    .line 339
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 340
    .line 341
    const/16 v1, 0x1e

    .line 342
    .line 343
    const/16 v2, 0x1e

    .line 344
    .line 345
    const-string v3, "VERIFY_JOIN_ROOM_PASSWORD"

    .line 346
    .line 347
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 348
    .line 349
    .line 350
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 351
    .line 352
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 353
    .line 354
    const/16 v1, 0x1f

    .line 355
    .line 356
    const/16 v2, 0x1f

    .line 357
    .line 358
    const-string v3, "SUBSCRIBE_GAME_COLLECTION"

    .line 359
    .line 360
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 361
    .line 362
    .line 363
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 364
    .line 365
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 366
    .line 367
    const/16 v1, 0x20

    .line 368
    .line 369
    const/16 v2, 0x20

    .line 370
    .line 371
    const-string v3, "CANCEL_SUBSCRIBE_GAME_COLLECTION"

    .line 372
    .line 373
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 374
    .line 375
    .line 376
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 377
    .line 378
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 379
    .line 380
    const/16 v1, 0x21

    .line 381
    .line 382
    const/16 v2, 0x21

    .line 383
    .line 384
    const-string v3, "QUICK_JOIN_ROOM_PC"

    .line 385
    .line 386
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 390
    .line 391
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 392
    .line 393
    const/16 v1, 0x22

    .line 394
    .line 395
    const/16 v2, 0x22

    .line 396
    .line 397
    const-string v3, "SET_ROOM_SERVER_PLAY_MODE"

    .line 398
    .line 399
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 400
    .line 401
    .line 402
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 403
    .line 404
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 405
    .line 406
    const/16 v1, 0x23

    .line 407
    .line 408
    const/16 v2, 0x23

    .line 409
    .line 410
    const-string v3, "SET_ROOM_ALLOW_PC_JOIN"

    .line 411
    .line 412
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 413
    .line 414
    .line 415
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 416
    .line 417
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 418
    .line 419
    const/16 v1, 0x24

    .line 420
    .line 421
    const/16 v2, 0x24

    .line 422
    .line 423
    const-string v3, "SET_ROOM_DISABLE_MOBILE_JOIN"

    .line 424
    .line 425
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 426
    .line 427
    .line 428
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 429
    .line 430
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 431
    .line 432
    const/16 v1, 0x25

    .line 433
    .line 434
    const/16 v2, 0x25

    .line 435
    .line 436
    const-string v3, "QUICK_JOIN_ROOM_NET_PC"

    .line 437
    .line 438
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 439
    .line 440
    .line 441
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 442
    .line 443
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 444
    .line 445
    const/16 v1, 0x26

    .line 446
    .line 447
    const/16 v2, 0x26

    .line 448
    .line 449
    const-string v3, "BATTLE_SCORE_BOARD"

    .line 450
    .line 451
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 452
    .line 453
    .line 454
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 455
    .line 456
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 457
    .line 458
    const/16 v1, 0x27

    .line 459
    .line 460
    const/16 v2, 0x27

    .line 461
    .line 462
    const-string v3, "GET_BATTLE_SCORE_BOARD"

    .line 463
    .line 464
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 465
    .line 466
    .line 467
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 468
    .line 469
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 470
    .line 471
    const/16 v1, 0x28

    .line 472
    .line 473
    const/16 v2, 0x28

    .line 474
    .line 475
    const-string v3, "RE_CONNECTION_JOIN_ROOM"

    .line 476
    .line 477
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 478
    .line 479
    .line 480
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->RE_CONNECTION_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 481
    .line 482
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 483
    .line 484
    const/16 v1, 0x29

    .line 485
    .line 486
    const/4 v2, -0x1

    .line 487
    const-string v3, "UNRECOGNIZED"

    .line 488
    .line 489
    invoke-direct {v0, v3, v1, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    .line 490
    .line 491
    .line 492
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 493
    .line 494
    invoke-static {}, Lcom/papa91/battle/protocol/Request$ProtoType;->$values()[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 499
    .line 500
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType$1;

    .line 501
    .line 502
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Request$ProtoType$1;-><init>()V

    .line 503
    .line 504
    .line 505
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 506
    .line 507
    invoke-static {}, Lcom/papa91/battle/protocol/Request$ProtoType;->values()[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 512
    .line 513
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
    iput p3, p0, Lcom/papa91/battle/protocol/Request$ProtoType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Request$ProtoType;
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
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->RE_CONNECTION_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->BATTLE_SCORE_BOARD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    const/4 v1, 0x0

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
            "Lcom/papa91/battle/protocol/Request$ProtoType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Request$ProtoType;->forNumber(I)Lcom/papa91/battle/protocol/Request$ProtoType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/papa91/battle/protocol/Request$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Request$ProtoType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/papa91/battle/protocol/Request$ProtoType;->value:I

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
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/Request$ProtoType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
