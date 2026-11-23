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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageSmsCodeRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88088c;

    public static final class SmsCodeRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 6;
        public static final int CONTENTTYPE_FIELD_NUMBER = 2;
        public static final int MOBILE_FIELD_NUMBER = 4;
        public static final int SIGN_FIELD_NUMBER = 5;
        public static final int SOURCETYPE_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private int contentType_;
        private byte memoizedIsInitialized;
        private volatile Object mobile_;
        private volatile Object sign_;
        private int sourceType_;
        private int uid_;
        private static final SmsCodeRequestParameters DEFAULT_INSTANCE = new SmsCodeRequestParameters();
        private static final Parser<SmsCodeRequestParameters> PARSER = new a();

        class a extends AbstractParser<SmsCodeRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SmsCodeRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new SmsCodeRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private int contentType_;
            private Object mobile_;
            private Object sign_;
            private int sourceType_;
            private int uid_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageSmsCodeRequest.f88086a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = SmsCodeRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearContentType() {
                this.contentType_ = 0;
                onChanged();
                return this;
            }

            public b clearMobile() {
                this.mobile_ = SmsCodeRequestParameters.getDefaultInstance().getMobile();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = SmsCodeRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearSourceType() {
                this.sourceType_ = 0;
                onChanged();
                return this;
            }

            public b clearUid() {
                this.uid_ = 0;
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public ContentType getContentType() {
                ContentType contentTypeValueOf = ContentType.valueOf(this.contentType_);
                return contentTypeValueOf == null ? ContentType.UNRECOGNIZED : contentTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public int getContentTypeValue() {
                return this.contentType_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageSmsCodeRequest.f88086a;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public String getMobile() {
                Object obj = this.mobile_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.mobile_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public ByteString getMobileBytes() {
                Object obj = this.mobile_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mobile_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public SourceType getSourceType() {
                SourceType sourceTypeValueOf = SourceType.valueOf(this.sourceType_);
                return sourceTypeValueOf == null ? SourceType.UNRECOGNIZED : sourceTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public int getSourceTypeValue() {
                return this.sourceType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
            public int getUid() {
                return this.uid_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageSmsCodeRequest.f88087b.ensureFieldAccessorsInitialized(SmsCodeRequestParameters.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAppVersion(String value) {
                value.getClass();
                this.appVersion_ = value;
                onChanged();
                return this;
            }

            public b setAppVersionBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.appVersion_ = value;
                onChanged();
                return this;
            }

            public b setContentType(ContentType value) {
                value.getClass();
                this.contentType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setContentTypeValue(int value) {
                this.contentType_ = value;
                onChanged();
                return this;
            }

            public b setMobile(String value) {
                value.getClass();
                this.mobile_ = value;
                onChanged();
                return this;
            }

            public b setMobileBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.mobile_ = value;
                onChanged();
                return this;
            }

            public b setSign(String value) {
                value.getClass();
                this.sign_ = value;
                onChanged();
                return this;
            }

            public b setSignBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.sign_ = value;
                onChanged();
                return this;
            }

            public b setSourceType(SourceType value) {
                value.getClass();
                this.sourceType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setSourceTypeValue(int value) {
                this.sourceType_ = value;
                onChanged();
                return this;
            }

            public b setUid(int value) {
                this.uid_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.contentType_ = 0;
                this.sourceType_ = 0;
                this.mobile_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SmsCodeRequestParameters build() {
                SmsCodeRequestParameters smsCodeRequestParametersBuildPartial = buildPartial();
                if (smsCodeRequestParametersBuildPartial.isInitialized()) {
                    return smsCodeRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) smsCodeRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SmsCodeRequestParameters buildPartial() {
                SmsCodeRequestParameters smsCodeRequestParameters = new SmsCodeRequestParameters(this, (a) null);
                smsCodeRequestParameters.uid_ = this.uid_;
                smsCodeRequestParameters.contentType_ = this.contentType_;
                smsCodeRequestParameters.sourceType_ = this.sourceType_;
                smsCodeRequestParameters.mobile_ = this.mobile_;
                smsCodeRequestParameters.sign_ = this.sign_;
                smsCodeRequestParameters.appVersion_ = this.appVersion_;
                onBuilt();
                return smsCodeRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SmsCodeRequestParameters getDefaultInstanceForType() {
                return SmsCodeRequestParameters.getDefaultInstance();
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
                this.uid_ = 0;
                this.contentType_ = 0;
                this.sourceType_ = 0;
                this.mobile_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public b mo24clone() {
                return (b) super.mo24clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(Message other) {
                if (other instanceof SmsCodeRequestParameters) {
                    return mergeFrom((SmsCodeRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.contentType_ = 0;
                this.sourceType_ = 0;
                this.mobile_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(SmsCodeRequestParameters other) {
                if (other == SmsCodeRequestParameters.getDefaultInstance()) {
                    return this;
                }
                if (other.getUid() != 0) {
                    setUid(other.getUid());
                }
                if (other.contentType_ != 0) {
                    setContentTypeValue(other.getContentTypeValue());
                }
                if (other.sourceType_ != 0) {
                    setSourceTypeValue(other.getSourceTypeValue());
                }
                if (!other.getMobile().isEmpty()) {
                    this.mobile_ = other.mobile_;
                    onChanged();
                }
                if (!other.getSign().isEmpty()) {
                    this.sign_ = other.sign_;
                    onChanged();
                }
                if (!other.getAppVersion().isEmpty()) {
                    this.appVersion_ = other.appVersion_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                SmsCodeRequestParameters smsCodeRequestParameters = null;
                try {
                    try {
                        SmsCodeRequestParameters smsCodeRequestParameters2 = (SmsCodeRequestParameters) SmsCodeRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (smsCodeRequestParameters2 != null) {
                            mergeFrom(smsCodeRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        SmsCodeRequestParameters smsCodeRequestParameters3 = (SmsCodeRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            smsCodeRequestParameters = smsCodeRequestParameters3;
                            if (smsCodeRequestParameters != null) {
                                mergeFrom(smsCodeRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (smsCodeRequestParameters != null) {
                        mergeFrom(smsCodeRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ SmsCodeRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static SmsCodeRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageSmsCodeRequest.f88086a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SmsCodeRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static SmsCodeRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<SmsCodeRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SmsCodeRequestParameters)) {
                return super.equals(obj);
            }
            SmsCodeRequestParameters smsCodeRequestParameters = (SmsCodeRequestParameters) obj;
            return getUid() == smsCodeRequestParameters.getUid() && this.contentType_ == smsCodeRequestParameters.contentType_ && this.sourceType_ == smsCodeRequestParameters.sourceType_ && getMobile().equals(smsCodeRequestParameters.getMobile()) && getSign().equals(smsCodeRequestParameters.getSign()) && getAppVersion().equals(smsCodeRequestParameters.getAppVersion()) && this.unknownFields.equals(smsCodeRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public ContentType getContentType() {
            ContentType contentTypeValueOf = ContentType.valueOf(this.contentType_);
            return contentTypeValueOf == null ? ContentType.UNRECOGNIZED : contentTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public int getContentTypeValue() {
            return this.contentType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public String getMobile() {
            Object obj = this.mobile_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mobile_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public ByteString getMobileBytes() {
            Object obj = this.mobile_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mobile_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SmsCodeRequestParameters> getParserForType() {
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
            if (this.contentType_ != ContentType.MOBILE_REG.getNumber()) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(2, this.contentType_);
            }
            if (this.sourceType_ != SourceType.WORLD.getNumber()) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.sourceType_);
            }
            if (!getMobileBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.mobile_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeInt32Size += GeneratedMessageV3.computeStringSize(6, this.appVersion_);
            }
            int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public SourceType getSourceType() {
            SourceType sourceTypeValueOf = SourceType.valueOf(this.sourceType_);
            return sourceTypeValueOf == null ? SourceType.UNRECOGNIZED : sourceTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public int getSourceTypeValue() {
            return this.sourceType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageSmsCodeRequest.b
        public int getUid() {
            return this.uid_;
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
            int iHashCode = ((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUid()) * 37) + 2) * 53) + this.contentType_) * 37) + 3) * 53) + this.sourceType_) * 37) + 4) * 53) + getMobile().hashCode()) * 37) + 5) * 53) + getSign().hashCode()) * 37) + 6) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageSmsCodeRequest.f88087b.ensureFieldAccessorsInitialized(SmsCodeRequestParameters.class, b.class);
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
            int i10 = this.uid_;
            if (i10 != 0) {
                output.writeInt32(1, i10);
            }
            if (this.contentType_ != ContentType.MOBILE_REG.getNumber()) {
                output.writeEnum(2, this.contentType_);
            }
            if (this.sourceType_ != SourceType.WORLD.getNumber()) {
                output.writeEnum(3, this.sourceType_);
            }
            if (!getMobileBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.mobile_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.appVersion_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ SmsCodeRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(SmsCodeRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static SmsCodeRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private SmsCodeRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SmsCodeRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static SmsCodeRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SmsCodeRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static SmsCodeRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private SmsCodeRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.contentType_ = 0;
            this.sourceType_ = 0;
            this.mobile_ = "";
            this.sign_ = "";
            this.appVersion_ = "";
        }

        public static SmsCodeRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static SmsCodeRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static SmsCodeRequestParameters parseFrom(InputStream input) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static SmsCodeRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static SmsCodeRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        private SmsCodeRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.uid_ = input.readInt32();
                            } else if (tag == 16) {
                                this.contentType_ = input.readEnum();
                            } else if (tag == 24) {
                                this.sourceType_ = input.readEnum();
                            } else if (tag == 34) {
                                this.mobile_ = input.readStringRequireUtf8();
                            } else if (tag == 42) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag != 50) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.appVersion_ = input.readStringRequireUtf8();
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

        public static SmsCodeRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SmsCodeRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageSmsCodeRequest.f88088c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        ContentType getContentType();

        int getContentTypeValue();

        String getMobile();

        ByteString getMobileBytes();

        String getSign();

        ByteString getSignBytes();

        SourceType getSourceType();

        int getSourceTypeValue();

        int getUid();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0016sms_code_request.proto\u001a\u001denumeration/enumeration.proto\"µ\u0001\n\u0018SmsCodeRequestParameters\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012-\n\u000bcontentType\u0018\u0002 \u0001(\u000e2\u0018.enumeration.ContentType\u0012+\n\nsourceType\u0018\u0003 \u0001(\u000e2\u0017.enumeration.SourceType\u0012\u000e\n\u0006mobile\u0018\u0004 \u0001(\t\u0012\f\n\u0004sign\u0018\u0005 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0006 \u0001(\tB8\n\u001fcom.wufan.user.service.protobufB\u0015MessageSmsCodeRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88086a = descriptor;
        f88087b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Uid", "ContentType", "SourceType", "Mobile", "Sign", "AppVersion"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageSmsCodeRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88088c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
