package com.wufan.user.service.protobuf;

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

/* JADX INFO: loaded from: classes8.dex */
public final class NewMemberInfo extends GeneratedMessageV3 implements e {
    public static final int CLOUDCOIN_FIELD_NUMBER = 2;
    public static final int CLOUDDIAMOND_FIELD_NUMBER = 1;
    public static final int ISBAOYECARD_FIELD_NUMBER = 11;
    public static final int ISJISUCARD_FIELD_NUMBER = 12;
    public static final int ISNEWMEMBER_FIELD_NUMBER = 15;
    public static final int ISSIGNED_FIELD_NUMBER = 14;
    public static final int ISVIP_FIELD_NUMBER = 3;
    public static final int MONTHEXPIRETIME_FIELD_NUMBER = 5;
    public static final int NEWMEMBERDAYS_FIELD_NUMBER = 16;
    public static final int PROPNUM_FIELD_NUMBER = 13;
    public static final int SEASONEXPIRETIME_FIELD_NUMBER = 6;
    public static final int SHOWLABELCONTENT_FIELD_NUMBER = 9;
    public static final int SHOWLABELTYPE_FIELD_NUMBER = 8;
    public static final int SHOWNEWGIFT_FIELD_NUMBER = 17;
    public static final int TOTALTIME_FIELD_NUMBER = 18;
    public static final int VIPTIME_FIELD_NUMBER = 10;
    public static final int VIPTYPE_FIELD_NUMBER = 4;
    public static final int YEAREXPIRETIME_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private double cloudCoin_;
    private double cloudDiamond_;
    private boolean isBaoYeCard_;
    private boolean isJiSuCard_;
    private boolean isNewMember_;
    private boolean isSigned_;
    private boolean isVip_;
    private byte memoizedIsInitialized;
    private volatile Object monthExpireTime_;
    private int newMemberDays_;
    private int propNum_;
    private volatile Object seasonExpireTime_;
    private volatile Object showLabelContent_;
    private int showLabelType_;
    private boolean showNewGift_;
    private volatile Object totalTime_;
    private volatile Object vipTime_;
    private int vipType_;
    private volatile Object yearExpireTime_;
    private static final NewMemberInfo DEFAULT_INSTANCE = new NewMemberInfo();
    private static final Parser<NewMemberInfo> PARSER = new a();

    class a extends AbstractParser<NewMemberInfo> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NewMemberInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new NewMemberInfo(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements e {
        private double cloudCoin_;
        private double cloudDiamond_;
        private boolean isBaoYeCard_;
        private boolean isJiSuCard_;
        private boolean isNewMember_;
        private boolean isSigned_;
        private boolean isVip_;
        private Object monthExpireTime_;
        private int newMemberDays_;
        private int propNum_;
        private Object seasonExpireTime_;
        private Object showLabelContent_;
        private int showLabelType_;
        private boolean showNewGift_;
        private Object totalTime_;
        private Object vipTime_;
        private int vipType_;
        private Object yearExpireTime_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return c.f88128g;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearCloudCoin() {
            this.cloudCoin_ = 0.0d;
            onChanged();
            return this;
        }

        public b clearCloudDiamond() {
            this.cloudDiamond_ = 0.0d;
            onChanged();
            return this;
        }

        public b clearIsBaoYeCard() {
            this.isBaoYeCard_ = false;
            onChanged();
            return this;
        }

        public b clearIsJiSuCard() {
            this.isJiSuCard_ = false;
            onChanged();
            return this;
        }

        public b clearIsNewMember() {
            this.isNewMember_ = false;
            onChanged();
            return this;
        }

        public b clearIsSigned() {
            this.isSigned_ = false;
            onChanged();
            return this;
        }

        public b clearIsVip() {
            this.isVip_ = false;
            onChanged();
            return this;
        }

        public b clearMonthExpireTime() {
            this.monthExpireTime_ = NewMemberInfo.getDefaultInstance().getMonthExpireTime();
            onChanged();
            return this;
        }

        public b clearNewMemberDays() {
            this.newMemberDays_ = 0;
            onChanged();
            return this;
        }

        public b clearPropNum() {
            this.propNum_ = 0;
            onChanged();
            return this;
        }

        public b clearSeasonExpireTime() {
            this.seasonExpireTime_ = NewMemberInfo.getDefaultInstance().getSeasonExpireTime();
            onChanged();
            return this;
        }

        public b clearShowLabelContent() {
            this.showLabelContent_ = NewMemberInfo.getDefaultInstance().getShowLabelContent();
            onChanged();
            return this;
        }

        public b clearShowLabelType() {
            this.showLabelType_ = 0;
            onChanged();
            return this;
        }

        public b clearShowNewGift() {
            this.showNewGift_ = false;
            onChanged();
            return this;
        }

        public b clearTotalTime() {
            this.totalTime_ = NewMemberInfo.getDefaultInstance().getTotalTime();
            onChanged();
            return this;
        }

        public b clearVipTime() {
            this.vipTime_ = NewMemberInfo.getDefaultInstance().getVipTime();
            onChanged();
            return this;
        }

        public b clearVipType() {
            this.vipType_ = 0;
            onChanged();
            return this;
        }

        public b clearYearExpireTime() {
            this.yearExpireTime_ = NewMemberInfo.getDefaultInstance().getYearExpireTime();
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.e
        public double getCloudCoin() {
            return this.cloudCoin_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public double getCloudDiamond() {
            return this.cloudDiamond_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return c.f88128g;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getIsBaoYeCard() {
            return this.isBaoYeCard_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getIsJiSuCard() {
            return this.isJiSuCard_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getIsNewMember() {
            return this.isNewMember_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getIsSigned() {
            return this.isSigned_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getIsVip() {
            return this.isVip_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getMonthExpireTime() {
            Object obj = this.monthExpireTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.monthExpireTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getMonthExpireTimeBytes() {
            Object obj = this.monthExpireTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.monthExpireTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public int getNewMemberDays() {
            return this.newMemberDays_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public int getPropNum() {
            return this.propNum_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getSeasonExpireTime() {
            Object obj = this.seasonExpireTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.seasonExpireTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getSeasonExpireTimeBytes() {
            Object obj = this.seasonExpireTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.seasonExpireTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getShowLabelContent() {
            Object obj = this.showLabelContent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.showLabelContent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getShowLabelContentBytes() {
            Object obj = this.showLabelContent_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.showLabelContent_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public int getShowLabelType() {
            return this.showLabelType_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public boolean getShowNewGift() {
            return this.showNewGift_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getTotalTime() {
            Object obj = this.totalTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.totalTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getTotalTimeBytes() {
            Object obj = this.totalTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.totalTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getVipTime() {
            Object obj = this.vipTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.vipTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getVipTimeBytes() {
            Object obj = this.vipTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.vipTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public int getVipType() {
            return this.vipType_;
        }

        @Override // com.wufan.user.service.protobuf.e
        public String getYearExpireTime() {
            Object obj = this.yearExpireTime_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.yearExpireTime_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.e
        public ByteString getYearExpireTimeBytes() {
            Object obj = this.yearExpireTime_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.yearExpireTime_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return c.f88129h.ensureFieldAccessorsInitialized(NewMemberInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setCloudCoin(double value) {
            this.cloudCoin_ = value;
            onChanged();
            return this;
        }

        public b setCloudDiamond(double value) {
            this.cloudDiamond_ = value;
            onChanged();
            return this;
        }

        public b setIsBaoYeCard(boolean value) {
            this.isBaoYeCard_ = value;
            onChanged();
            return this;
        }

        public b setIsJiSuCard(boolean value) {
            this.isJiSuCard_ = value;
            onChanged();
            return this;
        }

        public b setIsNewMember(boolean value) {
            this.isNewMember_ = value;
            onChanged();
            return this;
        }

        public b setIsSigned(boolean value) {
            this.isSigned_ = value;
            onChanged();
            return this;
        }

        public b setIsVip(boolean value) {
            this.isVip_ = value;
            onChanged();
            return this;
        }

        public b setMonthExpireTime(String value) {
            value.getClass();
            this.monthExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setMonthExpireTimeBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.monthExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setNewMemberDays(int value) {
            this.newMemberDays_ = value;
            onChanged();
            return this;
        }

        public b setPropNum(int value) {
            this.propNum_ = value;
            onChanged();
            return this;
        }

        public b setSeasonExpireTime(String value) {
            value.getClass();
            this.seasonExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setSeasonExpireTimeBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.seasonExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setShowLabelContent(String value) {
            value.getClass();
            this.showLabelContent_ = value;
            onChanged();
            return this;
        }

        public b setShowLabelContentBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.showLabelContent_ = value;
            onChanged();
            return this;
        }

        public b setShowLabelType(int value) {
            this.showLabelType_ = value;
            onChanged();
            return this;
        }

        public b setShowNewGift(boolean value) {
            this.showNewGift_ = value;
            onChanged();
            return this;
        }

        public b setTotalTime(String value) {
            value.getClass();
            this.totalTime_ = value;
            onChanged();
            return this;
        }

        public b setTotalTimeBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.totalTime_ = value;
            onChanged();
            return this;
        }

        public b setVipTime(String value) {
            value.getClass();
            this.vipTime_ = value;
            onChanged();
            return this;
        }

        public b setVipTimeBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.vipTime_ = value;
            onChanged();
            return this;
        }

        public b setVipType(int value) {
            this.vipType_ = value;
            onChanged();
            return this;
        }

        public b setYearExpireTime(String value) {
            value.getClass();
            this.yearExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setYearExpireTimeBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.yearExpireTime_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.monthExpireTime_ = "";
            this.seasonExpireTime_ = "";
            this.yearExpireTime_ = "";
            this.showLabelContent_ = "";
            this.vipTime_ = "";
            this.totalTime_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public NewMemberInfo build() {
            NewMemberInfo newMemberInfoBuildPartial = buildPartial();
            if (newMemberInfoBuildPartial.isInitialized()) {
                return newMemberInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) newMemberInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public NewMemberInfo buildPartial() {
            NewMemberInfo newMemberInfo = new NewMemberInfo(this, (a) null);
            newMemberInfo.cloudDiamond_ = this.cloudDiamond_;
            newMemberInfo.cloudCoin_ = this.cloudCoin_;
            newMemberInfo.isVip_ = this.isVip_;
            newMemberInfo.vipType_ = this.vipType_;
            newMemberInfo.monthExpireTime_ = this.monthExpireTime_;
            newMemberInfo.seasonExpireTime_ = this.seasonExpireTime_;
            newMemberInfo.yearExpireTime_ = this.yearExpireTime_;
            newMemberInfo.showLabelType_ = this.showLabelType_;
            newMemberInfo.showLabelContent_ = this.showLabelContent_;
            newMemberInfo.vipTime_ = this.vipTime_;
            newMemberInfo.isBaoYeCard_ = this.isBaoYeCard_;
            newMemberInfo.isJiSuCard_ = this.isJiSuCard_;
            newMemberInfo.propNum_ = this.propNum_;
            newMemberInfo.isSigned_ = this.isSigned_;
            newMemberInfo.isNewMember_ = this.isNewMember_;
            newMemberInfo.newMemberDays_ = this.newMemberDays_;
            newMemberInfo.showNewGift_ = this.showNewGift_;
            newMemberInfo.totalTime_ = this.totalTime_;
            onBuilt();
            return newMemberInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public NewMemberInfo getDefaultInstanceForType() {
            return NewMemberInfo.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b setField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.setField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            return (b) super.setRepeatedField(field, index, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final b setUnknownFields(final UnknownFieldSet unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b clearOneof(Descriptors.OneofDescriptor oneof) {
            return (b) super.clearOneof(oneof);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final b mergeUnknownFields(final UnknownFieldSet unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b clear() {
            super.clear();
            this.cloudDiamond_ = 0.0d;
            this.cloudCoin_ = 0.0d;
            this.isVip_ = false;
            this.vipType_ = 0;
            this.monthExpireTime_ = "";
            this.seasonExpireTime_ = "";
            this.yearExpireTime_ = "";
            this.showLabelType_ = 0;
            this.showLabelContent_ = "";
            this.vipTime_ = "";
            this.isBaoYeCard_ = false;
            this.isJiSuCard_ = false;
            this.propNum_ = 0;
            this.isSigned_ = false;
            this.isNewMember_ = false;
            this.newMemberDays_ = 0;
            this.showNewGift_ = false;
            this.totalTime_ = "";
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof NewMemberInfo) {
                return mergeFrom((NewMemberInfo) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(NewMemberInfo other) {
            if (other == NewMemberInfo.getDefaultInstance()) {
                return this;
            }
            if (other.getCloudDiamond() != 0.0d) {
                setCloudDiamond(other.getCloudDiamond());
            }
            if (other.getCloudCoin() != 0.0d) {
                setCloudCoin(other.getCloudCoin());
            }
            if (other.getIsVip()) {
                setIsVip(other.getIsVip());
            }
            if (other.getVipType() != 0) {
                setVipType(other.getVipType());
            }
            if (!other.getMonthExpireTime().isEmpty()) {
                this.monthExpireTime_ = other.monthExpireTime_;
                onChanged();
            }
            if (!other.getSeasonExpireTime().isEmpty()) {
                this.seasonExpireTime_ = other.seasonExpireTime_;
                onChanged();
            }
            if (!other.getYearExpireTime().isEmpty()) {
                this.yearExpireTime_ = other.yearExpireTime_;
                onChanged();
            }
            if (other.getShowLabelType() != 0) {
                setShowLabelType(other.getShowLabelType());
            }
            if (!other.getShowLabelContent().isEmpty()) {
                this.showLabelContent_ = other.showLabelContent_;
                onChanged();
            }
            if (!other.getVipTime().isEmpty()) {
                this.vipTime_ = other.vipTime_;
                onChanged();
            }
            if (other.getIsBaoYeCard()) {
                setIsBaoYeCard(other.getIsBaoYeCard());
            }
            if (other.getIsJiSuCard()) {
                setIsJiSuCard(other.getIsJiSuCard());
            }
            if (other.getPropNum() != 0) {
                setPropNum(other.getPropNum());
            }
            if (other.getIsSigned()) {
                setIsSigned(other.getIsSigned());
            }
            if (other.getIsNewMember()) {
                setIsNewMember(other.getIsNewMember());
            }
            if (other.getNewMemberDays() != 0) {
                setNewMemberDays(other.getNewMemberDays());
            }
            if (other.getShowNewGift()) {
                setShowNewGift(other.getShowNewGift());
            }
            if (!other.getTotalTime().isEmpty()) {
                this.totalTime_ = other.totalTime_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.monthExpireTime_ = "";
            this.seasonExpireTime_ = "";
            this.yearExpireTime_ = "";
            this.showLabelContent_ = "";
            this.vipTime_ = "";
            this.totalTime_ = "";
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            NewMemberInfo newMemberInfo = null;
            try {
                try {
                    NewMemberInfo newMemberInfo2 = (NewMemberInfo) NewMemberInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (newMemberInfo2 != null) {
                        mergeFrom(newMemberInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    NewMemberInfo newMemberInfo3 = (NewMemberInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        newMemberInfo = newMemberInfo3;
                        if (newMemberInfo != null) {
                            mergeFrom(newMemberInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (newMemberInfo != null) {
                    mergeFrom(newMemberInfo);
                }
                throw th;
            }
        }
    }

    /* synthetic */ NewMemberInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static NewMemberInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return c.f88128g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static NewMemberInfo parseDelimitedFrom(InputStream input) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static NewMemberInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<NewMemberInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NewMemberInfo)) {
            return super.equals(obj);
        }
        NewMemberInfo newMemberInfo = (NewMemberInfo) obj;
        return Double.doubleToLongBits(getCloudDiamond()) == Double.doubleToLongBits(newMemberInfo.getCloudDiamond()) && Double.doubleToLongBits(getCloudCoin()) == Double.doubleToLongBits(newMemberInfo.getCloudCoin()) && getIsVip() == newMemberInfo.getIsVip() && getVipType() == newMemberInfo.getVipType() && getMonthExpireTime().equals(newMemberInfo.getMonthExpireTime()) && getSeasonExpireTime().equals(newMemberInfo.getSeasonExpireTime()) && getYearExpireTime().equals(newMemberInfo.getYearExpireTime()) && getShowLabelType() == newMemberInfo.getShowLabelType() && getShowLabelContent().equals(newMemberInfo.getShowLabelContent()) && getVipTime().equals(newMemberInfo.getVipTime()) && getIsBaoYeCard() == newMemberInfo.getIsBaoYeCard() && getIsJiSuCard() == newMemberInfo.getIsJiSuCard() && getPropNum() == newMemberInfo.getPropNum() && getIsSigned() == newMemberInfo.getIsSigned() && getIsNewMember() == newMemberInfo.getIsNewMember() && getNewMemberDays() == newMemberInfo.getNewMemberDays() && getShowNewGift() == newMemberInfo.getShowNewGift() && getTotalTime().equals(newMemberInfo.getTotalTime()) && this.unknownFields.equals(newMemberInfo.unknownFields);
    }

    @Override // com.wufan.user.service.protobuf.e
    public double getCloudCoin() {
        return this.cloudCoin_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public double getCloudDiamond() {
        return this.cloudDiamond_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getIsBaoYeCard() {
        return this.isBaoYeCard_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getIsJiSuCard() {
        return this.isJiSuCard_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getIsNewMember() {
        return this.isNewMember_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getIsSigned() {
        return this.isSigned_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getIsVip() {
        return this.isVip_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getMonthExpireTime() {
        Object obj = this.monthExpireTime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.monthExpireTime_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getMonthExpireTimeBytes() {
        Object obj = this.monthExpireTime_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.monthExpireTime_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public int getNewMemberDays() {
        return this.newMemberDays_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<NewMemberInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.user.service.protobuf.e
    public int getPropNum() {
        return this.propNum_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getSeasonExpireTime() {
        Object obj = this.seasonExpireTime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.seasonExpireTime_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getSeasonExpireTimeBytes() {
        Object obj = this.seasonExpireTime_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.seasonExpireTime_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        double d10 = this.cloudDiamond_;
        int iComputeDoubleSize = d10 != 0.0d ? 0 + CodedOutputStream.computeDoubleSize(1, d10) : 0;
        double d11 = this.cloudCoin_;
        if (d11 != 0.0d) {
            iComputeDoubleSize += CodedOutputStream.computeDoubleSize(2, d11);
        }
        boolean z10 = this.isVip_;
        if (z10) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(3, z10);
        }
        int i11 = this.vipType_;
        if (i11 != 0) {
            iComputeDoubleSize += CodedOutputStream.computeInt32Size(4, i11);
        }
        if (!getMonthExpireTimeBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(5, this.monthExpireTime_);
        }
        if (!getSeasonExpireTimeBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(6, this.seasonExpireTime_);
        }
        if (!getYearExpireTimeBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(7, this.yearExpireTime_);
        }
        int i12 = this.showLabelType_;
        if (i12 != 0) {
            iComputeDoubleSize += CodedOutputStream.computeInt32Size(8, i12);
        }
        if (!getShowLabelContentBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(9, this.showLabelContent_);
        }
        if (!getVipTimeBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(10, this.vipTime_);
        }
        boolean z11 = this.isBaoYeCard_;
        if (z11) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(11, z11);
        }
        boolean z12 = this.isJiSuCard_;
        if (z12) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(12, z12);
        }
        int i13 = this.propNum_;
        if (i13 != 0) {
            iComputeDoubleSize += CodedOutputStream.computeInt32Size(13, i13);
        }
        boolean z13 = this.isSigned_;
        if (z13) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(14, z13);
        }
        boolean z14 = this.isNewMember_;
        if (z14) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(15, z14);
        }
        int i14 = this.newMemberDays_;
        if (i14 != 0) {
            iComputeDoubleSize += CodedOutputStream.computeInt32Size(16, i14);
        }
        boolean z15 = this.showNewGift_;
        if (z15) {
            iComputeDoubleSize += CodedOutputStream.computeBoolSize(17, z15);
        }
        if (!getTotalTimeBytes().isEmpty()) {
            iComputeDoubleSize += GeneratedMessageV3.computeStringSize(18, this.totalTime_);
        }
        int serializedSize = iComputeDoubleSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getShowLabelContent() {
        Object obj = this.showLabelContent_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.showLabelContent_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getShowLabelContentBytes() {
        Object obj = this.showLabelContent_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.showLabelContent_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public int getShowLabelType() {
        return this.showLabelType_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public boolean getShowNewGift() {
        return this.showNewGift_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getTotalTime() {
        Object obj = this.totalTime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.totalTime_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getTotalTimeBytes() {
        Object obj = this.totalTime_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.totalTime_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getVipTime() {
        Object obj = this.vipTime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.vipTime_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getVipTimeBytes() {
        Object obj = this.vipTime_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.vipTime_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public int getVipType() {
        return this.vipType_;
    }

    @Override // com.wufan.user.service.protobuf.e
    public String getYearExpireTime() {
        Object obj = this.yearExpireTime_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.yearExpireTime_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.e
    public ByteString getYearExpireTimeBytes() {
        Object obj = this.yearExpireTime_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.yearExpireTime_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(Double.doubleToLongBits(getCloudDiamond()))) * 37) + 2) * 53) + Internal.hashLong(Double.doubleToLongBits(getCloudCoin()))) * 37) + 3) * 53) + Internal.hashBoolean(getIsVip())) * 37) + 4) * 53) + getVipType()) * 37) + 5) * 53) + getMonthExpireTime().hashCode()) * 37) + 6) * 53) + getSeasonExpireTime().hashCode()) * 37) + 7) * 53) + getYearExpireTime().hashCode()) * 37) + 8) * 53) + getShowLabelType()) * 37) + 9) * 53) + getShowLabelContent().hashCode()) * 37) + 10) * 53) + getVipTime().hashCode()) * 37) + 11) * 53) + Internal.hashBoolean(getIsBaoYeCard())) * 37) + 12) * 53) + Internal.hashBoolean(getIsJiSuCard())) * 37) + 13) * 53) + getPropNum()) * 37) + 14) * 53) + Internal.hashBoolean(getIsSigned())) * 37) + 15) * 53) + Internal.hashBoolean(getIsNewMember())) * 37) + 16) * 53) + getNewMemberDays()) * 37) + 17) * 53) + Internal.hashBoolean(getShowNewGift())) * 37) + 18) * 53) + getTotalTime().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return c.f88129h.ensureFieldAccessorsInitialized(NewMemberInfo.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        double d10 = this.cloudDiamond_;
        if (d10 != 0.0d) {
            output.writeDouble(1, d10);
        }
        double d11 = this.cloudCoin_;
        if (d11 != 0.0d) {
            output.writeDouble(2, d11);
        }
        boolean z10 = this.isVip_;
        if (z10) {
            output.writeBool(3, z10);
        }
        int i10 = this.vipType_;
        if (i10 != 0) {
            output.writeInt32(4, i10);
        }
        if (!getMonthExpireTimeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 5, this.monthExpireTime_);
        }
        if (!getSeasonExpireTimeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 6, this.seasonExpireTime_);
        }
        if (!getYearExpireTimeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 7, this.yearExpireTime_);
        }
        int i11 = this.showLabelType_;
        if (i11 != 0) {
            output.writeInt32(8, i11);
        }
        if (!getShowLabelContentBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 9, this.showLabelContent_);
        }
        if (!getVipTimeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 10, this.vipTime_);
        }
        boolean z11 = this.isBaoYeCard_;
        if (z11) {
            output.writeBool(11, z11);
        }
        boolean z12 = this.isJiSuCard_;
        if (z12) {
            output.writeBool(12, z12);
        }
        int i12 = this.propNum_;
        if (i12 != 0) {
            output.writeInt32(13, i12);
        }
        boolean z13 = this.isSigned_;
        if (z13) {
            output.writeBool(14, z13);
        }
        boolean z14 = this.isNewMember_;
        if (z14) {
            output.writeBool(15, z14);
        }
        int i13 = this.newMemberDays_;
        if (i13 != 0) {
            output.writeInt32(16, i13);
        }
        boolean z15 = this.showNewGift_;
        if (z15) {
            output.writeBool(17, z15);
        }
        if (!getTotalTimeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 18, this.totalTime_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ NewMemberInfo(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(NewMemberInfo prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static NewMemberInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private NewMemberInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static NewMemberInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static NewMemberInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public NewMemberInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static NewMemberInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private NewMemberInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.monthExpireTime_ = "";
        this.seasonExpireTime_ = "";
        this.yearExpireTime_ = "";
        this.showLabelContent_ = "";
        this.vipTime_ = "";
        this.totalTime_ = "";
    }

    public static NewMemberInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static NewMemberInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static NewMemberInfo parseFrom(InputStream input) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static NewMemberInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static NewMemberInfo parseFrom(CodedInputStream input) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private NewMemberInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = input.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 9:
                                this.cloudDiamond_ = input.readDouble();
                                continue;
                            case 17:
                                this.cloudCoin_ = input.readDouble();
                                continue;
                            case 24:
                                this.isVip_ = input.readBool();
                                continue;
                            case 32:
                                this.vipType_ = input.readInt32();
                                continue;
                            case 42:
                                this.monthExpireTime_ = input.readStringRequireUtf8();
                                continue;
                            case 50:
                                this.seasonExpireTime_ = input.readStringRequireUtf8();
                                continue;
                            case 58:
                                this.yearExpireTime_ = input.readStringRequireUtf8();
                                continue;
                            case 64:
                                this.showLabelType_ = input.readInt32();
                                continue;
                            case 74:
                                this.showLabelContent_ = input.readStringRequireUtf8();
                                continue;
                            case 82:
                                this.vipTime_ = input.readStringRequireUtf8();
                                continue;
                            case 88:
                                this.isBaoYeCard_ = input.readBool();
                                continue;
                            case 96:
                                this.isJiSuCard_ = input.readBool();
                                continue;
                            case 104:
                                this.propNum_ = input.readInt32();
                                continue;
                            case 112:
                                this.isSigned_ = input.readBool();
                                continue;
                            case 120:
                                this.isNewMember_ = input.readBool();
                                continue;
                            case 128:
                                this.newMemberDays_ = input.readInt32();
                                continue;
                            case 136:
                                this.showNewGift_ = input.readBool();
                                continue;
                            case 146:
                                this.totalTime_ = input.readStringRequireUtf8();
                                continue;
                            default:
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
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

    public static NewMemberInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (NewMemberInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
