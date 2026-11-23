package com.papa91.battle.protocol;

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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class Params extends GeneratedMessageV3 implements ParamsOrBuilder {
    public static final int ALLOWPCJOIN_FIELD_NUMBER = 24;
    public static final int ALLOWPERIPHERALJOIN_FIELD_NUMBER = 8;
    public static final int ALLOWSPECTATORJOIN_FIELD_NUMBER = 7;
    public static final int BATTLEAREA_FIELD_NUMBER = 19;
    public static final int BATTLESCOREBOARD_FIELD_NUMBER = 27;
    public static final int CHALLENGECOINS_FIELD_NUMBER = 5;
    public static final int CHANNELTYPE_FIELD_NUMBER = 20;
    public static final int CLOSEPOSITION_FIELD_NUMBER = 9;
    public static final int COLLECTIONID_FIELD_NUMBER = 21;
    public static final int DEVICEID_FIELD_NUMBER = 17;
    public static final int DISABLEMOBILEJOIN_FIELD_NUMBER = 25;
    public static final int FIGHTID_FIELD_NUMBER = 14;
    public static final int FROMLIVE_FIELD_NUMBER = 22;
    public static final int GAMEID_FIELD_NUMBER = 3;
    public static final int MERGEMESSAGECHANNEL_FIELD_NUMBER = 26;
    public static final int PASSWORD_FIELD_NUMBER = 6;
    public static final int PINGVAL_FIELD_NUMBER = 15;
    public static final int PLAYMODE_FIELD_NUMBER = 23;
    public static final int ROOMID_FIELD_NUMBER = 4;
    public static final int ROOMPOSITIONINDEX_FIELD_NUMBER = 10;
    public static final int ROOMTYPE_FIELD_NUMBER = 11;
    public static final int SILENT_FIELD_NUMBER = 12;
    public static final int TIMESTAMP_FIELD_NUMBER = 16;
    public static final int TOKEN_FIELD_NUMBER = 2;
    public static final int UID_FIELD_NUMBER = 1;
    public static final int USEPERIPHERAL_FIELD_NUMBER = 13;
    private static final long serialVersionUID = 0;
    private boolean allowPCJoin_;
    private boolean allowPeripheralJoin_;
    private boolean allowSpectatorJoin_;
    private int battleArea_;
    private volatile Object battleScoreBoard_;
    private int challengeCoins_;
    private int channelType_;
    private boolean closePosition_;
    private int collectionId_;
    private volatile Object deviceId_;
    private boolean disableMobileJoin_;
    private long fightId_;
    private boolean fromLive_;
    private long gameId_;
    private byte memoizedIsInitialized;
    private boolean mergeMessageChannel_;
    private volatile Object password_;
    private int pingVal_;
    private int playMode_;
    private int roomId_;
    private int roomPositionIndex_;
    private int roomType_;
    private boolean silent_;
    private long timestamp_;
    private volatile Object token_;
    private int uid_;
    private boolean usePeripheral_;
    private static final Params DEFAULT_INSTANCE = new Params();
    private static final Parser<Params> PARSER = new AbstractParser<Params>() { // from class: com.papa91.battle.protocol.Params.1
        @Override // com.google.protobuf.Parser
        public Params parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Params(codedInputStream, extensionRegistryLite);
        }
    };

    public enum ChannelType implements ProtocolMessageEnum {
        ANDROID(0),
        WIN_PC_LOBBY(1),
        WIN_PC_ROOM(2),
        IOS(3),
        UNRECOGNIZED(-1);

        public static final int ANDROID_VALUE = 0;
        public static final int IOS_VALUE = 3;
        public static final int WIN_PC_LOBBY_VALUE = 1;
        public static final int WIN_PC_ROOM_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<ChannelType> internalValueMap = new Internal.EnumLiteMap<ChannelType>() { // from class: com.papa91.battle.protocol.Params.ChannelType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ChannelType findValueByNumber(int i10) {
                return ChannelType.forNumber(i10);
            }
        };
        private static final ChannelType[] VALUES = values();

        ChannelType(int i10) {
            this.value = i10;
        }

        public static ChannelType forNumber(int i10) {
            if (i10 == 0) {
                return ANDROID;
            }
            if (i10 == 1) {
                return WIN_PC_LOBBY;
            }
            if (i10 == 2) {
                return WIN_PC_ROOM;
            }
            if (i10 != 3) {
                return null;
            }
            return IOS;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Params.getDescriptor().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<ChannelType> internalGetValueMap() {
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
        public static ChannelType valueOf(int i10) {
            return forNumber(i10);
        }

        public static ChannelType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum RoomType implements ProtocolMessageEnum {
        NORMAL(0),
        ELITE(1),
        UNRECOGNIZED(-1);

        public static final int ELITE_VALUE = 1;
        public static final int NORMAL_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<RoomType> internalValueMap = new Internal.EnumLiteMap<RoomType>() { // from class: com.papa91.battle.protocol.Params.RoomType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public RoomType findValueByNumber(int i10) {
                return RoomType.forNumber(i10);
            }
        };
        private static final RoomType[] VALUES = values();

        RoomType(int i10) {
            this.value = i10;
        }

        public static RoomType forNumber(int i10) {
            if (i10 == 0) {
                return NORMAL;
            }
            if (i10 != 1) {
                return null;
            }
            return ELITE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Params.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<RoomType> internalGetValueMap() {
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
        public static RoomType valueOf(int i10) {
            return forNumber(i10);
        }

        public static RoomType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum ServerPlayMode implements ProtocolMessageEnum {
        FAST(0),
        ZONE(1),
        UNRECOGNIZED(-1);

        public static final int FAST_VALUE = 0;
        public static final int ZONE_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<ServerPlayMode> internalValueMap = new Internal.EnumLiteMap<ServerPlayMode>() { // from class: com.papa91.battle.protocol.Params.ServerPlayMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ServerPlayMode findValueByNumber(int i10) {
                return ServerPlayMode.forNumber(i10);
            }
        };
        private static final ServerPlayMode[] VALUES = values();

        ServerPlayMode(int i10) {
            this.value = i10;
        }

        public static ServerPlayMode forNumber(int i10) {
            if (i10 == 0) {
                return FAST;
            }
            if (i10 != 1) {
                return null;
            }
            return ZONE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Params.getDescriptor().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<ServerPlayMode> internalGetValueMap() {
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
        public static ServerPlayMode valueOf(int i10) {
            return forNumber(i10);
        }

        public static ServerPlayMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static Params getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_Params_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Params parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Params) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Params parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<Params> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Params)) {
            return super.equals(obj);
        }
        Params params = (Params) obj;
        return getUid() == params.getUid() && getToken().equals(params.getToken()) && getGameId() == params.getGameId() && getRoomId() == params.getRoomId() && getChallengeCoins() == params.getChallengeCoins() && getPassword().equals(params.getPassword()) && getAllowSpectatorJoin() == params.getAllowSpectatorJoin() && getAllowPeripheralJoin() == params.getAllowPeripheralJoin() && getClosePosition() == params.getClosePosition() && getRoomPositionIndex() == params.getRoomPositionIndex() && this.roomType_ == params.roomType_ && getSilent() == params.getSilent() && getUsePeripheral() == params.getUsePeripheral() && getFightId() == params.getFightId() && getPingVal() == params.getPingVal() && getTimestamp() == params.getTimestamp() && getDeviceId().equals(params.getDeviceId()) && this.battleArea_ == params.battleArea_ && this.channelType_ == params.channelType_ && getCollectionId() == params.getCollectionId() && getFromLive() == params.getFromLive() && this.playMode_ == params.playMode_ && getAllowPCJoin() == params.getAllowPCJoin() && getDisableMobileJoin() == params.getDisableMobileJoin() && getMergeMessageChannel() == params.getMergeMessageChannel() && getBattleScoreBoard().equals(params.getBattleScoreBoard()) && this.unknownFields.equals(params.unknownFields);
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowPCJoin() {
        return this.allowPCJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowPeripheralJoin() {
        return this.allowPeripheralJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getAllowSpectatorJoin() {
        return this.allowSpectatorJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public BattleArea getBattleArea() {
        BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
        return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getBattleScoreBoard() {
        Object obj = this.battleScoreBoard_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleScoreBoard_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getBattleScoreBoardBytes() {
        Object obj = this.battleScoreBoard_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleScoreBoard_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getChallengeCoins() {
        return this.challengeCoins_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ChannelType getChannelType() {
        ChannelType channelTypeValueOf = ChannelType.valueOf(this.channelType_);
        return channelTypeValueOf == null ? ChannelType.UNRECOGNIZED : channelTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getChannelTypeValue() {
        return this.channelType_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getClosePosition() {
        return this.closePosition_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getCollectionId() {
        return this.collectionId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getDeviceId() {
        Object obj = this.deviceId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.deviceId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getDeviceIdBytes() {
        Object obj = this.deviceId_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.deviceId_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getDisableMobileJoin() {
        return this.disableMobileJoin_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getFightId() {
        return this.fightId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getFromLive() {
        return this.fromLive_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getMergeMessageChannel() {
        return this.mergeMessageChannel_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Params> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getPassword() {
        Object obj = this.password_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.password_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getPasswordBytes() {
        Object obj = this.password_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.password_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getPingVal() {
        return this.pingVal_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ServerPlayMode getPlayMode() {
        ServerPlayMode serverPlayModeValueOf = ServerPlayMode.valueOf(this.playMode_);
        return serverPlayModeValueOf == null ? ServerPlayMode.UNRECOGNIZED : serverPlayModeValueOf;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getPlayModeValue() {
        return this.playMode_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomId() {
        return this.roomId_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomPositionIndex() {
        return this.roomPositionIndex_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public RoomType getRoomType() {
        RoomType roomTypeValueOf = RoomType.valueOf(this.roomType_);
        return roomTypeValueOf == null ? RoomType.UNRECOGNIZED : roomTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getRoomTypeValue() {
        return this.roomType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.uid_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (!getTokenBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.token_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(3, j10);
        }
        int i12 = this.roomId_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(4, i12);
        }
        int i13 = this.challengeCoins_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i13);
        }
        if (!getPasswordBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.password_);
        }
        boolean z10 = this.allowSpectatorJoin_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(7, z10);
        }
        boolean z11 = this.allowPeripheralJoin_;
        if (z11) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(8, z11);
        }
        boolean z12 = this.closePosition_;
        if (z12) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(9, z12);
        }
        int i14 = this.roomPositionIndex_;
        if (i14 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(10, i14);
        }
        if (this.roomType_ != RoomType.NORMAL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(11, this.roomType_);
        }
        boolean z13 = this.silent_;
        if (z13) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(12, z13);
        }
        boolean z14 = this.usePeripheral_;
        if (z14) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(13, z14);
        }
        long j11 = this.fightId_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeUInt64Size(14, j11);
        }
        int i15 = this.pingVal_;
        if (i15 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(15, i15);
        }
        long j12 = this.timestamp_;
        if (j12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(16, j12);
        }
        if (!getDeviceIdBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(17, this.deviceId_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(19, this.battleArea_);
        }
        if (this.channelType_ != ChannelType.ANDROID.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(20, this.channelType_);
        }
        int i16 = this.collectionId_;
        if (i16 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(21, i16);
        }
        boolean z15 = this.fromLive_;
        if (z15) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(22, z15);
        }
        if (this.playMode_ != ServerPlayMode.FAST.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(23, this.playMode_);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(24, z16);
        }
        boolean z17 = this.disableMobileJoin_;
        if (z17) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(25, z17);
        }
        boolean z18 = this.mergeMessageChannel_;
        if (z18) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(26, z18);
        }
        if (!getBattleScoreBoardBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(27, this.battleScoreBoard_);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getSilent() {
        return this.silent_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public String getToken() {
        Object obj = this.token_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.token_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public ByteString getTokenBytes() {
        Object obj = this.token_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.token_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.ParamsOrBuilder
    public boolean getUsePeripheral() {
        return this.usePeripheral_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getToken().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getGameId())) * 37) + 4) * 53) + getRoomId()) * 37) + 5) * 53) + getChallengeCoins()) * 37) + 6) * 53) + getPassword().hashCode()) * 37) + 7) * 53) + Internal.hashBoolean(getAllowSpectatorJoin())) * 37) + 8) * 53) + Internal.hashBoolean(getAllowPeripheralJoin())) * 37) + 9) * 53) + Internal.hashBoolean(getClosePosition())) * 37) + 10) * 53) + getRoomPositionIndex()) * 37) + 11) * 53) + this.roomType_) * 37) + 12) * 53) + Internal.hashBoolean(getSilent())) * 37) + 13) * 53) + Internal.hashBoolean(getUsePeripheral())) * 37) + 14) * 53) + Internal.hashLong(getFightId())) * 37) + 15) * 53) + getPingVal()) * 37) + 16) * 53) + Internal.hashLong(getTimestamp())) * 37) + 17) * 53) + getDeviceId().hashCode()) * 37) + 19) * 53) + this.battleArea_) * 37) + 20) * 53) + this.channelType_) * 37) + 21) * 53) + getCollectionId()) * 37) + 22) * 53) + Internal.hashBoolean(getFromLive())) * 37) + 23) * 53) + this.playMode_) * 37) + 24) * 53) + Internal.hashBoolean(getAllowPCJoin())) * 37) + 25) * 53) + Internal.hashBoolean(getDisableMobileJoin())) * 37) + 26) * 53) + Internal.hashBoolean(getMergeMessageChannel())) * 37) + 27) * 53) + getBattleScoreBoard().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_Params_fieldAccessorTable.ensureFieldAccessorsInitialized(Params.class, Builder.class);
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
        return new Params();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.uid_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        if (!getTokenBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.token_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            codedOutputStream.writeInt64(3, j10);
        }
        int i11 = this.roomId_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(4, i11);
        }
        int i12 = this.challengeCoins_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(5, i12);
        }
        if (!getPasswordBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.password_);
        }
        boolean z10 = this.allowSpectatorJoin_;
        if (z10) {
            codedOutputStream.writeBool(7, z10);
        }
        boolean z11 = this.allowPeripheralJoin_;
        if (z11) {
            codedOutputStream.writeBool(8, z11);
        }
        boolean z12 = this.closePosition_;
        if (z12) {
            codedOutputStream.writeBool(9, z12);
        }
        int i13 = this.roomPositionIndex_;
        if (i13 != 0) {
            codedOutputStream.writeInt32(10, i13);
        }
        if (this.roomType_ != RoomType.NORMAL.getNumber()) {
            codedOutputStream.writeEnum(11, this.roomType_);
        }
        boolean z13 = this.silent_;
        if (z13) {
            codedOutputStream.writeBool(12, z13);
        }
        boolean z14 = this.usePeripheral_;
        if (z14) {
            codedOutputStream.writeBool(13, z14);
        }
        long j11 = this.fightId_;
        if (j11 != 0) {
            codedOutputStream.writeUInt64(14, j11);
        }
        int i14 = this.pingVal_;
        if (i14 != 0) {
            codedOutputStream.writeInt32(15, i14);
        }
        long j12 = this.timestamp_;
        if (j12 != 0) {
            codedOutputStream.writeInt64(16, j12);
        }
        if (!getDeviceIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 17, this.deviceId_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(19, this.battleArea_);
        }
        if (this.channelType_ != ChannelType.ANDROID.getNumber()) {
            codedOutputStream.writeEnum(20, this.channelType_);
        }
        int i15 = this.collectionId_;
        if (i15 != 0) {
            codedOutputStream.writeInt32(21, i15);
        }
        boolean z15 = this.fromLive_;
        if (z15) {
            codedOutputStream.writeBool(22, z15);
        }
        if (this.playMode_ != ServerPlayMode.FAST.getNumber()) {
            codedOutputStream.writeEnum(23, this.playMode_);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            codedOutputStream.writeBool(24, z16);
        }
        boolean z17 = this.disableMobileJoin_;
        if (z17) {
            codedOutputStream.writeBool(25, z17);
        }
        boolean z18 = this.mergeMessageChannel_;
        if (z18) {
            codedOutputStream.writeBool(26, z18);
        }
        if (!getBattleScoreBoardBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 27, this.battleScoreBoard_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ParamsOrBuilder {
        private boolean allowPCJoin_;
        private boolean allowPeripheralJoin_;
        private boolean allowSpectatorJoin_;
        private int battleArea_;
        private Object battleScoreBoard_;
        private int challengeCoins_;
        private int channelType_;
        private boolean closePosition_;
        private int collectionId_;
        private Object deviceId_;
        private boolean disableMobileJoin_;
        private long fightId_;
        private boolean fromLive_;
        private long gameId_;
        private boolean mergeMessageChannel_;
        private Object password_;
        private int pingVal_;
        private int playMode_;
        private int roomId_;
        private int roomPositionIndex_;
        private int roomType_;
        private boolean silent_;
        private long timestamp_;
        private Object token_;
        private int uid_;
        private boolean usePeripheral_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_Params_descriptor;
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

        public Builder clearBattleScoreBoard() {
            this.battleScoreBoard_ = Params.getDefaultInstance().getBattleScoreBoard();
            onChanged();
            return this;
        }

        public Builder clearChallengeCoins() {
            this.challengeCoins_ = 0;
            onChanged();
            return this;
        }

        public Builder clearChannelType() {
            this.channelType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearClosePosition() {
            this.closePosition_ = false;
            onChanged();
            return this;
        }

        public Builder clearCollectionId() {
            this.collectionId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearDeviceId() {
            this.deviceId_ = Params.getDefaultInstance().getDeviceId();
            onChanged();
            return this;
        }

        public Builder clearDisableMobileJoin() {
            this.disableMobileJoin_ = false;
            onChanged();
            return this;
        }

        public Builder clearFightId() {
            this.fightId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearFromLive() {
            this.fromLive_ = false;
            onChanged();
            return this;
        }

        public Builder clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearMergeMessageChannel() {
            this.mergeMessageChannel_ = false;
            onChanged();
            return this;
        }

        public Builder clearPassword() {
            this.password_ = Params.getDefaultInstance().getPassword();
            onChanged();
            return this;
        }

        public Builder clearPingVal() {
            this.pingVal_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPlayMode() {
            this.playMode_ = 0;
            onChanged();
            return this;
        }

        public Builder clearRoomId() {
            this.roomId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearRoomPositionIndex() {
            this.roomPositionIndex_ = 0;
            onChanged();
            return this;
        }

        public Builder clearRoomType() {
            this.roomType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearSilent() {
            this.silent_ = false;
            onChanged();
            return this;
        }

        public Builder clearTimestamp() {
            this.timestamp_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearToken() {
            this.token_ = Params.getDefaultInstance().getToken();
            onChanged();
            return this;
        }

        public Builder clearUid() {
            this.uid_ = 0;
            onChanged();
            return this;
        }

        public Builder clearUsePeripheral() {
            this.usePeripheral_ = false;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowPCJoin() {
            return this.allowPCJoin_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowPeripheralJoin() {
            return this.allowPeripheralJoin_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getAllowSpectatorJoin() {
            return this.allowSpectatorJoin_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public BattleArea getBattleArea() {
            BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
            return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getBattleAreaValue() {
            return this.battleArea_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getBattleScoreBoard() {
            Object obj = this.battleScoreBoard_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleScoreBoard_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getBattleScoreBoardBytes() {
            Object obj = this.battleScoreBoard_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleScoreBoard_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getChallengeCoins() {
            return this.challengeCoins_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ChannelType getChannelType() {
            ChannelType channelTypeValueOf = ChannelType.valueOf(this.channelType_);
            return channelTypeValueOf == null ? ChannelType.UNRECOGNIZED : channelTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getChannelTypeValue() {
            return this.channelType_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getClosePosition() {
            return this.closePosition_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getCollectionId() {
            return this.collectionId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_Params_descriptor;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getDeviceId() {
            Object obj = this.deviceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.deviceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getDeviceIdBytes() {
            Object obj = this.deviceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getDisableMobileJoin() {
            return this.disableMobileJoin_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getFightId() {
            return this.fightId_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getFromLive() {
            return this.fromLive_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getMergeMessageChannel() {
            return this.mergeMessageChannel_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.password_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.password_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getPingVal() {
            return this.pingVal_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ServerPlayMode getPlayMode() {
            ServerPlayMode serverPlayModeValueOf = ServerPlayMode.valueOf(this.playMode_);
            return serverPlayModeValueOf == null ? ServerPlayMode.UNRECOGNIZED : serverPlayModeValueOf;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getPlayModeValue() {
            return this.playMode_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomId() {
            return this.roomId_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomPositionIndex() {
            return this.roomPositionIndex_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public RoomType getRoomType() {
            RoomType roomTypeValueOf = RoomType.valueOf(this.roomType_);
            return roomTypeValueOf == null ? RoomType.UNRECOGNIZED : roomTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getRoomTypeValue() {
            return this.roomType_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getSilent() {
            return this.silent_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public int getUid() {
            return this.uid_;
        }

        @Override // com.papa91.battle.protocol.ParamsOrBuilder
        public boolean getUsePeripheral() {
            return this.usePeripheral_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_Params_fieldAccessorTable.ensureFieldAccessorsInitialized(Params.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
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

        public Builder setBattleScoreBoard(String str) {
            str.getClass();
            this.battleScoreBoard_ = str;
            onChanged();
            return this;
        }

        public Builder setBattleScoreBoardBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.battleScoreBoard_ = byteString;
            onChanged();
            return this;
        }

        public Builder setChallengeCoins(int i10) {
            this.challengeCoins_ = i10;
            onChanged();
            return this;
        }

        public Builder setChannelType(ChannelType channelType) {
            channelType.getClass();
            this.channelType_ = channelType.getNumber();
            onChanged();
            return this;
        }

        public Builder setChannelTypeValue(int i10) {
            this.channelType_ = i10;
            onChanged();
            return this;
        }

        public Builder setClosePosition(boolean z10) {
            this.closePosition_ = z10;
            onChanged();
            return this;
        }

        public Builder setCollectionId(int i10) {
            this.collectionId_ = i10;
            onChanged();
            return this;
        }

        public Builder setDeviceId(String str) {
            str.getClass();
            this.deviceId_ = str;
            onChanged();
            return this;
        }

        public Builder setDeviceIdBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.deviceId_ = byteString;
            onChanged();
            return this;
        }

        public Builder setDisableMobileJoin(boolean z10) {
            this.disableMobileJoin_ = z10;
            onChanged();
            return this;
        }

        public Builder setFightId(long j10) {
            this.fightId_ = j10;
            onChanged();
            return this;
        }

        public Builder setFromLive(boolean z10) {
            this.fromLive_ = z10;
            onChanged();
            return this;
        }

        public Builder setGameId(long j10) {
            this.gameId_ = j10;
            onChanged();
            return this;
        }

        public Builder setMergeMessageChannel(boolean z10) {
            this.mergeMessageChannel_ = z10;
            onChanged();
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

        public Builder setPingVal(int i10) {
            this.pingVal_ = i10;
            onChanged();
            return this;
        }

        public Builder setPlayMode(ServerPlayMode serverPlayMode) {
            serverPlayMode.getClass();
            this.playMode_ = serverPlayMode.getNumber();
            onChanged();
            return this;
        }

        public Builder setPlayModeValue(int i10) {
            this.playMode_ = i10;
            onChanged();
            return this;
        }

        public Builder setRoomId(int i10) {
            this.roomId_ = i10;
            onChanged();
            return this;
        }

        public Builder setRoomPositionIndex(int i10) {
            this.roomPositionIndex_ = i10;
            onChanged();
            return this;
        }

        public Builder setRoomType(RoomType roomType) {
            roomType.getClass();
            this.roomType_ = roomType.getNumber();
            onChanged();
            return this;
        }

        public Builder setRoomTypeValue(int i10) {
            this.roomType_ = i10;
            onChanged();
            return this;
        }

        public Builder setSilent(boolean z10) {
            this.silent_ = z10;
            onChanged();
            return this;
        }

        public Builder setTimestamp(long j10) {
            this.timestamp_ = j10;
            onChanged();
            return this;
        }

        public Builder setToken(String str) {
            str.getClass();
            this.token_ = str;
            onChanged();
            return this;
        }

        public Builder setTokenBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.token_ = byteString;
            onChanged();
            return this;
        }

        public Builder setUid(int i10) {
            this.uid_ = i10;
            onChanged();
            return this;
        }

        public Builder setUsePeripheral(boolean z10) {
            this.usePeripheral_ = z10;
            onChanged();
            return this;
        }

        private Builder() {
            this.token_ = "";
            this.password_ = "";
            this.roomType_ = 0;
            this.deviceId_ = "";
            this.battleArea_ = 0;
            this.channelType_ = 0;
            this.playMode_ = 0;
            this.battleScoreBoard_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Params build() {
            Params paramsBuildPartial = buildPartial();
            if (paramsBuildPartial.isInitialized()) {
                return paramsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) paramsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Params buildPartial() {
            Params params = new Params(this);
            params.uid_ = this.uid_;
            params.token_ = this.token_;
            params.gameId_ = this.gameId_;
            params.roomId_ = this.roomId_;
            params.challengeCoins_ = this.challengeCoins_;
            params.password_ = this.password_;
            params.allowSpectatorJoin_ = this.allowSpectatorJoin_;
            params.allowPeripheralJoin_ = this.allowPeripheralJoin_;
            params.closePosition_ = this.closePosition_;
            params.roomPositionIndex_ = this.roomPositionIndex_;
            params.roomType_ = this.roomType_;
            params.silent_ = this.silent_;
            params.usePeripheral_ = this.usePeripheral_;
            params.fightId_ = this.fightId_;
            params.pingVal_ = this.pingVal_;
            params.timestamp_ = this.timestamp_;
            params.deviceId_ = this.deviceId_;
            params.battleArea_ = this.battleArea_;
            params.channelType_ = this.channelType_;
            params.collectionId_ = this.collectionId_;
            params.fromLive_ = this.fromLive_;
            params.playMode_ = this.playMode_;
            params.allowPCJoin_ = this.allowPCJoin_;
            params.disableMobileJoin_ = this.disableMobileJoin_;
            params.mergeMessageChannel_ = this.mergeMessageChannel_;
            params.battleScoreBoard_ = this.battleScoreBoard_;
            onBuilt();
            return params;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Params getDefaultInstanceForType() {
            return Params.getDefaultInstance();
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
            this.uid_ = 0;
            this.token_ = "";
            this.gameId_ = 0L;
            this.roomId_ = 0;
            this.challengeCoins_ = 0;
            this.password_ = "";
            this.allowSpectatorJoin_ = false;
            this.allowPeripheralJoin_ = false;
            this.closePosition_ = false;
            this.roomPositionIndex_ = 0;
            this.roomType_ = 0;
            this.silent_ = false;
            this.usePeripheral_ = false;
            this.fightId_ = 0L;
            this.pingVal_ = 0;
            this.timestamp_ = 0L;
            this.deviceId_ = "";
            this.battleArea_ = 0;
            this.channelType_ = 0;
            this.collectionId_ = 0;
            this.fromLive_ = false;
            this.playMode_ = 0;
            this.allowPCJoin_ = false;
            this.disableMobileJoin_ = false;
            this.mergeMessageChannel_ = false;
            this.battleScoreBoard_ = "";
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof Params) {
                return mergeFrom((Params) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Params params) {
            if (params == Params.getDefaultInstance()) {
                return this;
            }
            if (params.getUid() != 0) {
                setUid(params.getUid());
            }
            if (!params.getToken().isEmpty()) {
                this.token_ = params.token_;
                onChanged();
            }
            if (params.getGameId() != 0) {
                setGameId(params.getGameId());
            }
            if (params.getRoomId() != 0) {
                setRoomId(params.getRoomId());
            }
            if (params.getChallengeCoins() != 0) {
                setChallengeCoins(params.getChallengeCoins());
            }
            if (!params.getPassword().isEmpty()) {
                this.password_ = params.password_;
                onChanged();
            }
            if (params.getAllowSpectatorJoin()) {
                setAllowSpectatorJoin(params.getAllowSpectatorJoin());
            }
            if (params.getAllowPeripheralJoin()) {
                setAllowPeripheralJoin(params.getAllowPeripheralJoin());
            }
            if (params.getClosePosition()) {
                setClosePosition(params.getClosePosition());
            }
            if (params.getRoomPositionIndex() != 0) {
                setRoomPositionIndex(params.getRoomPositionIndex());
            }
            if (params.roomType_ != 0) {
                setRoomTypeValue(params.getRoomTypeValue());
            }
            if (params.getSilent()) {
                setSilent(params.getSilent());
            }
            if (params.getUsePeripheral()) {
                setUsePeripheral(params.getUsePeripheral());
            }
            if (params.getFightId() != 0) {
                setFightId(params.getFightId());
            }
            if (params.getPingVal() != 0) {
                setPingVal(params.getPingVal());
            }
            if (params.getTimestamp() != 0) {
                setTimestamp(params.getTimestamp());
            }
            if (!params.getDeviceId().isEmpty()) {
                this.deviceId_ = params.deviceId_;
                onChanged();
            }
            if (params.battleArea_ != 0) {
                setBattleAreaValue(params.getBattleAreaValue());
            }
            if (params.channelType_ != 0) {
                setChannelTypeValue(params.getChannelTypeValue());
            }
            if (params.getCollectionId() != 0) {
                setCollectionId(params.getCollectionId());
            }
            if (params.getFromLive()) {
                setFromLive(params.getFromLive());
            }
            if (params.playMode_ != 0) {
                setPlayModeValue(params.getPlayModeValue());
            }
            if (params.getAllowPCJoin()) {
                setAllowPCJoin(params.getAllowPCJoin());
            }
            if (params.getDisableMobileJoin()) {
                setDisableMobileJoin(params.getDisableMobileJoin());
            }
            if (params.getMergeMessageChannel()) {
                setMergeMessageChannel(params.getMergeMessageChannel());
            }
            if (!params.getBattleScoreBoard().isEmpty()) {
                this.battleScoreBoard_ = params.battleScoreBoard_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) params).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.token_ = "";
            this.password_ = "";
            this.roomType_ = 0;
            this.deviceId_ = "";
            this.battleArea_ = 0;
            this.channelType_ = 0;
            this.playMode_ = 0;
            this.battleScoreBoard_ = "";
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            Params params = null;
            try {
                try {
                    Params params2 = (Params) Params.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (params2 != null) {
                        mergeFrom(params2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    Params params3 = (Params) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        params = params3;
                        if (params != null) {
                            mergeFrom(params);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (params != null) {
                    mergeFrom(params);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(Params params) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(params);
    }

    public static Params parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private Params(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Params parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Params parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Params getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Params parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Params() {
        this.memoizedIsInitialized = (byte) -1;
        this.token_ = "";
        this.password_ = "";
        this.roomType_ = 0;
        this.deviceId_ = "";
        this.battleArea_ = 0;
        this.channelType_ = 0;
        this.playMode_ = 0;
        this.battleScoreBoard_ = "";
    }

    public static Params parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static Params parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Params parseFrom(InputStream inputStream) throws IOException {
        return (Params) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Params parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Params parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Params) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Params parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Params) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    private Params(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.uid_ = codedInputStream.readInt32();
                                continue;
                            case 18:
                                this.token_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.gameId_ = codedInputStream.readInt64();
                                continue;
                            case 32:
                                this.roomId_ = codedInputStream.readInt32();
                                continue;
                            case 40:
                                this.challengeCoins_ = codedInputStream.readInt32();
                                continue;
                            case 50:
                                this.password_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.allowSpectatorJoin_ = codedInputStream.readBool();
                                continue;
                            case 64:
                                this.allowPeripheralJoin_ = codedInputStream.readBool();
                                continue;
                            case 72:
                                this.closePosition_ = codedInputStream.readBool();
                                continue;
                            case 80:
                                this.roomPositionIndex_ = codedInputStream.readInt32();
                                continue;
                            case 88:
                                this.roomType_ = codedInputStream.readEnum();
                                continue;
                            case 96:
                                this.silent_ = codedInputStream.readBool();
                                continue;
                            case 104:
                                this.usePeripheral_ = codedInputStream.readBool();
                                continue;
                            case 112:
                                this.fightId_ = codedInputStream.readUInt64();
                                continue;
                            case 120:
                                this.pingVal_ = codedInputStream.readInt32();
                                continue;
                            case 128:
                                this.timestamp_ = codedInputStream.readInt64();
                                continue;
                            case 138:
                                this.deviceId_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 152:
                                this.battleArea_ = codedInputStream.readEnum();
                                continue;
                            case 160:
                                this.channelType_ = codedInputStream.readEnum();
                                continue;
                            case 168:
                                this.collectionId_ = codedInputStream.readInt32();
                                continue;
                            case 176:
                                this.fromLive_ = codedInputStream.readBool();
                                continue;
                            case 184:
                                this.playMode_ = codedInputStream.readEnum();
                                continue;
                            case 192:
                                this.allowPCJoin_ = codedInputStream.readBool();
                                continue;
                            case 200:
                                this.disableMobileJoin_ = codedInputStream.readBool();
                                continue;
                            case 208:
                                this.mergeMessageChannel_ = codedInputStream.readBool();
                                continue;
                            case 218:
                                this.battleScoreBoard_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            default:
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    break;
                                }
                                break;
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
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
