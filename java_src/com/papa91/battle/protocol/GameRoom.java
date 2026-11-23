package com.papa91.battle.protocol;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class GameRoom extends GeneratedMessageV3 implements GameRoomOrBuilder {
    public static final int ALLOWPCJOIN_FIELD_NUMBER = 29;
    public static final int ALLOWPERIPHERALJOIN_FIELD_NUMBER = 6;
    public static final int ALLOWSPECTATORJOIN_FIELD_NUMBER = 5;
    public static final int BATTLEAREA_FIELD_NUMBER = 26;
    public static final int BATTLESERVERADDR_FIELD_NUMBER = 21;
    public static final int CHALLENGECOINS_FIELD_NUMBER = 12;
    public static final int CHATROOMID_FIELD_NUMBER = 33;
    public static final int COLLECTIONID_FIELD_NUMBER = 28;
    public static final int CREATEAT_FIELD_NUMBER = 22;
    public static final int CREATEBYUSER_FIELD_NUMBER = 32;
    public static final int DISABLEMOBILEJOIN_FIELD_NUMBER = 31;
    public static final int ELITE_FIELD_NUMBER = 18;
    public static final int FASTMODE_FIELD_NUMBER = 19;
    public static final int FIGHTID_FIELD_NUMBER = 20;
    public static final int GAMEID_FIELD_NUMBER = 2;
    public static final int GAMENAME_FIELD_NUMBER = 27;
    public static final int GAMETYPE_FIELD_NUMBER = 25;
    public static final int HASJOINPASSWORD_FIELD_NUMBER = 4;
    public static final int LEADER_FIELD_NUMBER = 16;
    public static final int OPENBATTLESCORE_FIELD_NUMBER = 35;
    public static final int OPENFASTMODEBTN_FIELD_NUMBER = 30;
    public static final int P1_FIELD_NUMBER = 8;
    public static final int P2_FIELD_NUMBER = 9;
    public static final int P3_FIELD_NUMBER = 10;
    public static final int P4_FIELD_NUMBER = 11;
    public static final int PASSWORD_FIELD_NUMBER = 3;
    public static final int PLAYERNUMBER_FIELD_NUMBER = 13;
    public static final int PLAYERSECONDS_FIELD_NUMBER = 17;
    public static final int PLAYTIMESTAMP_FIELD_NUMBER = 24;
    public static final int ROOMCATEGORY_FIELD_NUMBER = 34;
    public static final int ROOMID_FIELD_NUMBER = 1;
    public static final int SEATSNUMBER_FIELD_NUMBER = 14;
    public static final int SILENT_FIELD_NUMBER = 23;
    public static final int SPECTATORNUMBER_FIELD_NUMBER = 7;
    public static final int STATE_FIELD_NUMBER = 15;
    private static final long serialVersionUID = 0;
    private boolean allowPCJoin_;
    private boolean allowPeripheralJoin_;
    private boolean allowSpectatorJoin_;
    private int battleArea_;
    private BattleServerAddr battleServerAddr_;
    private int challengeCoins_;
    private volatile Object chatRoomId_;
    private int collectionId_;
    private long createAt_;
    private int createByUser_;
    private boolean disableMobileJoin_;
    private boolean elite_;
    private boolean fastMode_;
    private long fightId_;
    private long gameId_;
    private volatile Object gameName_;
    private int gameType_;
    private boolean hasJoinPassword_;
    private int leader_;
    private byte memoizedIsInitialized;
    private boolean openBattleScore_;
    private boolean openFastModeBtn_;
    private RoomPosition p1_;
    private RoomPosition p2_;
    private RoomPosition p3_;
    private RoomPosition p4_;
    private volatile Object password_;
    private long playTimestamp_;
    private int playerNumber_;
    private int playerSeconds_;
    private int roomCategory_;
    private int roomId_;
    private int seatsNumber_;
    private boolean silent_;
    private int spectatorNumber_;
    private int state_;
    private static final GameRoom DEFAULT_INSTANCE = new GameRoom();
    private static final Parser<GameRoom> PARSER = new AbstractParser<GameRoom>() { // from class: com.papa91.battle.protocol.GameRoom.1
        @Override // com.google.protobuf.Parser
        public GameRoom parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new GameRoom(codedInputStream, extensionRegistryLite);
        }
    };

    public enum GameType implements ProtocolMessageEnum {
        FIGHT(0),
        LEVEL(1),
        UNRECOGNIZED(-1);

        public static final int FIGHT_VALUE = 0;
        public static final int LEVEL_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<GameType> internalValueMap = new Internal.EnumLiteMap<GameType>() { // from class: com.papa91.battle.protocol.GameRoom.GameType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public GameType findValueByNumber(int i10) {
                return GameType.forNumber(i10);
            }
        };
        private static final GameType[] VALUES = values();

        GameType(int i10) {
            this.value = i10;
        }

        public static GameType forNumber(int i10) {
            if (i10 == 0) {
                return FIGHT;
            }
            if (i10 != 1) {
                return null;
            }
            return LEVEL;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return GameRoom.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<GameType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().getValues().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static GameType valueOf(int i10) {
            return forNumber(i10);
        }

        public static GameType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static GameRoom getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_GameRoom_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GameRoom parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GameRoom parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<GameRoom> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GameRoom)) {
            return super.equals(obj);
        }
        GameRoom gameRoom = (GameRoom) obj;
        if (getRoomId() != gameRoom.getRoomId() || getGameId() != gameRoom.getGameId() || !getPassword().equals(gameRoom.getPassword()) || getHasJoinPassword() != gameRoom.getHasJoinPassword() || getAllowSpectatorJoin() != gameRoom.getAllowSpectatorJoin() || getAllowPeripheralJoin() != gameRoom.getAllowPeripheralJoin() || getSpectatorNumber() != gameRoom.getSpectatorNumber() || hasP1() != gameRoom.hasP1()) {
            return false;
        }
        if ((hasP1() && !getP1().equals(gameRoom.getP1())) || hasP2() != gameRoom.hasP2()) {
            return false;
        }
        if ((hasP2() && !getP2().equals(gameRoom.getP2())) || hasP3() != gameRoom.hasP3()) {
            return false;
        }
        if ((hasP3() && !getP3().equals(gameRoom.getP3())) || hasP4() != gameRoom.hasP4()) {
            return false;
        }
        if ((!hasP4() || getP4().equals(gameRoom.getP4())) && getChallengeCoins() == gameRoom.getChallengeCoins() && getPlayerNumber() == gameRoom.getPlayerNumber() && getSeatsNumber() == gameRoom.getSeatsNumber() && this.state_ == gameRoom.state_ && getLeader() == gameRoom.getLeader() && getPlayerSeconds() == gameRoom.getPlayerSeconds() && getElite() == gameRoom.getElite() && getFastMode() == gameRoom.getFastMode() && getFightId() == gameRoom.getFightId() && hasBattleServerAddr() == gameRoom.hasBattleServerAddr()) {
            return (!hasBattleServerAddr() || getBattleServerAddr().equals(gameRoom.getBattleServerAddr())) && getCreateAt() == gameRoom.getCreateAt() && getSilent() == gameRoom.getSilent() && getPlayTimestamp() == gameRoom.getPlayTimestamp() && this.gameType_ == gameRoom.gameType_ && this.battleArea_ == gameRoom.battleArea_ && getGameName().equals(gameRoom.getGameName()) && getCollectionId() == gameRoom.getCollectionId() && getAllowPCJoin() == gameRoom.getAllowPCJoin() && getOpenFastModeBtn() == gameRoom.getOpenFastModeBtn() && getDisableMobileJoin() == gameRoom.getDisableMobileJoin() && getCreateByUser() == gameRoom.getCreateByUser() && getChatRoomId().equals(gameRoom.getChatRoomId()) && this.roomCategory_ == gameRoom.roomCategory_ && getOpenBattleScore() == gameRoom.getOpenBattleScore() && this.unknownFields.equals(gameRoom.unknownFields);
        }
        return false;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getAllowPCJoin() {
        return this.allowPCJoin_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getAllowPeripheralJoin() {
        return this.allowPeripheralJoin_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getAllowSpectatorJoin() {
        return this.allowSpectatorJoin_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public BattleArea getBattleArea() {
        BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
        return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public BattleServerAddr getBattleServerAddr() {
        BattleServerAddr battleServerAddr = this.battleServerAddr_;
        return battleServerAddr == null ? BattleServerAddr.getDefaultInstance() : battleServerAddr;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public BattleServerAddrOrBuilder getBattleServerAddrOrBuilder() {
        return getBattleServerAddr();
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getChallengeCoins() {
        return this.challengeCoins_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public String getChatRoomId() {
        Object obj = this.chatRoomId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.chatRoomId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public ByteString getChatRoomIdBytes() {
        Object obj = this.chatRoomId_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.chatRoomId_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getCollectionId() {
        return this.collectionId_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public long getCreateAt() {
        return this.createAt_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getCreateByUser() {
        return this.createByUser_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getDisableMobileJoin() {
        return this.disableMobileJoin_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getElite() {
        return this.elite_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getFastMode() {
        return this.fastMode_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public long getFightId() {
        return this.fightId_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public GameType getGameType() {
        GameType gameTypeValueOf = GameType.valueOf(this.gameType_);
        return gameTypeValueOf == null ? GameType.UNRECOGNIZED : gameTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getGameTypeValue() {
        return this.gameType_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getHasJoinPassword() {
        return this.hasJoinPassword_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getLeader() {
        return this.leader_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getOpenBattleScore() {
        return this.openBattleScore_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getOpenFastModeBtn() {
        return this.openFastModeBtn_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPosition getP1() {
        RoomPosition roomPosition = this.p1_;
        return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPositionOrBuilder getP1OrBuilder() {
        return getP1();
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPosition getP2() {
        RoomPosition roomPosition = this.p2_;
        return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPositionOrBuilder getP2OrBuilder() {
        return getP2();
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPosition getP3() {
        RoomPosition roomPosition = this.p3_;
        return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPositionOrBuilder getP3OrBuilder() {
        return getP3();
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPosition getP4() {
        RoomPosition roomPosition = this.p4_;
        return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomPositionOrBuilder getP4OrBuilder() {
        return getP4();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<GameRoom> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public String getPassword() {
        Object obj = this.password_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.password_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public ByteString getPasswordBytes() {
        Object obj = this.password_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.password_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public long getPlayTimestamp() {
        return this.playTimestamp_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getPlayerNumber() {
        return this.playerNumber_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getPlayerSeconds() {
        return this.playerSeconds_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomCategory getRoomCategory() {
        RoomCategory roomCategoryValueOf = RoomCategory.valueOf(this.roomCategory_);
        return roomCategoryValueOf == null ? RoomCategory.UNRECOGNIZED : roomCategoryValueOf;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getRoomCategoryValue() {
        return this.roomCategory_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getRoomId() {
        return this.roomId_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getSeatsNumber() {
        return this.seatsNumber_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.roomId_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(2, j10);
        }
        if (!getPasswordBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.password_);
        }
        boolean z10 = this.hasJoinPassword_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(4, z10);
        }
        boolean z11 = this.allowSpectatorJoin_;
        if (z11) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(5, z11);
        }
        boolean z12 = this.allowPeripheralJoin_;
        if (z12) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(6, z12);
        }
        int i12 = this.spectatorNumber_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i12);
        }
        if (this.p1_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(8, getP1());
        }
        if (this.p2_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(9, getP2());
        }
        if (this.p3_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(10, getP3());
        }
        if (this.p4_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(11, getP4());
        }
        int i13 = this.challengeCoins_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(12, i13);
        }
        int i14 = this.playerNumber_;
        if (i14 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(13, i14);
        }
        int i15 = this.seatsNumber_;
        if (i15 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(14, i15);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(15, this.state_);
        }
        int i16 = this.leader_;
        if (i16 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(16, i16);
        }
        int i17 = this.playerSeconds_;
        if (i17 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(17, i17);
        }
        boolean z13 = this.elite_;
        if (z13) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(18, z13);
        }
        boolean z14 = this.fastMode_;
        if (z14) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(19, z14);
        }
        long j11 = this.fightId_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeUInt64Size(20, j11);
        }
        if (this.battleServerAddr_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(21, getBattleServerAddr());
        }
        long j12 = this.createAt_;
        if (j12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(22, j12);
        }
        boolean z15 = this.silent_;
        if (z15) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(23, z15);
        }
        long j13 = this.playTimestamp_;
        if (j13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(24, j13);
        }
        if (this.gameType_ != GameType.FIGHT.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(25, this.gameType_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(26, this.battleArea_);
        }
        if (!getGameNameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(27, this.gameName_);
        }
        int i18 = this.collectionId_;
        if (i18 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(28, i18);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(29, z16);
        }
        boolean z17 = this.openFastModeBtn_;
        if (z17) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(30, z17);
        }
        boolean z18 = this.disableMobileJoin_;
        if (z18) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(31, z18);
        }
        int i19 = this.createByUser_;
        if (i19 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(32, i19);
        }
        if (!getChatRoomIdBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(33, this.chatRoomId_);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(34, this.roomCategory_);
        }
        boolean z19 = this.openBattleScore_;
        if (z19) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(35, z19);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean getSilent() {
        return this.silent_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getSpectatorNumber() {
        return this.spectatorNumber_;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public RoomState getState() {
        RoomState roomStateValueOf = RoomState.valueOf(this.state_);
        return roomStateValueOf == null ? RoomState.UNRECOGNIZED : roomStateValueOf;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean hasBattleServerAddr() {
        return this.battleServerAddr_ != null;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean hasP1() {
        return this.p1_ != null;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean hasP2() {
        return this.p2_ != null;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean hasP3() {
        return this.p3_ != null;
    }

    @Override // com.papa91.battle.protocol.GameRoomOrBuilder
    public boolean hasP4() {
        return this.p4_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getRoomId()) * 37) + 2) * 53) + Internal.hashLong(getGameId())) * 37) + 3) * 53) + getPassword().hashCode()) * 37) + 4) * 53) + Internal.hashBoolean(getHasJoinPassword())) * 37) + 5) * 53) + Internal.hashBoolean(getAllowSpectatorJoin())) * 37) + 6) * 53) + Internal.hashBoolean(getAllowPeripheralJoin())) * 37) + 7) * 53) + getSpectatorNumber();
        if (hasP1()) {
            iHashCode = (((iHashCode * 37) + 8) * 53) + getP1().hashCode();
        }
        if (hasP2()) {
            iHashCode = (((iHashCode * 37) + 9) * 53) + getP2().hashCode();
        }
        if (hasP3()) {
            iHashCode = (((iHashCode * 37) + 10) * 53) + getP3().hashCode();
        }
        if (hasP4()) {
            iHashCode = (((iHashCode * 37) + 11) * 53) + getP4().hashCode();
        }
        int challengeCoins = (((((((((((((((((((((((((((((((((((iHashCode * 37) + 12) * 53) + getChallengeCoins()) * 37) + 13) * 53) + getPlayerNumber()) * 37) + 14) * 53) + getSeatsNumber()) * 37) + 15) * 53) + this.state_) * 37) + 16) * 53) + getLeader()) * 37) + 17) * 53) + getPlayerSeconds()) * 37) + 18) * 53) + Internal.hashBoolean(getElite())) * 37) + 19) * 53) + Internal.hashBoolean(getFastMode())) * 37) + 20) * 53) + Internal.hashLong(getFightId());
        if (hasBattleServerAddr()) {
            challengeCoins = (((challengeCoins * 37) + 21) * 53) + getBattleServerAddr().hashCode();
        }
        int iHashLong = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((challengeCoins * 37) + 22) * 53) + Internal.hashLong(getCreateAt())) * 37) + 23) * 53) + Internal.hashBoolean(getSilent())) * 37) + 24) * 53) + Internal.hashLong(getPlayTimestamp())) * 37) + 25) * 53) + this.gameType_) * 37) + 26) * 53) + this.battleArea_) * 37) + 27) * 53) + getGameName().hashCode()) * 37) + 28) * 53) + getCollectionId()) * 37) + 29) * 53) + Internal.hashBoolean(getAllowPCJoin())) * 37) + 30) * 53) + Internal.hashBoolean(getOpenFastModeBtn())) * 37) + 31) * 53) + Internal.hashBoolean(getDisableMobileJoin())) * 37) + 32) * 53) + getCreateByUser()) * 37) + 33) * 53) + getChatRoomId().hashCode()) * 37) + 34) * 53) + this.roomCategory_) * 37) + 35) * 53) + Internal.hashBoolean(getOpenBattleScore())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashLong;
        return iHashLong;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_GameRoom_fieldAccessorTable.ensureFieldAccessorsInitialized(GameRoom.class, Builder.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new GameRoom();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.roomId_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            codedOutputStream.writeInt64(2, j10);
        }
        if (!getPasswordBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.password_);
        }
        boolean z10 = this.hasJoinPassword_;
        if (z10) {
            codedOutputStream.writeBool(4, z10);
        }
        boolean z11 = this.allowSpectatorJoin_;
        if (z11) {
            codedOutputStream.writeBool(5, z11);
        }
        boolean z12 = this.allowPeripheralJoin_;
        if (z12) {
            codedOutputStream.writeBool(6, z12);
        }
        int i11 = this.spectatorNumber_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(7, i11);
        }
        if (this.p1_ != null) {
            codedOutputStream.writeMessage(8, getP1());
        }
        if (this.p2_ != null) {
            codedOutputStream.writeMessage(9, getP2());
        }
        if (this.p3_ != null) {
            codedOutputStream.writeMessage(10, getP3());
        }
        if (this.p4_ != null) {
            codedOutputStream.writeMessage(11, getP4());
        }
        int i12 = this.challengeCoins_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(12, i12);
        }
        int i13 = this.playerNumber_;
        if (i13 != 0) {
            codedOutputStream.writeInt32(13, i13);
        }
        int i14 = this.seatsNumber_;
        if (i14 != 0) {
            codedOutputStream.writeInt32(14, i14);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            codedOutputStream.writeEnum(15, this.state_);
        }
        int i15 = this.leader_;
        if (i15 != 0) {
            codedOutputStream.writeInt32(16, i15);
        }
        int i16 = this.playerSeconds_;
        if (i16 != 0) {
            codedOutputStream.writeInt32(17, i16);
        }
        boolean z13 = this.elite_;
        if (z13) {
            codedOutputStream.writeBool(18, z13);
        }
        boolean z14 = this.fastMode_;
        if (z14) {
            codedOutputStream.writeBool(19, z14);
        }
        long j11 = this.fightId_;
        if (j11 != 0) {
            codedOutputStream.writeUInt64(20, j11);
        }
        if (this.battleServerAddr_ != null) {
            codedOutputStream.writeMessage(21, getBattleServerAddr());
        }
        long j12 = this.createAt_;
        if (j12 != 0) {
            codedOutputStream.writeInt64(22, j12);
        }
        boolean z15 = this.silent_;
        if (z15) {
            codedOutputStream.writeBool(23, z15);
        }
        long j13 = this.playTimestamp_;
        if (j13 != 0) {
            codedOutputStream.writeInt64(24, j13);
        }
        if (this.gameType_ != GameType.FIGHT.getNumber()) {
            codedOutputStream.writeEnum(25, this.gameType_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(26, this.battleArea_);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 27, this.gameName_);
        }
        int i17 = this.collectionId_;
        if (i17 != 0) {
            codedOutputStream.writeInt32(28, i17);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            codedOutputStream.writeBool(29, z16);
        }
        boolean z17 = this.openFastModeBtn_;
        if (z17) {
            codedOutputStream.writeBool(30, z17);
        }
        boolean z18 = this.disableMobileJoin_;
        if (z18) {
            codedOutputStream.writeBool(31, z18);
        }
        int i18 = this.createByUser_;
        if (i18 != 0) {
            codedOutputStream.writeInt32(32, i18);
        }
        if (!getChatRoomIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 33, this.chatRoomId_);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            codedOutputStream.writeEnum(34, this.roomCategory_);
        }
        boolean z19 = this.openBattleScore_;
        if (z19) {
            codedOutputStream.writeBool(35, z19);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GameRoomOrBuilder {
        private boolean allowPCJoin_;
        private boolean allowPeripheralJoin_;
        private boolean allowSpectatorJoin_;
        private int battleArea_;
        private SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> battleServerAddrBuilder_;
        private BattleServerAddr battleServerAddr_;
        private int challengeCoins_;
        private Object chatRoomId_;
        private int collectionId_;
        private long createAt_;
        private int createByUser_;
        private boolean disableMobileJoin_;
        private boolean elite_;
        private boolean fastMode_;
        private long fightId_;
        private long gameId_;
        private Object gameName_;
        private int gameType_;
        private boolean hasJoinPassword_;
        private int leader_;
        private boolean openBattleScore_;
        private boolean openFastModeBtn_;
        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> p1Builder_;
        private RoomPosition p1_;
        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> p2Builder_;
        private RoomPosition p2_;
        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> p3Builder_;
        private RoomPosition p3_;
        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> p4Builder_;
        private RoomPosition p4_;
        private Object password_;
        private long playTimestamp_;
        private int playerNumber_;
        private int playerSeconds_;
        private int roomCategory_;
        private int roomId_;
        private int seatsNumber_;
        private boolean silent_;
        private int spectatorNumber_;
        private int state_;

        private SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> getBattleServerAddrFieldBuilder() {
            if (this.battleServerAddrBuilder_ == null) {
                this.battleServerAddrBuilder_ = new SingleFieldBuilderV3<>(getBattleServerAddr(), getParentForChildren(), isClean());
                this.battleServerAddr_ = null;
            }
            return this.battleServerAddrBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_GameRoom_descriptor;
        }

        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> getP1FieldBuilder() {
            if (this.p1Builder_ == null) {
                this.p1Builder_ = new SingleFieldBuilderV3<>(getP1(), getParentForChildren(), isClean());
                this.p1_ = null;
            }
            return this.p1Builder_;
        }

        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> getP2FieldBuilder() {
            if (this.p2Builder_ == null) {
                this.p2Builder_ = new SingleFieldBuilderV3<>(getP2(), getParentForChildren(), isClean());
                this.p2_ = null;
            }
            return this.p2Builder_;
        }

        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> getP3FieldBuilder() {
            if (this.p3Builder_ == null) {
                this.p3Builder_ = new SingleFieldBuilderV3<>(getP3(), getParentForChildren(), isClean());
                this.p3_ = null;
            }
            return this.p3Builder_;
        }

        private SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> getP4FieldBuilder() {
            if (this.p4Builder_ == null) {
                this.p4Builder_ = new SingleFieldBuilderV3<>(getP4(), getParentForChildren(), isClean());
                this.p4_ = null;
            }
            return this.p4Builder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAllowPCJoin() {
            this.allowPCJoin_ = false;
            onChanged();
            return this;
        }

        public Builder clearAllowPeripheralJoin() {
            this.allowPeripheralJoin_ = false;
            onChanged();
            return this;
        }

        public Builder clearAllowSpectatorJoin() {
            this.allowSpectatorJoin_ = false;
            onChanged();
            return this;
        }

        public Builder clearBattleArea() {
            this.battleArea_ = 0;
            onChanged();
            return this;
        }

        public Builder clearBattleServerAddr() {
            if (this.battleServerAddrBuilder_ == null) {
                this.battleServerAddr_ = null;
                onChanged();
            } else {
                this.battleServerAddr_ = null;
                this.battleServerAddrBuilder_ = null;
            }
            return this;
        }

        public Builder clearChallengeCoins() {
            this.challengeCoins_ = 0;
            onChanged();
            return this;
        }

        public Builder clearChatRoomId() {
            this.chatRoomId_ = GameRoom.getDefaultInstance().getChatRoomId();
            onChanged();
            return this;
        }

        public Builder clearCollectionId() {
            this.collectionId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCreateAt() {
            this.createAt_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearCreateByUser() {
            this.createByUser_ = 0;
            onChanged();
            return this;
        }

        public Builder clearDisableMobileJoin() {
            this.disableMobileJoin_ = false;
            onChanged();
            return this;
        }

        public Builder clearElite() {
            this.elite_ = false;
            onChanged();
            return this;
        }

        public Builder clearFastMode() {
            this.fastMode_ = false;
            onChanged();
            return this;
        }

        public Builder clearFightId() {
            this.fightId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearGameName() {
            this.gameName_ = GameRoom.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public Builder clearGameType() {
            this.gameType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearHasJoinPassword() {
            this.hasJoinPassword_ = false;
            onChanged();
            return this;
        }

        public Builder clearLeader() {
            this.leader_ = 0;
            onChanged();
            return this;
        }

        public Builder clearOpenBattleScore() {
            this.openBattleScore_ = false;
            onChanged();
            return this;
        }

        public Builder clearOpenFastModeBtn() {
            this.openFastModeBtn_ = false;
            onChanged();
            return this;
        }

        public Builder clearP1() {
            if (this.p1Builder_ == null) {
                this.p1_ = null;
                onChanged();
            } else {
                this.p1_ = null;
                this.p1Builder_ = null;
            }
            return this;
        }

        public Builder clearP2() {
            if (this.p2Builder_ == null) {
                this.p2_ = null;
                onChanged();
            } else {
                this.p2_ = null;
                this.p2Builder_ = null;
            }
            return this;
        }

        public Builder clearP3() {
            if (this.p3Builder_ == null) {
                this.p3_ = null;
                onChanged();
            } else {
                this.p3_ = null;
                this.p3Builder_ = null;
            }
            return this;
        }

        public Builder clearP4() {
            if (this.p4Builder_ == null) {
                this.p4_ = null;
                onChanged();
            } else {
                this.p4_ = null;
                this.p4Builder_ = null;
            }
            return this;
        }

        public Builder clearPassword() {
            this.password_ = GameRoom.getDefaultInstance().getPassword();
            onChanged();
            return this;
        }

        public Builder clearPlayTimestamp() {
            this.playTimestamp_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearPlayerNumber() {
            this.playerNumber_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPlayerSeconds() {
            this.playerSeconds_ = 0;
            onChanged();
            return this;
        }

        public Builder clearRoomCategory() {
            this.roomCategory_ = 0;
            onChanged();
            return this;
        }

        public Builder clearRoomId() {
            this.roomId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearSeatsNumber() {
            this.seatsNumber_ = 0;
            onChanged();
            return this;
        }

        public Builder clearSilent() {
            this.silent_ = false;
            onChanged();
            return this;
        }

        public Builder clearSpectatorNumber() {
            this.spectatorNumber_ = 0;
            onChanged();
            return this;
        }

        public Builder clearState() {
            this.state_ = 0;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getAllowPCJoin() {
            return this.allowPCJoin_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getAllowPeripheralJoin() {
            return this.allowPeripheralJoin_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getAllowSpectatorJoin() {
            return this.allowSpectatorJoin_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public BattleArea getBattleArea() {
            BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
            return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getBattleAreaValue() {
            return this.battleArea_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public BattleServerAddr getBattleServerAddr() {
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV3 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BattleServerAddr) singleFieldBuilderV3.getMessage();
            }
            BattleServerAddr battleServerAddr = this.battleServerAddr_;
            return battleServerAddr == null ? BattleServerAddr.getDefaultInstance() : battleServerAddr;
        }

        public BattleServerAddr.Builder getBattleServerAddrBuilder() {
            onChanged();
            return (BattleServerAddr.Builder) getBattleServerAddrFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public BattleServerAddrOrBuilder getBattleServerAddrOrBuilder() {
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV3 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BattleServerAddrOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            BattleServerAddr battleServerAddr = this.battleServerAddr_;
            return battleServerAddr == null ? BattleServerAddr.getDefaultInstance() : battleServerAddr;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getChallengeCoins() {
            return this.challengeCoins_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public String getChatRoomId() {
            Object obj = this.chatRoomId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.chatRoomId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public ByteString getChatRoomIdBytes() {
            Object obj = this.chatRoomId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.chatRoomId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getCollectionId() {
            return this.collectionId_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public long getCreateAt() {
            return this.createAt_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getCreateByUser() {
            return this.createByUser_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_GameRoom_descriptor;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getDisableMobileJoin() {
            return this.disableMobileJoin_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getElite() {
            return this.elite_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getFastMode() {
            return this.fastMode_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public long getFightId() {
            return this.fightId_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public GameType getGameType() {
            GameType gameTypeValueOf = GameType.valueOf(this.gameType_);
            return gameTypeValueOf == null ? GameType.UNRECOGNIZED : gameTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getGameTypeValue() {
            return this.gameType_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getHasJoinPassword() {
            return this.hasJoinPassword_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getLeader() {
            return this.leader_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getOpenBattleScore() {
            return this.openBattleScore_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getOpenFastModeBtn() {
            return this.openFastModeBtn_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPosition getP1() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPosition) singleFieldBuilderV3.getMessage();
            }
            RoomPosition roomPosition = this.p1_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        public RoomPosition.Builder getP1Builder() {
            onChanged();
            return (RoomPosition.Builder) getP1FieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPositionOrBuilder getP1OrBuilder() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPositionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RoomPosition roomPosition = this.p1_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPosition getP2() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p2Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPosition) singleFieldBuilderV3.getMessage();
            }
            RoomPosition roomPosition = this.p2_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        public RoomPosition.Builder getP2Builder() {
            onChanged();
            return (RoomPosition.Builder) getP2FieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPositionOrBuilder getP2OrBuilder() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p2Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPositionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RoomPosition roomPosition = this.p2_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPosition getP3() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p3Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPosition) singleFieldBuilderV3.getMessage();
            }
            RoomPosition roomPosition = this.p3_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        public RoomPosition.Builder getP3Builder() {
            onChanged();
            return (RoomPosition.Builder) getP3FieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPositionOrBuilder getP3OrBuilder() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p3Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPositionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RoomPosition roomPosition = this.p3_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPosition getP4() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p4Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPosition) singleFieldBuilderV3.getMessage();
            }
            RoomPosition roomPosition = this.p4_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        public RoomPosition.Builder getP4Builder() {
            onChanged();
            return (RoomPosition.Builder) getP4FieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomPositionOrBuilder getP4OrBuilder() {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p4Builder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomPositionOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RoomPosition roomPosition = this.p4_;
            return roomPosition == null ? RoomPosition.getDefaultInstance() : roomPosition;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.password_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.password_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public long getPlayTimestamp() {
            return this.playTimestamp_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getPlayerNumber() {
            return this.playerNumber_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getPlayerSeconds() {
            return this.playerSeconds_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomCategory getRoomCategory() {
            RoomCategory roomCategoryValueOf = RoomCategory.valueOf(this.roomCategory_);
            return roomCategoryValueOf == null ? RoomCategory.UNRECOGNIZED : roomCategoryValueOf;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getRoomCategoryValue() {
            return this.roomCategory_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getRoomId() {
            return this.roomId_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getSeatsNumber() {
            return this.seatsNumber_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean getSilent() {
            return this.silent_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getSpectatorNumber() {
            return this.spectatorNumber_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public RoomState getState() {
            RoomState roomStateValueOf = RoomState.valueOf(this.state_);
            return roomStateValueOf == null ? RoomState.UNRECOGNIZED : roomStateValueOf;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean hasBattleServerAddr() {
            return (this.battleServerAddrBuilder_ == null && this.battleServerAddr_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean hasP1() {
            return (this.p1Builder_ == null && this.p1_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean hasP2() {
            return (this.p2Builder_ == null && this.p2_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean hasP3() {
            return (this.p3Builder_ == null && this.p3_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.GameRoomOrBuilder
        public boolean hasP4() {
            return (this.p4Builder_ == null && this.p4_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_GameRoom_fieldAccessorTable.ensureFieldAccessorsInitialized(GameRoom.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeBattleServerAddr(BattleServerAddr battleServerAddr) {
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV3 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV3 == null) {
                BattleServerAddr battleServerAddr2 = this.battleServerAddr_;
                if (battleServerAddr2 != null) {
                    this.battleServerAddr_ = BattleServerAddr.newBuilder(battleServerAddr2).mergeFrom(battleServerAddr).buildPartial();
                } else {
                    this.battleServerAddr_ = battleServerAddr;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(battleServerAddr);
            }
            return this;
        }

        public Builder mergeP1(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 == null) {
                RoomPosition roomPosition2 = this.p1_;
                if (roomPosition2 != null) {
                    this.p1_ = RoomPosition.newBuilder(roomPosition2).mergeFrom(roomPosition).buildPartial();
                } else {
                    this.p1_ = roomPosition;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(roomPosition);
            }
            return this;
        }

        public Builder mergeP2(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p2Builder_;
            if (singleFieldBuilderV3 == null) {
                RoomPosition roomPosition2 = this.p2_;
                if (roomPosition2 != null) {
                    this.p2_ = RoomPosition.newBuilder(roomPosition2).mergeFrom(roomPosition).buildPartial();
                } else {
                    this.p2_ = roomPosition;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(roomPosition);
            }
            return this;
        }

        public Builder mergeP3(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p3Builder_;
            if (singleFieldBuilderV3 == null) {
                RoomPosition roomPosition2 = this.p3_;
                if (roomPosition2 != null) {
                    this.p3_ = RoomPosition.newBuilder(roomPosition2).mergeFrom(roomPosition).buildPartial();
                } else {
                    this.p3_ = roomPosition;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(roomPosition);
            }
            return this;
        }

        public Builder mergeP4(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p4Builder_;
            if (singleFieldBuilderV3 == null) {
                RoomPosition roomPosition2 = this.p4_;
                if (roomPosition2 != null) {
                    this.p4_ = RoomPosition.newBuilder(roomPosition2).mergeFrom(roomPosition).buildPartial();
                } else {
                    this.p4_ = roomPosition;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(roomPosition);
            }
            return this;
        }

        public Builder setAllowPCJoin(boolean z10) {
            this.allowPCJoin_ = z10;
            onChanged();
            return this;
        }

        public Builder setAllowPeripheralJoin(boolean z10) {
            this.allowPeripheralJoin_ = z10;
            onChanged();
            return this;
        }

        public Builder setAllowSpectatorJoin(boolean z10) {
            this.allowSpectatorJoin_ = z10;
            onChanged();
            return this;
        }

        public Builder setBattleArea(BattleArea battleArea) {
            battleArea.getClass();
            this.battleArea_ = battleArea.getNumber();
            onChanged();
            return this;
        }

        public Builder setBattleAreaValue(int i10) {
            this.battleArea_ = i10;
            onChanged();
            return this;
        }

        public Builder setBattleServerAddr(BattleServerAddr battleServerAddr) {
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV3 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV3 == null) {
                battleServerAddr.getClass();
                this.battleServerAddr_ = battleServerAddr;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(battleServerAddr);
            }
            return this;
        }

        public Builder setChallengeCoins(int i10) {
            this.challengeCoins_ = i10;
            onChanged();
            return this;
        }

        public Builder setChatRoomId(String str) {
            str.getClass();
            this.chatRoomId_ = str;
            onChanged();
            return this;
        }

        public Builder setChatRoomIdBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.chatRoomId_ = byteString;
            onChanged();
            return this;
        }

        public Builder setCollectionId(int i10) {
            this.collectionId_ = i10;
            onChanged();
            return this;
        }

        public Builder setCreateAt(long j10) {
            this.createAt_ = j10;
            onChanged();
            return this;
        }

        public Builder setCreateByUser(int i10) {
            this.createByUser_ = i10;
            onChanged();
            return this;
        }

        public Builder setDisableMobileJoin(boolean z10) {
            this.disableMobileJoin_ = z10;
            onChanged();
            return this;
        }

        public Builder setElite(boolean z10) {
            this.elite_ = z10;
            onChanged();
            return this;
        }

        public Builder setFastMode(boolean z10) {
            this.fastMode_ = z10;
            onChanged();
            return this;
        }

        public Builder setFightId(long j10) {
            this.fightId_ = j10;
            onChanged();
            return this;
        }

        public Builder setGameId(long j10) {
            this.gameId_ = j10;
            onChanged();
            return this;
        }

        public Builder setGameName(String str) {
            str.getClass();
            this.gameName_ = str;
            onChanged();
            return this;
        }

        public Builder setGameNameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.gameName_ = byteString;
            onChanged();
            return this;
        }

        public Builder setGameType(GameType gameType) {
            gameType.getClass();
            this.gameType_ = gameType.getNumber();
            onChanged();
            return this;
        }

        public Builder setGameTypeValue(int i10) {
            this.gameType_ = i10;
            onChanged();
            return this;
        }

        public Builder setHasJoinPassword(boolean z10) {
            this.hasJoinPassword_ = z10;
            onChanged();
            return this;
        }

        public Builder setLeader(int i10) {
            this.leader_ = i10;
            onChanged();
            return this;
        }

        public Builder setOpenBattleScore(boolean z10) {
            this.openBattleScore_ = z10;
            onChanged();
            return this;
        }

        public Builder setOpenFastModeBtn(boolean z10) {
            this.openFastModeBtn_ = z10;
            onChanged();
            return this;
        }

        public Builder setP1(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 == null) {
                roomPosition.getClass();
                this.p1_ = roomPosition;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(roomPosition);
            }
            return this;
        }

        public Builder setP2(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p2Builder_;
            if (singleFieldBuilderV3 == null) {
                roomPosition.getClass();
                this.p2_ = roomPosition;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(roomPosition);
            }
            return this;
        }

        public Builder setP3(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p3Builder_;
            if (singleFieldBuilderV3 == null) {
                roomPosition.getClass();
                this.p3_ = roomPosition;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(roomPosition);
            }
            return this;
        }

        public Builder setP4(RoomPosition roomPosition) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p4Builder_;
            if (singleFieldBuilderV3 == null) {
                roomPosition.getClass();
                this.p4_ = roomPosition;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(roomPosition);
            }
            return this;
        }

        public Builder setPassword(String str) {
            str.getClass();
            this.password_ = str;
            onChanged();
            return this;
        }

        public Builder setPasswordBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.password_ = byteString;
            onChanged();
            return this;
        }

        public Builder setPlayTimestamp(long j10) {
            this.playTimestamp_ = j10;
            onChanged();
            return this;
        }

        public Builder setPlayerNumber(int i10) {
            this.playerNumber_ = i10;
            onChanged();
            return this;
        }

        public Builder setPlayerSeconds(int i10) {
            this.playerSeconds_ = i10;
            onChanged();
            return this;
        }

        public Builder setRoomCategory(RoomCategory roomCategory) {
            roomCategory.getClass();
            this.roomCategory_ = roomCategory.getNumber();
            onChanged();
            return this;
        }

        public Builder setRoomCategoryValue(int i10) {
            this.roomCategory_ = i10;
            onChanged();
            return this;
        }

        public Builder setRoomId(int i10) {
            this.roomId_ = i10;
            onChanged();
            return this;
        }

        public Builder setSeatsNumber(int i10) {
            this.seatsNumber_ = i10;
            onChanged();
            return this;
        }

        public Builder setSilent(boolean z10) {
            this.silent_ = z10;
            onChanged();
            return this;
        }

        public Builder setSpectatorNumber(int i10) {
            this.spectatorNumber_ = i10;
            onChanged();
            return this;
        }

        public Builder setState(RoomState roomState) {
            roomState.getClass();
            this.state_ = roomState.getNumber();
            onChanged();
            return this;
        }

        public Builder setStateValue(int i10) {
            this.state_ = i10;
            onChanged();
            return this;
        }

        private Builder() {
            this.password_ = "";
            this.state_ = 0;
            this.gameType_ = 0;
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.chatRoomId_ = "";
            this.roomCategory_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameRoom build() {
            GameRoom gameRoomBuildPartial = buildPartial();
            if (gameRoomBuildPartial.isInitialized()) {
                return gameRoomBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) gameRoomBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameRoom buildPartial() {
            GameRoom gameRoom = new GameRoom(this);
            gameRoom.roomId_ = this.roomId_;
            gameRoom.gameId_ = this.gameId_;
            gameRoom.password_ = this.password_;
            gameRoom.hasJoinPassword_ = this.hasJoinPassword_;
            gameRoom.allowSpectatorJoin_ = this.allowSpectatorJoin_;
            gameRoom.allowPeripheralJoin_ = this.allowPeripheralJoin_;
            gameRoom.spectatorNumber_ = this.spectatorNumber_;
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 == null) {
                gameRoom.p1_ = this.p1_;
            } else {
                gameRoom.p1_ = (RoomPosition) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV4 = this.p2Builder_;
            if (singleFieldBuilderV4 == null) {
                gameRoom.p2_ = this.p2_;
            } else {
                gameRoom.p2_ = (RoomPosition) singleFieldBuilderV4.build();
            }
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV5 = this.p3Builder_;
            if (singleFieldBuilderV5 == null) {
                gameRoom.p3_ = this.p3_;
            } else {
                gameRoom.p3_ = (RoomPosition) singleFieldBuilderV5.build();
            }
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV6 = this.p4Builder_;
            if (singleFieldBuilderV6 == null) {
                gameRoom.p4_ = this.p4_;
            } else {
                gameRoom.p4_ = (RoomPosition) singleFieldBuilderV6.build();
            }
            gameRoom.challengeCoins_ = this.challengeCoins_;
            gameRoom.playerNumber_ = this.playerNumber_;
            gameRoom.seatsNumber_ = this.seatsNumber_;
            gameRoom.state_ = this.state_;
            gameRoom.leader_ = this.leader_;
            gameRoom.playerSeconds_ = this.playerSeconds_;
            gameRoom.elite_ = this.elite_;
            gameRoom.fastMode_ = this.fastMode_;
            gameRoom.fightId_ = this.fightId_;
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV7 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV7 == null) {
                gameRoom.battleServerAddr_ = this.battleServerAddr_;
            } else {
                gameRoom.battleServerAddr_ = (BattleServerAddr) singleFieldBuilderV7.build();
            }
            gameRoom.createAt_ = this.createAt_;
            gameRoom.silent_ = this.silent_;
            gameRoom.playTimestamp_ = this.playTimestamp_;
            gameRoom.gameType_ = this.gameType_;
            gameRoom.battleArea_ = this.battleArea_;
            gameRoom.gameName_ = this.gameName_;
            gameRoom.collectionId_ = this.collectionId_;
            gameRoom.allowPCJoin_ = this.allowPCJoin_;
            gameRoom.openFastModeBtn_ = this.openFastModeBtn_;
            gameRoom.disableMobileJoin_ = this.disableMobileJoin_;
            gameRoom.createByUser_ = this.createByUser_;
            gameRoom.chatRoomId_ = this.chatRoomId_;
            gameRoom.roomCategory_ = this.roomCategory_;
            gameRoom.openBattleScore_ = this.openBattleScore_;
            onBuilt();
            return gameRoom;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public GameRoom getDefaultInstanceForType() {
            return GameRoom.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.roomId_ = 0;
            this.gameId_ = 0L;
            this.password_ = "";
            this.hasJoinPassword_ = false;
            this.allowSpectatorJoin_ = false;
            this.allowPeripheralJoin_ = false;
            this.spectatorNumber_ = 0;
            if (this.p1Builder_ == null) {
                this.p1_ = null;
            } else {
                this.p1_ = null;
                this.p1Builder_ = null;
            }
            if (this.p2Builder_ == null) {
                this.p2_ = null;
            } else {
                this.p2_ = null;
                this.p2Builder_ = null;
            }
            if (this.p3Builder_ == null) {
                this.p3_ = null;
            } else {
                this.p3_ = null;
                this.p3Builder_ = null;
            }
            if (this.p4Builder_ == null) {
                this.p4_ = null;
            } else {
                this.p4_ = null;
                this.p4Builder_ = null;
            }
            this.challengeCoins_ = 0;
            this.playerNumber_ = 0;
            this.seatsNumber_ = 0;
            this.state_ = 0;
            this.leader_ = 0;
            this.playerSeconds_ = 0;
            this.elite_ = false;
            this.fastMode_ = false;
            this.fightId_ = 0L;
            if (this.battleServerAddrBuilder_ == null) {
                this.battleServerAddr_ = null;
            } else {
                this.battleServerAddr_ = null;
                this.battleServerAddrBuilder_ = null;
            }
            this.createAt_ = 0L;
            this.silent_ = false;
            this.playTimestamp_ = 0L;
            this.gameType_ = 0;
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.collectionId_ = 0;
            this.allowPCJoin_ = false;
            this.openFastModeBtn_ = false;
            this.disableMobileJoin_ = false;
            this.createByUser_ = 0;
            this.chatRoomId_ = "";
            this.roomCategory_ = 0;
            this.openBattleScore_ = false;
            return this;
        }

        public Builder setBattleServerAddr(BattleServerAddr.Builder builder) {
            SingleFieldBuilderV3<BattleServerAddr, BattleServerAddr.Builder, BattleServerAddrOrBuilder> singleFieldBuilderV3 = this.battleServerAddrBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.battleServerAddr_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setP1(RoomPosition.Builder builder) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p1Builder_;
            if (singleFieldBuilderV3 == null) {
                this.p1_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setP2(RoomPosition.Builder builder) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p2Builder_;
            if (singleFieldBuilderV3 == null) {
                this.p2_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setP3(RoomPosition.Builder builder) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p3Builder_;
            if (singleFieldBuilderV3 == null) {
                this.p3_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setP4(RoomPosition.Builder builder) {
            SingleFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> singleFieldBuilderV3 = this.p4Builder_;
            if (singleFieldBuilderV3 == null) {
                this.p4_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof GameRoom) {
                return mergeFrom((GameRoom) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(GameRoom gameRoom) {
            if (gameRoom == GameRoom.getDefaultInstance()) {
                return this;
            }
            if (gameRoom.getRoomId() != 0) {
                setRoomId(gameRoom.getRoomId());
            }
            if (gameRoom.getGameId() != 0) {
                setGameId(gameRoom.getGameId());
            }
            if (!gameRoom.getPassword().isEmpty()) {
                this.password_ = gameRoom.password_;
                onChanged();
            }
            if (gameRoom.getHasJoinPassword()) {
                setHasJoinPassword(gameRoom.getHasJoinPassword());
            }
            if (gameRoom.getAllowSpectatorJoin()) {
                setAllowSpectatorJoin(gameRoom.getAllowSpectatorJoin());
            }
            if (gameRoom.getAllowPeripheralJoin()) {
                setAllowPeripheralJoin(gameRoom.getAllowPeripheralJoin());
            }
            if (gameRoom.getSpectatorNumber() != 0) {
                setSpectatorNumber(gameRoom.getSpectatorNumber());
            }
            if (gameRoom.hasP1()) {
                mergeP1(gameRoom.getP1());
            }
            if (gameRoom.hasP2()) {
                mergeP2(gameRoom.getP2());
            }
            if (gameRoom.hasP3()) {
                mergeP3(gameRoom.getP3());
            }
            if (gameRoom.hasP4()) {
                mergeP4(gameRoom.getP4());
            }
            if (gameRoom.getChallengeCoins() != 0) {
                setChallengeCoins(gameRoom.getChallengeCoins());
            }
            if (gameRoom.getPlayerNumber() != 0) {
                setPlayerNumber(gameRoom.getPlayerNumber());
            }
            if (gameRoom.getSeatsNumber() != 0) {
                setSeatsNumber(gameRoom.getSeatsNumber());
            }
            if (gameRoom.state_ != 0) {
                setStateValue(gameRoom.getStateValue());
            }
            if (gameRoom.getLeader() != 0) {
                setLeader(gameRoom.getLeader());
            }
            if (gameRoom.getPlayerSeconds() != 0) {
                setPlayerSeconds(gameRoom.getPlayerSeconds());
            }
            if (gameRoom.getElite()) {
                setElite(gameRoom.getElite());
            }
            if (gameRoom.getFastMode()) {
                setFastMode(gameRoom.getFastMode());
            }
            if (gameRoom.getFightId() != 0) {
                setFightId(gameRoom.getFightId());
            }
            if (gameRoom.hasBattleServerAddr()) {
                mergeBattleServerAddr(gameRoom.getBattleServerAddr());
            }
            if (gameRoom.getCreateAt() != 0) {
                setCreateAt(gameRoom.getCreateAt());
            }
            if (gameRoom.getSilent()) {
                setSilent(gameRoom.getSilent());
            }
            if (gameRoom.getPlayTimestamp() != 0) {
                setPlayTimestamp(gameRoom.getPlayTimestamp());
            }
            if (gameRoom.gameType_ != 0) {
                setGameTypeValue(gameRoom.getGameTypeValue());
            }
            if (gameRoom.battleArea_ != 0) {
                setBattleAreaValue(gameRoom.getBattleAreaValue());
            }
            if (!gameRoom.getGameName().isEmpty()) {
                this.gameName_ = gameRoom.gameName_;
                onChanged();
            }
            if (gameRoom.getCollectionId() != 0) {
                setCollectionId(gameRoom.getCollectionId());
            }
            if (gameRoom.getAllowPCJoin()) {
                setAllowPCJoin(gameRoom.getAllowPCJoin());
            }
            if (gameRoom.getOpenFastModeBtn()) {
                setOpenFastModeBtn(gameRoom.getOpenFastModeBtn());
            }
            if (gameRoom.getDisableMobileJoin()) {
                setDisableMobileJoin(gameRoom.getDisableMobileJoin());
            }
            if (gameRoom.getCreateByUser() != 0) {
                setCreateByUser(gameRoom.getCreateByUser());
            }
            if (!gameRoom.getChatRoomId().isEmpty()) {
                this.chatRoomId_ = gameRoom.chatRoomId_;
                onChanged();
            }
            if (gameRoom.roomCategory_ != 0) {
                setRoomCategoryValue(gameRoom.getRoomCategoryValue());
            }
            if (gameRoom.getOpenBattleScore()) {
                setOpenBattleScore(gameRoom.getOpenBattleScore());
            }
            mergeUnknownFields(((GeneratedMessageV3) gameRoom).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.password_ = "";
            this.state_ = 0;
            this.gameType_ = 0;
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.chatRoomId_ = "";
            this.roomCategory_ = 0;
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            GameRoom gameRoom = null;
            try {
                try {
                    GameRoom gameRoom2 = (GameRoom) GameRoom.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (gameRoom2 != null) {
                        mergeFrom(gameRoom2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    GameRoom gameRoom3 = (GameRoom) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        gameRoom = gameRoom3;
                        if (gameRoom != null) {
                            mergeFrom(gameRoom);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (gameRoom != null) {
                    mergeFrom(gameRoom);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(GameRoom gameRoom) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(gameRoom);
    }

    public static GameRoom parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private GameRoom(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GameRoom parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static GameRoom parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public GameRoom getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static GameRoom parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private GameRoom() {
        this.memoizedIsInitialized = (byte) -1;
        this.password_ = "";
        this.state_ = 0;
        this.gameType_ = 0;
        this.battleArea_ = 0;
        this.gameName_ = "";
        this.chatRoomId_ = "";
        this.roomCategory_ = 0;
    }

    public static GameRoom parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static GameRoom parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static GameRoom parseFrom(InputStream inputStream) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GameRoom parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static GameRoom parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static GameRoom parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (GameRoom) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    private GameRoom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    switch (tag) {
                        case 0:
                            break;
                        case 8:
                            this.roomId_ = codedInputStream.readInt32();
                            continue;
                        case 16:
                            this.gameId_ = codedInputStream.readInt64();
                            continue;
                        case 26:
                            this.password_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 32:
                            this.hasJoinPassword_ = codedInputStream.readBool();
                            continue;
                        case 40:
                            this.allowSpectatorJoin_ = codedInputStream.readBool();
                            continue;
                        case 48:
                            this.allowPeripheralJoin_ = codedInputStream.readBool();
                            continue;
                        case 56:
                            this.spectatorNumber_ = codedInputStream.readInt32();
                            continue;
                        case 66:
                            RoomPosition roomPosition = this.p1_;
                            RoomPosition.Builder builder = roomPosition != null ? roomPosition.toBuilder() : null;
                            RoomPosition roomPosition2 = (RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite);
                            this.p1_ = roomPosition2;
                            if (builder != null) {
                                builder.mergeFrom(roomPosition2);
                                this.p1_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 74:
                            RoomPosition roomPosition3 = this.p2_;
                            RoomPosition.Builder builder2 = roomPosition3 != null ? roomPosition3.toBuilder() : null;
                            RoomPosition roomPosition4 = (RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite);
                            this.p2_ = roomPosition4;
                            if (builder2 != null) {
                                builder2.mergeFrom(roomPosition4);
                                this.p2_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 82:
                            RoomPosition roomPosition5 = this.p3_;
                            RoomPosition.Builder builder3 = roomPosition5 != null ? roomPosition5.toBuilder() : null;
                            RoomPosition roomPosition6 = (RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite);
                            this.p3_ = roomPosition6;
                            if (builder3 != null) {
                                builder3.mergeFrom(roomPosition6);
                                this.p3_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 90:
                            RoomPosition roomPosition7 = this.p4_;
                            RoomPosition.Builder builder4 = roomPosition7 != null ? roomPosition7.toBuilder() : null;
                            RoomPosition roomPosition8 = (RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite);
                            this.p4_ = roomPosition8;
                            if (builder4 != null) {
                                builder4.mergeFrom(roomPosition8);
                                this.p4_ = builder4.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 96:
                            this.challengeCoins_ = codedInputStream.readInt32();
                            continue;
                        case 104:
                            this.playerNumber_ = codedInputStream.readInt32();
                            continue;
                        case 112:
                            this.seatsNumber_ = codedInputStream.readInt32();
                            continue;
                        case 120:
                            this.state_ = codedInputStream.readEnum();
                            continue;
                        case 128:
                            this.leader_ = codedInputStream.readInt32();
                            continue;
                        case 136:
                            this.playerSeconds_ = codedInputStream.readInt32();
                            continue;
                        case 144:
                            this.elite_ = codedInputStream.readBool();
                            continue;
                        case 152:
                            this.fastMode_ = codedInputStream.readBool();
                            continue;
                        case 160:
                            this.fightId_ = codedInputStream.readUInt64();
                            continue;
                        case 170:
                            BattleServerAddr battleServerAddr = this.battleServerAddr_;
                            BattleServerAddr.Builder builder5 = battleServerAddr != null ? battleServerAddr.toBuilder() : null;
                            BattleServerAddr battleServerAddr2 = (BattleServerAddr) codedInputStream.readMessage(BattleServerAddr.parser(), extensionRegistryLite);
                            this.battleServerAddr_ = battleServerAddr2;
                            if (builder5 != null) {
                                builder5.mergeFrom(battleServerAddr2);
                                this.battleServerAddr_ = builder5.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 176:
                            this.createAt_ = codedInputStream.readInt64();
                            continue;
                        case 184:
                            this.silent_ = codedInputStream.readBool();
                            continue;
                        case 192:
                            this.playTimestamp_ = codedInputStream.readInt64();
                            continue;
                        case 200:
                            this.gameType_ = codedInputStream.readEnum();
                            continue;
                        case 208:
                            this.battleArea_ = codedInputStream.readEnum();
                            continue;
                        case 218:
                            this.gameName_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case Opcodes.SHL_INT_LIT8 /* 224 */:
                            this.collectionId_ = codedInputStream.readInt32();
                            continue;
                        case 232:
                            this.allowPCJoin_ = codedInputStream.readBool();
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA /* 240 */:
                            this.openFastModeBtn_ = codedInputStream.readBool();
                            continue;
                        case 248:
                            this.disableMobileJoin_ = codedInputStream.readBool();
                            continue;
                        case 256:
                            this.createByUser_ = codedInputStream.readInt32();
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME /* 266 */:
                            this.chatRoomId_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME /* 272 */:
                            this.roomCategory_ = codedInputStream.readEnum();
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN /* 280 */:
                            this.openBattleScore_ = codedInputStream.readBool();
                            continue;
                        default:
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                break;
                            }
                            break;
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }
}
