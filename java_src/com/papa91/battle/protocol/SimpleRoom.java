package com.papa91.battle.protocol;

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
public final class SimpleRoom extends GeneratedMessageV3 implements SimpleRoomOrBuilder {
    public static final int ALLOWPCJOIN_FIELD_NUMBER = 27;
    public static final int ALLOWPERIPHERALJOIN_FIELD_NUMBER = 10;
    public static final int ALLOWSPECTATORJOIN_FIELD_NUMBER = 9;
    public static final int AVATAR_FIELD_NUMBER = 26;
    public static final int BATTLEAREA_FIELD_NUMBER = 22;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 20;
    public static final int BATTLETITLE_FIELD_NUMBER = 19;
    public static final int CHALLENGECOINS_FIELD_NUMBER = 12;
    public static final int COLLECTIONID_FIELD_NUMBER = 24;
    public static final int COPPER_FIELD_NUMBER = 17;
    public static final int CREATEAT_FIELD_NUMBER = 5;
    public static final int ELITE_FIELD_NUMBER = 16;
    public static final int GAMEID_FIELD_NUMBER = 2;
    public static final int GAMENAME_FIELD_NUMBER = 23;
    public static final int HASJOINPASSWORD_FIELD_NUMBER = 8;
    public static final int HASPERIPHERALPLAYER_FIELD_NUMBER = 18;
    public static final int LEADERID_FIELD_NUMBER = 29;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    public static final int OPENBATTLESCORE_FIELD_NUMBER = 31;
    public static final int PLAYERLIST_FIELD_NUMBER = 28;
    public static final int PLAYSECONDS_FIELD_NUMBER = 14;
    public static final int PLAYTIMESTAMP_FIELD_NUMBER = 21;
    public static final int ROOMCATEGORY_FIELD_NUMBER = 30;
    public static final int ROOMID_FIELD_NUMBER = 1;
    public static final int SEATSNUMBER_FIELD_NUMBER = 6;
    public static final int SITDOWNLOADNUMBER_FIELD_NUMBER = 7;
    public static final int SPECTATORNUMBER_FIELD_NUMBER = 25;
    public static final int STATE_FIELD_NUMBER = 13;
    public static final int TITLE_FIELD_NUMBER = 15;
    public static final int VIP_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private boolean allowPCJoin_;
    private boolean allowPeripheralJoin_;
    private boolean allowSpectatorJoin_;
    private volatile Object avatar_;
    private int battleArea_;
    private volatile Object battleTitleColor_;
    private volatile Object battleTitle_;
    private int challengeCoins_;
    private int collectionId_;
    private int copper_;
    private long createAt_;
    private boolean elite_;
    private long gameId_;
    private volatile Object gameName_;
    private boolean hasJoinPassword_;
    private boolean hasPeripheralPlayer_;
    private int leaderId_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private boolean openBattleScore_;
    private int playSeconds_;
    private long playTimestamp_;
    private List<RoomPosition> playerList_;
    private int roomCategory_;
    private int roomId_;
    private int seatsNumber_;
    private int sitDownloadNumber_;
    private int spectatorNumber_;
    private int state_;
    private BattleTitle title_;
    private boolean vip_;
    private static final SimpleRoom DEFAULT_INSTANCE = new SimpleRoom();
    private static final Parser<SimpleRoom> PARSER = new AbstractParser<SimpleRoom>() { // from class: com.papa91.battle.protocol.SimpleRoom.1
        @Override // com.google.protobuf.Parser
        public SimpleRoom parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new SimpleRoom(codedInputStream, extensionRegistryLite);
        }
    };

    public static SimpleRoom getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_SimpleRoom_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SimpleRoom parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SimpleRoom parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<SimpleRoom> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SimpleRoom)) {
            return super.equals(obj);
        }
        SimpleRoom simpleRoom = (SimpleRoom) obj;
        if (getRoomId() == simpleRoom.getRoomId() && getGameId() == simpleRoom.getGameId() && getNickname().equals(simpleRoom.getNickname()) && getVip() == simpleRoom.getVip() && getCreateAt() == simpleRoom.getCreateAt() && getSeatsNumber() == simpleRoom.getSeatsNumber() && getSitDownloadNumber() == simpleRoom.getSitDownloadNumber() && getHasJoinPassword() == simpleRoom.getHasJoinPassword() && getAllowSpectatorJoin() == simpleRoom.getAllowSpectatorJoin() && getAllowPeripheralJoin() == simpleRoom.getAllowPeripheralJoin() && getChallengeCoins() == simpleRoom.getChallengeCoins() && this.state_ == simpleRoom.state_ && getPlaySeconds() == simpleRoom.getPlaySeconds() && hasTitle() == simpleRoom.hasTitle()) {
            return (!hasTitle() || getTitle().equals(simpleRoom.getTitle())) && getElite() == simpleRoom.getElite() && getCopper() == simpleRoom.getCopper() && getHasPeripheralPlayer() == simpleRoom.getHasPeripheralPlayer() && getBattleTitle().equals(simpleRoom.getBattleTitle()) && getBattleTitleColor().equals(simpleRoom.getBattleTitleColor()) && getPlayTimestamp() == simpleRoom.getPlayTimestamp() && this.battleArea_ == simpleRoom.battleArea_ && getGameName().equals(simpleRoom.getGameName()) && getCollectionId() == simpleRoom.getCollectionId() && getSpectatorNumber() == simpleRoom.getSpectatorNumber() && getAvatar().equals(simpleRoom.getAvatar()) && getAllowPCJoin() == simpleRoom.getAllowPCJoin() && getPlayerListList().equals(simpleRoom.getPlayerListList()) && getLeaderId() == simpleRoom.getLeaderId() && this.roomCategory_ == simpleRoom.roomCategory_ && getOpenBattleScore() == simpleRoom.getOpenBattleScore() && this.unknownFields.equals(simpleRoom.unknownFields);
        }
        return false;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowPCJoin() {
        return this.allowPCJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowPeripheralJoin() {
        return this.allowPeripheralJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getAllowSpectatorJoin() {
        return this.allowSpectatorJoin_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public BattleArea getBattleArea() {
        BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
        return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getBattleTitle() {
        Object obj = this.battleTitle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getBattleTitleBytes() {
        Object obj = this.battleTitle_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitle_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getBattleTitleColor() {
        Object obj = this.battleTitleColor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitleColor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getBattleTitleColorBytes() {
        Object obj = this.battleTitleColor_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitleColor_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getChallengeCoins() {
        return this.challengeCoins_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getCollectionId() {
        return this.collectionId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getCreateAt() {
        return this.createAt_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getElite() {
        return this.elite_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getHasJoinPassword() {
        return this.hasJoinPassword_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getHasPeripheralPlayer() {
        return this.hasPeripheralPlayer_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getLeaderId() {
        return this.leaderId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public ByteString getNicknameBytes() {
        Object obj = this.nickname_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.nickname_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getOpenBattleScore() {
        return this.openBattleScore_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<SimpleRoom> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getPlaySeconds() {
        return this.playSeconds_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public long getPlayTimestamp() {
        return this.playTimestamp_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomPosition getPlayerList(int i10) {
        return this.playerList_.get(i10);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getPlayerListCount() {
        return this.playerList_.size();
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public List<RoomPosition> getPlayerListList() {
        return this.playerList_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomPositionOrBuilder getPlayerListOrBuilder(int i10) {
        return this.playerList_.get(i10);
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public List<? extends RoomPositionOrBuilder> getPlayerListOrBuilderList() {
        return this.playerList_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomCategory getRoomCategory() {
        RoomCategory roomCategoryValueOf = RoomCategory.valueOf(this.roomCategory_);
        return roomCategoryValueOf == null ? RoomCategory.UNRECOGNIZED : roomCategoryValueOf;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getRoomCategoryValue() {
        return this.roomCategory_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getRoomId() {
        return this.roomId_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
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
        int iComputeInt32Size = i11 != 0 ? CodedOutputStream.computeInt32Size(1, i11) + 0 : 0;
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(2, j10);
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.nickname_);
        }
        boolean z10 = this.vip_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(4, z10);
        }
        long j11 = this.createAt_;
        if (j11 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(5, j11);
        }
        int i12 = this.seatsNumber_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(6, i12);
        }
        int i13 = this.sitDownloadNumber_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i13);
        }
        boolean z11 = this.hasJoinPassword_;
        if (z11) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(8, z11);
        }
        boolean z12 = this.allowSpectatorJoin_;
        if (z12) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(9, z12);
        }
        boolean z13 = this.allowPeripheralJoin_;
        if (z13) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(10, z13);
        }
        int i14 = this.challengeCoins_;
        if (i14 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(12, i14);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(13, this.state_);
        }
        int i15 = this.playSeconds_;
        if (i15 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(14, i15);
        }
        if (this.title_ != null) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(15, getTitle());
        }
        boolean z14 = this.elite_;
        if (z14) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(16, z14);
        }
        int i16 = this.copper_;
        if (i16 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(17, i16);
        }
        boolean z15 = this.hasPeripheralPlayer_;
        if (z15) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(18, z15);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(19, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(20, this.battleTitleColor_);
        }
        long j12 = this.playTimestamp_;
        if (j12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(21, j12);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(22, this.battleArea_);
        }
        if (!getGameNameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(23, this.gameName_);
        }
        int i17 = this.collectionId_;
        if (i17 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(24, i17);
        }
        int i18 = this.spectatorNumber_;
        if (i18 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(25, i18);
        }
        if (!getAvatarBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(26, this.avatar_);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(27, z16);
        }
        for (int i19 = 0; i19 < this.playerList_.size(); i19++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(28, this.playerList_.get(i19));
        }
        int i20 = this.leaderId_;
        if (i20 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(29, i20);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(30, this.roomCategory_);
        }
        boolean z17 = this.openBattleScore_;
        if (z17) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(31, z17);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getSitDownloadNumber() {
        return this.sitDownloadNumber_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getSpectatorNumber() {
        return this.spectatorNumber_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public RoomState getState() {
        RoomState roomStateValueOf = RoomState.valueOf(this.state_);
        return roomStateValueOf == null ? RoomState.UNRECOGNIZED : roomStateValueOf;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public BattleTitle getTitle() {
        BattleTitle battleTitle = this.title_;
        return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public BattleTitleOrBuilder getTitleOrBuilder() {
        return getTitle();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
    public boolean hasTitle() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getRoomId()) * 37) + 2) * 53) + Internal.hashLong(getGameId())) * 37) + 3) * 53) + getNickname().hashCode()) * 37) + 4) * 53) + Internal.hashBoolean(getVip())) * 37) + 5) * 53) + Internal.hashLong(getCreateAt())) * 37) + 6) * 53) + getSeatsNumber()) * 37) + 7) * 53) + getSitDownloadNumber()) * 37) + 8) * 53) + Internal.hashBoolean(getHasJoinPassword())) * 37) + 9) * 53) + Internal.hashBoolean(getAllowSpectatorJoin())) * 37) + 10) * 53) + Internal.hashBoolean(getAllowPeripheralJoin())) * 37) + 12) * 53) + getChallengeCoins()) * 37) + 13) * 53) + this.state_) * 37) + 14) * 53) + getPlaySeconds();
        if (hasTitle()) {
            iHashCode = (((iHashCode * 37) + 15) * 53) + getTitle().hashCode();
        }
        int iHashBoolean = (((((((((((((((((((((((((((((((((((((((((((((((iHashCode * 37) + 16) * 53) + Internal.hashBoolean(getElite())) * 37) + 17) * 53) + getCopper()) * 37) + 18) * 53) + Internal.hashBoolean(getHasPeripheralPlayer())) * 37) + 19) * 53) + getBattleTitle().hashCode()) * 37) + 20) * 53) + getBattleTitleColor().hashCode()) * 37) + 21) * 53) + Internal.hashLong(getPlayTimestamp())) * 37) + 22) * 53) + this.battleArea_) * 37) + 23) * 53) + getGameName().hashCode()) * 37) + 24) * 53) + getCollectionId()) * 37) + 25) * 53) + getSpectatorNumber()) * 37) + 26) * 53) + getAvatar().hashCode()) * 37) + 27) * 53) + Internal.hashBoolean(getAllowPCJoin());
        if (getPlayerListCount() > 0) {
            iHashBoolean = (((iHashBoolean * 37) + 28) * 53) + getPlayerListList().hashCode();
        }
        int leaderId = (((((((((((((iHashBoolean * 37) + 29) * 53) + getLeaderId()) * 37) + 30) * 53) + this.roomCategory_) * 37) + 31) * 53) + Internal.hashBoolean(getOpenBattleScore())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = leaderId;
        return leaderId;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_SimpleRoom_fieldAccessorTable.ensureFieldAccessorsInitialized(SimpleRoom.class, Builder.class);
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
        return new SimpleRoom();
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
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.nickname_);
        }
        boolean z10 = this.vip_;
        if (z10) {
            codedOutputStream.writeBool(4, z10);
        }
        long j11 = this.createAt_;
        if (j11 != 0) {
            codedOutputStream.writeInt64(5, j11);
        }
        int i11 = this.seatsNumber_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(6, i11);
        }
        int i12 = this.sitDownloadNumber_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(7, i12);
        }
        boolean z11 = this.hasJoinPassword_;
        if (z11) {
            codedOutputStream.writeBool(8, z11);
        }
        boolean z12 = this.allowSpectatorJoin_;
        if (z12) {
            codedOutputStream.writeBool(9, z12);
        }
        boolean z13 = this.allowPeripheralJoin_;
        if (z13) {
            codedOutputStream.writeBool(10, z13);
        }
        int i13 = this.challengeCoins_;
        if (i13 != 0) {
            codedOutputStream.writeInt32(12, i13);
        }
        if (this.state_ != RoomState.EMPTY.getNumber()) {
            codedOutputStream.writeEnum(13, this.state_);
        }
        int i14 = this.playSeconds_;
        if (i14 != 0) {
            codedOutputStream.writeInt32(14, i14);
        }
        if (this.title_ != null) {
            codedOutputStream.writeMessage(15, getTitle());
        }
        boolean z14 = this.elite_;
        if (z14) {
            codedOutputStream.writeBool(16, z14);
        }
        int i15 = this.copper_;
        if (i15 != 0) {
            codedOutputStream.writeInt32(17, i15);
        }
        boolean z15 = this.hasPeripheralPlayer_;
        if (z15) {
            codedOutputStream.writeBool(18, z15);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 19, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 20, this.battleTitleColor_);
        }
        long j12 = this.playTimestamp_;
        if (j12 != 0) {
            codedOutputStream.writeInt64(21, j12);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(22, this.battleArea_);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 23, this.gameName_);
        }
        int i16 = this.collectionId_;
        if (i16 != 0) {
            codedOutputStream.writeInt32(24, i16);
        }
        int i17 = this.spectatorNumber_;
        if (i17 != 0) {
            codedOutputStream.writeInt32(25, i17);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 26, this.avatar_);
        }
        boolean z16 = this.allowPCJoin_;
        if (z16) {
            codedOutputStream.writeBool(27, z16);
        }
        for (int i18 = 0; i18 < this.playerList_.size(); i18++) {
            codedOutputStream.writeMessage(28, this.playerList_.get(i18));
        }
        int i19 = this.leaderId_;
        if (i19 != 0) {
            codedOutputStream.writeInt32(29, i19);
        }
        if (this.roomCategory_ != RoomCategory.NORMAL.getNumber()) {
            codedOutputStream.writeEnum(30, this.roomCategory_);
        }
        boolean z17 = this.openBattleScore_;
        if (z17) {
            codedOutputStream.writeBool(31, z17);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SimpleRoomOrBuilder {
        private boolean allowPCJoin_;
        private boolean allowPeripheralJoin_;
        private boolean allowSpectatorJoin_;
        private Object avatar_;
        private int battleArea_;
        private Object battleTitleColor_;
        private Object battleTitle_;
        private int bitField0_;
        private int challengeCoins_;
        private int collectionId_;
        private int copper_;
        private long createAt_;
        private boolean elite_;
        private long gameId_;
        private Object gameName_;
        private boolean hasJoinPassword_;
        private boolean hasPeripheralPlayer_;
        private int leaderId_;
        private Object nickname_;
        private boolean openBattleScore_;
        private int playSeconds_;
        private long playTimestamp_;
        private RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> playerListBuilder_;
        private List<RoomPosition> playerList_;
        private int roomCategory_;
        private int roomId_;
        private int seatsNumber_;
        private int sitDownloadNumber_;
        private int spectatorNumber_;
        private int state_;
        private SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> titleBuilder_;
        private BattleTitle title_;
        private boolean vip_;

        private void ensurePlayerListIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.playerList_ = new ArrayList(this.playerList_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_SimpleRoom_descriptor;
        }

        private RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> getPlayerListFieldBuilder() {
            if (this.playerListBuilder_ == null) {
                this.playerListBuilder_ = new RepeatedFieldBuilderV3<>(this.playerList_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.playerList_ = null;
            }
            return this.playerListBuilder_;
        }

        private SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> getTitleFieldBuilder() {
            if (this.titleBuilder_ == null) {
                this.titleBuilder_ = new SingleFieldBuilderV3<>(getTitle(), getParentForChildren(), isClean());
                this.title_ = null;
            }
            return this.titleBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getPlayerListFieldBuilder();
            }
        }

        public Builder addAllPlayerList(Iterable<? extends RoomPosition> iterable) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensurePlayerListIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.playerList_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public Builder addPlayerList(RoomPosition roomPosition) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                roomPosition.getClass();
                ensurePlayerListIsMutable();
                this.playerList_.add(roomPosition);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(roomPosition);
            }
            return this;
        }

        public RoomPosition.Builder addPlayerListBuilder() {
            return (RoomPosition.Builder) getPlayerListFieldBuilder().addBuilder(RoomPosition.getDefaultInstance());
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

        public Builder clearAvatar() {
            this.avatar_ = SimpleRoom.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public Builder clearBattleArea() {
            this.battleArea_ = 0;
            onChanged();
            return this;
        }

        public Builder clearBattleTitle() {
            this.battleTitle_ = SimpleRoom.getDefaultInstance().getBattleTitle();
            onChanged();
            return this;
        }

        public Builder clearBattleTitleColor() {
            this.battleTitleColor_ = SimpleRoom.getDefaultInstance().getBattleTitleColor();
            onChanged();
            return this;
        }

        public Builder clearChallengeCoins() {
            this.challengeCoins_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCollectionId() {
            this.collectionId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCopper() {
            this.copper_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCreateAt() {
            this.createAt_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearElite() {
            this.elite_ = false;
            onChanged();
            return this;
        }

        public Builder clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearGameName() {
            this.gameName_ = SimpleRoom.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public Builder clearHasJoinPassword() {
            this.hasJoinPassword_ = false;
            onChanged();
            return this;
        }

        public Builder clearHasPeripheralPlayer() {
            this.hasPeripheralPlayer_ = false;
            onChanged();
            return this;
        }

        public Builder clearLeaderId() {
            this.leaderId_ = 0;
            onChanged();
            return this;
        }

        public Builder clearNickname() {
            this.nickname_ = SimpleRoom.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public Builder clearOpenBattleScore() {
            this.openBattleScore_ = false;
            onChanged();
            return this;
        }

        public Builder clearPlaySeconds() {
            this.playSeconds_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPlayTimestamp() {
            this.playTimestamp_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearPlayerList() {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.playerList_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
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

        public Builder clearSitDownloadNumber() {
            this.sitDownloadNumber_ = 0;
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

        public Builder clearTitle() {
            if (this.titleBuilder_ == null) {
                this.title_ = null;
                onChanged();
            } else {
                this.title_ = null;
                this.titleBuilder_ = null;
            }
            return this;
        }

        public Builder clearVip() {
            this.vip_ = false;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowPCJoin() {
            return this.allowPCJoin_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowPeripheralJoin() {
            return this.allowPeripheralJoin_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getAllowSpectatorJoin() {
            return this.allowSpectatorJoin_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public BattleArea getBattleArea() {
            BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
            return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getBattleAreaValue() {
            return this.battleArea_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getBattleTitle() {
            Object obj = this.battleTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getBattleTitleBytes() {
            Object obj = this.battleTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getBattleTitleColor() {
            Object obj = this.battleTitleColor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitleColor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getBattleTitleColorBytes() {
            Object obj = this.battleTitleColor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitleColor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getChallengeCoins() {
            return this.challengeCoins_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getCollectionId() {
            return this.collectionId_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getCopper() {
            return this.copper_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getCreateAt() {
            return this.createAt_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_SimpleRoom_descriptor;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getElite() {
            return this.elite_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getHasJoinPassword() {
            return this.hasJoinPassword_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getHasPeripheralPlayer() {
            return this.hasPeripheralPlayer_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getLeaderId() {
            return this.leaderId_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getOpenBattleScore() {
            return this.openBattleScore_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getPlaySeconds() {
            return this.playSeconds_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public long getPlayTimestamp() {
            return this.playTimestamp_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomPosition getPlayerList(int i10) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            return repeatedFieldBuilderV3 == null ? this.playerList_.get(i10) : (RoomPosition) repeatedFieldBuilderV3.getMessage(i10);
        }

        public RoomPosition.Builder getPlayerListBuilder(int i10) {
            return (RoomPosition.Builder) getPlayerListFieldBuilder().getBuilder(i10);
        }

        public List<RoomPosition.Builder> getPlayerListBuilderList() {
            return getPlayerListFieldBuilder().getBuilderList();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getPlayerListCount() {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            return repeatedFieldBuilderV3 == null ? this.playerList_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public List<RoomPosition> getPlayerListList() {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.playerList_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomPositionOrBuilder getPlayerListOrBuilder(int i10) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            return repeatedFieldBuilderV3 == null ? this.playerList_.get(i10) : (RoomPositionOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i10);
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public List<? extends RoomPositionOrBuilder> getPlayerListOrBuilderList() {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.playerList_);
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomCategory getRoomCategory() {
            RoomCategory roomCategoryValueOf = RoomCategory.valueOf(this.roomCategory_);
            return roomCategoryValueOf == null ? RoomCategory.UNRECOGNIZED : roomCategoryValueOf;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getRoomCategoryValue() {
            return this.roomCategory_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getRoomId() {
            return this.roomId_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSeatsNumber() {
            return this.seatsNumber_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSitDownloadNumber() {
            return this.sitDownloadNumber_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getSpectatorNumber() {
            return this.spectatorNumber_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public RoomState getState() {
            RoomState roomStateValueOf = RoomState.valueOf(this.state_);
            return roomStateValueOf == null ? RoomState.UNRECOGNIZED : roomStateValueOf;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public BattleTitle getTitle() {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BattleTitle) singleFieldBuilderV3.getMessage();
            }
            BattleTitle battleTitle = this.title_;
            return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
        }

        public BattleTitle.Builder getTitleBuilder() {
            onChanged();
            return (BattleTitle.Builder) getTitleFieldBuilder().getBuilder();
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public BattleTitleOrBuilder getTitleOrBuilder() {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BattleTitleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            BattleTitle battleTitle = this.title_;
            return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean getVip() {
            return this.vip_;
        }

        @Override // com.papa91.battle.protocol.SimpleRoomOrBuilder
        public boolean hasTitle() {
            return (this.titleBuilder_ == null && this.title_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_SimpleRoom_fieldAccessorTable.ensureFieldAccessorsInitialized(SimpleRoom.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeTitle(BattleTitle battleTitle) {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 == null) {
                BattleTitle battleTitle2 = this.title_;
                if (battleTitle2 != null) {
                    this.title_ = BattleTitle.newBuilder(battleTitle2).mergeFrom(battleTitle).buildPartial();
                } else {
                    this.title_ = battleTitle;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(battleTitle);
            }
            return this;
        }

        public Builder removePlayerList(int i10) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensurePlayerListIsMutable();
                this.playerList_.remove(i10);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i10);
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

        public Builder setAvatar(String str) {
            str.getClass();
            this.avatar_ = str;
            onChanged();
            return this;
        }

        public Builder setAvatarBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.avatar_ = byteString;
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

        public Builder setBattleTitle(String str) {
            str.getClass();
            this.battleTitle_ = str;
            onChanged();
            return this;
        }

        public Builder setBattleTitleBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.battleTitle_ = byteString;
            onChanged();
            return this;
        }

        public Builder setBattleTitleColor(String str) {
            str.getClass();
            this.battleTitleColor_ = str;
            onChanged();
            return this;
        }

        public Builder setBattleTitleColorBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.battleTitleColor_ = byteString;
            onChanged();
            return this;
        }

        public Builder setChallengeCoins(int i10) {
            this.challengeCoins_ = i10;
            onChanged();
            return this;
        }

        public Builder setCollectionId(int i10) {
            this.collectionId_ = i10;
            onChanged();
            return this;
        }

        public Builder setCopper(int i10) {
            this.copper_ = i10;
            onChanged();
            return this;
        }

        public Builder setCreateAt(long j10) {
            this.createAt_ = j10;
            onChanged();
            return this;
        }

        public Builder setElite(boolean z10) {
            this.elite_ = z10;
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

        public Builder setHasJoinPassword(boolean z10) {
            this.hasJoinPassword_ = z10;
            onChanged();
            return this;
        }

        public Builder setHasPeripheralPlayer(boolean z10) {
            this.hasPeripheralPlayer_ = z10;
            onChanged();
            return this;
        }

        public Builder setLeaderId(int i10) {
            this.leaderId_ = i10;
            onChanged();
            return this;
        }

        public Builder setNickname(String str) {
            str.getClass();
            this.nickname_ = str;
            onChanged();
            return this;
        }

        public Builder setNicknameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.nickname_ = byteString;
            onChanged();
            return this;
        }

        public Builder setOpenBattleScore(boolean z10) {
            this.openBattleScore_ = z10;
            onChanged();
            return this;
        }

        public Builder setPlaySeconds(int i10) {
            this.playSeconds_ = i10;
            onChanged();
            return this;
        }

        public Builder setPlayTimestamp(long j10) {
            this.playTimestamp_ = j10;
            onChanged();
            return this;
        }

        public Builder setPlayerList(int i10, RoomPosition roomPosition) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                roomPosition.getClass();
                ensurePlayerListIsMutable();
                this.playerList_.set(i10, roomPosition);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i10, roomPosition);
            }
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

        public Builder setSitDownloadNumber(int i10) {
            this.sitDownloadNumber_ = i10;
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

        public Builder setTitle(BattleTitle battleTitle) {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 == null) {
                battleTitle.getClass();
                this.title_ = battleTitle;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(battleTitle);
            }
            return this;
        }

        public Builder setVip(boolean z10) {
            this.vip_ = z10;
            onChanged();
            return this;
        }

        private Builder() {
            this.nickname_ = "";
            this.state_ = 0;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.avatar_ = "";
            this.playerList_ = Collections.emptyList();
            this.roomCategory_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public SimpleRoom build() {
            SimpleRoom simpleRoomBuildPartial = buildPartial();
            if (simpleRoomBuildPartial.isInitialized()) {
                return simpleRoomBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) simpleRoomBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public SimpleRoom buildPartial() {
            SimpleRoom simpleRoom = new SimpleRoom(this);
            simpleRoom.roomId_ = this.roomId_;
            simpleRoom.gameId_ = this.gameId_;
            simpleRoom.nickname_ = this.nickname_;
            simpleRoom.vip_ = this.vip_;
            simpleRoom.createAt_ = this.createAt_;
            simpleRoom.seatsNumber_ = this.seatsNumber_;
            simpleRoom.sitDownloadNumber_ = this.sitDownloadNumber_;
            simpleRoom.hasJoinPassword_ = this.hasJoinPassword_;
            simpleRoom.allowSpectatorJoin_ = this.allowSpectatorJoin_;
            simpleRoom.allowPeripheralJoin_ = this.allowPeripheralJoin_;
            simpleRoom.challengeCoins_ = this.challengeCoins_;
            simpleRoom.state_ = this.state_;
            simpleRoom.playSeconds_ = this.playSeconds_;
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 == null) {
                simpleRoom.title_ = this.title_;
            } else {
                simpleRoom.title_ = (BattleTitle) singleFieldBuilderV3.build();
            }
            simpleRoom.elite_ = this.elite_;
            simpleRoom.copper_ = this.copper_;
            simpleRoom.hasPeripheralPlayer_ = this.hasPeripheralPlayer_;
            simpleRoom.battleTitle_ = this.battleTitle_;
            simpleRoom.battleTitleColor_ = this.battleTitleColor_;
            simpleRoom.playTimestamp_ = this.playTimestamp_;
            simpleRoom.battleArea_ = this.battleArea_;
            simpleRoom.gameName_ = this.gameName_;
            simpleRoom.collectionId_ = this.collectionId_;
            simpleRoom.spectatorNumber_ = this.spectatorNumber_;
            simpleRoom.avatar_ = this.avatar_;
            simpleRoom.allowPCJoin_ = this.allowPCJoin_;
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                simpleRoom.playerList_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.playerList_ = Collections.unmodifiableList(this.playerList_);
                    this.bitField0_ &= -2;
                }
                simpleRoom.playerList_ = this.playerList_;
            }
            simpleRoom.leaderId_ = this.leaderId_;
            simpleRoom.roomCategory_ = this.roomCategory_;
            simpleRoom.openBattleScore_ = this.openBattleScore_;
            onBuilt();
            return simpleRoom;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SimpleRoom getDefaultInstanceForType() {
            return SimpleRoom.getDefaultInstance();
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

        public RoomPosition.Builder addPlayerListBuilder(int i10) {
            return (RoomPosition.Builder) getPlayerListFieldBuilder().addBuilder(i10, RoomPosition.getDefaultInstance());
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
            this.nickname_ = "";
            this.vip_ = false;
            this.createAt_ = 0L;
            this.seatsNumber_ = 0;
            this.sitDownloadNumber_ = 0;
            this.hasJoinPassword_ = false;
            this.allowSpectatorJoin_ = false;
            this.allowPeripheralJoin_ = false;
            this.challengeCoins_ = 0;
            this.state_ = 0;
            this.playSeconds_ = 0;
            if (this.titleBuilder_ == null) {
                this.title_ = null;
            } else {
                this.title_ = null;
                this.titleBuilder_ = null;
            }
            this.elite_ = false;
            this.copper_ = 0;
            this.hasPeripheralPlayer_ = false;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.playTimestamp_ = 0L;
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.collectionId_ = 0;
            this.spectatorNumber_ = 0;
            this.avatar_ = "";
            this.allowPCJoin_ = false;
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.playerList_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.leaderId_ = 0;
            this.roomCategory_ = 0;
            this.openBattleScore_ = false;
            return this;
        }

        public Builder setTitle(BattleTitle.Builder builder) {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.title_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder addPlayerList(int i10, RoomPosition roomPosition) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                roomPosition.getClass();
                ensurePlayerListIsMutable();
                this.playerList_.add(i10, roomPosition);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i10, roomPosition);
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
            if (message instanceof SimpleRoom) {
                return mergeFrom((SimpleRoom) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setPlayerList(int i10, RoomPosition.Builder builder) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensurePlayerListIsMutable();
                this.playerList_.set(i10, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(SimpleRoom simpleRoom) {
            if (simpleRoom == SimpleRoom.getDefaultInstance()) {
                return this;
            }
            if (simpleRoom.getRoomId() != 0) {
                setRoomId(simpleRoom.getRoomId());
            }
            if (simpleRoom.getGameId() != 0) {
                setGameId(simpleRoom.getGameId());
            }
            if (!simpleRoom.getNickname().isEmpty()) {
                this.nickname_ = simpleRoom.nickname_;
                onChanged();
            }
            if (simpleRoom.getVip()) {
                setVip(simpleRoom.getVip());
            }
            if (simpleRoom.getCreateAt() != 0) {
                setCreateAt(simpleRoom.getCreateAt());
            }
            if (simpleRoom.getSeatsNumber() != 0) {
                setSeatsNumber(simpleRoom.getSeatsNumber());
            }
            if (simpleRoom.getSitDownloadNumber() != 0) {
                setSitDownloadNumber(simpleRoom.getSitDownloadNumber());
            }
            if (simpleRoom.getHasJoinPassword()) {
                setHasJoinPassword(simpleRoom.getHasJoinPassword());
            }
            if (simpleRoom.getAllowSpectatorJoin()) {
                setAllowSpectatorJoin(simpleRoom.getAllowSpectatorJoin());
            }
            if (simpleRoom.getAllowPeripheralJoin()) {
                setAllowPeripheralJoin(simpleRoom.getAllowPeripheralJoin());
            }
            if (simpleRoom.getChallengeCoins() != 0) {
                setChallengeCoins(simpleRoom.getChallengeCoins());
            }
            if (simpleRoom.state_ != 0) {
                setStateValue(simpleRoom.getStateValue());
            }
            if (simpleRoom.getPlaySeconds() != 0) {
                setPlaySeconds(simpleRoom.getPlaySeconds());
            }
            if (simpleRoom.hasTitle()) {
                mergeTitle(simpleRoom.getTitle());
            }
            if (simpleRoom.getElite()) {
                setElite(simpleRoom.getElite());
            }
            if (simpleRoom.getCopper() != 0) {
                setCopper(simpleRoom.getCopper());
            }
            if (simpleRoom.getHasPeripheralPlayer()) {
                setHasPeripheralPlayer(simpleRoom.getHasPeripheralPlayer());
            }
            if (!simpleRoom.getBattleTitle().isEmpty()) {
                this.battleTitle_ = simpleRoom.battleTitle_;
                onChanged();
            }
            if (!simpleRoom.getBattleTitleColor().isEmpty()) {
                this.battleTitleColor_ = simpleRoom.battleTitleColor_;
                onChanged();
            }
            if (simpleRoom.getPlayTimestamp() != 0) {
                setPlayTimestamp(simpleRoom.getPlayTimestamp());
            }
            if (simpleRoom.battleArea_ != 0) {
                setBattleAreaValue(simpleRoom.getBattleAreaValue());
            }
            if (!simpleRoom.getGameName().isEmpty()) {
                this.gameName_ = simpleRoom.gameName_;
                onChanged();
            }
            if (simpleRoom.getCollectionId() != 0) {
                setCollectionId(simpleRoom.getCollectionId());
            }
            if (simpleRoom.getSpectatorNumber() != 0) {
                setSpectatorNumber(simpleRoom.getSpectatorNumber());
            }
            if (!simpleRoom.getAvatar().isEmpty()) {
                this.avatar_ = simpleRoom.avatar_;
                onChanged();
            }
            if (simpleRoom.getAllowPCJoin()) {
                setAllowPCJoin(simpleRoom.getAllowPCJoin());
            }
            if (this.playerListBuilder_ == null) {
                if (!simpleRoom.playerList_.isEmpty()) {
                    if (this.playerList_.isEmpty()) {
                        this.playerList_ = simpleRoom.playerList_;
                        this.bitField0_ &= -2;
                    } else {
                        ensurePlayerListIsMutable();
                        this.playerList_.addAll(simpleRoom.playerList_);
                    }
                    onChanged();
                }
            } else if (!simpleRoom.playerList_.isEmpty()) {
                if (!this.playerListBuilder_.isEmpty()) {
                    this.playerListBuilder_.addAllMessages(simpleRoom.playerList_);
                } else {
                    this.playerListBuilder_.dispose();
                    this.playerListBuilder_ = null;
                    this.playerList_ = simpleRoom.playerList_;
                    this.bitField0_ &= -2;
                    this.playerListBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getPlayerListFieldBuilder() : null;
                }
            }
            if (simpleRoom.getLeaderId() != 0) {
                setLeaderId(simpleRoom.getLeaderId());
            }
            if (simpleRoom.roomCategory_ != 0) {
                setRoomCategoryValue(simpleRoom.getRoomCategoryValue());
            }
            if (simpleRoom.getOpenBattleScore()) {
                setOpenBattleScore(simpleRoom.getOpenBattleScore());
            }
            mergeUnknownFields(((GeneratedMessageV3) simpleRoom).unknownFields);
            onChanged();
            return this;
        }

        public Builder addPlayerList(RoomPosition.Builder builder) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensurePlayerListIsMutable();
                this.playerList_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.nickname_ = "";
            this.state_ = 0;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.battleArea_ = 0;
            this.gameName_ = "";
            this.avatar_ = "";
            this.playerList_ = Collections.emptyList();
            this.roomCategory_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder addPlayerList(int i10, RoomPosition.Builder builder) {
            RepeatedFieldBuilderV3<RoomPosition, RoomPosition.Builder, RoomPositionOrBuilder> repeatedFieldBuilderV3 = this.playerListBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensurePlayerListIsMutable();
                this.playerList_.add(i10, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i10, builder.build());
            }
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            SimpleRoom simpleRoom = null;
            try {
                try {
                    SimpleRoom simpleRoom2 = (SimpleRoom) SimpleRoom.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (simpleRoom2 != null) {
                        mergeFrom(simpleRoom2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    SimpleRoom simpleRoom3 = (SimpleRoom) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        simpleRoom = simpleRoom3;
                        if (simpleRoom != null) {
                            mergeFrom(simpleRoom);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (simpleRoom != null) {
                    mergeFrom(simpleRoom);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(SimpleRoom simpleRoom) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(simpleRoom);
    }

    public static SimpleRoom parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private SimpleRoom(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SimpleRoom parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SimpleRoom parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public SimpleRoom getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SimpleRoom parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SimpleRoom() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
        this.state_ = 0;
        this.battleTitle_ = "";
        this.battleTitleColor_ = "";
        this.battleArea_ = 0;
        this.gameName_ = "";
        this.avatar_ = "";
        this.playerList_ = Collections.emptyList();
        this.roomCategory_ = 0;
    }

    public static SimpleRoom parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static SimpleRoom parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static SimpleRoom parseFrom(InputStream inputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SimpleRoom parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SimpleRoom parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static SimpleRoom parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SimpleRoom) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    private SimpleRoom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        boolean z11 = false;
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
                            this.nickname_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 32:
                            this.vip_ = codedInputStream.readBool();
                            continue;
                        case 40:
                            this.createAt_ = codedInputStream.readInt64();
                            continue;
                        case 48:
                            this.seatsNumber_ = codedInputStream.readInt32();
                            continue;
                        case 56:
                            this.sitDownloadNumber_ = codedInputStream.readInt32();
                            continue;
                        case 64:
                            this.hasJoinPassword_ = codedInputStream.readBool();
                            continue;
                        case 72:
                            this.allowSpectatorJoin_ = codedInputStream.readBool();
                            continue;
                        case 80:
                            this.allowPeripheralJoin_ = codedInputStream.readBool();
                            continue;
                        case 96:
                            this.challengeCoins_ = codedInputStream.readInt32();
                            continue;
                        case 104:
                            this.state_ = codedInputStream.readEnum();
                            continue;
                        case 112:
                            this.playSeconds_ = codedInputStream.readInt32();
                            continue;
                        case 122:
                            BattleTitle battleTitle = this.title_;
                            BattleTitle.Builder builder = battleTitle != null ? battleTitle.toBuilder() : null;
                            BattleTitle battleTitle2 = (BattleTitle) codedInputStream.readMessage(BattleTitle.parser(), extensionRegistryLite);
                            this.title_ = battleTitle2;
                            if (builder != null) {
                                builder.mergeFrom(battleTitle2);
                                this.title_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                            break;
                        case 128:
                            this.elite_ = codedInputStream.readBool();
                            continue;
                        case 136:
                            this.copper_ = codedInputStream.readInt32();
                            continue;
                        case 144:
                            this.hasPeripheralPlayer_ = codedInputStream.readBool();
                            continue;
                        case 154:
                            this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 162:
                            this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 168:
                            this.playTimestamp_ = codedInputStream.readInt64();
                            continue;
                        case 176:
                            this.battleArea_ = codedInputStream.readEnum();
                            continue;
                        case 186:
                            this.gameName_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 192:
                            this.collectionId_ = codedInputStream.readInt32();
                            continue;
                        case 200:
                            this.spectatorNumber_ = codedInputStream.readInt32();
                            continue;
                        case 210:
                            this.avatar_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 216:
                            this.allowPCJoin_ = codedInputStream.readBool();
                            continue;
                        case 226:
                            if (!(z11 & true)) {
                                this.playerList_ = new ArrayList();
                                z11 |= true;
                            }
                            this.playerList_.add((RoomPosition) codedInputStream.readMessage(RoomPosition.parser(), extensionRegistryLite));
                            continue;
                        case 232:
                            this.leaderId_ = codedInputStream.readInt32();
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA /* 240 */:
                            this.roomCategory_ = codedInputStream.readEnum();
                            continue;
                        case 248:
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
                if (z11 & true) {
                    this.playerList_ = Collections.unmodifiableList(this.playerList_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z11 & true) {
            this.playerList_ = Collections.unmodifiableList(this.playerList_);
        }
        this.unknownFields = builderNewBuilder.build();
        makeExtensionsImmutable();
    }
}
