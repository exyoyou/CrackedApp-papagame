.class public final Lcom/papa91/battle/protocol/BattleProto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_papa_battle_Account_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Account_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_AreaOnlinePeopleCount_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_AreaOnlinePeopleCount_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_BattleServerAddr_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_BattleServerAddr_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_BattleTitle_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_BattleTitle_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_DevelVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_DevelVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_FrameForwardServer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_FrameForwardServer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_GameRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_GameRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_KickInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_KickInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_Params_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Params_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_Pong_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Pong_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_Request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_RoomCounter_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_RoomCounter_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_RoomPosition_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_RoomPosition_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_SimpleRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_SimpleRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_papa_battle_UserProfile_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_papa_battle_UserProfile_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    const-string v0, "\n\u000cbattle.proto\u0012\u000bpapa.battle\"0\n\u0012FrameForwardServer\u0012\u000c\n\u0004host\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\r\"1\n\u000cNotification\u0012\u000f\n\u0007message\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008jumpJSON\u0018\u0002 \u0001(\t\"]\n\u0008KickInfo\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006copper\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005isVIP\u0018\u0003 \u0001(\u0008\u0012\u0010\n\u0008nickname\u0018\u0004 \u0001(\t\u0012\u0011\n\tvipCopper\u0018\u0005 \u0001(\u0005\",\n\u000bRoomCounter\u0012\u000e\n\u0006normal\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005elite\u0018\u0002 \u0001(\u0005\"\u0099\u0001\n\u0010BattleServerAddr\u0012\u000c\n\u0004host\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0001(\r\u00126\n\u0007netType\u0018\u0003 \u0001(\u000e2%.papa.battle.BattleServerAddr.NetType\u0012\u0014\n\u000cbattleRoomId\u0018\u0004 \u0001(\u0004\"\u001b\n\u0007NetType\u0012\u0007\n\u0003TCP\u0010\u0000\u0012\u0007\n\u0003UDP\u0010\u0001\"4\n\u000bBattleTitle\u0012\r\n\u0005title\u0018\u0001 \u0001(\t\u0012\u0016\n\u000ebackgroudColor\u0018\u0002 \u0001(\t\"\u00fc\u0005\n\nSimpleRoom\u0012\u000e\n\u0006roomId\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006gameId\u0018\u0002 \u0001(\u0003\u0012\u0010\n\u0008nickname\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003vip\u0018\u0004 \u0001(\u0008\u0012\u0010\n\u0008createAt\u0018\u0005 \u0001(\u0003\u0012\u0013\n\u000bseatsNumber\u0018\u0006 \u0001(\u0005\u0012\u0019\n\u0011sitDownloadNumber\u0018\u0007 \u0001(\u0005\u0012\u0017\n\u000fhasJoinPassword\u0018\u0008 \u0001(\u0008\u0012\u001a\n\u0012allowSpectatorJoin\u0018\t \u0001(\u0008\u0012\u001b\n\u0013allowPeripheralJoin\u0018\n \u0001(\u0008\u0012\u0016\n\u000echallengeCoins\u0018\u000c \u0001(\u0005\u0012%\n\u0005state\u0018\r \u0001(\u000e2\u0016.papa.battle.RoomState\u0012\u0013\n\u000bplaySeconds\u0018\u000e \u0001(\u0005\u0012\'\n\u0005title\u0018\u000f \u0001(\u000b2\u0018.papa.battle.BattleTitle\u0012\r\n\u0005elite\u0018\u0010 \u0001(\u0008\u0012\u000e\n\u0006copper\u0018\u0011 \u0001(\u0005\u0012\u001b\n\u0013hasPeripheralPlayer\u0018\u0012 \u0001(\u0008\u0012\u0013\n\u000bbattleTitle\u0018\u0013 \u0001(\t\u0012\u0018\n\u0010battleTitleColor\u0018\u0014 \u0001(\t\u0012\u0015\n\rplayTimestamp\u0018\u0015 \u0001(\u0003\u0012+\n\nbattleArea\u0018\u0016 \u0001(\u000e2\u0017.papa.battle.BattleArea\u0012\u0010\n\u0008gameName\u0018\u0017 \u0001(\t\u0012\u0014\n\u000ccollectionId\u0018\u0018 \u0001(\u0005\u0012\u0017\n\u000fspectatorNumber\u0018\u0019 \u0001(\u0005\u0012\u000e\n\u0006avatar\u0018\u001a \u0001(\t\u0012\u0013\n\u000ballowPCJoin\u0018\u001b \u0001(\u0008\u0012-\n\nplayerList\u0018\u001c \u0003(\u000b2\u0019.papa.battle.RoomPosition\u0012\u0010\n\u0008leaderId\u0018\u001d \u0001(\u0005\u0012/\n\u000croomCategory\u0018\u001e \u0001(\u000e2\u0019.papa.battle.RoomCategory\u0012\u0017\n\u000fopenBattleScore\u0018\u001f \u0001(\u0008\"\u0089\u0004\n\u000cRoomPosition\u0012\u000e\n\u0006closed\u0018\u0001 \u0001(\u0008\u0012\u000b\n\u0003vip\u0018\u0002 \u0001(\u0008\u0012\u000b\n\u0003uid\u0018\u0003 \u0001(\u0005\u0012\'\n\u0005title\u0018\u0004 \u0001(\u000b2\u0018.papa.battle.BattleTitle\u0012\u0010\n\u0008nickname\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006copper\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007pingVal\u0018\u0008 \u0001(\u0005\u0012\u0012\n\nperipheral\u0018\t \u0001(\u0008\u0012.\n\u0005state\u0018\n \u0001(\u000e2\u001f.papa.battle.RoomPosition.State\u0012\u0013\n\u000bbattleTitle\u0018\u000b \u0001(\t\u0012\u0018\n\u0010battleTitleColor\u0018\u000c \u0001(\t\u0012+\n\nbattleArea\u0018\r \u0001(\u000e2\u0017.papa.battle.BattleArea\u0012\u0011\n\tkickCount\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006ignore\u0018\u000f \u0001(\t\u0012\'\n\u0008platform\u0018\u0010 \u0001(\u000e2\u0015.papa.battle.Platform\u0012\u0018\n\u0010proficiencyLevel\u0018\u0011 \u0001(\u0005\u0012)\n\tphoneType\u0018\u001f \u0001(\u000e2\u0016.papa.battle.PhoneType\"2\n\u0005State\u0012\t\n\u0005EMPTY\u0010\u0000\u0012\u0008\n\u0004WAIT\u0010\u0001\u0012\t\n\u0005READY\u0010\u0002\u0012\t\n\u0005START\u0010\u0003\"\u00de\u0007\n\u0008GameRoom\u0012\u000e\n\u0006roomId\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006gameId\u0018\u0002 \u0001(\u0003\u0012\u0010\n\u0008password\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fhasJoinPassword\u0018\u0004 \u0001(\u0008\u0012\u001a\n\u0012allowSpectatorJoin\u0018\u0005 \u0001(\u0008\u0012\u001b\n\u0013allowPeripheralJoin\u0018\u0006 \u0001(\u0008\u0012\u0017\n\u000fspectatorNumber\u0018\u0007 \u0001(\u0005\u0012%\n\u0002p1\u0018\u0008 \u0001(\u000b2\u0019.papa.battle.RoomPosition\u0012%\n\u0002p2\u0018\t \u0001(\u000b2\u0019.papa.battle.RoomPosition\u0012%\n\u0002p3\u0018\n \u0001(\u000b2\u0019.papa.battle.RoomPosition\u0012%\n\u0002p4\u0018\u000b \u0001(\u000b2\u0019.papa.battle.RoomPosition\u0012\u0016\n\u000echallengeCoins\u0018\u000c \u0001(\u0005\u0012\u0014\n\u000cplayerNumber\u0018\r \u0001(\u0005\u0012\u0013\n\u000bseatsNumber\u0018\u000e \u0001(\u0005\u0012%\n\u0005state\u0018\u000f \u0001(\u000e2\u0016.papa.battle.RoomState\u0012\u000e\n\u0006leader\u0018\u0010 \u0001(\u0005\u0012\u0015\n\rplayerSeconds\u0018\u0011 \u0001(\u0005\u0012\r\n\u0005elite\u0018\u0012 \u0001(\u0008\u0012\u0010\n\u0008fastMode\u0018\u0013 \u0001(\u0008\u0012\u000f\n\u0007fightId\u0018\u0014 \u0001(\u0004\u00127\n\u0010battleServerAddr\u0018\u0015 \u0001(\u000b2\u001d.papa.battle.BattleServerAddr\u0012\u0010\n\u0008createAt\u0018\u0016 \u0001(\u0003\u0012\u000e\n\u0006silent\u0018\u0017 \u0001(\u0008\u0012\u0015\n\rplayTimestamp\u0018\u0018 \u0001(\u0003\u00120\n\u0008gameType\u0018\u0019 \u0001(\u000e2\u001e.papa.battle.GameRoom.GameType\u0012+\n\nbattleArea\u0018\u001a \u0001(\u000e2\u0017.papa.battle.BattleArea\u0012\u0010\n\u0008gameName\u0018\u001b \u0001(\t\u0012\u0014\n\u000ccollectionId\u0018\u001c \u0001(\u0005\u0012\u0013\n\u000ballowPCJoin\u0018\u001d \u0001(\u0008\u0012\u0017\n\u000fopenFastModeBtn\u0018\u001e \u0001(\u0008\u0012\u0019\n\u0011disableMobileJoin\u0018\u001f \u0001(\u0008\u0012\u0014\n\u000ccreateByUser\u0018  \u0001(\u0005\u0012\u0012\n\nchatRoomId\u0018! \u0001(\t\u0012/\n\u000croomCategory\u0018\" \u0001(\u000e2\u0019.papa.battle.RoomCategory\u0012\u0017\n\u000fopenBattleScore\u0018# \u0001(\u0008\" \n\u0008GameType\u0012\t\n\u0005FIGHT\u0010\u0000\u0012\t\n\u0005LEVEL\u0010\u0001\"\u00bd\u0002\n\u0007Account\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008nickname\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003vip\u0018\u0004 \u0001(\u0008\u0012\u0013\n\u000bbattleTitle\u0018\u0005 \u0001(\t\u0012\u0018\n\u0010battleTitleColor\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006copper\u0018\u0007 \u0001(\u0005\u0012\u0011\n\tkickCount\u0018\u0008 \u0001(\u0005\u0012%\n\u0004area\u0018\t \u0001(\u000e2\u0017.papa.battle.BattleArea\u0012\u000f\n\u0007ignore1\u0018\n \u0001(\t\u0012\'\n\u0008platform\u0018\u000b \u0001(\u000e2\u0015.papa.battle.Platform\u0012\u0018\n\u0010proficiencyLevel\u0018\u000c \u0001(\u0005\u0012)\n\tphoneType\u0018\r \u0001(\u000e2\u0016.papa.battle.PhoneType\"\u00c2\u0001\n\u000bUserProfile\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008nickname\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006avatar\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003vip\u0018\u0004 \u0001(\u0008\u0012\u0013\n\u000bbattleTitle\u0018\u0005 \u0001(\t\u0012\u0018\n\u0010battleTitleColor\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006copper\u0018\u0007 \u0001(\u0005\u0012\u0011\n\tkickCount\u0018\u0008 \u0001(\u0005\u0012%\n\u0004area\u0018\t \u0001(\u000e2\u0017.papa.battle.BattleArea\";\n\u0015AreaOnlinePeopleCount\u0012\n\n\u0002bj\u0018\u0001 \u0001(\u0005\u0012\n\n\u0002sh\u0018\u0002 \u0001(\u0005\u0012\n\n\u0002gz\u0018\u0003 \u0001(\u0005\"\u0019\n\u0004Pong\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\u0003\"\u00b0\u0006\n\u0006Params\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006gameId\u0018\u0003 \u0001(\u0003\u0012\u000e\n\u0006roomId\u0018\u0004 \u0001(\u0005\u0012\u0016\n\u000echallengeCoins\u0018\u0005 \u0001(\u0005\u0012\u0010\n\u0008password\u0018\u0006 \u0001(\t\u0012\u001a\n\u0012allowSpectatorJoin\u0018\u0007 \u0001(\u0008\u0012\u001b\n\u0013allowPeripheralJoin\u0018\u0008 \u0001(\u0008\u0012\u0015\n\rclosePosition\u0018\t \u0001(\u0008\u0012\u0019\n\u0011roomPositionIndex\u0018\n \u0001(\u0005\u0012.\n\u0008roomType\u0018\u000b \u0001(\u000e2\u001c.papa.battle.Params.RoomType\u0012\u000e\n\u0006silent\u0018\u000c \u0001(\u0008\u0012\u0015\n\rusePeripheral\u0018\r \u0001(\u0008\u0012\u000f\n\u0007fightId\u0018\u000e \u0001(\u0004\u0012\u000f\n\u0007pingVal\u0018\u000f \u0001(\u0005\u0012\u0011\n\ttimestamp\u0018\u0010 \u0001(\u0003\u0012\u0010\n\u0008deviceId\u0018\u0011 \u0001(\t\u0012+\n\nbattleArea\u0018\u0013 \u0001(\u000e2\u0017.papa.battle.BattleArea\u00124\n\u000bchannelType\u0018\u0014 \u0001(\u000e2\u001f.papa.battle.Params.ChannelType\u0012\u0014\n\u000ccollectionId\u0018\u0015 \u0001(\u0005\u0012\u0010\n\u0008fromLive\u0018\u0016 \u0001(\u0008\u00124\n\u0008playMode\u0018\u0017 \u0001(\u000e2\".papa.battle.Params.ServerPlayMode\u0012\u0013\n\u000ballowPCJoin\u0018\u0018 \u0001(\u0008\u0012\u0019\n\u0011disableMobileJoin\u0018\u0019 \u0001(\u0008\u0012\u001b\n\u0013mergeMessageChannel\u0018\u001a \u0001(\u0008\u0012\u0018\n\u0010battleScoreBoard\u0018\u001b \u0001(\t\"!\n\u0008RoomType\u0012\n\n\u0006NORMAL\u0010\u0000\u0012\t\n\u0005ELITE\u0010\u0001\"F\n\u000bChannelType\u0012\u000b\n\u0007ANDROID\u0010\u0000\u0012\u0010\n\u000cWIN_PC_LOBBY\u0010\u0001\u0012\u000f\n\u000bWIN_PC_ROOM\u0010\u0002\u0012\u0007\n\u0003IOS\u0010\u0003\"$\n\u000eServerPlayMode\u0012\u0008\n\u0004FAST\u0010\u0000\u0012\u0008\n\u0004ZONE\u0010\u0001\"\u00f0\t\n\u0007Request\u0012\u000f\n\u0007version\u0018\u0001 \u0001(\u0005\u0012,\n\u0004type\u0018\u0002 \u0001(\u000e2\u001e.papa.battle.Request.ProtoType\u0012\u0011\n\trequestId\u0018\u0003 \u0001(\u0003\u0012#\n\u0006params\u0018\u0004 \u0001(\u000b2\u0013.papa.battle.Params\u0012%\n\u0007account\u0018\u0005 \u0001(\u000b2\u0014.papa.battle.Account\"\u00c6\u0008\n\tProtoType\u0012\u0015\n\u0011UNDEFINED_REQUEST\u0010\u0000\u0012\t\n\u0005LOGIN\u0010\u0001\u0012\u0008\n\u0004PING\u0010\u0002\u0012\u0017\n\u0013SUBSCRIBE_GAME_ROOM\u0010\u0003\u0012\u0014\n\u0010CREATE_GAME_ROOM\u0010\u0004\u0012!\n\u001dSET_ROOM_CHALLENGE_COINS_ATTR\u0010\u0005\u0012\u001a\n\u0016SET_ROOM_PASSWORD_ATTR\u0010\u0006\u0012!\n\u001dSET_ROOM_PERIPHERAL_JOIN_ATTR\u0010\u0007\u0012 \n\u001cSET_ROOM_SPECTATOR_JOIN_ATTR\u0010\u0008\u0012\u001a\n\u0016SET_ROOM_POSITION_ATTR\u0010\t\u0012\r\n\tJOIN_ROOM\u0010\n\u0012\u001e\n\u001aSET_ROOM_CLOSE_P1_POSITION\u0010\u000b\u0012\u001e\n\u001aSET_ROOM_CLOSE_P2_POSITION\u0010\u000c\u0012\u001e\n\u001aSET_ROOM_CLOSE_P3_POSITION\u0010\r\u0012\u001e\n\u001aSET_ROOM_CLOSE_P4_POSITION\u0010\u000e\u0012\u000e\n\nLEAVE_ROOM\u0010\u000f\u0012\u0011\n\rDISSOLVE_ROOM\u0010\u0010\u0012\u001a\n\u0016KICK_OUT_ROOM_POSITION\u0010\u0011\u0012\u0013\n\u000fQUICK_JOIN_ROOM\u0010\u0012\u0012\u0015\n\u0011SEARCH_ROOM_BY_ID\u0010\u0013\u0012\u0014\n\u0010LOBBY_START_GAME\u0010\u0014\u0012\u0015\n\u0011PLAYER_READY_GAME\u0010\u0015\u0012\u001e\n\u001aCANCEL_SUBSCRIBE_GAME_ROOM\u0010\u0016\u0012\u0014\n\u0010PLAYER_JOIN_GAME\u0010\u0017\u0012\u0013\n\u000fSHARE_JOIN_ROOM\u0010\u0018\u0012\u0019\n\u0015DISCONNECT_LEAVE_ROOM\u0010\u0019\u0012\u0016\n\u0012ROOM_SPECTATOR_SIT\u0010\u001a\u0012#\n\u001fGET_KICK_OUT_ROOM_POSITION_INFO\u0010\u001b\u0012\u0018\n\u0014GET_UDP_FRAME_SERVER\u0010\u001c\u0012\u0014\n\u0010JOIN_BATTLE_AREA\u0010\u001d\u0012\u001d\n\u0019VERIFY_JOIN_ROOM_PASSWORD\u0010\u001e\u0012\u001d\n\u0019SUBSCRIBE_GAME_COLLECTION\u0010\u001f\u0012$\n CANCEL_SUBSCRIBE_GAME_COLLECTION\u0010 \u0012\u0016\n\u0012QUICK_JOIN_ROOM_PC\u0010!\u0012\u001d\n\u0019SET_ROOM_SERVER_PLAY_MODE\u0010\"\u0012\u001a\n\u0016SET_ROOM_ALLOW_PC_JOIN\u0010#\u0012 \n\u001cSET_ROOM_DISABLE_MOBILE_JOIN\u0010$\u0012\u001a\n\u0016QUICK_JOIN_ROOM_NET_PC\u0010%\u0012\u0016\n\u0012BATTLE_SCORE_BOARD\u0010&\u0012\u001a\n\u0016GET_BATTLE_SCORE_BOARD\u0010\'\u0012\u001b\n\u0017RE_CONNECTION_JOIN_ROOM\u0010(\"\u00be\u0010\n\u0008Response\u00124\n\nstatusCode\u0018\u0001 \u0001(\u000e2 .papa.battle.Response.StatusCode\u0012\u0011\n\trequestId\u0018\u0002 \u0001(\u0003\u0012-\n\u0004type\u0018\u0003 \u0001(\u000e2\u001f.papa.battle.Response.ProtoType\u0012#\n\u0004room\u0018\u0004 \u0001(\u000b2\u0015.papa.battle.GameRoom\u0012\'\n\u0008response\u0018\u0005 \u0001(\u000b2\u0015.papa.battle.Response\u0012\u0016\n\u000ebroadcastUsers\u0018\u0006 \u0003(\u0005\u0012\r\n\u0005error\u0018\u0007 \u0001(\t\u0012+\n\nsimpleRoom\u0018\u0008 \u0003(\u000b2\u0017.papa.battle.SimpleRoom\u0012<\n\u000elogicErrorCode\u0018\t \u0001(\u000e2$.papa.battle.Response.LogicErrorCode\u0012\u001b\n\u0013joinSpectatorReason\u0018\n \u0001(\t\u0012\u001f\n\u0004pong\u0018\u000b \u0001(\u000b2\u0011.papa.battle.Pong\u0012-\n\u000broomCounter\u0018\u000c \u0001(\u000b2\u0018.papa.battle.RoomCounter\u0012\'\n\u0008kickInfo\u0018\r \u0001(\u000b2\u0015.papa.battle.KickInfo\u0012/\n\u000cnotification\u0018\u000e \u0001(\u000b2\u0019.papa.battle.Notification\u0012;\n\u0012frameForwardServer\u0018\u000f \u0001(\u000b2\u001f.papa.battle.FrameForwardServer\u0012@\n\u0010broadcastChannel\u0018\u0010 \u0001(\u000e2&.papa.battle.Response.BroadcastChannel\u0012A\n\u0015areaOnlinePeopleCount\u0018\u0011 \u0001(\u000b2\".papa.battle.AreaOnlinePeopleCount\u0012-\n\u000buserProfile\u0018\u0012 \u0001(\u000b2\u0018.papa.battle.UserProfile\u0012\u0015\n\u000cendDelimiter\u0018\u00e7\u0007 \u0001(\t\u0012\u0013\n\u000bbattleScore\u0018\u0013 \u0001(\t\"\u009d\u0001\n\nStatusCode\u0012\u0012\n\u000eUNDEFINED_CODE\u0010\u0000\u0012\u0013\n\u000fSERVICE_FAILURE\u0010\u0001\u0012\u0012\n\u000ePARAMS_FAILURE\u0010\u0002\u0012\u0014\n\u0010INTERNAL_FAILURE\u0010\u0003\u0012\u0014\n\u0010UN_LOGIN_FAILURE\u0010\u0004\u0012\u0012\n\u000eRESULT_FAILURE\u0010\u0005\u0012\u0012\n\u000eRESULT_SUCCESS\u0010\u0006\"\u0097\u0005\n\tProtoType\u0012\u0016\n\u0012UNDEFINED_RESPONSE\u0010\u0000\u0012\u0008\n\u0004PONG\u0010\u0001\u0012\u000f\n\u000bCREATE_ROOM\u0010\u0002\u0012\u0019\n\u0015CREATE_ROOM_BROADCAST\u0010\u0003\u0012\u0019\n\u0015UPDATE_ROOM_BROADCAST\u0010\u0004\u0012\u0017\n\u0013KICK_ROOM_BROADCAST\u0010\u000b\u0012\u0018\n\u0014MULTI_USER_BROADCAST\u0010\u0005\u0012\u001b\n\u0017DISSOLVE_ROOM_BROADCAST\u0010\u0006\u0012\u001c\n\u0018REFRESH_ROOM_LIST_UPDATE\u0010\u0007\u0012\u001e\n\u001aREFRESH_ROOM_LIST_DISSOLVE\u0010\u0008\u0012\u001b\n\u0017FULL_PUSH_ROOM_LIST_ING\u0010\t\u0012\u001e\n\u001aFULL_PUSH_ROOM_LIST_FINISH\u0010\n\u0012\u001d\n\u0019START_GAME_ROOM_BROADCAST\u0010\u000c\u0012\u001a\n\u0016ACCOUNT_KICK_BROADCAST\u0010\r\u0012\u0012\n\u000eSYNC_ROOM_INFO\u0010\u000e\u0012\u001c\n\u0018GLOBAL_MESSAGE_BROADCAST\u0010\u000f\u0012\u001c\n\u0018UPDATE_FRAME_SERVER_ADDR\u0010\u0010\u0012\u0010\n\u000cIDLE_TIMEOUT\u0010\u0011\u0012\'\n#UPDATE_AREA_ONLINE_PEOPLE_BROADCAST\u0010\u0012\u0012\u001e\n\u001aROOM_READY_TIMEOUT_KICKOUT\u0010\u0013\u0012\u001e\n\u001aROOM_START_TIMEOUT_KICKOUT\u0010\u0014\u0012\u0015\n\u0011REFERSH_USER_INFO\u0010\u0015\u0012!\n\u001dFORCE_DISSOLVE_ROOM_BROADCAST\u0010\u0016\u0012\u0016\n\u0012BATTLE_SCORE_BOARD\u0010\u0017\"\u0089\u0003\n\u000eLogicErrorCode\u0012\u0017\n\u0013UNDEFINED_EROR_CODE\u0010\u0000\u0012!\n\u001dJOIN_GAME_ROOM_ERROR_PASSWORD\u0010\u0001\u0012\u0012\n\u000eNOT_FOUND_ROOM\u0010\u0002\u0012\u001d\n\u0019JOIN_GAME_ROOM_ERROR_FULL\u0010\u0003\u0012&\n\"JOIN_GAME_ROOM_ERROR_NEED_PASSWORD\u0010\u0004\u0012\"\n\u001eCREATE_ROOM_NO_CHALLENGE_COINS\u0010\u0005\u0012!\n\u001dROOM_ERROR_NO_CHALLENGE_COINS\u0010\u0006\u0012+\n\'JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS\u0010\u0007\u0012\u0011\n\rERROR_MESSAGE\u0010\u0008\u0012\u0017\n\u0013ROOM_ERROR_DISSOLVE\u0010\t\u0012\u001d\n\u0019JOIN_GAME_ROOM_ERROR_KICK\u0010\n\u0012!\n\u001dJOIN_GAME_ROOM_ERROR_NO_WHITE\u0010\u000b\"0\n\u0010BroadcastChannel\u0012\u0007\n\u0003ALL\u0010\u0000\u0012\t\n\u0005LOBBY\u0010\u0001\u0012\u0008\n\u0004ROOM\u0010\u0002\"\"\n\u000cDevelVersion\u0012\u0012\n\u0007version\u0018\u0083\u008f\u00cf\t \u0001(\u0005*\u001e\n\u0008Platform\u0012\n\n\u0006MOBILE\u0010\u0000\u0012\u0006\n\u0002PC\u0010\u0001*[\n\tPhoneType\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0012\n\u000eANDROID_MOBILE\u0010\u0001\u0012\u000e\n\nIOS_MOBILE\u0010\u0002\u0012\r\n\tTV_MOBILE\u0010\u0003\u0012\u000e\n\nWINDOWS_PC\u0010\u0004*-\n\nBattleArea\u0012\u0007\n\u0003ALL\u0010\u0000\u0012\u0006\n\u0002BJ\u0010\u0001\u0012\u0006\n\u0002SH\u0010\u0002\u0012\u0006\n\u0002GZ\u0010\u0003*4\n\u000cRoomCategory\u0012\n\n\u0006NORMAL\u0010\u0000\u0012\u000e\n\nTOURNAMENT\u0010\u0001\u0012\u0008\n\u0004LIVE\u0010\u0002*6\n\tRoomState\u0012\t\n\u0005EMPTY\u0010\u0000\u0012\u0008\n\u0004WAIT\u0010\u0001\u0012\t\n\u0005READY\u0010\u0002\u0012\t\n\u0005START\u0010\u0003B+\n\u001acom.papa91.battle.protocolB\u000bBattleProtoP\u0001b\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_FrameForwardServer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 33
    .line 34
    const-string v2, "Host"

    .line 35
    .line 36
    const-string v3, "Port"

    .line 37
    .line 38
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_FrameForwardServer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 46
    .line 47
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 61
    .line 62
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 63
    .line 64
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 65
    .line 66
    const-string v4, "Message"

    .line 67
    .line 68
    const-string v5, "JumpJSON"

    .line 69
    .line 70
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 78
    .line 79
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 93
    .line 94
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_KickInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 95
    .line 96
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 97
    .line 98
    const-string v4, "Nickname"

    .line 99
    .line 100
    const-string v5, "VipCopper"

    .line 101
    .line 102
    const-string v6, "Count"

    .line 103
    .line 104
    const-string v7, "Copper"

    .line 105
    .line 106
    const-string v8, "IsVIP"

    .line 107
    .line 108
    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_KickInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 116
    .line 117
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/4 v1, 0x3

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 131
    .line 132
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomCounter_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 133
    .line 134
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 135
    .line 136
    const-string v4, "Normal"

    .line 137
    .line 138
    const-string v5, "Elite"

    .line 139
    .line 140
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomCounter_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 148
    .line 149
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/4 v1, 0x4

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 163
    .line 164
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_BattleServerAddr_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 165
    .line 166
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 167
    .line 168
    const-string v4, "NetType"

    .line 169
    .line 170
    const-string v5, "BattleRoomId"

    .line 171
    .line 172
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_BattleServerAddr_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 180
    .line 181
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const/4 v1, 0x5

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 195
    .line 196
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_BattleTitle_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 197
    .line 198
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 199
    .line 200
    const-string v2, "Title"

    .line 201
    .line 202
    const-string v3, "BackgroudColor"

    .line 203
    .line 204
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_BattleTitle_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 212
    .line 213
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/4 v1, 0x6

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 227
    .line 228
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 229
    .line 230
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 231
    .line 232
    const-string v2, "RoomId"

    .line 233
    .line 234
    const-string v3, "GameId"

    .line 235
    .line 236
    const-string v4, "Nickname"

    .line 237
    .line 238
    const-string v5, "Vip"

    .line 239
    .line 240
    const-string v6, "CreateAt"

    .line 241
    .line 242
    const-string v7, "SeatsNumber"

    .line 243
    .line 244
    const-string v8, "SitDownloadNumber"

    .line 245
    .line 246
    const-string v9, "HasJoinPassword"

    .line 247
    .line 248
    const-string v10, "AllowSpectatorJoin"

    .line 249
    .line 250
    const-string v11, "AllowPeripheralJoin"

    .line 251
    .line 252
    const-string v12, "ChallengeCoins"

    .line 253
    .line 254
    const-string v13, "State"

    .line 255
    .line 256
    const-string v14, "PlaySeconds"

    .line 257
    .line 258
    const-string v15, "Title"

    .line 259
    .line 260
    const-string v16, "Elite"

    .line 261
    .line 262
    const-string v17, "Copper"

    .line 263
    .line 264
    const-string v18, "HasPeripheralPlayer"

    .line 265
    .line 266
    const-string v19, "BattleTitle"

    .line 267
    .line 268
    const-string v20, "BattleTitleColor"

    .line 269
    .line 270
    const-string v21, "PlayTimestamp"

    .line 271
    .line 272
    const-string v22, "BattleArea"

    .line 273
    .line 274
    const-string v23, "GameName"

    .line 275
    .line 276
    const-string v24, "CollectionId"

    .line 277
    .line 278
    const-string v25, "SpectatorNumber"

    .line 279
    .line 280
    const-string v26, "Avatar"

    .line 281
    .line 282
    const-string v27, "AllowPCJoin"

    .line 283
    .line 284
    const-string v28, "PlayerList"

    .line 285
    .line 286
    const-string v29, "LeaderId"

    .line 287
    .line 288
    const-string v30, "RoomCategory"

    .line 289
    .line 290
    const-string v31, "OpenBattleScore"

    .line 291
    .line 292
    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 300
    .line 301
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const/4 v1, 0x7

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 315
    .line 316
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 317
    .line 318
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 319
    .line 320
    const-string v2, "Closed"

    .line 321
    .line 322
    const-string v3, "Vip"

    .line 323
    .line 324
    const-string v4, "Uid"

    .line 325
    .line 326
    const-string v5, "Title"

    .line 327
    .line 328
    const-string v6, "Nickname"

    .line 329
    .line 330
    const-string v7, "Avatar"

    .line 331
    .line 332
    const-string v8, "Copper"

    .line 333
    .line 334
    const-string v9, "PingVal"

    .line 335
    .line 336
    const-string v10, "Peripheral"

    .line 337
    .line 338
    const-string v11, "State"

    .line 339
    .line 340
    const-string v12, "BattleTitle"

    .line 341
    .line 342
    const-string v13, "BattleTitleColor"

    .line 343
    .line 344
    const-string v14, "BattleArea"

    .line 345
    .line 346
    const-string v15, "KickCount"

    .line 347
    .line 348
    const-string v16, "Ignore"

    .line 349
    .line 350
    const-string v17, "Platform"

    .line 351
    .line 352
    const-string v18, "ProficiencyLevel"

    .line 353
    .line 354
    const-string v19, "PhoneType"

    .line 355
    .line 356
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_RoomPosition_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 364
    .line 365
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const/16 v1, 0x8

    .line 374
    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 380
    .line 381
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_GameRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 382
    .line 383
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 384
    .line 385
    const-string v2, "RoomId"

    .line 386
    .line 387
    const-string v3, "GameId"

    .line 388
    .line 389
    const-string v4, "Password"

    .line 390
    .line 391
    const-string v5, "HasJoinPassword"

    .line 392
    .line 393
    const-string v6, "AllowSpectatorJoin"

    .line 394
    .line 395
    const-string v7, "AllowPeripheralJoin"

    .line 396
    .line 397
    const-string v8, "SpectatorNumber"

    .line 398
    .line 399
    const-string v9, "P1"

    .line 400
    .line 401
    const-string v10, "P2"

    .line 402
    .line 403
    const-string v11, "P3"

    .line 404
    .line 405
    const-string v12, "P4"

    .line 406
    .line 407
    const-string v13, "ChallengeCoins"

    .line 408
    .line 409
    const-string v14, "PlayerNumber"

    .line 410
    .line 411
    const-string v15, "SeatsNumber"

    .line 412
    .line 413
    const-string v16, "State"

    .line 414
    .line 415
    const-string v17, "Leader"

    .line 416
    .line 417
    const-string v18, "PlayerSeconds"

    .line 418
    .line 419
    const-string v19, "Elite"

    .line 420
    .line 421
    const-string v20, "FastMode"

    .line 422
    .line 423
    const-string v21, "FightId"

    .line 424
    .line 425
    const-string v22, "BattleServerAddr"

    .line 426
    .line 427
    const-string v23, "CreateAt"

    .line 428
    .line 429
    const-string v24, "Silent"

    .line 430
    .line 431
    const-string v25, "PlayTimestamp"

    .line 432
    .line 433
    const-string v26, "GameType"

    .line 434
    .line 435
    const-string v27, "BattleArea"

    .line 436
    .line 437
    const-string v28, "GameName"

    .line 438
    .line 439
    const-string v29, "CollectionId"

    .line 440
    .line 441
    const-string v30, "AllowPCJoin"

    .line 442
    .line 443
    const-string v31, "OpenFastModeBtn"

    .line 444
    .line 445
    const-string v32, "DisableMobileJoin"

    .line 446
    .line 447
    const-string v33, "CreateByUser"

    .line 448
    .line 449
    const-string v34, "ChatRoomId"

    .line 450
    .line 451
    const-string v35, "RoomCategory"

    .line 452
    .line 453
    const-string v36, "OpenBattleScore"

    .line 454
    .line 455
    filled-new-array/range {v2 .. v36}, [Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_GameRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 463
    .line 464
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const/16 v1, 0x9

    .line 473
    .line 474
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 479
    .line 480
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 481
    .line 482
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 483
    .line 484
    const-string v2, "Uid"

    .line 485
    .line 486
    const-string v3, "Nickname"

    .line 487
    .line 488
    const-string v4, "Avatar"

    .line 489
    .line 490
    const-string v5, "Vip"

    .line 491
    .line 492
    const-string v6, "BattleTitle"

    .line 493
    .line 494
    const-string v7, "BattleTitleColor"

    .line 495
    .line 496
    const-string v8, "Copper"

    .line 497
    .line 498
    const-string v9, "KickCount"

    .line 499
    .line 500
    const-string v10, "Area"

    .line 501
    .line 502
    const-string v11, "Ignore1"

    .line 503
    .line 504
    const-string v12, "Platform"

    .line 505
    .line 506
    const-string v13, "ProficiencyLevel"

    .line 507
    .line 508
    const-string v14, "PhoneType"

    .line 509
    .line 510
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Account_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 518
    .line 519
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    const/16 v1, 0xa

    .line 528
    .line 529
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 534
    .line 535
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_UserProfile_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 536
    .line 537
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 538
    .line 539
    const-string v2, "Uid"

    .line 540
    .line 541
    const-string v3, "Nickname"

    .line 542
    .line 543
    const-string v4, "Avatar"

    .line 544
    .line 545
    const-string v5, "Vip"

    .line 546
    .line 547
    const-string v6, "BattleTitle"

    .line 548
    .line 549
    const-string v7, "BattleTitleColor"

    .line 550
    .line 551
    const-string v8, "Copper"

    .line 552
    .line 553
    const-string v9, "KickCount"

    .line 554
    .line 555
    const-string v10, "Area"

    .line 556
    .line 557
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_UserProfile_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 565
    .line 566
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const/16 v1, 0xb

    .line 575
    .line 576
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 581
    .line 582
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_AreaOnlinePeopleCount_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 583
    .line 584
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 585
    .line 586
    const-string v2, "Sh"

    .line 587
    .line 588
    const-string v3, "Gz"

    .line 589
    .line 590
    const-string v4, "Bj"

    .line 591
    .line 592
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_AreaOnlinePeopleCount_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 600
    .line 601
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    const/16 v1, 0xc

    .line 610
    .line 611
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 616
    .line 617
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Pong_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 618
    .line 619
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 620
    .line 621
    const-string v2, "Timestamp"

    .line 622
    .line 623
    filled-new-array {v2}, [Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Pong_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 631
    .line 632
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    const/16 v1, 0xd

    .line 641
    .line 642
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 647
    .line 648
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 649
    .line 650
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 651
    .line 652
    const-string v2, "Uid"

    .line 653
    .line 654
    const-string v3, "Token"

    .line 655
    .line 656
    const-string v4, "GameId"

    .line 657
    .line 658
    const-string v5, "RoomId"

    .line 659
    .line 660
    const-string v6, "ChallengeCoins"

    .line 661
    .line 662
    const-string v7, "Password"

    .line 663
    .line 664
    const-string v8, "AllowSpectatorJoin"

    .line 665
    .line 666
    const-string v9, "AllowPeripheralJoin"

    .line 667
    .line 668
    const-string v10, "ClosePosition"

    .line 669
    .line 670
    const-string v11, "RoomPositionIndex"

    .line 671
    .line 672
    const-string v12, "RoomType"

    .line 673
    .line 674
    const-string v13, "Silent"

    .line 675
    .line 676
    const-string v14, "UsePeripheral"

    .line 677
    .line 678
    const-string v15, "FightId"

    .line 679
    .line 680
    const-string v16, "PingVal"

    .line 681
    .line 682
    const-string v17, "Timestamp"

    .line 683
    .line 684
    const-string v18, "DeviceId"

    .line 685
    .line 686
    const-string v19, "BattleArea"

    .line 687
    .line 688
    const-string v20, "ChannelType"

    .line 689
    .line 690
    const-string v21, "CollectionId"

    .line 691
    .line 692
    const-string v22, "FromLive"

    .line 693
    .line 694
    const-string v23, "PlayMode"

    .line 695
    .line 696
    const-string v24, "AllowPCJoin"

    .line 697
    .line 698
    const-string v25, "DisableMobileJoin"

    .line 699
    .line 700
    const-string v26, "MergeMessageChannel"

    .line 701
    .line 702
    const-string v27, "BattleScoreBoard"

    .line 703
    .line 704
    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 712
    .line 713
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const/16 v1, 0xe

    .line 722
    .line 723
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 728
    .line 729
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 730
    .line 731
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 732
    .line 733
    const-string v2, "Params"

    .line 734
    .line 735
    const-string v3, "Account"

    .line 736
    .line 737
    const-string v4, "Version"

    .line 738
    .line 739
    const-string v5, "Type"

    .line 740
    .line 741
    const-string v6, "RequestId"

    .line 742
    .line 743
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 751
    .line 752
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    const/16 v1, 0xf

    .line 761
    .line 762
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 767
    .line 768
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 769
    .line 770
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 771
    .line 772
    const-string v5, "StatusCode"

    .line 773
    .line 774
    const-string v6, "RequestId"

    .line 775
    .line 776
    const-string v7, "Type"

    .line 777
    .line 778
    const-string v8, "Room"

    .line 779
    .line 780
    const-string v9, "Response"

    .line 781
    .line 782
    const-string v10, "BroadcastUsers"

    .line 783
    .line 784
    const-string v11, "Error"

    .line 785
    .line 786
    const-string v12, "SimpleRoom"

    .line 787
    .line 788
    const-string v13, "LogicErrorCode"

    .line 789
    .line 790
    const-string v14, "JoinSpectatorReason"

    .line 791
    .line 792
    const-string v15, "Pong"

    .line 793
    .line 794
    const-string v16, "RoomCounter"

    .line 795
    .line 796
    const-string v17, "KickInfo"

    .line 797
    .line 798
    const-string v18, "Notification"

    .line 799
    .line 800
    const-string v19, "FrameForwardServer"

    .line 801
    .line 802
    const-string v20, "BroadcastChannel"

    .line 803
    .line 804
    const-string v21, "AreaOnlinePeopleCount"

    .line 805
    .line 806
    const-string v22, "UserProfile"

    .line 807
    .line 808
    const-string v23, "EndDelimiter"

    .line 809
    .line 810
    const-string v24, "BattleScore"

    .line 811
    .line 812
    filled-new-array/range {v5 .. v24}, [Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 820
    .line 821
    invoke-static {}, Lcom/papa91/battle/protocol/BattleProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    const/16 v1, 0x10

    .line 830
    .line 831
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 836
    .line 837
    sput-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_DevelVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 838
    .line 839
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 840
    .line 841
    filled-new-array {v4}, [Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    sput-object v1, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_DevelVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 849
    .line 850
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/BattleProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
