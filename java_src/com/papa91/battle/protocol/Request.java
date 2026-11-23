package com.papa91.battle.protocol;

import com.google.protobuf.AbstractMessage;
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
public final class Request extends GeneratedMessageV3 implements RequestOrBuilder {
    public static final int ACCOUNT_FIELD_NUMBER = 5;
    public static final int PARAMS_FIELD_NUMBER = 4;
    public static final int REQUESTID_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 2;
    public static final int VERSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Account account_;
    private byte memoizedIsInitialized;
    private Params params_;
    private long requestId_;
    private int type_;
    private int version_;
    private static final Request DEFAULT_INSTANCE = new Request();
    private static final Parser<Request> PARSER = new AbstractParser<Request>() { // from class: com.papa91.battle.protocol.Request.1
        @Override // com.google.protobuf.Parser
        public Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Request(codedInputStream, extensionRegistryLite);
        }
    };

    public enum ProtoType implements ProtocolMessageEnum {
        UNDEFINED_REQUEST(0),
        LOGIN(1),
        PING(2),
        SUBSCRIBE_GAME_ROOM(3),
        CREATE_GAME_ROOM(4),
        SET_ROOM_CHALLENGE_COINS_ATTR(5),
        SET_ROOM_PASSWORD_ATTR(6),
        SET_ROOM_PERIPHERAL_JOIN_ATTR(7),
        SET_ROOM_SPECTATOR_JOIN_ATTR(8),
        SET_ROOM_POSITION_ATTR(9),
        JOIN_ROOM(10),
        SET_ROOM_CLOSE_P1_POSITION(11),
        SET_ROOM_CLOSE_P2_POSITION(12),
        SET_ROOM_CLOSE_P3_POSITION(13),
        SET_ROOM_CLOSE_P4_POSITION(14),
        LEAVE_ROOM(15),
        DISSOLVE_ROOM(16),
        KICK_OUT_ROOM_POSITION(17),
        QUICK_JOIN_ROOM(18),
        SEARCH_ROOM_BY_ID(19),
        LOBBY_START_GAME(20),
        PLAYER_READY_GAME(21),
        CANCEL_SUBSCRIBE_GAME_ROOM(22),
        PLAYER_JOIN_GAME(23),
        SHARE_JOIN_ROOM(24),
        DISCONNECT_LEAVE_ROOM(25),
        ROOM_SPECTATOR_SIT(26),
        GET_KICK_OUT_ROOM_POSITION_INFO(27),
        GET_UDP_FRAME_SERVER(28),
        JOIN_BATTLE_AREA(29),
        VERIFY_JOIN_ROOM_PASSWORD(30),
        SUBSCRIBE_GAME_COLLECTION(31),
        CANCEL_SUBSCRIBE_GAME_COLLECTION(32),
        QUICK_JOIN_ROOM_PC(33),
        SET_ROOM_SERVER_PLAY_MODE(34),
        SET_ROOM_ALLOW_PC_JOIN(35),
        SET_ROOM_DISABLE_MOBILE_JOIN(36),
        QUICK_JOIN_ROOM_NET_PC(37),
        BATTLE_SCORE_BOARD(38),
        GET_BATTLE_SCORE_BOARD(39),
        RE_CONNECTION_JOIN_ROOM(40),
        UNRECOGNIZED(-1);

        public static final int BATTLE_SCORE_BOARD_VALUE = 38;
        public static final int CANCEL_SUBSCRIBE_GAME_COLLECTION_VALUE = 32;
        public static final int CANCEL_SUBSCRIBE_GAME_ROOM_VALUE = 22;
        public static final int CREATE_GAME_ROOM_VALUE = 4;
        public static final int DISCONNECT_LEAVE_ROOM_VALUE = 25;
        public static final int DISSOLVE_ROOM_VALUE = 16;
        public static final int GET_BATTLE_SCORE_BOARD_VALUE = 39;
        public static final int GET_KICK_OUT_ROOM_POSITION_INFO_VALUE = 27;
        public static final int GET_UDP_FRAME_SERVER_VALUE = 28;
        public static final int JOIN_BATTLE_AREA_VALUE = 29;
        public static final int JOIN_ROOM_VALUE = 10;
        public static final int KICK_OUT_ROOM_POSITION_VALUE = 17;
        public static final int LEAVE_ROOM_VALUE = 15;
        public static final int LOBBY_START_GAME_VALUE = 20;
        public static final int LOGIN_VALUE = 1;
        public static final int PING_VALUE = 2;
        public static final int PLAYER_JOIN_GAME_VALUE = 23;
        public static final int PLAYER_READY_GAME_VALUE = 21;
        public static final int QUICK_JOIN_ROOM_NET_PC_VALUE = 37;
        public static final int QUICK_JOIN_ROOM_PC_VALUE = 33;
        public static final int QUICK_JOIN_ROOM_VALUE = 18;
        public static final int RE_CONNECTION_JOIN_ROOM_VALUE = 40;
        public static final int ROOM_SPECTATOR_SIT_VALUE = 26;
        public static final int SEARCH_ROOM_BY_ID_VALUE = 19;
        public static final int SET_ROOM_ALLOW_PC_JOIN_VALUE = 35;
        public static final int SET_ROOM_CHALLENGE_COINS_ATTR_VALUE = 5;
        public static final int SET_ROOM_CLOSE_P1_POSITION_VALUE = 11;
        public static final int SET_ROOM_CLOSE_P2_POSITION_VALUE = 12;
        public static final int SET_ROOM_CLOSE_P3_POSITION_VALUE = 13;
        public static final int SET_ROOM_CLOSE_P4_POSITION_VALUE = 14;
        public static final int SET_ROOM_DISABLE_MOBILE_JOIN_VALUE = 36;
        public static final int SET_ROOM_PASSWORD_ATTR_VALUE = 6;
        public static final int SET_ROOM_PERIPHERAL_JOIN_ATTR_VALUE = 7;
        public static final int SET_ROOM_POSITION_ATTR_VALUE = 9;
        public static final int SET_ROOM_SERVER_PLAY_MODE_VALUE = 34;
        public static final int SET_ROOM_SPECTATOR_JOIN_ATTR_VALUE = 8;
        public static final int SHARE_JOIN_ROOM_VALUE = 24;
        public static final int SUBSCRIBE_GAME_COLLECTION_VALUE = 31;
        public static final int SUBSCRIBE_GAME_ROOM_VALUE = 3;
        public static final int UNDEFINED_REQUEST_VALUE = 0;
        public static final int VERIFY_JOIN_ROOM_PASSWORD_VALUE = 30;
        private final int value;
        private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new Internal.EnumLiteMap<ProtoType>() { // from class: com.papa91.battle.protocol.Request.ProtoType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ProtoType findValueByNumber(int i10) {
                return ProtoType.forNumber(i10);
            }
        };
        private static final ProtoType[] VALUES = values();

        ProtoType(int i10) {
            this.value = i10;
        }

        public static ProtoType forNumber(int i10) {
            switch (i10) {
                case 0:
                    return UNDEFINED_REQUEST;
                case 1:
                    return LOGIN;
                case 2:
                    return PING;
                case 3:
                    return SUBSCRIBE_GAME_ROOM;
                case 4:
                    return CREATE_GAME_ROOM;
                case 5:
                    return SET_ROOM_CHALLENGE_COINS_ATTR;
                case 6:
                    return SET_ROOM_PASSWORD_ATTR;
                case 7:
                    return SET_ROOM_PERIPHERAL_JOIN_ATTR;
                case 8:
                    return SET_ROOM_SPECTATOR_JOIN_ATTR;
                case 9:
                    return SET_ROOM_POSITION_ATTR;
                case 10:
                    return JOIN_ROOM;
                case 11:
                    return SET_ROOM_CLOSE_P1_POSITION;
                case 12:
                    return SET_ROOM_CLOSE_P2_POSITION;
                case 13:
                    return SET_ROOM_CLOSE_P3_POSITION;
                case 14:
                    return SET_ROOM_CLOSE_P4_POSITION;
                case 15:
                    return LEAVE_ROOM;
                case 16:
                    return DISSOLVE_ROOM;
                case 17:
                    return KICK_OUT_ROOM_POSITION;
                case 18:
                    return QUICK_JOIN_ROOM;
                case 19:
                    return SEARCH_ROOM_BY_ID;
                case 20:
                    return LOBBY_START_GAME;
                case 21:
                    return PLAYER_READY_GAME;
                case 22:
                    return CANCEL_SUBSCRIBE_GAME_ROOM;
                case 23:
                    return PLAYER_JOIN_GAME;
                case 24:
                    return SHARE_JOIN_ROOM;
                case 25:
                    return DISCONNECT_LEAVE_ROOM;
                case 26:
                    return ROOM_SPECTATOR_SIT;
                case 27:
                    return GET_KICK_OUT_ROOM_POSITION_INFO;
                case 28:
                    return GET_UDP_FRAME_SERVER;
                case 29:
                    return JOIN_BATTLE_AREA;
                case 30:
                    return VERIFY_JOIN_ROOM_PASSWORD;
                case 31:
                    return SUBSCRIBE_GAME_COLLECTION;
                case 32:
                    return CANCEL_SUBSCRIBE_GAME_COLLECTION;
                case 33:
                    return QUICK_JOIN_ROOM_PC;
                case 34:
                    return SET_ROOM_SERVER_PLAY_MODE;
                case 35:
                    return SET_ROOM_ALLOW_PC_JOIN;
                case 36:
                    return SET_ROOM_DISABLE_MOBILE_JOIN;
                case 37:
                    return QUICK_JOIN_ROOM_NET_PC;
                case 38:
                    return BATTLE_SCORE_BOARD;
                case 39:
                    return GET_BATTLE_SCORE_BOARD;
                case 40:
                    return RE_CONNECTION_JOIN_ROOM;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Request.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<ProtoType> internalGetValueMap() {
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
        public static ProtoType valueOf(int i10) {
            return forNumber(i10);
        }

        public static ProtoType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_Request_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<Request> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Request)) {
            return super.equals(obj);
        }
        Request request = (Request) obj;
        if (getVersion() != request.getVersion() || this.type_ != request.type_ || getRequestId() != request.getRequestId() || hasParams() != request.hasParams()) {
            return false;
        }
        if ((!hasParams() || getParams().equals(request.getParams())) && hasAccount() == request.hasAccount()) {
            return (!hasAccount() || getAccount().equals(request.getAccount())) && this.unknownFields.equals(request.unknownFields);
        }
        return false;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public Account getAccount() {
        Account account = this.account_;
        return account == null ? Account.getDefaultInstance() : account;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public AccountOrBuilder getAccountOrBuilder() {
        return getAccount();
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public Params getParams() {
        Params params = this.params_;
        return params == null ? Params.getDefaultInstance() : params;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public ParamsOrBuilder getParamsOrBuilder() {
        return getParams();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Request> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.version_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (this.type_ != ProtoType.UNDEFINED_REQUEST.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(2, this.type_);
        }
        long j10 = this.requestId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(3, j10);
        }
        if (this.params_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, getParams());
        }
        if (this.account_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(5, getAccount());
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public ProtoType getType() {
        ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
        return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public int getVersion() {
        return this.version_;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public boolean hasAccount() {
        return this.account_ != null;
    }

    @Override // com.papa91.battle.protocol.RequestOrBuilder
    public boolean hasParams() {
        return this.params_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getVersion()) * 37) + 2) * 53) + this.type_) * 37) + 3) * 53) + Internal.hashLong(getRequestId());
        if (hasParams()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getParams().hashCode();
        }
        if (hasAccount()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getAccount().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
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
        return new Request();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.version_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        if (this.type_ != ProtoType.UNDEFINED_REQUEST.getNumber()) {
            codedOutputStream.writeEnum(2, this.type_);
        }
        long j10 = this.requestId_;
        if (j10 != 0) {
            codedOutputStream.writeInt64(3, j10);
        }
        if (this.params_ != null) {
            codedOutputStream.writeMessage(4, getParams());
        }
        if (this.account_ != null) {
            codedOutputStream.writeMessage(5, getAccount());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestOrBuilder {
        private SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> accountBuilder_;
        private Account account_;
        private SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> paramsBuilder_;
        private Params params_;
        private long requestId_;
        private int type_;
        private int version_;

        private SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> getAccountFieldBuilder() {
            if (this.accountBuilder_ == null) {
                this.accountBuilder_ = new SingleFieldBuilderV3<>(getAccount(), getParentForChildren(), isClean());
                this.account_ = null;
            }
            return this.accountBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_Request_descriptor;
        }

        private SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> getParamsFieldBuilder() {
            if (this.paramsBuilder_ == null) {
                this.paramsBuilder_ = new SingleFieldBuilderV3<>(getParams(), getParentForChildren(), isClean());
                this.params_ = null;
            }
            return this.paramsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAccount() {
            if (this.accountBuilder_ == null) {
                this.account_ = null;
                onChanged();
            } else {
                this.account_ = null;
                this.accountBuilder_ = null;
            }
            return this;
        }

        public Builder clearParams() {
            if (this.paramsBuilder_ == null) {
                this.params_ = null;
                onChanged();
            } else {
                this.params_ = null;
                this.paramsBuilder_ = null;
            }
            return this;
        }

        public Builder clearRequestId() {
            this.requestId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearType() {
            this.type_ = 0;
            onChanged();
            return this;
        }

        public Builder clearVersion() {
            this.version_ = 0;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public Account getAccount() {
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV3 = this.accountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Account) singleFieldBuilderV3.getMessage();
            }
            Account account = this.account_;
            return account == null ? Account.getDefaultInstance() : account;
        }

        public Account.Builder getAccountBuilder() {
            onChanged();
            return (Account.Builder) getAccountFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public AccountOrBuilder getAccountOrBuilder() {
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV3 = this.accountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AccountOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Account account = this.account_;
            return account == null ? Account.getDefaultInstance() : account;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_Request_descriptor;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public Params getParams() {
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Params) singleFieldBuilderV3.getMessage();
            }
            Params params = this.params_;
            return params == null ? Params.getDefaultInstance() : params;
        }

        public Params.Builder getParamsBuilder() {
            onChanged();
            return (Params.Builder) getParamsFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public ParamsOrBuilder getParamsOrBuilder() {
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ParamsOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Params params = this.params_;
            return params == null ? Params.getDefaultInstance() : params;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public ProtoType getType() {
            ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
            return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public boolean hasAccount() {
            return (this.accountBuilder_ == null && this.account_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.RequestOrBuilder
        public boolean hasParams() {
            return (this.paramsBuilder_ == null && this.params_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeAccount(Account account) {
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV3 = this.accountBuilder_;
            if (singleFieldBuilderV3 == null) {
                Account account2 = this.account_;
                if (account2 != null) {
                    this.account_ = Account.newBuilder(account2).mergeFrom(account).buildPartial();
                } else {
                    this.account_ = account;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(account);
            }
            return this;
        }

        public Builder mergeParams(Params params) {
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Params params2 = this.params_;
                if (params2 != null) {
                    this.params_ = Params.newBuilder(params2).mergeFrom(params).buildPartial();
                } else {
                    this.params_ = params;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(params);
            }
            return this;
        }

        public Builder setAccount(Account account) {
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV3 = this.accountBuilder_;
            if (singleFieldBuilderV3 == null) {
                account.getClass();
                this.account_ = account;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(account);
            }
            return this;
        }

        public Builder setParams(Params params) {
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 == null) {
                params.getClass();
                this.params_ = params;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(params);
            }
            return this;
        }

        public Builder setRequestId(long j10) {
            this.requestId_ = j10;
            onChanged();
            return this;
        }

        public Builder setType(ProtoType protoType) {
            protoType.getClass();
            this.type_ = protoType.getNumber();
            onChanged();
            return this;
        }

        public Builder setTypeValue(int i10) {
            this.type_ = i10;
            onChanged();
            return this;
        }

        public Builder setVersion(int i10) {
            this.version_ = i10;
            onChanged();
            return this;
        }

        private Builder() {
            this.type_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Request build() {
            Request requestBuildPartial = buildPartial();
            if (requestBuildPartial.isInitialized()) {
                return requestBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) requestBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Request buildPartial() {
            Request request = new Request(this);
            request.version_ = this.version_;
            request.type_ = this.type_;
            request.requestId_ = this.requestId_;
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 == null) {
                request.params_ = this.params_;
            } else {
                request.params_ = (Params) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV4 = this.accountBuilder_;
            if (singleFieldBuilderV4 == null) {
                request.account_ = this.account_;
            } else {
                request.account_ = (Account) singleFieldBuilderV4.build();
            }
            onBuilt();
            return request;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Request getDefaultInstanceForType() {
            return Request.getDefaultInstance();
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
            this.version_ = 0;
            this.type_ = 0;
            this.requestId_ = 0L;
            if (this.paramsBuilder_ == null) {
                this.params_ = null;
            } else {
                this.params_ = null;
                this.paramsBuilder_ = null;
            }
            if (this.accountBuilder_ == null) {
                this.account_ = null;
            } else {
                this.account_ = null;
                this.accountBuilder_ = null;
            }
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.type_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder setAccount(Account.Builder builder) {
            SingleFieldBuilderV3<Account, Account.Builder, AccountOrBuilder> singleFieldBuilderV3 = this.accountBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.account_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setParams(Params.Builder builder) {
            SingleFieldBuilderV3<Params, Params.Builder, ParamsOrBuilder> singleFieldBuilderV3 = this.paramsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.params_ = builder.build();
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
            if (message instanceof Request) {
                return mergeFrom((Request) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Request request) {
            if (request == Request.getDefaultInstance()) {
                return this;
            }
            if (request.getVersion() != 0) {
                setVersion(request.getVersion());
            }
            if (request.type_ != 0) {
                setTypeValue(request.getTypeValue());
            }
            if (request.getRequestId() != 0) {
                setRequestId(request.getRequestId());
            }
            if (request.hasParams()) {
                mergeParams(request.getParams());
            }
            if (request.hasAccount()) {
                mergeAccount(request.getAccount());
            }
            mergeUnknownFields(((GeneratedMessageV3) request).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            Request request = null;
            try {
                try {
                    Request request2 = (Request) Request.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (request2 != null) {
                        mergeFrom(request2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    Request request3 = (Request) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        request = request3;
                        if (request != null) {
                            mergeFrom(request);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (request != null) {
                    mergeFrom(request);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(Request request) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(request);
    }

    public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private Request(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Request getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Request() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = 0;
    }

    public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Request parseFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 8) {
                            this.version_ = codedInputStream.readInt32();
                        } else if (tag == 16) {
                            this.type_ = codedInputStream.readEnum();
                        } else if (tag != 24) {
                            if (tag == 34) {
                                Params params = this.params_;
                                Params.Builder builder = params != null ? params.toBuilder() : null;
                                Params params2 = (Params) codedInputStream.readMessage(Params.parser(), extensionRegistryLite);
                                this.params_ = params2;
                                if (builder != null) {
                                    builder.mergeFrom(params2);
                                    this.params_ = builder.buildPartial();
                                }
                            } else if (tag != 42) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                Account account = this.account_;
                                Account.Builder builder2 = account != null ? account.toBuilder() : null;
                                Account account2 = (Account) codedInputStream.readMessage(Account.parser(), extensionRegistryLite);
                                this.account_ = account2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(account2);
                                    this.account_ = builder2.buildPartial();
                                }
                            }
                        } else {
                            this.requestId_ = codedInputStream.readInt64();
                        }
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

    public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
