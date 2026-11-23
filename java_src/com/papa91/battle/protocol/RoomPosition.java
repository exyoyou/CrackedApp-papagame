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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class RoomPosition extends GeneratedMessageV3 implements RoomPositionOrBuilder {
    public static final int AVATAR_FIELD_NUMBER = 6;
    public static final int BATTLEAREA_FIELD_NUMBER = 13;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 12;
    public static final int BATTLETITLE_FIELD_NUMBER = 11;
    public static final int CLOSED_FIELD_NUMBER = 1;
    public static final int COPPER_FIELD_NUMBER = 7;
    public static final int IGNORE_FIELD_NUMBER = 15;
    public static final int KICKCOUNT_FIELD_NUMBER = 14;
    public static final int NICKNAME_FIELD_NUMBER = 5;
    public static final int PERIPHERAL_FIELD_NUMBER = 9;
    public static final int PHONETYPE_FIELD_NUMBER = 31;
    public static final int PINGVAL_FIELD_NUMBER = 8;
    public static final int PLATFORM_FIELD_NUMBER = 16;
    public static final int PROFICIENCYLEVEL_FIELD_NUMBER = 17;
    public static final int STATE_FIELD_NUMBER = 10;
    public static final int TITLE_FIELD_NUMBER = 4;
    public static final int UID_FIELD_NUMBER = 3;
    public static final int VIP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object avatar_;
    private int battleArea_;
    private volatile Object battleTitleColor_;
    private volatile Object battleTitle_;
    private boolean closed_;
    private int copper_;
    private volatile Object ignore_;
    private int kickCount_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private boolean peripheral_;
    private int phoneType_;
    private int pingVal_;
    private int platform_;
    private int proficiencyLevel_;
    private int state_;
    private BattleTitle title_;
    private int uid_;
    private boolean vip_;
    private static final RoomPosition DEFAULT_INSTANCE = new RoomPosition();
    private static final Parser<RoomPosition> PARSER = new AbstractParser<RoomPosition>() { // from class: com.papa91.battle.protocol.RoomPosition.1
        @Override // com.google.protobuf.Parser
        public RoomPosition parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new RoomPosition(codedInputStream, extensionRegistryLite);
        }
    };

    public enum State implements ProtocolMessageEnum {
        EMPTY(0),
        WAIT(1),
        READY(2),
        START(3),
        UNRECOGNIZED(-1);

        public static final int EMPTY_VALUE = 0;
        public static final int READY_VALUE = 2;
        public static final int START_VALUE = 3;
        public static final int WAIT_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<State> internalValueMap = new Internal.EnumLiteMap<State>() { // from class: com.papa91.battle.protocol.RoomPosition.State.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public State findValueByNumber(int i10) {
                return State.forNumber(i10);
            }
        };
        private static final State[] VALUES = values();

        State(int i10) {
            this.value = i10;
        }

        public static State forNumber(int i10) {
            if (i10 == 0) {
                return EMPTY;
            }
            if (i10 == 1) {
                return WAIT;
            }
            if (i10 == 2) {
                return READY;
            }
            if (i10 != 3) {
                return null;
            }
            return START;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return RoomPosition.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<State> internalGetValueMap() {
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
        public static State valueOf(int i10) {
            return forNumber(i10);
        }

        public static State valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static RoomPosition getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_RoomPosition_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RoomPosition parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RoomPosition parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<RoomPosition> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RoomPosition)) {
            return super.equals(obj);
        }
        RoomPosition roomPosition = (RoomPosition) obj;
        if (getClosed() == roomPosition.getClosed() && getVip() == roomPosition.getVip() && getUid() == roomPosition.getUid() && hasTitle() == roomPosition.hasTitle()) {
            return (!hasTitle() || getTitle().equals(roomPosition.getTitle())) && getNickname().equals(roomPosition.getNickname()) && getAvatar().equals(roomPosition.getAvatar()) && getCopper() == roomPosition.getCopper() && getPingVal() == roomPosition.getPingVal() && getPeripheral() == roomPosition.getPeripheral() && this.state_ == roomPosition.state_ && getBattleTitle().equals(roomPosition.getBattleTitle()) && getBattleTitleColor().equals(roomPosition.getBattleTitleColor()) && this.battleArea_ == roomPosition.battleArea_ && getKickCount() == roomPosition.getKickCount() && getIgnore().equals(roomPosition.getIgnore()) && this.platform_ == roomPosition.platform_ && getProficiencyLevel() == roomPosition.getProficiencyLevel() && this.phoneType_ == roomPosition.phoneType_ && this.unknownFields.equals(roomPosition.unknownFields);
        }
        return false;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public BattleArea getBattleArea() {
        BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
        return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getBattleAreaValue() {
        return this.battleArea_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getBattleTitle() {
        Object obj = this.battleTitle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getBattleTitleBytes() {
        Object obj = this.battleTitle_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitle_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getBattleTitleColor() {
        Object obj = this.battleTitleColor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitleColor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getBattleTitleColorBytes() {
        Object obj = this.battleTitleColor_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitleColor_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getClosed() {
        return this.closed_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getIgnore() {
        Object obj = this.ignore_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ignore_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getIgnoreBytes() {
        Object obj = this.ignore_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.ignore_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getKickCount() {
        return this.kickCount_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public ByteString getNicknameBytes() {
        Object obj = this.nickname_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.nickname_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<RoomPosition> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getPeripheral() {
        return this.peripheral_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public PhoneType getPhoneType() {
        PhoneType phoneTypeValueOf = PhoneType.valueOf(this.phoneType_);
        return phoneTypeValueOf == null ? PhoneType.UNRECOGNIZED : phoneTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPhoneTypeValue() {
        return this.phoneType_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPingVal() {
        return this.pingVal_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public Platform getPlatform() {
        Platform platformValueOf = Platform.valueOf(this.platform_);
        return platformValueOf == null ? Platform.UNRECOGNIZED : platformValueOf;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getPlatformValue() {
        return this.platform_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getProficiencyLevel() {
        return this.proficiencyLevel_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        boolean z10 = this.closed_;
        int iComputeBoolSize = z10 ? 0 + CodedOutputStream.computeBoolSize(1, z10) : 0;
        boolean z11 = this.vip_;
        if (z11) {
            iComputeBoolSize += CodedOutputStream.computeBoolSize(2, z11);
        }
        int i11 = this.uid_;
        if (i11 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(3, i11);
        }
        if (this.title_ != null) {
            iComputeBoolSize += CodedOutputStream.computeMessageSize(4, getTitle());
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(5, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(6, this.avatar_);
        }
        int i12 = this.copper_;
        if (i12 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(7, i12);
        }
        int i13 = this.pingVal_;
        if (i13 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(8, i13);
        }
        boolean z12 = this.peripheral_;
        if (z12) {
            iComputeBoolSize += CodedOutputStream.computeBoolSize(9, z12);
        }
        if (this.state_ != State.EMPTY.getNumber()) {
            iComputeBoolSize += CodedOutputStream.computeEnumSize(10, this.state_);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(11, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(12, this.battleTitleColor_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            iComputeBoolSize += CodedOutputStream.computeEnumSize(13, this.battleArea_);
        }
        int i14 = this.kickCount_;
        if (i14 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(14, i14);
        }
        if (!getIgnoreBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(15, this.ignore_);
        }
        if (this.platform_ != Platform.MOBILE.getNumber()) {
            iComputeBoolSize += CodedOutputStream.computeEnumSize(16, this.platform_);
        }
        int i15 = this.proficiencyLevel_;
        if (i15 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(17, i15);
        }
        if (this.phoneType_ != PhoneType.UNKNOWN.getNumber()) {
            iComputeBoolSize += CodedOutputStream.computeEnumSize(31, this.phoneType_);
        }
        int serializedSize = iComputeBoolSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public State getState() {
        State stateValueOf = State.valueOf(this.state_);
        return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getStateValue() {
        return this.state_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public BattleTitle getTitle() {
        BattleTitle battleTitle = this.title_;
        return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public BattleTitleOrBuilder getTitleOrBuilder() {
        return getTitle();
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
    public boolean hasTitle() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getClosed())) * 37) + 2) * 53) + Internal.hashBoolean(getVip())) * 37) + 3) * 53) + getUid();
        if (hasTitle()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getTitle().hashCode();
        }
        int iHashCode2 = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((iHashCode * 37) + 5) * 53) + getNickname().hashCode()) * 37) + 6) * 53) + getAvatar().hashCode()) * 37) + 7) * 53) + getCopper()) * 37) + 8) * 53) + getPingVal()) * 37) + 9) * 53) + Internal.hashBoolean(getPeripheral())) * 37) + 10) * 53) + this.state_) * 37) + 11) * 53) + getBattleTitle().hashCode()) * 37) + 12) * 53) + getBattleTitleColor().hashCode()) * 37) + 13) * 53) + this.battleArea_) * 37) + 14) * 53) + getKickCount()) * 37) + 15) * 53) + getIgnore().hashCode()) * 37) + 16) * 53) + this.platform_) * 37) + 17) * 53) + getProficiencyLevel()) * 37) + 31) * 53) + this.phoneType_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_RoomPosition_fieldAccessorTable.ensureFieldAccessorsInitialized(RoomPosition.class, Builder.class);
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
        return new RoomPosition();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z10 = this.closed_;
        if (z10) {
            codedOutputStream.writeBool(1, z10);
        }
        boolean z11 = this.vip_;
        if (z11) {
            codedOutputStream.writeBool(2, z11);
        }
        int i10 = this.uid_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(3, i10);
        }
        if (this.title_ != null) {
            codedOutputStream.writeMessage(4, getTitle());
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.avatar_);
        }
        int i11 = this.copper_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(7, i11);
        }
        int i12 = this.pingVal_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(8, i12);
        }
        boolean z12 = this.peripheral_;
        if (z12) {
            codedOutputStream.writeBool(9, z12);
        }
        if (this.state_ != State.EMPTY.getNumber()) {
            codedOutputStream.writeEnum(10, this.state_);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.battleTitleColor_);
        }
        if (this.battleArea_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(13, this.battleArea_);
        }
        int i13 = this.kickCount_;
        if (i13 != 0) {
            codedOutputStream.writeInt32(14, i13);
        }
        if (!getIgnoreBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 15, this.ignore_);
        }
        if (this.platform_ != Platform.MOBILE.getNumber()) {
            codedOutputStream.writeEnum(16, this.platform_);
        }
        int i14 = this.proficiencyLevel_;
        if (i14 != 0) {
            codedOutputStream.writeInt32(17, i14);
        }
        if (this.phoneType_ != PhoneType.UNKNOWN.getNumber()) {
            codedOutputStream.writeEnum(31, this.phoneType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RoomPositionOrBuilder {
        private Object avatar_;
        private int battleArea_;
        private Object battleTitleColor_;
        private Object battleTitle_;
        private boolean closed_;
        private int copper_;
        private Object ignore_;
        private int kickCount_;
        private Object nickname_;
        private boolean peripheral_;
        private int phoneType_;
        private int pingVal_;
        private int platform_;
        private int proficiencyLevel_;
        private int state_;
        private SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> titleBuilder_;
        private BattleTitle title_;
        private int uid_;
        private boolean vip_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_RoomPosition_descriptor;
        }

        private SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> getTitleFieldBuilder() {
            if (this.titleBuilder_ == null) {
                this.titleBuilder_ = new SingleFieldBuilderV3<>(getTitle(), getParentForChildren(), isClean());
                this.title_ = null;
            }
            return this.titleBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAvatar() {
            this.avatar_ = RoomPosition.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public Builder clearBattleArea() {
            this.battleArea_ = 0;
            onChanged();
            return this;
        }

        public Builder clearBattleTitle() {
            this.battleTitle_ = RoomPosition.getDefaultInstance().getBattleTitle();
            onChanged();
            return this;
        }

        public Builder clearBattleTitleColor() {
            this.battleTitleColor_ = RoomPosition.getDefaultInstance().getBattleTitleColor();
            onChanged();
            return this;
        }

        public Builder clearClosed() {
            this.closed_ = false;
            onChanged();
            return this;
        }

        public Builder clearCopper() {
            this.copper_ = 0;
            onChanged();
            return this;
        }

        public Builder clearIgnore() {
            this.ignore_ = RoomPosition.getDefaultInstance().getIgnore();
            onChanged();
            return this;
        }

        public Builder clearKickCount() {
            this.kickCount_ = 0;
            onChanged();
            return this;
        }

        public Builder clearNickname() {
            this.nickname_ = RoomPosition.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public Builder clearPeripheral() {
            this.peripheral_ = false;
            onChanged();
            return this;
        }

        public Builder clearPhoneType() {
            this.phoneType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPingVal() {
            this.pingVal_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPlatform() {
            this.platform_ = 0;
            onChanged();
            return this;
        }

        public Builder clearProficiencyLevel() {
            this.proficiencyLevel_ = 0;
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

        public Builder clearUid() {
            this.uid_ = 0;
            onChanged();
            return this;
        }

        public Builder clearVip() {
            this.vip_ = false;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public BattleArea getBattleArea() {
            BattleArea battleAreaValueOf = BattleArea.valueOf(this.battleArea_);
            return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getBattleAreaValue() {
            return this.battleArea_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getBattleTitle() {
            Object obj = this.battleTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getBattleTitleBytes() {
            Object obj = this.battleTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getBattleTitleColor() {
            Object obj = this.battleTitleColor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitleColor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getBattleTitleColorBytes() {
            Object obj = this.battleTitleColor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitleColor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getClosed() {
            return this.closed_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getCopper() {
            return this.copper_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_RoomPosition_descriptor;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getIgnore() {
            Object obj = this.ignore_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ignore_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getIgnoreBytes() {
            Object obj = this.ignore_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ignore_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getKickCount() {
            return this.kickCount_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getPeripheral() {
            return this.peripheral_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public PhoneType getPhoneType() {
            PhoneType phoneTypeValueOf = PhoneType.valueOf(this.phoneType_);
            return phoneTypeValueOf == null ? PhoneType.UNRECOGNIZED : phoneTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPhoneTypeValue() {
            return this.phoneType_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPingVal() {
            return this.pingVal_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public Platform getPlatform() {
            Platform platformValueOf = Platform.valueOf(this.platform_);
            return platformValueOf == null ? Platform.UNRECOGNIZED : platformValueOf;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getPlatformValue() {
            return this.platform_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getProficiencyLevel() {
            return this.proficiencyLevel_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public State getState() {
            State stateValueOf = State.valueOf(this.state_);
            return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
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

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public BattleTitleOrBuilder getTitleOrBuilder() {
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (BattleTitleOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
            }
            BattleTitle battleTitle = this.title_;
            return battleTitle == null ? BattleTitle.getDefaultInstance() : battleTitle;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public int getUid() {
            return this.uid_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean getVip() {
            return this.vip_;
        }

        @Override // com.papa91.battle.protocol.RoomPositionOrBuilder
        public boolean hasTitle() {
            return (this.titleBuilder_ == null && this.title_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_RoomPosition_fieldAccessorTable.ensureFieldAccessorsInitialized(RoomPosition.class, Builder.class);
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

        public Builder setClosed(boolean z10) {
            this.closed_ = z10;
            onChanged();
            return this;
        }

        public Builder setCopper(int i10) {
            this.copper_ = i10;
            onChanged();
            return this;
        }

        public Builder setIgnore(String str) {
            str.getClass();
            this.ignore_ = str;
            onChanged();
            return this;
        }

        public Builder setIgnoreBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.ignore_ = byteString;
            onChanged();
            return this;
        }

        public Builder setKickCount(int i10) {
            this.kickCount_ = i10;
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

        public Builder setPeripheral(boolean z10) {
            this.peripheral_ = z10;
            onChanged();
            return this;
        }

        public Builder setPhoneType(PhoneType phoneType) {
            phoneType.getClass();
            this.phoneType_ = phoneType.getNumber();
            onChanged();
            return this;
        }

        public Builder setPhoneTypeValue(int i10) {
            this.phoneType_ = i10;
            onChanged();
            return this;
        }

        public Builder setPingVal(int i10) {
            this.pingVal_ = i10;
            onChanged();
            return this;
        }

        public Builder setPlatform(Platform platform) {
            platform.getClass();
            this.platform_ = platform.getNumber();
            onChanged();
            return this;
        }

        public Builder setPlatformValue(int i10) {
            this.platform_ = i10;
            onChanged();
            return this;
        }

        public Builder setProficiencyLevel(int i10) {
            this.proficiencyLevel_ = i10;
            onChanged();
            return this;
        }

        public Builder setState(State state) {
            state.getClass();
            this.state_ = state.getNumber();
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

        public Builder setUid(int i10) {
            this.uid_ = i10;
            onChanged();
            return this;
        }

        public Builder setVip(boolean z10) {
            this.vip_ = z10;
            onChanged();
            return this;
        }

        private Builder() {
            this.nickname_ = "";
            this.avatar_ = "";
            this.state_ = 0;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.battleArea_ = 0;
            this.ignore_ = "";
            this.platform_ = 0;
            this.phoneType_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RoomPosition build() {
            RoomPosition roomPositionBuildPartial = buildPartial();
            if (roomPositionBuildPartial.isInitialized()) {
                return roomPositionBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) roomPositionBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RoomPosition buildPartial() {
            RoomPosition roomPosition = new RoomPosition(this);
            roomPosition.closed_ = this.closed_;
            roomPosition.vip_ = this.vip_;
            roomPosition.uid_ = this.uid_;
            SingleFieldBuilderV3<BattleTitle, BattleTitle.Builder, BattleTitleOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
            if (singleFieldBuilderV3 == null) {
                roomPosition.title_ = this.title_;
            } else {
                roomPosition.title_ = (BattleTitle) singleFieldBuilderV3.build();
            }
            roomPosition.nickname_ = this.nickname_;
            roomPosition.avatar_ = this.avatar_;
            roomPosition.copper_ = this.copper_;
            roomPosition.pingVal_ = this.pingVal_;
            roomPosition.peripheral_ = this.peripheral_;
            roomPosition.state_ = this.state_;
            roomPosition.battleTitle_ = this.battleTitle_;
            roomPosition.battleTitleColor_ = this.battleTitleColor_;
            roomPosition.battleArea_ = this.battleArea_;
            roomPosition.kickCount_ = this.kickCount_;
            roomPosition.ignore_ = this.ignore_;
            roomPosition.platform_ = this.platform_;
            roomPosition.proficiencyLevel_ = this.proficiencyLevel_;
            roomPosition.phoneType_ = this.phoneType_;
            onBuilt();
            return roomPosition;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RoomPosition getDefaultInstanceForType() {
            return RoomPosition.getDefaultInstance();
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
            this.closed_ = false;
            this.vip_ = false;
            this.uid_ = 0;
            if (this.titleBuilder_ == null) {
                this.title_ = null;
            } else {
                this.title_ = null;
                this.titleBuilder_ = null;
            }
            this.nickname_ = "";
            this.avatar_ = "";
            this.copper_ = 0;
            this.pingVal_ = 0;
            this.peripheral_ = false;
            this.state_ = 0;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.battleArea_ = 0;
            this.kickCount_ = 0;
            this.ignore_ = "";
            this.platform_ = 0;
            this.proficiencyLevel_ = 0;
            this.phoneType_ = 0;
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

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof RoomPosition) {
                return mergeFrom((RoomPosition) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(RoomPosition roomPosition) {
            if (roomPosition == RoomPosition.getDefaultInstance()) {
                return this;
            }
            if (roomPosition.getClosed()) {
                setClosed(roomPosition.getClosed());
            }
            if (roomPosition.getVip()) {
                setVip(roomPosition.getVip());
            }
            if (roomPosition.getUid() != 0) {
                setUid(roomPosition.getUid());
            }
            if (roomPosition.hasTitle()) {
                mergeTitle(roomPosition.getTitle());
            }
            if (!roomPosition.getNickname().isEmpty()) {
                this.nickname_ = roomPosition.nickname_;
                onChanged();
            }
            if (!roomPosition.getAvatar().isEmpty()) {
                this.avatar_ = roomPosition.avatar_;
                onChanged();
            }
            if (roomPosition.getCopper() != 0) {
                setCopper(roomPosition.getCopper());
            }
            if (roomPosition.getPingVal() != 0) {
                setPingVal(roomPosition.getPingVal());
            }
            if (roomPosition.getPeripheral()) {
                setPeripheral(roomPosition.getPeripheral());
            }
            if (roomPosition.state_ != 0) {
                setStateValue(roomPosition.getStateValue());
            }
            if (!roomPosition.getBattleTitle().isEmpty()) {
                this.battleTitle_ = roomPosition.battleTitle_;
                onChanged();
            }
            if (!roomPosition.getBattleTitleColor().isEmpty()) {
                this.battleTitleColor_ = roomPosition.battleTitleColor_;
                onChanged();
            }
            if (roomPosition.battleArea_ != 0) {
                setBattleAreaValue(roomPosition.getBattleAreaValue());
            }
            if (roomPosition.getKickCount() != 0) {
                setKickCount(roomPosition.getKickCount());
            }
            if (!roomPosition.getIgnore().isEmpty()) {
                this.ignore_ = roomPosition.ignore_;
                onChanged();
            }
            if (roomPosition.platform_ != 0) {
                setPlatformValue(roomPosition.getPlatformValue());
            }
            if (roomPosition.getProficiencyLevel() != 0) {
                setProficiencyLevel(roomPosition.getProficiencyLevel());
            }
            if (roomPosition.phoneType_ != 0) {
                setPhoneTypeValue(roomPosition.getPhoneTypeValue());
            }
            mergeUnknownFields(((GeneratedMessageV3) roomPosition).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.nickname_ = "";
            this.avatar_ = "";
            this.state_ = 0;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.battleArea_ = 0;
            this.ignore_ = "";
            this.platform_ = 0;
            this.phoneType_ = 0;
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            RoomPosition roomPosition = null;
            try {
                try {
                    RoomPosition roomPosition2 = (RoomPosition) RoomPosition.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (roomPosition2 != null) {
                        mergeFrom(roomPosition2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RoomPosition roomPosition3 = (RoomPosition) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        roomPosition = roomPosition3;
                        if (roomPosition != null) {
                            mergeFrom(roomPosition);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (roomPosition != null) {
                    mergeFrom(roomPosition);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(RoomPosition roomPosition) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(roomPosition);
    }

    public static RoomPosition parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private RoomPosition(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RoomPosition parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RoomPosition getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static RoomPosition parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private RoomPosition() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
        this.avatar_ = "";
        this.state_ = 0;
        this.battleTitle_ = "";
        this.battleTitleColor_ = "";
        this.battleArea_ = 0;
        this.ignore_ = "";
        this.platform_ = 0;
        this.phoneType_ = 0;
    }

    public static RoomPosition parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static RoomPosition parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(InputStream inputStream) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RoomPosition parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RoomPosition parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static RoomPosition parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RoomPosition) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    private RoomPosition(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.closed_ = codedInputStream.readBool();
                            continue;
                        case 16:
                            this.vip_ = codedInputStream.readBool();
                            continue;
                        case 24:
                            this.uid_ = codedInputStream.readInt32();
                            continue;
                        case 34:
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
                        case 42:
                            this.nickname_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 50:
                            this.avatar_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 56:
                            this.copper_ = codedInputStream.readInt32();
                            continue;
                        case 64:
                            this.pingVal_ = codedInputStream.readInt32();
                            continue;
                        case 72:
                            this.peripheral_ = codedInputStream.readBool();
                            continue;
                        case 80:
                            this.state_ = codedInputStream.readEnum();
                            continue;
                        case 90:
                            this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 98:
                            this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 104:
                            this.battleArea_ = codedInputStream.readEnum();
                            continue;
                        case 112:
                            this.kickCount_ = codedInputStream.readInt32();
                            continue;
                        case 122:
                            this.ignore_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 128:
                            this.platform_ = codedInputStream.readEnum();
                            continue;
                        case 136:
                            this.proficiencyLevel_ = codedInputStream.readInt32();
                            continue;
                        case 248:
                            this.phoneType_ = codedInputStream.readEnum();
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
