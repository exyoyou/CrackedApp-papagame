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
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Response extends GeneratedMessageV3 implements ResponseOrBuilder {
    public static final int AREAONLINEPEOPLECOUNT_FIELD_NUMBER = 17;
    public static final int BATTLESCORE_FIELD_NUMBER = 19;
    public static final int BROADCASTCHANNEL_FIELD_NUMBER = 16;
    public static final int BROADCASTUSERS_FIELD_NUMBER = 6;
    public static final int ENDDELIMITER_FIELD_NUMBER = 999;
    public static final int ERROR_FIELD_NUMBER = 7;
    public static final int FRAMEFORWARDSERVER_FIELD_NUMBER = 15;
    public static final int JOINSPECTATORREASON_FIELD_NUMBER = 10;
    public static final int KICKINFO_FIELD_NUMBER = 13;
    public static final int LOGICERRORCODE_FIELD_NUMBER = 9;
    public static final int NOTIFICATION_FIELD_NUMBER = 14;
    public static final int PONG_FIELD_NUMBER = 11;
    public static final int REQUESTID_FIELD_NUMBER = 2;
    public static final int RESPONSE_FIELD_NUMBER = 5;
    public static final int ROOMCOUNTER_FIELD_NUMBER = 12;
    public static final int ROOM_FIELD_NUMBER = 4;
    public static final int SIMPLEROOM_FIELD_NUMBER = 8;
    public static final int STATUSCODE_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 3;
    public static final int USERPROFILE_FIELD_NUMBER = 18;
    private static final long serialVersionUID = 0;
    private AreaOnlinePeopleCount areaOnlinePeopleCount_;
    private volatile Object battleScore_;
    private int broadcastChannel_;
    private int broadcastUsersMemoizedSerializedSize;
    private Internal.IntList broadcastUsers_;
    private volatile Object endDelimiter_;
    private volatile Object error_;
    private FrameForwardServer frameForwardServer_;
    private volatile Object joinSpectatorReason_;
    private KickInfo kickInfo_;
    private int logicErrorCode_;
    private byte memoizedIsInitialized;
    private Notification notification_;
    private Pong pong_;
    private long requestId_;
    private Response response_;
    private RoomCounter roomCounter_;
    private GameRoom room_;
    private List<SimpleRoom> simpleRoom_;
    private int statusCode_;
    private int type_;
    private UserProfile userProfile_;
    private static final Response DEFAULT_INSTANCE = new Response();
    private static final Parser<Response> PARSER = new AbstractParser<Response>() { // from class: com.papa91.battle.protocol.Response.1
        @Override // com.google.protobuf.Parser
        public Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Response(codedInputStream, extensionRegistryLite);
        }
    };

    public enum BroadcastChannel implements ProtocolMessageEnum {
        ALL(0),
        LOBBY(1),
        ROOM(2),
        UNRECOGNIZED(-1);

        public static final int ALL_VALUE = 0;
        public static final int LOBBY_VALUE = 1;
        public static final int ROOM_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<BroadcastChannel> internalValueMap = new Internal.EnumLiteMap<BroadcastChannel>() { // from class: com.papa91.battle.protocol.Response.BroadcastChannel.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public BroadcastChannel findValueByNumber(int i10) {
                return BroadcastChannel.forNumber(i10);
            }
        };
        private static final BroadcastChannel[] VALUES = values();

        BroadcastChannel(int i10) {
            this.value = i10;
        }

        public static BroadcastChannel forNumber(int i10) {
            if (i10 == 0) {
                return ALL;
            }
            if (i10 == 1) {
                return LOBBY;
            }
            if (i10 != 2) {
                return null;
            }
            return ROOM;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Response.getDescriptor().getEnumTypes().get(3);
        }

        public static Internal.EnumLiteMap<BroadcastChannel> internalGetValueMap() {
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
        public static BroadcastChannel valueOf(int i10) {
            return forNumber(i10);
        }

        public static BroadcastChannel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum LogicErrorCode implements ProtocolMessageEnum {
        UNDEFINED_EROR_CODE(0),
        JOIN_GAME_ROOM_ERROR_PASSWORD(1),
        NOT_FOUND_ROOM(2),
        JOIN_GAME_ROOM_ERROR_FULL(3),
        JOIN_GAME_ROOM_ERROR_NEED_PASSWORD(4),
        CREATE_ROOM_NO_CHALLENGE_COINS(5),
        ROOM_ERROR_NO_CHALLENGE_COINS(6),
        JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS(7),
        ERROR_MESSAGE(8),
        ROOM_ERROR_DISSOLVE(9),
        JOIN_GAME_ROOM_ERROR_KICK(10),
        JOIN_GAME_ROOM_ERROR_NO_WHITE(11),
        UNRECOGNIZED(-1);

        public static final int CREATE_ROOM_NO_CHALLENGE_COINS_VALUE = 5;
        public static final int ERROR_MESSAGE_VALUE = 8;
        public static final int JOIN_GAME_ROOM_ERROR_FULL_VALUE = 3;
        public static final int JOIN_GAME_ROOM_ERROR_KICK_VALUE = 10;
        public static final int JOIN_GAME_ROOM_ERROR_NEED_PASSWORD_VALUE = 4;
        public static final int JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS_VALUE = 7;
        public static final int JOIN_GAME_ROOM_ERROR_NO_WHITE_VALUE = 11;
        public static final int JOIN_GAME_ROOM_ERROR_PASSWORD_VALUE = 1;
        public static final int NOT_FOUND_ROOM_VALUE = 2;
        public static final int ROOM_ERROR_DISSOLVE_VALUE = 9;
        public static final int ROOM_ERROR_NO_CHALLENGE_COINS_VALUE = 6;
        public static final int UNDEFINED_EROR_CODE_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<LogicErrorCode> internalValueMap = new Internal.EnumLiteMap<LogicErrorCode>() { // from class: com.papa91.battle.protocol.Response.LogicErrorCode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public LogicErrorCode findValueByNumber(int i10) {
                return LogicErrorCode.forNumber(i10);
            }
        };
        private static final LogicErrorCode[] VALUES = values();

        LogicErrorCode(int i10) {
            this.value = i10;
        }

        public static LogicErrorCode forNumber(int i10) {
            switch (i10) {
                case 0:
                    return UNDEFINED_EROR_CODE;
                case 1:
                    return JOIN_GAME_ROOM_ERROR_PASSWORD;
                case 2:
                    return NOT_FOUND_ROOM;
                case 3:
                    return JOIN_GAME_ROOM_ERROR_FULL;
                case 4:
                    return JOIN_GAME_ROOM_ERROR_NEED_PASSWORD;
                case 5:
                    return CREATE_ROOM_NO_CHALLENGE_COINS;
                case 6:
                    return ROOM_ERROR_NO_CHALLENGE_COINS;
                case 7:
                    return JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS;
                case 8:
                    return ERROR_MESSAGE;
                case 9:
                    return ROOM_ERROR_DISSOLVE;
                case 10:
                    return JOIN_GAME_ROOM_ERROR_KICK;
                case 11:
                    return JOIN_GAME_ROOM_ERROR_NO_WHITE;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Response.getDescriptor().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<LogicErrorCode> internalGetValueMap() {
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
        public static LogicErrorCode valueOf(int i10) {
            return forNumber(i10);
        }

        public static LogicErrorCode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public enum ProtoType implements ProtocolMessageEnum {
        UNDEFINED_RESPONSE(0),
        PONG(1),
        CREATE_ROOM(2),
        CREATE_ROOM_BROADCAST(3),
        UPDATE_ROOM_BROADCAST(4),
        KICK_ROOM_BROADCAST(11),
        MULTI_USER_BROADCAST(5),
        DISSOLVE_ROOM_BROADCAST(6),
        REFRESH_ROOM_LIST_UPDATE(7),
        REFRESH_ROOM_LIST_DISSOLVE(8),
        FULL_PUSH_ROOM_LIST_ING(9),
        FULL_PUSH_ROOM_LIST_FINISH(10),
        START_GAME_ROOM_BROADCAST(12),
        ACCOUNT_KICK_BROADCAST(13),
        SYNC_ROOM_INFO(14),
        GLOBAL_MESSAGE_BROADCAST(15),
        UPDATE_FRAME_SERVER_ADDR(16),
        IDLE_TIMEOUT(17),
        UPDATE_AREA_ONLINE_PEOPLE_BROADCAST(18),
        ROOM_READY_TIMEOUT_KICKOUT(19),
        ROOM_START_TIMEOUT_KICKOUT(20),
        REFERSH_USER_INFO(21),
        FORCE_DISSOLVE_ROOM_BROADCAST(22),
        BATTLE_SCORE_BOARD(23),
        UNRECOGNIZED(-1);

        public static final int ACCOUNT_KICK_BROADCAST_VALUE = 13;
        public static final int BATTLE_SCORE_BOARD_VALUE = 23;
        public static final int CREATE_ROOM_BROADCAST_VALUE = 3;
        public static final int CREATE_ROOM_VALUE = 2;
        public static final int DISSOLVE_ROOM_BROADCAST_VALUE = 6;
        public static final int FORCE_DISSOLVE_ROOM_BROADCAST_VALUE = 22;
        public static final int FULL_PUSH_ROOM_LIST_FINISH_VALUE = 10;
        public static final int FULL_PUSH_ROOM_LIST_ING_VALUE = 9;
        public static final int GLOBAL_MESSAGE_BROADCAST_VALUE = 15;
        public static final int IDLE_TIMEOUT_VALUE = 17;
        public static final int KICK_ROOM_BROADCAST_VALUE = 11;
        public static final int MULTI_USER_BROADCAST_VALUE = 5;
        public static final int PONG_VALUE = 1;
        public static final int REFERSH_USER_INFO_VALUE = 21;
        public static final int REFRESH_ROOM_LIST_DISSOLVE_VALUE = 8;
        public static final int REFRESH_ROOM_LIST_UPDATE_VALUE = 7;
        public static final int ROOM_READY_TIMEOUT_KICKOUT_VALUE = 19;
        public static final int ROOM_START_TIMEOUT_KICKOUT_VALUE = 20;
        public static final int START_GAME_ROOM_BROADCAST_VALUE = 12;
        public static final int SYNC_ROOM_INFO_VALUE = 14;
        public static final int UNDEFINED_RESPONSE_VALUE = 0;
        public static final int UPDATE_AREA_ONLINE_PEOPLE_BROADCAST_VALUE = 18;
        public static final int UPDATE_FRAME_SERVER_ADDR_VALUE = 16;
        public static final int UPDATE_ROOM_BROADCAST_VALUE = 4;
        private final int value;
        private static final Internal.EnumLiteMap<ProtoType> internalValueMap = new Internal.EnumLiteMap<ProtoType>() { // from class: com.papa91.battle.protocol.Response.ProtoType.1
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
                    return UNDEFINED_RESPONSE;
                case 1:
                    return PONG;
                case 2:
                    return CREATE_ROOM;
                case 3:
                    return CREATE_ROOM_BROADCAST;
                case 4:
                    return UPDATE_ROOM_BROADCAST;
                case 5:
                    return MULTI_USER_BROADCAST;
                case 6:
                    return DISSOLVE_ROOM_BROADCAST;
                case 7:
                    return REFRESH_ROOM_LIST_UPDATE;
                case 8:
                    return REFRESH_ROOM_LIST_DISSOLVE;
                case 9:
                    return FULL_PUSH_ROOM_LIST_ING;
                case 10:
                    return FULL_PUSH_ROOM_LIST_FINISH;
                case 11:
                    return KICK_ROOM_BROADCAST;
                case 12:
                    return START_GAME_ROOM_BROADCAST;
                case 13:
                    return ACCOUNT_KICK_BROADCAST;
                case 14:
                    return SYNC_ROOM_INFO;
                case 15:
                    return GLOBAL_MESSAGE_BROADCAST;
                case 16:
                    return UPDATE_FRAME_SERVER_ADDR;
                case 17:
                    return IDLE_TIMEOUT;
                case 18:
                    return UPDATE_AREA_ONLINE_PEOPLE_BROADCAST;
                case 19:
                    return ROOM_READY_TIMEOUT_KICKOUT;
                case 20:
                    return ROOM_START_TIMEOUT_KICKOUT;
                case 21:
                    return REFERSH_USER_INFO;
                case 22:
                    return FORCE_DISSOLVE_ROOM_BROADCAST;
                case 23:
                    return BATTLE_SCORE_BOARD;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Response.getDescriptor().getEnumTypes().get(1);
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

    public enum StatusCode implements ProtocolMessageEnum {
        UNDEFINED_CODE(0),
        SERVICE_FAILURE(1),
        PARAMS_FAILURE(2),
        INTERNAL_FAILURE(3),
        UN_LOGIN_FAILURE(4),
        RESULT_FAILURE(5),
        RESULT_SUCCESS(6),
        UNRECOGNIZED(-1);

        public static final int INTERNAL_FAILURE_VALUE = 3;
        public static final int PARAMS_FAILURE_VALUE = 2;
        public static final int RESULT_FAILURE_VALUE = 5;
        public static final int RESULT_SUCCESS_VALUE = 6;
        public static final int SERVICE_FAILURE_VALUE = 1;
        public static final int UNDEFINED_CODE_VALUE = 0;
        public static final int UN_LOGIN_FAILURE_VALUE = 4;
        private final int value;
        private static final Internal.EnumLiteMap<StatusCode> internalValueMap = new Internal.EnumLiteMap<StatusCode>() { // from class: com.papa91.battle.protocol.Response.StatusCode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public StatusCode findValueByNumber(int i10) {
                return StatusCode.forNumber(i10);
            }
        };
        private static final StatusCode[] VALUES = values();

        StatusCode(int i10) {
            this.value = i10;
        }

        public static StatusCode forNumber(int i10) {
            switch (i10) {
                case 0:
                    return UNDEFINED_CODE;
                case 1:
                    return SERVICE_FAILURE;
                case 2:
                    return PARAMS_FAILURE;
                case 3:
                    return INTERNAL_FAILURE;
                case 4:
                    return UN_LOGIN_FAILURE;
                case 5:
                    return RESULT_FAILURE;
                case 6:
                    return RESULT_SUCCESS;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Response.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<StatusCode> internalGetValueMap() {
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
        public static StatusCode valueOf(int i10) {
            return forNumber(i10);
        }

        public static StatusCode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static Response getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_Response_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<Response> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Response)) {
            return super.equals(obj);
        }
        Response response = (Response) obj;
        if (this.statusCode_ != response.statusCode_ || getRequestId() != response.getRequestId() || this.type_ != response.type_ || hasRoom() != response.hasRoom()) {
            return false;
        }
        if ((hasRoom() && !getRoom().equals(response.getRoom())) || hasResponse() != response.hasResponse()) {
            return false;
        }
        if ((hasResponse() && !getResponse().equals(response.getResponse())) || !getBroadcastUsersList().equals(response.getBroadcastUsersList()) || !getError().equals(response.getError()) || !getSimpleRoomList().equals(response.getSimpleRoomList()) || this.logicErrorCode_ != response.logicErrorCode_ || !getJoinSpectatorReason().equals(response.getJoinSpectatorReason()) || hasPong() != response.hasPong()) {
            return false;
        }
        if ((hasPong() && !getPong().equals(response.getPong())) || hasRoomCounter() != response.hasRoomCounter()) {
            return false;
        }
        if ((hasRoomCounter() && !getRoomCounter().equals(response.getRoomCounter())) || hasKickInfo() != response.hasKickInfo()) {
            return false;
        }
        if ((hasKickInfo() && !getKickInfo().equals(response.getKickInfo())) || hasNotification() != response.hasNotification()) {
            return false;
        }
        if ((hasNotification() && !getNotification().equals(response.getNotification())) || hasFrameForwardServer() != response.hasFrameForwardServer()) {
            return false;
        }
        if ((hasFrameForwardServer() && !getFrameForwardServer().equals(response.getFrameForwardServer())) || this.broadcastChannel_ != response.broadcastChannel_ || hasAreaOnlinePeopleCount() != response.hasAreaOnlinePeopleCount()) {
            return false;
        }
        if ((!hasAreaOnlinePeopleCount() || getAreaOnlinePeopleCount().equals(response.getAreaOnlinePeopleCount())) && hasUserProfile() == response.hasUserProfile()) {
            return (!hasUserProfile() || getUserProfile().equals(response.getUserProfile())) && getEndDelimiter().equals(response.getEndDelimiter()) && getBattleScore().equals(response.getBattleScore()) && this.unknownFields.equals(response.unknownFields);
        }
        return false;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public AreaOnlinePeopleCount getAreaOnlinePeopleCount() {
        AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
        return areaOnlinePeopleCount == null ? AreaOnlinePeopleCount.getDefaultInstance() : areaOnlinePeopleCount;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public AreaOnlinePeopleCountOrBuilder getAreaOnlinePeopleCountOrBuilder() {
        return getAreaOnlinePeopleCount();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getBattleScore() {
        Object obj = this.battleScore_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleScore_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getBattleScoreBytes() {
        Object obj = this.battleScore_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleScore_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public BroadcastChannel getBroadcastChannel() {
        BroadcastChannel broadcastChannelValueOf = BroadcastChannel.valueOf(this.broadcastChannel_);
        return broadcastChannelValueOf == null ? BroadcastChannel.UNRECOGNIZED : broadcastChannelValueOf;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastChannelValue() {
        return this.broadcastChannel_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastUsers(int i10) {
        return this.broadcastUsers_.getInt(i10);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getBroadcastUsersCount() {
        return this.broadcastUsers_.size();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public List<Integer> getBroadcastUsersList() {
        return this.broadcastUsers_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getEndDelimiter() {
        Object obj = this.endDelimiter_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.endDelimiter_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getEndDelimiterBytes() {
        Object obj = this.endDelimiter_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.endDelimiter_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getError() {
        Object obj = this.error_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.error_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getErrorBytes() {
        Object obj = this.error_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.error_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public FrameForwardServer getFrameForwardServer() {
        FrameForwardServer frameForwardServer = this.frameForwardServer_;
        return frameForwardServer == null ? FrameForwardServer.getDefaultInstance() : frameForwardServer;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public FrameForwardServerOrBuilder getFrameForwardServerOrBuilder() {
        return getFrameForwardServer();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public String getJoinSpectatorReason() {
        Object obj = this.joinSpectatorReason_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.joinSpectatorReason_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ByteString getJoinSpectatorReasonBytes() {
        Object obj = this.joinSpectatorReason_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.joinSpectatorReason_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public KickInfo getKickInfo() {
        KickInfo kickInfo = this.kickInfo_;
        return kickInfo == null ? KickInfo.getDefaultInstance() : kickInfo;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public KickInfoOrBuilder getKickInfoOrBuilder() {
        return getKickInfo();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public LogicErrorCode getLogicErrorCode() {
        LogicErrorCode logicErrorCodeValueOf = LogicErrorCode.valueOf(this.logicErrorCode_);
        return logicErrorCodeValueOf == null ? LogicErrorCode.UNRECOGNIZED : logicErrorCodeValueOf;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getLogicErrorCodeValue() {
        return this.logicErrorCode_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Notification getNotification() {
        Notification notification = this.notification_;
        return notification == null ? Notification.getDefaultInstance() : notification;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public NotificationOrBuilder getNotificationOrBuilder() {
        return getNotification();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Response> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Pong getPong() {
        Pong pong = this.pong_;
        return pong == null ? Pong.getDefaultInstance() : pong;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public PongOrBuilder getPongOrBuilder() {
        return getPong();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public long getRequestId() {
        return this.requestId_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public Response getResponse() {
        Response response = this.response_;
        return response == null ? getDefaultInstance() : response;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ResponseOrBuilder getResponseOrBuilder() {
        return getResponse();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public GameRoom getRoom() {
        GameRoom gameRoom = this.room_;
        return gameRoom == null ? GameRoom.getDefaultInstance() : gameRoom;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public RoomCounter getRoomCounter() {
        RoomCounter roomCounter = this.roomCounter_;
        return roomCounter == null ? RoomCounter.getDefaultInstance() : roomCounter;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public RoomCounterOrBuilder getRoomCounterOrBuilder() {
        return getRoomCounter();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public GameRoomOrBuilder getRoomOrBuilder() {
        return getRoom();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber() ? CodedOutputStream.computeEnumSize(1, this.statusCode_) + 0 : 0;
        long j10 = this.requestId_;
        if (j10 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(2, j10);
        }
        if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
            iComputeEnumSize += CodedOutputStream.computeEnumSize(3, this.type_);
        }
        if (this.room_ != null) {
            iComputeEnumSize += CodedOutputStream.computeMessageSize(4, getRoom());
        }
        if (this.response_ != null) {
            iComputeEnumSize += CodedOutputStream.computeMessageSize(5, getResponse());
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i11 = 0; i11 < this.broadcastUsers_.size(); i11++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.broadcastUsers_.getInt(i11));
        }
        int iComputeStringSize = iComputeEnumSize + iComputeInt32SizeNoTag;
        if (!getBroadcastUsersList().isEmpty()) {
            iComputeStringSize = iComputeStringSize + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
        }
        this.broadcastUsersMemoizedSerializedSize = iComputeInt32SizeNoTag;
        if (!getErrorBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(7, this.error_);
        }
        for (int i12 = 0; i12 < this.simpleRoom_.size(); i12++) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(8, this.simpleRoom_.get(i12));
        }
        if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_EROR_CODE.getNumber()) {
            iComputeStringSize += CodedOutputStream.computeEnumSize(9, this.logicErrorCode_);
        }
        if (!getJoinSpectatorReasonBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(10, this.joinSpectatorReason_);
        }
        if (this.pong_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(11, getPong());
        }
        if (this.roomCounter_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(12, getRoomCounter());
        }
        if (this.kickInfo_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(13, getKickInfo());
        }
        if (this.notification_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(14, getNotification());
        }
        if (this.frameForwardServer_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(15, getFrameForwardServer());
        }
        if (this.broadcastChannel_ != BroadcastChannel.ALL.getNumber()) {
            iComputeStringSize += CodedOutputStream.computeEnumSize(16, this.broadcastChannel_);
        }
        if (this.areaOnlinePeopleCount_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(17, getAreaOnlinePeopleCount());
        }
        if (this.userProfile_ != null) {
            iComputeStringSize += CodedOutputStream.computeMessageSize(18, getUserProfile());
        }
        if (!getBattleScoreBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(19, this.battleScore_);
        }
        if (!getEndDelimiterBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(999, this.endDelimiter_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public SimpleRoom getSimpleRoom(int i10) {
        return this.simpleRoom_.get(i10);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getSimpleRoomCount() {
        return this.simpleRoom_.size();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public List<SimpleRoom> getSimpleRoomList() {
        return this.simpleRoom_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public SimpleRoomOrBuilder getSimpleRoomOrBuilder(int i10) {
        return this.simpleRoom_.get(i10);
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public List<? extends SimpleRoomOrBuilder> getSimpleRoomOrBuilderList() {
        return this.simpleRoom_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public StatusCode getStatusCode() {
        StatusCode statusCodeValueOf = StatusCode.valueOf(this.statusCode_);
        return statusCodeValueOf == null ? StatusCode.UNRECOGNIZED : statusCodeValueOf;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getStatusCodeValue() {
        return this.statusCode_;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public ProtoType getType() {
        ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
        return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public UserProfile getUserProfile() {
        UserProfile userProfile = this.userProfile_;
        return userProfile == null ? UserProfile.getDefaultInstance() : userProfile;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public UserProfileOrBuilder getUserProfileOrBuilder() {
        return getUserProfile();
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasAreaOnlinePeopleCount() {
        return this.areaOnlinePeopleCount_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasFrameForwardServer() {
        return this.frameForwardServer_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasKickInfo() {
        return this.kickInfo_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasNotification() {
        return this.notification_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasPong() {
        return this.pong_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasResponse() {
        return this.response_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasRoom() {
        return this.room_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasRoomCounter() {
        return this.roomCounter_ != null;
    }

    @Override // com.papa91.battle.protocol.ResponseOrBuilder
    public boolean hasUserProfile() {
        return this.userProfile_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.statusCode_) * 37) + 2) * 53) + Internal.hashLong(getRequestId())) * 37) + 3) * 53) + this.type_;
        if (hasRoom()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getRoom().hashCode();
        }
        if (hasResponse()) {
            iHashCode = (((iHashCode * 37) + 5) * 53) + getResponse().hashCode();
        }
        if (getBroadcastUsersCount() > 0) {
            iHashCode = (((iHashCode * 37) + 6) * 53) + getBroadcastUsersList().hashCode();
        }
        int iHashCode2 = (((iHashCode * 37) + 7) * 53) + getError().hashCode();
        if (getSimpleRoomCount() > 0) {
            iHashCode2 = (((iHashCode2 * 37) + 8) * 53) + getSimpleRoomList().hashCode();
        }
        int iHashCode3 = (((((((iHashCode2 * 37) + 9) * 53) + this.logicErrorCode_) * 37) + 10) * 53) + getJoinSpectatorReason().hashCode();
        if (hasPong()) {
            iHashCode3 = (((iHashCode3 * 37) + 11) * 53) + getPong().hashCode();
        }
        if (hasRoomCounter()) {
            iHashCode3 = (((iHashCode3 * 37) + 12) * 53) + getRoomCounter().hashCode();
        }
        if (hasKickInfo()) {
            iHashCode3 = (((iHashCode3 * 37) + 13) * 53) + getKickInfo().hashCode();
        }
        if (hasNotification()) {
            iHashCode3 = (((iHashCode3 * 37) + 14) * 53) + getNotification().hashCode();
        }
        if (hasFrameForwardServer()) {
            iHashCode3 = (((iHashCode3 * 37) + 15) * 53) + getFrameForwardServer().hashCode();
        }
        int iHashCode4 = (((iHashCode3 * 37) + 16) * 53) + this.broadcastChannel_;
        if (hasAreaOnlinePeopleCount()) {
            iHashCode4 = (((iHashCode4 * 37) + 17) * 53) + getAreaOnlinePeopleCount().hashCode();
        }
        if (hasUserProfile()) {
            iHashCode4 = (((iHashCode4 * 37) + 18) * 53) + getUserProfile().hashCode();
        }
        int iHashCode5 = (((((((((iHashCode4 * 37) + 999) * 53) + getEndDelimiter().hashCode()) * 37) + 19) * 53) + getBattleScore().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
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
        return new Response();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.statusCode_ != StatusCode.UNDEFINED_CODE.getNumber()) {
            codedOutputStream.writeEnum(1, this.statusCode_);
        }
        long j10 = this.requestId_;
        if (j10 != 0) {
            codedOutputStream.writeInt64(2, j10);
        }
        if (this.type_ != ProtoType.UNDEFINED_RESPONSE.getNumber()) {
            codedOutputStream.writeEnum(3, this.type_);
        }
        if (this.room_ != null) {
            codedOutputStream.writeMessage(4, getRoom());
        }
        if (this.response_ != null) {
            codedOutputStream.writeMessage(5, getResponse());
        }
        if (getBroadcastUsersList().size() > 0) {
            codedOutputStream.writeUInt32NoTag(50);
            codedOutputStream.writeUInt32NoTag(this.broadcastUsersMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.broadcastUsers_.size(); i10++) {
            codedOutputStream.writeInt32NoTag(this.broadcastUsers_.getInt(i10));
        }
        if (!getErrorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.error_);
        }
        for (int i11 = 0; i11 < this.simpleRoom_.size(); i11++) {
            codedOutputStream.writeMessage(8, this.simpleRoom_.get(i11));
        }
        if (this.logicErrorCode_ != LogicErrorCode.UNDEFINED_EROR_CODE.getNumber()) {
            codedOutputStream.writeEnum(9, this.logicErrorCode_);
        }
        if (!getJoinSpectatorReasonBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.joinSpectatorReason_);
        }
        if (this.pong_ != null) {
            codedOutputStream.writeMessage(11, getPong());
        }
        if (this.roomCounter_ != null) {
            codedOutputStream.writeMessage(12, getRoomCounter());
        }
        if (this.kickInfo_ != null) {
            codedOutputStream.writeMessage(13, getKickInfo());
        }
        if (this.notification_ != null) {
            codedOutputStream.writeMessage(14, getNotification());
        }
        if (this.frameForwardServer_ != null) {
            codedOutputStream.writeMessage(15, getFrameForwardServer());
        }
        if (this.broadcastChannel_ != BroadcastChannel.ALL.getNumber()) {
            codedOutputStream.writeEnum(16, this.broadcastChannel_);
        }
        if (this.areaOnlinePeopleCount_ != null) {
            codedOutputStream.writeMessage(17, getAreaOnlinePeopleCount());
        }
        if (this.userProfile_ != null) {
            codedOutputStream.writeMessage(18, getUserProfile());
        }
        if (!getBattleScoreBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 19, this.battleScore_);
        }
        if (!getEndDelimiterBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 999, this.endDelimiter_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ResponseOrBuilder {
        private SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> areaOnlinePeopleCountBuilder_;
        private AreaOnlinePeopleCount areaOnlinePeopleCount_;
        private Object battleScore_;
        private int bitField0_;
        private int broadcastChannel_;
        private Internal.IntList broadcastUsers_;
        private Object endDelimiter_;
        private Object error_;
        private SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> frameForwardServerBuilder_;
        private FrameForwardServer frameForwardServer_;
        private Object joinSpectatorReason_;
        private SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> kickInfoBuilder_;
        private KickInfo kickInfo_;
        private int logicErrorCode_;
        private SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> notificationBuilder_;
        private Notification notification_;
        private SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> pongBuilder_;
        private Pong pong_;
        private long requestId_;
        private SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> responseBuilder_;
        private Response response_;
        private SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> roomBuilder_;
        private SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> roomCounterBuilder_;
        private RoomCounter roomCounter_;
        private GameRoom room_;
        private RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> simpleRoomBuilder_;
        private List<SimpleRoom> simpleRoom_;
        private int statusCode_;
        private int type_;
        private SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> userProfileBuilder_;
        private UserProfile userProfile_;

        private void ensureBroadcastUsersIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.broadcastUsers_ = GeneratedMessageV3.mutableCopy(this.broadcastUsers_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureSimpleRoomIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.simpleRoom_ = new ArrayList(this.simpleRoom_);
                this.bitField0_ |= 2;
            }
        }

        private SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> getAreaOnlinePeopleCountFieldBuilder() {
            if (this.areaOnlinePeopleCountBuilder_ == null) {
                this.areaOnlinePeopleCountBuilder_ = new SingleFieldBuilderV3<>(getAreaOnlinePeopleCount(), getParentForChildren(), isClean());
                this.areaOnlinePeopleCount_ = null;
            }
            return this.areaOnlinePeopleCountBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_Response_descriptor;
        }

        private SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> getFrameForwardServerFieldBuilder() {
            if (this.frameForwardServerBuilder_ == null) {
                this.frameForwardServerBuilder_ = new SingleFieldBuilderV3<>(getFrameForwardServer(), getParentForChildren(), isClean());
                this.frameForwardServer_ = null;
            }
            return this.frameForwardServerBuilder_;
        }

        private SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> getKickInfoFieldBuilder() {
            if (this.kickInfoBuilder_ == null) {
                this.kickInfoBuilder_ = new SingleFieldBuilderV3<>(getKickInfo(), getParentForChildren(), isClean());
                this.kickInfo_ = null;
            }
            return this.kickInfoBuilder_;
        }

        private SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> getNotificationFieldBuilder() {
            if (this.notificationBuilder_ == null) {
                this.notificationBuilder_ = new SingleFieldBuilderV3<>(getNotification(), getParentForChildren(), isClean());
                this.notification_ = null;
            }
            return this.notificationBuilder_;
        }

        private SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> getPongFieldBuilder() {
            if (this.pongBuilder_ == null) {
                this.pongBuilder_ = new SingleFieldBuilderV3<>(getPong(), getParentForChildren(), isClean());
                this.pong_ = null;
            }
            return this.pongBuilder_;
        }

        private SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> getResponseFieldBuilder() {
            if (this.responseBuilder_ == null) {
                this.responseBuilder_ = new SingleFieldBuilderV3<>(getResponse(), getParentForChildren(), isClean());
                this.response_ = null;
            }
            return this.responseBuilder_;
        }

        private SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> getRoomCounterFieldBuilder() {
            if (this.roomCounterBuilder_ == null) {
                this.roomCounterBuilder_ = new SingleFieldBuilderV3<>(getRoomCounter(), getParentForChildren(), isClean());
                this.roomCounter_ = null;
            }
            return this.roomCounterBuilder_;
        }

        private SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> getRoomFieldBuilder() {
            if (this.roomBuilder_ == null) {
                this.roomBuilder_ = new SingleFieldBuilderV3<>(getRoom(), getParentForChildren(), isClean());
                this.room_ = null;
            }
            return this.roomBuilder_;
        }

        private RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> getSimpleRoomFieldBuilder() {
            if (this.simpleRoomBuilder_ == null) {
                this.simpleRoomBuilder_ = new RepeatedFieldBuilderV3<>(this.simpleRoom_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.simpleRoom_ = null;
            }
            return this.simpleRoomBuilder_;
        }

        private SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> getUserProfileFieldBuilder() {
            if (this.userProfileBuilder_ == null) {
                this.userProfileBuilder_ = new SingleFieldBuilderV3<>(getUserProfile(), getParentForChildren(), isClean());
                this.userProfile_ = null;
            }
            return this.userProfileBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getSimpleRoomFieldBuilder();
            }
        }

        public Builder addAllBroadcastUsers(Iterable<? extends Integer> iterable) {
            ensureBroadcastUsersIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.broadcastUsers_);
            onChanged();
            return this;
        }

        public Builder addAllSimpleRoom(Iterable<? extends SimpleRoom> iterable) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSimpleRoomIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.simpleRoom_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public Builder addBroadcastUsers(int i10) {
            ensureBroadcastUsersIsMutable();
            this.broadcastUsers_.addInt(i10);
            onChanged();
            return this;
        }

        public Builder addSimpleRoom(SimpleRoom simpleRoom) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                simpleRoom.getClass();
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.add(simpleRoom);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(simpleRoom);
            }
            return this;
        }

        public SimpleRoom.Builder addSimpleRoomBuilder() {
            return (SimpleRoom.Builder) getSimpleRoomFieldBuilder().addBuilder(SimpleRoom.getDefaultInstance());
        }

        public Builder clearAreaOnlinePeopleCount() {
            if (this.areaOnlinePeopleCountBuilder_ == null) {
                this.areaOnlinePeopleCount_ = null;
                onChanged();
            } else {
                this.areaOnlinePeopleCount_ = null;
                this.areaOnlinePeopleCountBuilder_ = null;
            }
            return this;
        }

        public Builder clearBattleScore() {
            this.battleScore_ = Response.getDefaultInstance().getBattleScore();
            onChanged();
            return this;
        }

        public Builder clearBroadcastChannel() {
            this.broadcastChannel_ = 0;
            onChanged();
            return this;
        }

        public Builder clearBroadcastUsers() {
            this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder clearEndDelimiter() {
            this.endDelimiter_ = Response.getDefaultInstance().getEndDelimiter();
            onChanged();
            return this;
        }

        public Builder clearError() {
            this.error_ = Response.getDefaultInstance().getError();
            onChanged();
            return this;
        }

        public Builder clearFrameForwardServer() {
            if (this.frameForwardServerBuilder_ == null) {
                this.frameForwardServer_ = null;
                onChanged();
            } else {
                this.frameForwardServer_ = null;
                this.frameForwardServerBuilder_ = null;
            }
            return this;
        }

        public Builder clearJoinSpectatorReason() {
            this.joinSpectatorReason_ = Response.getDefaultInstance().getJoinSpectatorReason();
            onChanged();
            return this;
        }

        public Builder clearKickInfo() {
            if (this.kickInfoBuilder_ == null) {
                this.kickInfo_ = null;
                onChanged();
            } else {
                this.kickInfo_ = null;
                this.kickInfoBuilder_ = null;
            }
            return this;
        }

        public Builder clearLogicErrorCode() {
            this.logicErrorCode_ = 0;
            onChanged();
            return this;
        }

        public Builder clearNotification() {
            if (this.notificationBuilder_ == null) {
                this.notification_ = null;
                onChanged();
            } else {
                this.notification_ = null;
                this.notificationBuilder_ = null;
            }
            return this;
        }

        public Builder clearPong() {
            if (this.pongBuilder_ == null) {
                this.pong_ = null;
                onChanged();
            } else {
                this.pong_ = null;
                this.pongBuilder_ = null;
            }
            return this;
        }

        public Builder clearRequestId() {
            this.requestId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearResponse() {
            if (this.responseBuilder_ == null) {
                this.response_ = null;
                onChanged();
            } else {
                this.response_ = null;
                this.responseBuilder_ = null;
            }
            return this;
        }

        public Builder clearRoom() {
            if (this.roomBuilder_ == null) {
                this.room_ = null;
                onChanged();
            } else {
                this.room_ = null;
                this.roomBuilder_ = null;
            }
            return this;
        }

        public Builder clearRoomCounter() {
            if (this.roomCounterBuilder_ == null) {
                this.roomCounter_ = null;
                onChanged();
            } else {
                this.roomCounter_ = null;
                this.roomCounterBuilder_ = null;
            }
            return this;
        }

        public Builder clearSimpleRoom() {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.simpleRoom_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearStatusCode() {
            this.statusCode_ = 0;
            onChanged();
            return this;
        }

        public Builder clearType() {
            this.type_ = 0;
            onChanged();
            return this;
        }

        public Builder clearUserProfile() {
            if (this.userProfileBuilder_ == null) {
                this.userProfile_ = null;
                onChanged();
            } else {
                this.userProfile_ = null;
                this.userProfileBuilder_ = null;
            }
            return this;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public AreaOnlinePeopleCount getAreaOnlinePeopleCount() {
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV3 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AreaOnlinePeopleCount) singleFieldBuilderV3.getMessage();
            }
            AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
            return areaOnlinePeopleCount == null ? AreaOnlinePeopleCount.getDefaultInstance() : areaOnlinePeopleCount;
        }

        public AreaOnlinePeopleCount.Builder getAreaOnlinePeopleCountBuilder() {
            onChanged();
            return (AreaOnlinePeopleCount.Builder) getAreaOnlinePeopleCountFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public AreaOnlinePeopleCountOrBuilder getAreaOnlinePeopleCountOrBuilder() {
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV3 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AreaOnlinePeopleCountOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
            return areaOnlinePeopleCount == null ? AreaOnlinePeopleCount.getDefaultInstance() : areaOnlinePeopleCount;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getBattleScore() {
            Object obj = this.battleScore_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleScore_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getBattleScoreBytes() {
            Object obj = this.battleScore_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleScore_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public BroadcastChannel getBroadcastChannel() {
            BroadcastChannel broadcastChannelValueOf = BroadcastChannel.valueOf(this.broadcastChannel_);
            return broadcastChannelValueOf == null ? BroadcastChannel.UNRECOGNIZED : broadcastChannelValueOf;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastChannelValue() {
            return this.broadcastChannel_;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastUsers(int i10) {
            return this.broadcastUsers_.getInt(i10);
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getBroadcastUsersCount() {
            return this.broadcastUsers_.size();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public List<Integer> getBroadcastUsersList() {
            return (this.bitField0_ & 1) != 0 ? Collections.unmodifiableList(this.broadcastUsers_) : this.broadcastUsers_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_Response_descriptor;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getEndDelimiter() {
            Object obj = this.endDelimiter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.endDelimiter_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getEndDelimiterBytes() {
            Object obj = this.endDelimiter_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.endDelimiter_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.error_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getErrorBytes() {
            Object obj = this.error_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.error_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public FrameForwardServer getFrameForwardServer() {
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV3 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FrameForwardServer) singleFieldBuilderV3.getMessage();
            }
            FrameForwardServer frameForwardServer = this.frameForwardServer_;
            return frameForwardServer == null ? FrameForwardServer.getDefaultInstance() : frameForwardServer;
        }

        public FrameForwardServer.Builder getFrameForwardServerBuilder() {
            onChanged();
            return (FrameForwardServer.Builder) getFrameForwardServerFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public FrameForwardServerOrBuilder getFrameForwardServerOrBuilder() {
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV3 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (FrameForwardServerOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            FrameForwardServer frameForwardServer = this.frameForwardServer_;
            return frameForwardServer == null ? FrameForwardServer.getDefaultInstance() : frameForwardServer;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public String getJoinSpectatorReason() {
            Object obj = this.joinSpectatorReason_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.joinSpectatorReason_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ByteString getJoinSpectatorReasonBytes() {
            Object obj = this.joinSpectatorReason_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.joinSpectatorReason_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public KickInfo getKickInfo() {
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV3 = this.kickInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (KickInfo) singleFieldBuilderV3.getMessage();
            }
            KickInfo kickInfo = this.kickInfo_;
            return kickInfo == null ? KickInfo.getDefaultInstance() : kickInfo;
        }

        public KickInfo.Builder getKickInfoBuilder() {
            onChanged();
            return (KickInfo.Builder) getKickInfoFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public KickInfoOrBuilder getKickInfoOrBuilder() {
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV3 = this.kickInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (KickInfoOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            KickInfo kickInfo = this.kickInfo_;
            return kickInfo == null ? KickInfo.getDefaultInstance() : kickInfo;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public LogicErrorCode getLogicErrorCode() {
            LogicErrorCode logicErrorCodeValueOf = LogicErrorCode.valueOf(this.logicErrorCode_);
            return logicErrorCodeValueOf == null ? LogicErrorCode.UNRECOGNIZED : logicErrorCodeValueOf;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getLogicErrorCodeValue() {
            return this.logicErrorCode_;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Notification getNotification() {
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Notification) singleFieldBuilderV3.getMessage();
            }
            Notification notification = this.notification_;
            return notification == null ? Notification.getDefaultInstance() : notification;
        }

        public Notification.Builder getNotificationBuilder() {
            onChanged();
            return (Notification.Builder) getNotificationFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public NotificationOrBuilder getNotificationOrBuilder() {
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (NotificationOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Notification notification = this.notification_;
            return notification == null ? Notification.getDefaultInstance() : notification;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Pong getPong() {
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV3 = this.pongBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Pong) singleFieldBuilderV3.getMessage();
            }
            Pong pong = this.pong_;
            return pong == null ? Pong.getDefaultInstance() : pong;
        }

        public Pong.Builder getPongBuilder() {
            onChanged();
            return (Pong.Builder) getPongFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public PongOrBuilder getPongOrBuilder() {
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV3 = this.pongBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (PongOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Pong pong = this.pong_;
            return pong == null ? Pong.getDefaultInstance() : pong;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public long getRequestId() {
            return this.requestId_;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public Response getResponse() {
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (Response) singleFieldBuilderV3.getMessage();
            }
            Response response = this.response_;
            return response == null ? Response.getDefaultInstance() : response;
        }

        public Builder getResponseBuilder() {
            onChanged();
            return (Builder) getResponseFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ResponseOrBuilder getResponseOrBuilder() {
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (ResponseOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            Response response = this.response_;
            return response == null ? Response.getDefaultInstance() : response;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public GameRoom getRoom() {
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (GameRoom) singleFieldBuilderV3.getMessage();
            }
            GameRoom gameRoom = this.room_;
            return gameRoom == null ? GameRoom.getDefaultInstance() : gameRoom;
        }

        public GameRoom.Builder getRoomBuilder() {
            onChanged();
            return (GameRoom.Builder) getRoomFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public RoomCounter getRoomCounter() {
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV3 = this.roomCounterBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomCounter) singleFieldBuilderV3.getMessage();
            }
            RoomCounter roomCounter = this.roomCounter_;
            return roomCounter == null ? RoomCounter.getDefaultInstance() : roomCounter;
        }

        public RoomCounter.Builder getRoomCounterBuilder() {
            onChanged();
            return (RoomCounter.Builder) getRoomCounterFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public RoomCounterOrBuilder getRoomCounterOrBuilder() {
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV3 = this.roomCounterBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (RoomCounterOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            RoomCounter roomCounter = this.roomCounter_;
            return roomCounter == null ? RoomCounter.getDefaultInstance() : roomCounter;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public GameRoomOrBuilder getRoomOrBuilder() {
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (GameRoomOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            GameRoom gameRoom = this.room_;
            return gameRoom == null ? GameRoom.getDefaultInstance() : gameRoom;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public SimpleRoom getSimpleRoom(int i10) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            return repeatedFieldBuilderV3 == null ? this.simpleRoom_.get(i10) : (SimpleRoom) repeatedFieldBuilderV3.getMessage(i10);
        }

        public SimpleRoom.Builder getSimpleRoomBuilder(int i10) {
            return (SimpleRoom.Builder) getSimpleRoomFieldBuilder().getBuilder(i10);
        }

        public List<SimpleRoom.Builder> getSimpleRoomBuilderList() {
            return getSimpleRoomFieldBuilder().getBuilderList();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getSimpleRoomCount() {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            return repeatedFieldBuilderV3 == null ? this.simpleRoom_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public List<SimpleRoom> getSimpleRoomList() {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.simpleRoom_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public SimpleRoomOrBuilder getSimpleRoomOrBuilder(int i10) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            return repeatedFieldBuilderV3 == null ? this.simpleRoom_.get(i10) : (SimpleRoomOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i10);
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public List<? extends SimpleRoomOrBuilder> getSimpleRoomOrBuilderList() {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.simpleRoom_);
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public StatusCode getStatusCode() {
            StatusCode statusCodeValueOf = StatusCode.valueOf(this.statusCode_);
            return statusCodeValueOf == null ? StatusCode.UNRECOGNIZED : statusCodeValueOf;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getStatusCodeValue() {
            return this.statusCode_;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public ProtoType getType() {
            ProtoType protoTypeValueOf = ProtoType.valueOf(this.type_);
            return protoTypeValueOf == null ? ProtoType.UNRECOGNIZED : protoTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public UserProfile getUserProfile() {
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV3 = this.userProfileBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (UserProfile) singleFieldBuilderV3.getMessage();
            }
            UserProfile userProfile = this.userProfile_;
            return userProfile == null ? UserProfile.getDefaultInstance() : userProfile;
        }

        public UserProfile.Builder getUserProfileBuilder() {
            onChanged();
            return (UserProfile.Builder) getUserProfileFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public UserProfileOrBuilder getUserProfileOrBuilder() {
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV3 = this.userProfileBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (UserProfileOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            UserProfile userProfile = this.userProfile_;
            return userProfile == null ? UserProfile.getDefaultInstance() : userProfile;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasAreaOnlinePeopleCount() {
            return (this.areaOnlinePeopleCountBuilder_ == null && this.areaOnlinePeopleCount_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasFrameForwardServer() {
            return (this.frameForwardServerBuilder_ == null && this.frameForwardServer_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasKickInfo() {
            return (this.kickInfoBuilder_ == null && this.kickInfo_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasNotification() {
            return (this.notificationBuilder_ == null && this.notification_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasPong() {
            return (this.pongBuilder_ == null && this.pong_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasResponse() {
            return (this.responseBuilder_ == null && this.response_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasRoom() {
            return (this.roomBuilder_ == null && this.room_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasRoomCounter() {
            return (this.roomCounterBuilder_ == null && this.roomCounter_ == null) ? false : true;
        }

        @Override // com.papa91.battle.protocol.ResponseOrBuilder
        public boolean hasUserProfile() {
            return (this.userProfileBuilder_ == null && this.userProfile_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV3 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV3 == null) {
                AreaOnlinePeopleCount areaOnlinePeopleCount2 = this.areaOnlinePeopleCount_;
                if (areaOnlinePeopleCount2 != null) {
                    this.areaOnlinePeopleCount_ = AreaOnlinePeopleCount.newBuilder(areaOnlinePeopleCount2).mergeFrom(areaOnlinePeopleCount).buildPartial();
                } else {
                    this.areaOnlinePeopleCount_ = areaOnlinePeopleCount;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(areaOnlinePeopleCount);
            }
            return this;
        }

        public Builder mergeFrameForwardServer(FrameForwardServer frameForwardServer) {
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV3 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV3 == null) {
                FrameForwardServer frameForwardServer2 = this.frameForwardServer_;
                if (frameForwardServer2 != null) {
                    this.frameForwardServer_ = FrameForwardServer.newBuilder(frameForwardServer2).mergeFrom(frameForwardServer).buildPartial();
                } else {
                    this.frameForwardServer_ = frameForwardServer;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(frameForwardServer);
            }
            return this;
        }

        public Builder mergeKickInfo(KickInfo kickInfo) {
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV3 = this.kickInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                KickInfo kickInfo2 = this.kickInfo_;
                if (kickInfo2 != null) {
                    this.kickInfo_ = KickInfo.newBuilder(kickInfo2).mergeFrom(kickInfo).buildPartial();
                } else {
                    this.kickInfo_ = kickInfo;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(kickInfo);
            }
            return this;
        }

        public Builder mergeNotification(Notification notification) {
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                Notification notification2 = this.notification_;
                if (notification2 != null) {
                    this.notification_ = Notification.newBuilder(notification2).mergeFrom(notification).buildPartial();
                } else {
                    this.notification_ = notification;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(notification);
            }
            return this;
        }

        public Builder mergePong(Pong pong) {
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV3 = this.pongBuilder_;
            if (singleFieldBuilderV3 == null) {
                Pong pong2 = this.pong_;
                if (pong2 != null) {
                    this.pong_ = Pong.newBuilder(pong2).mergeFrom(pong).buildPartial();
                } else {
                    this.pong_ = pong;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(pong);
            }
            return this;
        }

        public Builder mergeResponse(Response response) {
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                Response response2 = this.response_;
                if (response2 != null) {
                    this.response_ = Response.newBuilder(response2).mergeFrom(response).buildPartial();
                } else {
                    this.response_ = response;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(response);
            }
            return this;
        }

        public Builder mergeRoom(GameRoom gameRoom) {
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 == null) {
                GameRoom gameRoom2 = this.room_;
                if (gameRoom2 != null) {
                    this.room_ = GameRoom.newBuilder(gameRoom2).mergeFrom(gameRoom).buildPartial();
                } else {
                    this.room_ = gameRoom;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(gameRoom);
            }
            return this;
        }

        public Builder mergeRoomCounter(RoomCounter roomCounter) {
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV3 = this.roomCounterBuilder_;
            if (singleFieldBuilderV3 == null) {
                RoomCounter roomCounter2 = this.roomCounter_;
                if (roomCounter2 != null) {
                    this.roomCounter_ = RoomCounter.newBuilder(roomCounter2).mergeFrom(roomCounter).buildPartial();
                } else {
                    this.roomCounter_ = roomCounter;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(roomCounter);
            }
            return this;
        }

        public Builder mergeUserProfile(UserProfile userProfile) {
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV3 = this.userProfileBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserProfile userProfile2 = this.userProfile_;
                if (userProfile2 != null) {
                    this.userProfile_ = UserProfile.newBuilder(userProfile2).mergeFrom(userProfile).buildPartial();
                } else {
                    this.userProfile_ = userProfile;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(userProfile);
            }
            return this;
        }

        public Builder removeSimpleRoom(int i10) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.remove(i10);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i10);
            }
            return this;
        }

        public Builder setAreaOnlinePeopleCount(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV3 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV3 == null) {
                areaOnlinePeopleCount.getClass();
                this.areaOnlinePeopleCount_ = areaOnlinePeopleCount;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(areaOnlinePeopleCount);
            }
            return this;
        }

        public Builder setBattleScore(String str) {
            str.getClass();
            this.battleScore_ = str;
            onChanged();
            return this;
        }

        public Builder setBattleScoreBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.battleScore_ = byteString;
            onChanged();
            return this;
        }

        public Builder setBroadcastChannel(BroadcastChannel broadcastChannel) {
            broadcastChannel.getClass();
            this.broadcastChannel_ = broadcastChannel.getNumber();
            onChanged();
            return this;
        }

        public Builder setBroadcastChannelValue(int i10) {
            this.broadcastChannel_ = i10;
            onChanged();
            return this;
        }

        public Builder setBroadcastUsers(int i10, int i11) {
            ensureBroadcastUsersIsMutable();
            this.broadcastUsers_.setInt(i10, i11);
            onChanged();
            return this;
        }

        public Builder setEndDelimiter(String str) {
            str.getClass();
            this.endDelimiter_ = str;
            onChanged();
            return this;
        }

        public Builder setEndDelimiterBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.endDelimiter_ = byteString;
            onChanged();
            return this;
        }

        public Builder setError(String str) {
            str.getClass();
            this.error_ = str;
            onChanged();
            return this;
        }

        public Builder setErrorBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.error_ = byteString;
            onChanged();
            return this;
        }

        public Builder setFrameForwardServer(FrameForwardServer frameForwardServer) {
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV3 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV3 == null) {
                frameForwardServer.getClass();
                this.frameForwardServer_ = frameForwardServer;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(frameForwardServer);
            }
            return this;
        }

        public Builder setJoinSpectatorReason(String str) {
            str.getClass();
            this.joinSpectatorReason_ = str;
            onChanged();
            return this;
        }

        public Builder setJoinSpectatorReasonBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.joinSpectatorReason_ = byteString;
            onChanged();
            return this;
        }

        public Builder setKickInfo(KickInfo kickInfo) {
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV3 = this.kickInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                kickInfo.getClass();
                this.kickInfo_ = kickInfo;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(kickInfo);
            }
            return this;
        }

        public Builder setLogicErrorCode(LogicErrorCode logicErrorCode) {
            logicErrorCode.getClass();
            this.logicErrorCode_ = logicErrorCode.getNumber();
            onChanged();
            return this;
        }

        public Builder setLogicErrorCodeValue(int i10) {
            this.logicErrorCode_ = i10;
            onChanged();
            return this;
        }

        public Builder setNotification(Notification notification) {
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                notification.getClass();
                this.notification_ = notification;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(notification);
            }
            return this;
        }

        public Builder setPong(Pong pong) {
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV3 = this.pongBuilder_;
            if (singleFieldBuilderV3 == null) {
                pong.getClass();
                this.pong_ = pong;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(pong);
            }
            return this;
        }

        public Builder setRequestId(long j10) {
            this.requestId_ = j10;
            onChanged();
            return this;
        }

        public Builder setResponse(Response response) {
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                response.getClass();
                this.response_ = response;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(response);
            }
            return this;
        }

        public Builder setRoom(GameRoom gameRoom) {
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 == null) {
                gameRoom.getClass();
                this.room_ = gameRoom;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(gameRoom);
            }
            return this;
        }

        public Builder setRoomCounter(RoomCounter roomCounter) {
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV3 = this.roomCounterBuilder_;
            if (singleFieldBuilderV3 == null) {
                roomCounter.getClass();
                this.roomCounter_ = roomCounter;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(roomCounter);
            }
            return this;
        }

        public Builder setSimpleRoom(int i10, SimpleRoom simpleRoom) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                simpleRoom.getClass();
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.set(i10, simpleRoom);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i10, simpleRoom);
            }
            return this;
        }

        public Builder setStatusCode(StatusCode statusCode) {
            statusCode.getClass();
            this.statusCode_ = statusCode.getNumber();
            onChanged();
            return this;
        }

        public Builder setStatusCodeValue(int i10) {
            this.statusCode_ = i10;
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

        public Builder setUserProfile(UserProfile userProfile) {
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV3 = this.userProfileBuilder_;
            if (singleFieldBuilderV3 == null) {
                userProfile.getClass();
                this.userProfile_ = userProfile;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(userProfile);
            }
            return this;
        }

        private Builder() {
            this.statusCode_ = 0;
            this.type_ = 0;
            this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
            this.error_ = "";
            this.simpleRoom_ = Collections.emptyList();
            this.logicErrorCode_ = 0;
            this.joinSpectatorReason_ = "";
            this.broadcastChannel_ = 0;
            this.endDelimiter_ = "";
            this.battleScore_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Response build() {
            Response responseBuildPartial = buildPartial();
            if (responseBuildPartial.isInitialized()) {
                return responseBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) responseBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Response buildPartial() {
            Response response = new Response(this);
            response.statusCode_ = this.statusCode_;
            response.requestId_ = this.requestId_;
            response.type_ = this.type_;
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 == null) {
                response.room_ = this.room_;
            } else {
                response.room_ = (GameRoom) singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV4 = this.responseBuilder_;
            if (singleFieldBuilderV4 == null) {
                response.response_ = this.response_;
            } else {
                response.response_ = (Response) singleFieldBuilderV4.build();
            }
            if ((this.bitField0_ & 1) != 0) {
                this.broadcastUsers_.makeImmutable();
                this.bitField0_ &= -2;
            }
            response.broadcastUsers_ = this.broadcastUsers_;
            response.error_ = this.error_;
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                response.simpleRoom_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.simpleRoom_ = Collections.unmodifiableList(this.simpleRoom_);
                    this.bitField0_ &= -3;
                }
                response.simpleRoom_ = this.simpleRoom_;
            }
            response.logicErrorCode_ = this.logicErrorCode_;
            response.joinSpectatorReason_ = this.joinSpectatorReason_;
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV5 = this.pongBuilder_;
            if (singleFieldBuilderV5 == null) {
                response.pong_ = this.pong_;
            } else {
                response.pong_ = (Pong) singleFieldBuilderV5.build();
            }
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV6 = this.roomCounterBuilder_;
            if (singleFieldBuilderV6 == null) {
                response.roomCounter_ = this.roomCounter_;
            } else {
                response.roomCounter_ = (RoomCounter) singleFieldBuilderV6.build();
            }
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV7 = this.kickInfoBuilder_;
            if (singleFieldBuilderV7 == null) {
                response.kickInfo_ = this.kickInfo_;
            } else {
                response.kickInfo_ = (KickInfo) singleFieldBuilderV7.build();
            }
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV8 = this.notificationBuilder_;
            if (singleFieldBuilderV8 == null) {
                response.notification_ = this.notification_;
            } else {
                response.notification_ = (Notification) singleFieldBuilderV8.build();
            }
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV9 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV9 == null) {
                response.frameForwardServer_ = this.frameForwardServer_;
            } else {
                response.frameForwardServer_ = (FrameForwardServer) singleFieldBuilderV9.build();
            }
            response.broadcastChannel_ = this.broadcastChannel_;
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV10 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV10 == null) {
                response.areaOnlinePeopleCount_ = this.areaOnlinePeopleCount_;
            } else {
                response.areaOnlinePeopleCount_ = (AreaOnlinePeopleCount) singleFieldBuilderV10.build();
            }
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV11 = this.userProfileBuilder_;
            if (singleFieldBuilderV11 == null) {
                response.userProfile_ = this.userProfile_;
            } else {
                response.userProfile_ = (UserProfile) singleFieldBuilderV11.build();
            }
            response.endDelimiter_ = this.endDelimiter_;
            response.battleScore_ = this.battleScore_;
            onBuilt();
            return response;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Response getDefaultInstanceForType() {
            return Response.getDefaultInstance();
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

        public SimpleRoom.Builder addSimpleRoomBuilder(int i10) {
            return (SimpleRoom.Builder) getSimpleRoomFieldBuilder().addBuilder(i10, SimpleRoom.getDefaultInstance());
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
            this.statusCode_ = 0;
            this.requestId_ = 0L;
            this.type_ = 0;
            if (this.roomBuilder_ == null) {
                this.room_ = null;
            } else {
                this.room_ = null;
                this.roomBuilder_ = null;
            }
            if (this.responseBuilder_ == null) {
                this.response_ = null;
            } else {
                this.response_ = null;
                this.responseBuilder_ = null;
            }
            this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
            this.bitField0_ &= -2;
            this.error_ = "";
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.simpleRoom_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.logicErrorCode_ = 0;
            this.joinSpectatorReason_ = "";
            if (this.pongBuilder_ == null) {
                this.pong_ = null;
            } else {
                this.pong_ = null;
                this.pongBuilder_ = null;
            }
            if (this.roomCounterBuilder_ == null) {
                this.roomCounter_ = null;
            } else {
                this.roomCounter_ = null;
                this.roomCounterBuilder_ = null;
            }
            if (this.kickInfoBuilder_ == null) {
                this.kickInfo_ = null;
            } else {
                this.kickInfo_ = null;
                this.kickInfoBuilder_ = null;
            }
            if (this.notificationBuilder_ == null) {
                this.notification_ = null;
            } else {
                this.notification_ = null;
                this.notificationBuilder_ = null;
            }
            if (this.frameForwardServerBuilder_ == null) {
                this.frameForwardServer_ = null;
            } else {
                this.frameForwardServer_ = null;
                this.frameForwardServerBuilder_ = null;
            }
            this.broadcastChannel_ = 0;
            if (this.areaOnlinePeopleCountBuilder_ == null) {
                this.areaOnlinePeopleCount_ = null;
            } else {
                this.areaOnlinePeopleCount_ = null;
                this.areaOnlinePeopleCountBuilder_ = null;
            }
            if (this.userProfileBuilder_ == null) {
                this.userProfile_ = null;
            } else {
                this.userProfile_ = null;
                this.userProfileBuilder_ = null;
            }
            this.endDelimiter_ = "";
            this.battleScore_ = "";
            return this;
        }

        public Builder setAreaOnlinePeopleCount(AreaOnlinePeopleCount.Builder builder) {
            SingleFieldBuilderV3<AreaOnlinePeopleCount, AreaOnlinePeopleCount.Builder, AreaOnlinePeopleCountOrBuilder> singleFieldBuilderV3 = this.areaOnlinePeopleCountBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.areaOnlinePeopleCount_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setFrameForwardServer(FrameForwardServer.Builder builder) {
            SingleFieldBuilderV3<FrameForwardServer, FrameForwardServer.Builder, FrameForwardServerOrBuilder> singleFieldBuilderV3 = this.frameForwardServerBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.frameForwardServer_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setKickInfo(KickInfo.Builder builder) {
            SingleFieldBuilderV3<KickInfo, KickInfo.Builder, KickInfoOrBuilder> singleFieldBuilderV3 = this.kickInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.kickInfo_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setNotification(Notification.Builder builder) {
            SingleFieldBuilderV3<Notification, Notification.Builder, NotificationOrBuilder> singleFieldBuilderV3 = this.notificationBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.notification_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setPong(Pong.Builder builder) {
            SingleFieldBuilderV3<Pong, Pong.Builder, PongOrBuilder> singleFieldBuilderV3 = this.pongBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.pong_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setResponse(Builder builder) {
            SingleFieldBuilderV3<Response, Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.response_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setRoom(GameRoom.Builder builder) {
            SingleFieldBuilderV3<GameRoom, GameRoom.Builder, GameRoomOrBuilder> singleFieldBuilderV3 = this.roomBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.room_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setRoomCounter(RoomCounter.Builder builder) {
            SingleFieldBuilderV3<RoomCounter, RoomCounter.Builder, RoomCounterOrBuilder> singleFieldBuilderV3 = this.roomCounterBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.roomCounter_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder setUserProfile(UserProfile.Builder builder) {
            SingleFieldBuilderV3<UserProfile, UserProfile.Builder, UserProfileOrBuilder> singleFieldBuilderV3 = this.userProfileBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.userProfile_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder addSimpleRoom(int i10, SimpleRoom simpleRoom) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                simpleRoom.getClass();
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.add(i10, simpleRoom);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i10, simpleRoom);
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
            if (message instanceof Response) {
                return mergeFrom((Response) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setSimpleRoom(int i10, SimpleRoom.Builder builder) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.set(i10, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(Response response) {
            if (response == Response.getDefaultInstance()) {
                return this;
            }
            if (response.statusCode_ != 0) {
                setStatusCodeValue(response.getStatusCodeValue());
            }
            if (response.getRequestId() != 0) {
                setRequestId(response.getRequestId());
            }
            if (response.type_ != 0) {
                setTypeValue(response.getTypeValue());
            }
            if (response.hasRoom()) {
                mergeRoom(response.getRoom());
            }
            if (response.hasResponse()) {
                mergeResponse(response.getResponse());
            }
            if (!response.broadcastUsers_.isEmpty()) {
                if (this.broadcastUsers_.isEmpty()) {
                    this.broadcastUsers_ = response.broadcastUsers_;
                    this.bitField0_ &= -2;
                } else {
                    ensureBroadcastUsersIsMutable();
                    this.broadcastUsers_.addAll(response.broadcastUsers_);
                }
                onChanged();
            }
            if (!response.getError().isEmpty()) {
                this.error_ = response.error_;
                onChanged();
            }
            if (this.simpleRoomBuilder_ == null) {
                if (!response.simpleRoom_.isEmpty()) {
                    if (this.simpleRoom_.isEmpty()) {
                        this.simpleRoom_ = response.simpleRoom_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureSimpleRoomIsMutable();
                        this.simpleRoom_.addAll(response.simpleRoom_);
                    }
                    onChanged();
                }
            } else if (!response.simpleRoom_.isEmpty()) {
                if (!this.simpleRoomBuilder_.isEmpty()) {
                    this.simpleRoomBuilder_.addAllMessages(response.simpleRoom_);
                } else {
                    this.simpleRoomBuilder_.dispose();
                    this.simpleRoomBuilder_ = null;
                    this.simpleRoom_ = response.simpleRoom_;
                    this.bitField0_ &= -3;
                    this.simpleRoomBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getSimpleRoomFieldBuilder() : null;
                }
            }
            if (response.logicErrorCode_ != 0) {
                setLogicErrorCodeValue(response.getLogicErrorCodeValue());
            }
            if (!response.getJoinSpectatorReason().isEmpty()) {
                this.joinSpectatorReason_ = response.joinSpectatorReason_;
                onChanged();
            }
            if (response.hasPong()) {
                mergePong(response.getPong());
            }
            if (response.hasRoomCounter()) {
                mergeRoomCounter(response.getRoomCounter());
            }
            if (response.hasKickInfo()) {
                mergeKickInfo(response.getKickInfo());
            }
            if (response.hasNotification()) {
                mergeNotification(response.getNotification());
            }
            if (response.hasFrameForwardServer()) {
                mergeFrameForwardServer(response.getFrameForwardServer());
            }
            if (response.broadcastChannel_ != 0) {
                setBroadcastChannelValue(response.getBroadcastChannelValue());
            }
            if (response.hasAreaOnlinePeopleCount()) {
                mergeAreaOnlinePeopleCount(response.getAreaOnlinePeopleCount());
            }
            if (response.hasUserProfile()) {
                mergeUserProfile(response.getUserProfile());
            }
            if (!response.getEndDelimiter().isEmpty()) {
                this.endDelimiter_ = response.endDelimiter_;
                onChanged();
            }
            if (!response.getBattleScore().isEmpty()) {
                this.battleScore_ = response.battleScore_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) response).unknownFields);
            onChanged();
            return this;
        }

        public Builder addSimpleRoom(SimpleRoom.Builder builder) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.statusCode_ = 0;
            this.type_ = 0;
            this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
            this.error_ = "";
            this.simpleRoom_ = Collections.emptyList();
            this.logicErrorCode_ = 0;
            this.joinSpectatorReason_ = "";
            this.broadcastChannel_ = 0;
            this.endDelimiter_ = "";
            this.battleScore_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder addSimpleRoom(int i10, SimpleRoom.Builder builder) {
            RepeatedFieldBuilderV3<SimpleRoom, SimpleRoom.Builder, SimpleRoomOrBuilder> repeatedFieldBuilderV3 = this.simpleRoomBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSimpleRoomIsMutable();
                this.simpleRoom_.add(i10, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i10, builder.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            Response response = null;
            try {
                try {
                    Response response2 = (Response) Response.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (response2 != null) {
                        mergeFrom(response2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    Response response3 = (Response) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        response = response3;
                        if (response != null) {
                            mergeFrom(response);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (response != null) {
                    mergeFrom(response);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(Response response) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(response);
    }

    public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private Response(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.broadcastUsersMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Response getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    private Response() {
        this.broadcastUsersMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.statusCode_ = 0;
        this.type_ = 0;
        this.broadcastUsers_ = GeneratedMessageV3.emptyIntList();
        this.error_ = "";
        this.simpleRoom_ = Collections.emptyList();
        this.logicErrorCode_ = 0;
        this.joinSpectatorReason_ = "";
        this.broadcastChannel_ = 0;
        this.endDelimiter_ = "";
        this.battleScore_ = "";
    }

    public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Response parseFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    private Response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.statusCode_ = codedInputStream.readEnum();
                                continue;
                            case 16:
                                this.requestId_ = codedInputStream.readInt64();
                                continue;
                            case 24:
                                this.type_ = codedInputStream.readEnum();
                                continue;
                            case 34:
                                GameRoom gameRoom = this.room_;
                                GameRoom.Builder builder = gameRoom != null ? gameRoom.toBuilder() : null;
                                GameRoom gameRoom2 = (GameRoom) codedInputStream.readMessage(GameRoom.parser(), extensionRegistryLite);
                                this.room_ = gameRoom2;
                                if (builder != null) {
                                    builder.mergeFrom(gameRoom2);
                                    this.room_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 42:
                                Response response = this.response_;
                                Builder builder2 = response != null ? response.toBuilder() : null;
                                Response response2 = (Response) codedInputStream.readMessage(parser(), extensionRegistryLite);
                                this.response_ = response2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(response2);
                                    this.response_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 48:
                                if ((i10 & 1) == 0) {
                                    this.broadcastUsers_ = GeneratedMessageV3.newIntList();
                                    i10 |= 1;
                                }
                                this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                continue;
                            case 50:
                                int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                if ((i10 & 1) == 0 && codedInputStream.getBytesUntilLimit() > 0) {
                                    this.broadcastUsers_ = GeneratedMessageV3.newIntList();
                                    i10 |= 1;
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.broadcastUsers_.addInt(codedInputStream.readInt32());
                                }
                                codedInputStream.popLimit(iPushLimit);
                                continue;
                            case 58:
                                this.error_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 66:
                                if ((i10 & 2) == 0) {
                                    this.simpleRoom_ = new ArrayList();
                                    i10 |= 2;
                                }
                                this.simpleRoom_.add((SimpleRoom) codedInputStream.readMessage(SimpleRoom.parser(), extensionRegistryLite));
                                continue;
                            case 72:
                                this.logicErrorCode_ = codedInputStream.readEnum();
                                continue;
                            case 82:
                                this.joinSpectatorReason_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 90:
                                Pong pong = this.pong_;
                                Pong.Builder builder3 = pong != null ? pong.toBuilder() : null;
                                Pong pong2 = (Pong) codedInputStream.readMessage(Pong.parser(), extensionRegistryLite);
                                this.pong_ = pong2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(pong2);
                                    this.pong_ = builder3.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 98:
                                RoomCounter roomCounter = this.roomCounter_;
                                RoomCounter.Builder builder4 = roomCounter != null ? roomCounter.toBuilder() : null;
                                RoomCounter roomCounter2 = (RoomCounter) codedInputStream.readMessage(RoomCounter.parser(), extensionRegistryLite);
                                this.roomCounter_ = roomCounter2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(roomCounter2);
                                    this.roomCounter_ = builder4.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 106:
                                KickInfo kickInfo = this.kickInfo_;
                                KickInfo.Builder builder5 = kickInfo != null ? kickInfo.toBuilder() : null;
                                KickInfo kickInfo2 = (KickInfo) codedInputStream.readMessage(KickInfo.parser(), extensionRegistryLite);
                                this.kickInfo_ = kickInfo2;
                                if (builder5 != null) {
                                    builder5.mergeFrom(kickInfo2);
                                    this.kickInfo_ = builder5.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 114:
                                Notification notification = this.notification_;
                                Notification.Builder builder6 = notification != null ? notification.toBuilder() : null;
                                Notification notification2 = (Notification) codedInputStream.readMessage(Notification.parser(), extensionRegistryLite);
                                this.notification_ = notification2;
                                if (builder6 != null) {
                                    builder6.mergeFrom(notification2);
                                    this.notification_ = builder6.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 122:
                                FrameForwardServer frameForwardServer = this.frameForwardServer_;
                                FrameForwardServer.Builder builder7 = frameForwardServer != null ? frameForwardServer.toBuilder() : null;
                                FrameForwardServer frameForwardServer2 = (FrameForwardServer) codedInputStream.readMessage(FrameForwardServer.parser(), extensionRegistryLite);
                                this.frameForwardServer_ = frameForwardServer2;
                                if (builder7 != null) {
                                    builder7.mergeFrom(frameForwardServer2);
                                    this.frameForwardServer_ = builder7.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 128:
                                this.broadcastChannel_ = codedInputStream.readEnum();
                                continue;
                            case 138:
                                AreaOnlinePeopleCount areaOnlinePeopleCount = this.areaOnlinePeopleCount_;
                                AreaOnlinePeopleCount.Builder builder8 = areaOnlinePeopleCount != null ? areaOnlinePeopleCount.toBuilder() : null;
                                AreaOnlinePeopleCount areaOnlinePeopleCount2 = (AreaOnlinePeopleCount) codedInputStream.readMessage(AreaOnlinePeopleCount.parser(), extensionRegistryLite);
                                this.areaOnlinePeopleCount_ = areaOnlinePeopleCount2;
                                if (builder8 != null) {
                                    builder8.mergeFrom(areaOnlinePeopleCount2);
                                    this.areaOnlinePeopleCount_ = builder8.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 146:
                                UserProfile userProfile = this.userProfile_;
                                UserProfile.Builder builder9 = userProfile != null ? userProfile.toBuilder() : null;
                                UserProfile userProfile2 = (UserProfile) codedInputStream.readMessage(UserProfile.parser(), extensionRegistryLite);
                                this.userProfile_ = userProfile2;
                                if (builder9 != null) {
                                    builder9.mergeFrom(userProfile2);
                                    this.userProfile_ = builder9.buildPartial();
                                } else {
                                    continue;
                                }
                                break;
                            case 154:
                                this.battleScore_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 7994:
                                this.endDelimiter_ = codedInputStream.readStringRequireUtf8();
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
                if ((i10 & 1) != 0) {
                    this.broadcastUsers_.makeImmutable();
                }
                if ((i10 & 2) != 0) {
                    this.simpleRoom_ = Collections.unmodifiableList(this.simpleRoom_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if ((i10 & 1) != 0) {
            this.broadcastUsers_.makeImmutable();
        }
        if ((i10 & 2) != 0) {
            this.simpleRoom_ = Collections.unmodifiableList(this.simpleRoom_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }
}
