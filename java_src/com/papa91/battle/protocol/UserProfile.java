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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class UserProfile extends GeneratedMessageV3 implements UserProfileOrBuilder {
    public static final int AREA_FIELD_NUMBER = 9;
    public static final int AVATAR_FIELD_NUMBER = 3;
    public static final int BATTLETITLECOLOR_FIELD_NUMBER = 6;
    public static final int BATTLETITLE_FIELD_NUMBER = 5;
    public static final int COPPER_FIELD_NUMBER = 7;
    public static final int KICKCOUNT_FIELD_NUMBER = 8;
    public static final int NICKNAME_FIELD_NUMBER = 2;
    public static final int UID_FIELD_NUMBER = 1;
    public static final int VIP_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int area_;
    private volatile Object avatar_;
    private volatile Object battleTitleColor_;
    private volatile Object battleTitle_;
    private int copper_;
    private int kickCount_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private int uid_;
    private boolean vip_;
    private static final UserProfile DEFAULT_INSTANCE = new UserProfile();
    private static final Parser<UserProfile> PARSER = new AbstractParser<UserProfile>() { // from class: com.papa91.battle.protocol.UserProfile.1
        @Override // com.google.protobuf.Parser
        public UserProfile parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new UserProfile(codedInputStream, extensionRegistryLite);
        }
    };

    public static UserProfile getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_UserProfile_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UserProfile parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UserProfile parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<UserProfile> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserProfile)) {
            return super.equals(obj);
        }
        UserProfile userProfile = (UserProfile) obj;
        return getUid() == userProfile.getUid() && getNickname().equals(userProfile.getNickname()) && getAvatar().equals(userProfile.getAvatar()) && getVip() == userProfile.getVip() && getBattleTitle().equals(userProfile.getBattleTitle()) && getBattleTitleColor().equals(userProfile.getBattleTitleColor()) && getCopper() == userProfile.getCopper() && getKickCount() == userProfile.getKickCount() && this.area_ == userProfile.area_ && this.unknownFields.equals(userProfile.unknownFields);
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public BattleArea getArea() {
        BattleArea battleAreaValueOf = BattleArea.valueOf(this.area_);
        return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getAreaValue() {
        return this.area_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getBattleTitle() {
        Object obj = this.battleTitle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getBattleTitleBytes() {
        Object obj = this.battleTitle_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitle_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getBattleTitleColor() {
        Object obj = this.battleTitleColor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.battleTitleColor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public ByteString getBattleTitleColorBytes() {
        Object obj = this.battleTitleColor_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.battleTitleColor_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getKickCount() {
        return this.kickCount_;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
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
    public Parser<UserProfile> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.uid_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.avatar_);
        }
        boolean z10 = this.vip_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(4, z10);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.battleTitleColor_);
        }
        int i12 = this.copper_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, i12);
        }
        int i13 = this.kickCount_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(8, i13);
        }
        if (this.area_ != BattleArea.ALL.getNumber()) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(9, this.area_);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public int getUid() {
        return this.uid_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.UserProfileOrBuilder
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + getNickname().hashCode()) * 37) + 3) * 53) + getAvatar().hashCode()) * 37) + 4) * 53) + Internal.hashBoolean(getVip())) * 37) + 5) * 53) + getBattleTitle().hashCode()) * 37) + 6) * 53) + getBattleTitleColor().hashCode()) * 37) + 7) * 53) + getCopper()) * 37) + 8) * 53) + getKickCount()) * 37) + 9) * 53) + this.area_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_UserProfile_fieldAccessorTable.ensureFieldAccessorsInitialized(UserProfile.class, Builder.class);
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
        return new UserProfile();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.uid_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.avatar_);
        }
        boolean z10 = this.vip_;
        if (z10) {
            codedOutputStream.writeBool(4, z10);
        }
        if (!getBattleTitleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.battleTitle_);
        }
        if (!getBattleTitleColorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.battleTitleColor_);
        }
        int i11 = this.copper_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(7, i11);
        }
        int i12 = this.kickCount_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(8, i12);
        }
        if (this.area_ != BattleArea.ALL.getNumber()) {
            codedOutputStream.writeEnum(9, this.area_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements UserProfileOrBuilder {
        private int area_;
        private Object avatar_;
        private Object battleTitleColor_;
        private Object battleTitle_;
        private int copper_;
        private int kickCount_;
        private Object nickname_;
        private int uid_;
        private boolean vip_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_UserProfile_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearArea() {
            this.area_ = 0;
            onChanged();
            return this;
        }

        public Builder clearAvatar() {
            this.avatar_ = UserProfile.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public Builder clearBattleTitle() {
            this.battleTitle_ = UserProfile.getDefaultInstance().getBattleTitle();
            onChanged();
            return this;
        }

        public Builder clearBattleTitleColor() {
            this.battleTitleColor_ = UserProfile.getDefaultInstance().getBattleTitleColor();
            onChanged();
            return this;
        }

        public Builder clearCopper() {
            this.copper_ = 0;
            onChanged();
            return this;
        }

        public Builder clearKickCount() {
            this.kickCount_ = 0;
            onChanged();
            return this;
        }

        public Builder clearNickname() {
            this.nickname_ = UserProfile.getDefaultInstance().getNickname();
            onChanged();
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

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public BattleArea getArea() {
            BattleArea battleAreaValueOf = BattleArea.valueOf(this.area_);
            return battleAreaValueOf == null ? BattleArea.UNRECOGNIZED : battleAreaValueOf;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getAreaValue() {
            return this.area_;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getBattleTitle() {
            Object obj = this.battleTitle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getBattleTitleBytes() {
            Object obj = this.battleTitle_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitle_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getBattleTitleColor() {
            Object obj = this.battleTitleColor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.battleTitleColor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getBattleTitleColorBytes() {
            Object obj = this.battleTitleColor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.battleTitleColor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getCopper() {
            return this.copper_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_UserProfile_descriptor;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getKickCount() {
            return this.kickCount_;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public int getUid() {
            return this.uid_;
        }

        @Override // com.papa91.battle.protocol.UserProfileOrBuilder
        public boolean getVip() {
            return this.vip_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_UserProfile_fieldAccessorTable.ensureFieldAccessorsInitialized(UserProfile.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setArea(BattleArea battleArea) {
            battleArea.getClass();
            this.area_ = battleArea.getNumber();
            onChanged();
            return this;
        }

        public Builder setAreaValue(int i10) {
            this.area_ = i10;
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

        public Builder setCopper(int i10) {
            this.copper_ = i10;
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
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.area_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserProfile build() {
            UserProfile userProfileBuildPartial = buildPartial();
            if (userProfileBuildPartial.isInitialized()) {
                return userProfileBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) userProfileBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserProfile buildPartial() {
            UserProfile userProfile = new UserProfile(this);
            userProfile.uid_ = this.uid_;
            userProfile.nickname_ = this.nickname_;
            userProfile.avatar_ = this.avatar_;
            userProfile.vip_ = this.vip_;
            userProfile.battleTitle_ = this.battleTitle_;
            userProfile.battleTitleColor_ = this.battleTitleColor_;
            userProfile.copper_ = this.copper_;
            userProfile.kickCount_ = this.kickCount_;
            userProfile.area_ = this.area_;
            onBuilt();
            return userProfile;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserProfile getDefaultInstanceForType() {
            return UserProfile.getDefaultInstance();
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
            this.nickname_ = "";
            this.avatar_ = "";
            this.vip_ = false;
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.copper_ = 0;
            this.kickCount_ = 0;
            this.area_ = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof UserProfile) {
                return mergeFrom((UserProfile) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.nickname_ = "";
            this.avatar_ = "";
            this.battleTitle_ = "";
            this.battleTitleColor_ = "";
            this.area_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(UserProfile userProfile) {
            if (userProfile == UserProfile.getDefaultInstance()) {
                return this;
            }
            if (userProfile.getUid() != 0) {
                setUid(userProfile.getUid());
            }
            if (!userProfile.getNickname().isEmpty()) {
                this.nickname_ = userProfile.nickname_;
                onChanged();
            }
            if (!userProfile.getAvatar().isEmpty()) {
                this.avatar_ = userProfile.avatar_;
                onChanged();
            }
            if (userProfile.getVip()) {
                setVip(userProfile.getVip());
            }
            if (!userProfile.getBattleTitle().isEmpty()) {
                this.battleTitle_ = userProfile.battleTitle_;
                onChanged();
            }
            if (!userProfile.getBattleTitleColor().isEmpty()) {
                this.battleTitleColor_ = userProfile.battleTitleColor_;
                onChanged();
            }
            if (userProfile.getCopper() != 0) {
                setCopper(userProfile.getCopper());
            }
            if (userProfile.getKickCount() != 0) {
                setKickCount(userProfile.getKickCount());
            }
            if (userProfile.area_ != 0) {
                setAreaValue(userProfile.getAreaValue());
            }
            mergeUnknownFields(((GeneratedMessageV3) userProfile).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            UserProfile userProfile = null;
            try {
                try {
                    UserProfile userProfile2 = (UserProfile) UserProfile.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (userProfile2 != null) {
                        mergeFrom(userProfile2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    UserProfile userProfile3 = (UserProfile) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        userProfile = userProfile3;
                        if (userProfile != null) {
                            mergeFrom(userProfile);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (userProfile != null) {
                    mergeFrom(userProfile);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(UserProfile userProfile) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(userProfile);
    }

    public static UserProfile parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private UserProfile(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UserProfile parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static UserProfile parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public UserProfile getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static UserProfile parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private UserProfile() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
        this.avatar_ = "";
        this.battleTitle_ = "";
        this.battleTitleColor_ = "";
        this.area_ = 0;
    }

    public static UserProfile parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static UserProfile parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static UserProfile parseFrom(InputStream inputStream) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UserProfile parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static UserProfile parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    private UserProfile(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.uid_ = codedInputStream.readInt32();
                            } else if (tag == 18) {
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.avatar_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 32) {
                                this.vip_ = codedInputStream.readBool();
                            } else if (tag == 42) {
                                this.battleTitle_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 50) {
                                this.battleTitleColor_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag == 56) {
                                this.copper_ = codedInputStream.readInt32();
                            } else if (tag == 64) {
                                this.kickCount_ = codedInputStream.readInt32();
                            } else if (tag != 72) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.area_ = codedInputStream.readEnum();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
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

    public static UserProfile parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (UserProfile) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
