package com.wufan.user.service.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageCloudGamingAdCfgResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f87933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Descriptors.Descriptor f87935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f87936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Descriptors.FileDescriptor f87937e;

    public static final class AdCfgInfo extends GeneratedMessageV3 implements b {
        public static final int FIRSTPLAYMEMBEREXPIRETIME_FIELD_NUMBER = 7;
        public static final int ISFIRSTPURCHASEMEMBER_FIELD_NUMBER = 4;
        public static final int ISNEWMEMBER_FIELD_NUMBER = 1;
        public static final int ISSHOWNEWGIFT_FIELD_NUMBER = 2;
        public static final int ISSIGNEDTODAY_FIELD_NUMBER = 8;
        public static final int ISSIGNED_FIELD_NUMBER = 3;
        public static final int SHOWNEWGIFTEXPIRETIME_FIELD_NUMBER = 6;
        public static final int SHOWOLDMEMBER_FIELD_NUMBER = 10;
        public static final int SIGNDAY_FIELD_NUMBER = 5;
        public static final int SIGNGIFTDURATION_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private long firstPlayMemberExpireTime_;
        private boolean isFirstPurchaseMember_;
        private boolean isNewMember_;
        private boolean isShowNewGift_;
        private boolean isSignedToday_;
        private boolean isSigned_;
        private byte memoizedIsInitialized;
        private long showNewGiftExpireTime_;
        private boolean showOldMember_;
        private int signDay_;
        private int signGiftDuration_;
        private static final AdCfgInfo DEFAULT_INSTANCE = new AdCfgInfo();
        private static final Parser<AdCfgInfo> PARSER = new a();

        class a extends AbstractParser<AdCfgInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AdCfgInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new AdCfgInfo(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private long firstPlayMemberExpireTime_;
            private boolean isFirstPurchaseMember_;
            private boolean isNewMember_;
            private boolean isShowNewGift_;
            private boolean isSignedToday_;
            private boolean isSigned_;
            private long showNewGiftExpireTime_;
            private boolean showOldMember_;
            private int signDay_;
            private int signGiftDuration_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingAdCfgResponse.f87935c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearFirstPlayMemberExpireTime() {
                this.firstPlayMemberExpireTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearIsFirstPurchaseMember() {
                this.isFirstPurchaseMember_ = false;
                onChanged();
                return this;
            }

            public b clearIsNewMember() {
                this.isNewMember_ = false;
                onChanged();
                return this;
            }

            public b clearIsShowNewGift() {
                this.isShowNewGift_ = false;
                onChanged();
                return this;
            }

            public b clearIsSigned() {
                this.isSigned_ = false;
                onChanged();
                return this;
            }

            public b clearIsSignedToday() {
                this.isSignedToday_ = false;
                onChanged();
                return this;
            }

            public b clearShowNewGiftExpireTime() {
                this.showNewGiftExpireTime_ = 0L;
                onChanged();
                return this;
            }

            public b clearShowOldMember() {
                this.showOldMember_ = false;
                onChanged();
                return this;
            }

            public b clearSignDay() {
                this.signDay_ = 0;
                onChanged();
                return this;
            }

            public b clearSignGiftDuration() {
                this.signGiftDuration_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingAdCfgResponse.f87935c;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public long getFirstPlayMemberExpireTime() {
                return this.firstPlayMemberExpireTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getIsFirstPurchaseMember() {
                return this.isFirstPurchaseMember_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getIsNewMember() {
                return this.isNewMember_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getIsShowNewGift() {
                return this.isShowNewGift_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getIsSigned() {
                return this.isSigned_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getIsSignedToday() {
                return this.isSignedToday_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public long getShowNewGiftExpireTime() {
                return this.showNewGiftExpireTime_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public boolean getShowOldMember() {
                return this.showOldMember_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public int getSignDay() {
                return this.signDay_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
            public int getSignGiftDuration() {
                return this.signGiftDuration_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingAdCfgResponse.f87936d.ensureFieldAccessorsInitialized(AdCfgInfo.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setFirstPlayMemberExpireTime(long value) {
                this.firstPlayMemberExpireTime_ = value;
                onChanged();
                return this;
            }

            public b setIsFirstPurchaseMember(boolean value) {
                this.isFirstPurchaseMember_ = value;
                onChanged();
                return this;
            }

            public b setIsNewMember(boolean value) {
                this.isNewMember_ = value;
                onChanged();
                return this;
            }

            public b setIsShowNewGift(boolean value) {
                this.isShowNewGift_ = value;
                onChanged();
                return this;
            }

            public b setIsSigned(boolean value) {
                this.isSigned_ = value;
                onChanged();
                return this;
            }

            public b setIsSignedToday(boolean value) {
                this.isSignedToday_ = value;
                onChanged();
                return this;
            }

            public b setShowNewGiftExpireTime(long value) {
                this.showNewGiftExpireTime_ = value;
                onChanged();
                return this;
            }

            public b setShowOldMember(boolean value) {
                this.showOldMember_ = value;
                onChanged();
                return this;
            }

            public b setSignDay(int value) {
                this.signDay_ = value;
                onChanged();
                return this;
            }

            public b setSignGiftDuration(int value) {
                this.signGiftDuration_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public AdCfgInfo build() {
                AdCfgInfo adCfgInfoBuildPartial = buildPartial();
                if (adCfgInfoBuildPartial.isInitialized()) {
                    return adCfgInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) adCfgInfoBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public AdCfgInfo buildPartial() {
                AdCfgInfo adCfgInfo = new AdCfgInfo(this, (a) null);
                adCfgInfo.isNewMember_ = this.isNewMember_;
                adCfgInfo.isShowNewGift_ = this.isShowNewGift_;
                adCfgInfo.isSigned_ = this.isSigned_;
                adCfgInfo.isFirstPurchaseMember_ = this.isFirstPurchaseMember_;
                adCfgInfo.signDay_ = this.signDay_;
                adCfgInfo.showNewGiftExpireTime_ = this.showNewGiftExpireTime_;
                adCfgInfo.firstPlayMemberExpireTime_ = this.firstPlayMemberExpireTime_;
                adCfgInfo.isSignedToday_ = this.isSignedToday_;
                adCfgInfo.signGiftDuration_ = this.signGiftDuration_;
                adCfgInfo.showOldMember_ = this.showOldMember_;
                onBuilt();
                return adCfgInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public AdCfgInfo getDefaultInstanceForType() {
                return AdCfgInfo.getDefaultInstance();
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

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b clear() {
                super.clear();
                this.isNewMember_ = false;
                this.isShowNewGift_ = false;
                this.isSigned_ = false;
                this.isFirstPurchaseMember_ = false;
                this.signDay_ = 0;
                this.showNewGiftExpireTime_ = 0L;
                this.firstPlayMemberExpireTime_ = 0L;
                this.isSignedToday_ = false;
                this.signGiftDuration_ = 0;
                this.showOldMember_ = false;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof AdCfgInfo) {
                    return mergeFrom((AdCfgInfo) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(AdCfgInfo other) {
                if (other == AdCfgInfo.getDefaultInstance()) {
                    return this;
                }
                if (other.getIsNewMember()) {
                    setIsNewMember(other.getIsNewMember());
                }
                if (other.getIsShowNewGift()) {
                    setIsShowNewGift(other.getIsShowNewGift());
                }
                if (other.getIsSigned()) {
                    setIsSigned(other.getIsSigned());
                }
                if (other.getIsFirstPurchaseMember()) {
                    setIsFirstPurchaseMember(other.getIsFirstPurchaseMember());
                }
                if (other.getSignDay() != 0) {
                    setSignDay(other.getSignDay());
                }
                if (other.getShowNewGiftExpireTime() != 0) {
                    setShowNewGiftExpireTime(other.getShowNewGiftExpireTime());
                }
                if (other.getFirstPlayMemberExpireTime() != 0) {
                    setFirstPlayMemberExpireTime(other.getFirstPlayMemberExpireTime());
                }
                if (other.getIsSignedToday()) {
                    setIsSignedToday(other.getIsSignedToday());
                }
                if (other.getSignGiftDuration() != 0) {
                    setSignGiftDuration(other.getSignGiftDuration());
                }
                if (other.getShowOldMember()) {
                    setShowOldMember(other.getShowOldMember());
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                AdCfgInfo adCfgInfo = null;
                try {
                    try {
                        AdCfgInfo adCfgInfo2 = (AdCfgInfo) AdCfgInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (adCfgInfo2 != null) {
                            mergeFrom(adCfgInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        AdCfgInfo adCfgInfo3 = (AdCfgInfo) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            adCfgInfo = adCfgInfo3;
                            if (adCfgInfo != null) {
                                mergeFrom(adCfgInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (adCfgInfo != null) {
                        mergeFrom(adCfgInfo);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ AdCfgInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static AdCfgInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingAdCfgResponse.f87935c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdCfgInfo parseDelimitedFrom(InputStream input) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static AdCfgInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<AdCfgInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdCfgInfo)) {
                return super.equals(obj);
            }
            AdCfgInfo adCfgInfo = (AdCfgInfo) obj;
            return getIsNewMember() == adCfgInfo.getIsNewMember() && getIsShowNewGift() == adCfgInfo.getIsShowNewGift() && getIsSigned() == adCfgInfo.getIsSigned() && getIsFirstPurchaseMember() == adCfgInfo.getIsFirstPurchaseMember() && getSignDay() == adCfgInfo.getSignDay() && getShowNewGiftExpireTime() == adCfgInfo.getShowNewGiftExpireTime() && getFirstPlayMemberExpireTime() == adCfgInfo.getFirstPlayMemberExpireTime() && getIsSignedToday() == adCfgInfo.getIsSignedToday() && getSignGiftDuration() == adCfgInfo.getSignGiftDuration() && getShowOldMember() == adCfgInfo.getShowOldMember() && this.unknownFields.equals(adCfgInfo.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public long getFirstPlayMemberExpireTime() {
            return this.firstPlayMemberExpireTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getIsFirstPurchaseMember() {
            return this.isFirstPurchaseMember_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getIsNewMember() {
            return this.isNewMember_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getIsShowNewGift() {
            return this.isShowNewGift_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getIsSigned() {
            return this.isSigned_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getIsSignedToday() {
            return this.isSignedToday_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<AdCfgInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            boolean z10 = this.isNewMember_;
            int iComputeBoolSize = z10 ? 0 + CodedOutputStream.computeBoolSize(1, z10) : 0;
            boolean z11 = this.isShowNewGift_;
            if (z11) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(2, z11);
            }
            boolean z12 = this.isSigned_;
            if (z12) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(3, z12);
            }
            boolean z13 = this.isFirstPurchaseMember_;
            if (z13) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(4, z13);
            }
            int i11 = this.signDay_;
            if (i11 != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(5, i11);
            }
            long j10 = this.showNewGiftExpireTime_;
            if (j10 != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(6, j10);
            }
            long j11 = this.firstPlayMemberExpireTime_;
            if (j11 != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(7, j11);
            }
            boolean z14 = this.isSignedToday_;
            if (z14) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(8, z14);
            }
            int i12 = this.signGiftDuration_;
            if (i12 != 0) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(9, i12);
            }
            boolean z15 = this.showOldMember_;
            if (z15) {
                iComputeBoolSize += CodedOutputStream.computeBoolSize(10, z15);
            }
            int serializedSize = iComputeBoolSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public long getShowNewGiftExpireTime() {
            return this.showNewGiftExpireTime_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public boolean getShowOldMember() {
            return this.showOldMember_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public int getSignDay() {
            return this.signDay_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.b
        public int getSignGiftDuration() {
            return this.signGiftDuration_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((((((((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getIsNewMember())) * 37) + 2) * 53) + Internal.hashBoolean(getIsShowNewGift())) * 37) + 3) * 53) + Internal.hashBoolean(getIsSigned())) * 37) + 4) * 53) + Internal.hashBoolean(getIsFirstPurchaseMember())) * 37) + 5) * 53) + getSignDay()) * 37) + 6) * 53) + Internal.hashLong(getShowNewGiftExpireTime())) * 37) + 7) * 53) + Internal.hashLong(getFirstPlayMemberExpireTime())) * 37) + 8) * 53) + Internal.hashBoolean(getIsSignedToday())) * 37) + 9) * 53) + getSignGiftDuration()) * 37) + 10) * 53) + Internal.hashBoolean(getShowOldMember())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingAdCfgResponse.f87936d.ensureFieldAccessorsInitialized(AdCfgInfo.class, b.class);
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
            boolean z10 = this.isNewMember_;
            if (z10) {
                output.writeBool(1, z10);
            }
            boolean z11 = this.isShowNewGift_;
            if (z11) {
                output.writeBool(2, z11);
            }
            boolean z12 = this.isSigned_;
            if (z12) {
                output.writeBool(3, z12);
            }
            boolean z13 = this.isFirstPurchaseMember_;
            if (z13) {
                output.writeBool(4, z13);
            }
            int i10 = this.signDay_;
            if (i10 != 0) {
                output.writeInt32(5, i10);
            }
            long j10 = this.showNewGiftExpireTime_;
            if (j10 != 0) {
                output.writeInt64(6, j10);
            }
            long j11 = this.firstPlayMemberExpireTime_;
            if (j11 != 0) {
                output.writeInt64(7, j11);
            }
            boolean z14 = this.isSignedToday_;
            if (z14) {
                output.writeBool(8, z14);
            }
            int i11 = this.signGiftDuration_;
            if (i11 != 0) {
                output.writeInt32(9, i11);
            }
            boolean z15 = this.showOldMember_;
            if (z15) {
                output.writeBool(10, z15);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ AdCfgInfo(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(AdCfgInfo prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static AdCfgInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private AdCfgInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdCfgInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static AdCfgInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AdCfgInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static AdCfgInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private AdCfgInfo() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdCfgInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static AdCfgInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private AdCfgInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        switch (tag) {
                            case 0:
                                break;
                            case 8:
                                this.isNewMember_ = input.readBool();
                                continue;
                            case 16:
                                this.isShowNewGift_ = input.readBool();
                                continue;
                            case 24:
                                this.isSigned_ = input.readBool();
                                continue;
                            case 32:
                                this.isFirstPurchaseMember_ = input.readBool();
                                continue;
                            case 40:
                                this.signDay_ = input.readInt32();
                                continue;
                            case 48:
                                this.showNewGiftExpireTime_ = input.readInt64();
                                continue;
                            case 56:
                                this.firstPlayMemberExpireTime_ = input.readInt64();
                                continue;
                            case 64:
                                this.isSignedToday_ = input.readBool();
                                continue;
                            case 72:
                                this.signGiftDuration_ = input.readInt32();
                                continue;
                            case 80:
                                this.showOldMember_ = input.readBool();
                                continue;
                            default:
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
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

        public static AdCfgInfo parseFrom(InputStream input) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static AdCfgInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static AdCfgInfo parseFrom(CodedInputStream input) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static AdCfgInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AdCfgInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    public static final class MessageCloudGamingAdCfgResponseResult extends GeneratedMessageV3 implements c {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int ERRORMSG_FIELD_NUMBER = 3;
        public static final int ERROR_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private AdCfgInfo data_;
        private volatile Object errorMsg_;
        private int error_;
        private byte memoizedIsInitialized;
        private static final MessageCloudGamingAdCfgResponseResult DEFAULT_INSTANCE = new MessageCloudGamingAdCfgResponseResult();
        private static final Parser<MessageCloudGamingAdCfgResponseResult> PARSER = new a();

        class a extends AbstractParser<MessageCloudGamingAdCfgResponseResult> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageCloudGamingAdCfgResponseResult parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new MessageCloudGamingAdCfgResponseResult(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements c {
            private SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> dataBuilder_;
            private AdCfgInfo data_;
            private Object errorMsg_;
            private int error_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            private SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageCloudGamingAdCfgResponse.f87933a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearData() {
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                    onChanged();
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                return this;
            }

            public b clearError() {
                this.error_ = 0;
                onChanged();
                return this;
            }

            public b clearErrorMsg() {
                this.errorMsg_ = MessageCloudGamingAdCfgResponseResult.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public AdCfgInfo getData() {
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (AdCfgInfo) singleFieldBuilderV3.getMessage();
                }
                AdCfgInfo adCfgInfo = this.data_;
                return adCfgInfo == null ? AdCfgInfo.getDefaultInstance() : adCfgInfo;
            }

            public AdCfgInfo.b getDataBuilder() {
                onChanged();
                return (AdCfgInfo.b) getDataFieldBuilder().getBuilder();
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public b getDataOrBuilder() {
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (b) singleFieldBuilderV3.getMessageOrBuilder();
                }
                AdCfgInfo adCfgInfo = this.data_;
                return adCfgInfo == null ? AdCfgInfo.getDefaultInstance() : adCfgInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageCloudGamingAdCfgResponse.f87933a;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public int getError() {
                return this.error_;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.errorMsg_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
            public boolean hasData() {
                return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageCloudGamingAdCfgResponse.f87934b.ensureFieldAccessorsInitialized(MessageCloudGamingAdCfgResponseResult.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b mergeData(AdCfgInfo value) {
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    AdCfgInfo adCfgInfo = this.data_;
                    if (adCfgInfo != null) {
                        this.data_ = AdCfgInfo.newBuilder(adCfgInfo).mergeFrom(value).buildPartial();
                    } else {
                        this.data_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public b setData(AdCfgInfo value) {
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    value.getClass();
                    this.data_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public b setError(int value) {
                this.error_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsg(String value) {
                value.getClass();
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            public b setErrorMsgBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.errorMsg_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingAdCfgResponseResult build() {
                MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultBuildPartial = buildPartial();
                if (messageCloudGamingAdCfgResponseResultBuildPartial.isInitialized()) {
                    return messageCloudGamingAdCfgResponseResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) messageCloudGamingAdCfgResponseResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MessageCloudGamingAdCfgResponseResult buildPartial() {
                MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResult = new MessageCloudGamingAdCfgResponseResult(this, (a) null);
                messageCloudGamingAdCfgResponseResult.error_ = this.error_;
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    messageCloudGamingAdCfgResponseResult.data_ = this.data_;
                } else {
                    messageCloudGamingAdCfgResponseResult.data_ = (AdCfgInfo) singleFieldBuilderV3.build();
                }
                messageCloudGamingAdCfgResponseResult.errorMsg_ = this.errorMsg_;
                onBuilt();
                return messageCloudGamingAdCfgResponseResult;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MessageCloudGamingAdCfgResponseResult getDefaultInstanceForType() {
                return MessageCloudGamingAdCfgResponseResult.getDefaultInstance();
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
                this.error_ = 0;
                if (this.dataBuilder_ == null) {
                    this.data_ = null;
                } else {
                    this.data_ = null;
                    this.dataBuilder_ = null;
                }
                this.errorMsg_ = "";
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            public b setData(AdCfgInfo.b builderForValue) {
                SingleFieldBuilderV3<AdCfgInfo, AdCfgInfo.b, b> singleFieldBuilderV3 = this.dataBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.data_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof MessageCloudGamingAdCfgResponseResult) {
                    return mergeFrom((MessageCloudGamingAdCfgResponseResult) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(MessageCloudGamingAdCfgResponseResult other) {
                if (other == MessageCloudGamingAdCfgResponseResult.getDefaultInstance()) {
                    return this;
                }
                if (other.getError() != 0) {
                    setError(other.getError());
                }
                if (other.hasData()) {
                    mergeData(other.getData());
                }
                if (!other.getErrorMsg().isEmpty()) {
                    this.errorMsg_ = other.errorMsg_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResult = null;
                try {
                    try {
                        MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResult2 = (MessageCloudGamingAdCfgResponseResult) MessageCloudGamingAdCfgResponseResult.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (messageCloudGamingAdCfgResponseResult2 != null) {
                            mergeFrom(messageCloudGamingAdCfgResponseResult2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResult3 = (MessageCloudGamingAdCfgResponseResult) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            messageCloudGamingAdCfgResponseResult = messageCloudGamingAdCfgResponseResult3;
                            if (messageCloudGamingAdCfgResponseResult != null) {
                                mergeFrom(messageCloudGamingAdCfgResponseResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (messageCloudGamingAdCfgResponseResult != null) {
                        mergeFrom(messageCloudGamingAdCfgResponseResult);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ MessageCloudGamingAdCfgResponseResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static MessageCloudGamingAdCfgResponseResult getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageCloudGamingAdCfgResponse.f87933a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MessageCloudGamingAdCfgResponseResult parseDelimitedFrom(InputStream input) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<MessageCloudGamingAdCfgResponseResult> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageCloudGamingAdCfgResponseResult)) {
                return super.equals(obj);
            }
            MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResult = (MessageCloudGamingAdCfgResponseResult) obj;
            if (getError() == messageCloudGamingAdCfgResponseResult.getError() && hasData() == messageCloudGamingAdCfgResponseResult.hasData()) {
                return (!hasData() || getData().equals(messageCloudGamingAdCfgResponseResult.getData())) && getErrorMsg().equals(messageCloudGamingAdCfgResponseResult.getErrorMsg()) && this.unknownFields.equals(messageCloudGamingAdCfgResponseResult.unknownFields);
            }
            return false;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public AdCfgInfo getData() {
            AdCfgInfo adCfgInfo = this.data_;
            return adCfgInfo == null ? AdCfgInfo.getDefaultInstance() : adCfgInfo;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public b getDataOrBuilder() {
            return getData();
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public int getError() {
            return this.error_;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.errorMsg_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MessageCloudGamingAdCfgResponseResult> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = this.error_;
            int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
            if (this.data_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getData());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.errorMsg_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse.c
        public boolean hasData() {
            return this.data_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int iHashCode = ((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getError();
            if (hasData()) {
                iHashCode = (((iHashCode * 37) + 2) * 53) + getData().hashCode();
            }
            int iHashCode2 = (((((iHashCode * 37) + 3) * 53) + getErrorMsg().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageCloudGamingAdCfgResponse.f87934b.ensureFieldAccessorsInitialized(MessageCloudGamingAdCfgResponseResult.class, b.class);
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
            int i10 = this.error_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (this.data_ != null) {
                output.writeMessage(2, getData());
            }
            if (!getErrorMsgBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.errorMsg_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ MessageCloudGamingAdCfgResponseResult(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(MessageCloudGamingAdCfgResponseResult prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private MessageCloudGamingAdCfgResponseResult(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MessageCloudGamingAdCfgResponseResult parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageCloudGamingAdCfgResponseResult getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private MessageCloudGamingAdCfgResponseResult() {
            this.memoizedIsInitialized = (byte) -1;
            this.errorMsg_ = "";
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(InputStream input) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private MessageCloudGamingAdCfgResponseResult(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.error_ = input.readInt32();
                            } else if (tag == 18) {
                                AdCfgInfo adCfgInfo = this.data_;
                                AdCfgInfo.b builder = adCfgInfo != null ? adCfgInfo.toBuilder() : null;
                                AdCfgInfo adCfgInfo2 = (AdCfgInfo) input.readMessage(AdCfgInfo.parser(), extensionRegistry);
                                this.data_ = adCfgInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(adCfgInfo2);
                                    this.data_ = builder.buildPartial();
                                }
                            } else if (tag != 26) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.errorMsg_ = input.readStringRequireUtf8();
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

        public static MessageCloudGamingAdCfgResponseResult parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(CodedInputStream input) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static MessageCloudGamingAdCfgResponseResult parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MessageCloudGamingAdCfgResponseResult) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageCloudGamingAdCfgResponse.f87937e = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        long getFirstPlayMemberExpireTime();

        boolean getIsFirstPurchaseMember();

        boolean getIsNewMember();

        boolean getIsShowNewGift();

        boolean getIsSigned();

        boolean getIsSignedToday();

        long getShowNewGiftExpireTime();

        boolean getShowOldMember();

        int getSignDay();

        int getSignGiftDuration();
    }

    public interface c extends MessageOrBuilder {
        AdCfgInfo getData();

        b getDataOrBuilder();

        int getError();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        boolean hasData();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\"cloud_gaming_ad_cfg_response.proto\"b\n%MessageCloudGamingAdCfgResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0018\n\u0004data\u0018\u0002 \u0001(\u000b2\n.AdCfgInfo\u0012\u0010\n\berrorMsg\u0018\u0003 \u0001(\t\"\u0083\u0002\n\tAdCfgInfo\u0012\u0013\n\u000bisNewMember\u0018\u0001 \u0001(\b\u0012\u0015\n\risShowNewGift\u0018\u0002 \u0001(\b\u0012\u0010\n\bisSigned\u0018\u0003 \u0001(\b\u0012\u001d\n\u0015isFirstPurchaseMember\u0018\u0004 \u0001(\b\u0012\u000f\n\u0007signDay\u0018\u0005 \u0001(\u0005\u0012\u001d\n\u0015showNewGiftExpireTime\u0018\u0006 \u0001(\u0003\u0012!\n\u0019firstPlayMemberExpireTime\u0018\u0007 \u0001(\u0003\u0012\u0015\n\risSignedToday\u0018\b \u0001(\b\u0012\u0018\n\u0010signGiftDuration\u0018\t \u0001(\u0005\u0012\u0015\n\rshowOldMember\u0018\n \u0001(\bBB\n\u001fcom.wufan.user.service.protobufB\u001fMessageCloudGamingAdCfgResponseb\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = f().getMessageTypes().get(0);
        f87933a = descriptor;
        f87934b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Error", "Data", "ErrorMsg"});
        Descriptors.Descriptor descriptor2 = f().getMessageTypes().get(1);
        f87935c = descriptor2;
        f87936d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"IsNewMember", "IsShowNewGift", "IsSigned", "IsFirstPurchaseMember", "SignDay", "ShowNewGiftExpireTime", "FirstPlayMemberExpireTime", "IsSignedToday", "SignGiftDuration", "ShowOldMember"});
    }

    private MessageCloudGamingAdCfgResponse() {
    }

    public static Descriptors.FileDescriptor f() {
        return f87937e;
    }

    public static void g(ExtensionRegistry registry) {
        h(registry);
    }

    public static void h(ExtensionRegistryLite registry) {
    }
}
