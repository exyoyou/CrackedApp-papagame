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
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class MessageTheThirdPartyLoginRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88091c;

    public static final class TheThirdPartyLoginRequestParameters extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 4;
        private static final TheThirdPartyLoginRequestParameters DEFAULT_INSTANCE = new TheThirdPartyLoginRequestParameters();
        private static final Parser<TheThirdPartyLoginRequestParameters> PARSER = new a();
        public static final int SIGN_FIELD_NUMBER = 3;
        public static final int THETHIRDPARTLOGINTYPE_FIELD_NUMBER = 2;
        public static final int UNIQUEID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private int theThirdPartLoginType_;
        private volatile Object uniqueId_;

        class a extends AbstractParser<TheThirdPartyLoginRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public TheThirdPartyLoginRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new TheThirdPartyLoginRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private Object sign_;
            private int theThirdPartLoginType_;
            private Object uniqueId_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageTheThirdPartyLoginRequest.f88089a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = TheThirdPartyLoginRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = TheThirdPartyLoginRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearTheThirdPartLoginType() {
                this.theThirdPartLoginType_ = 0;
                onChanged();
                return this;
            }

            public b clearUniqueId() {
                this.uniqueId_ = TheThirdPartyLoginRequestParameters.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageTheThirdPartyLoginRequest.f88089a;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public TheThirdPartLoginType getTheThirdPartLoginType() {
                TheThirdPartLoginType theThirdPartLoginTypeValueOf = TheThirdPartLoginType.valueOf(this.theThirdPartLoginType_);
                return theThirdPartLoginTypeValueOf == null ? TheThirdPartLoginType.UNRECOGNIZED : theThirdPartLoginTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public int getTheThirdPartLoginTypeValue() {
                return this.theThirdPartLoginType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public String getUniqueId() {
                Object obj = this.uniqueId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.uniqueId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
            public ByteString getUniqueIdBytes() {
                Object obj = this.uniqueId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uniqueId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageTheThirdPartyLoginRequest.f88090b.ensureFieldAccessorsInitialized(TheThirdPartyLoginRequestParameters.class, b.class);
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

            public b setTheThirdPartLoginType(TheThirdPartLoginType value) {
                value.getClass();
                this.theThirdPartLoginType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setTheThirdPartLoginTypeValue(int value) {
                this.theThirdPartLoginType_ = value;
                onChanged();
                return this;
            }

            public b setUniqueId(String value) {
                value.getClass();
                this.uniqueId_ = value;
                onChanged();
                return this;
            }

            public b setUniqueIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.uniqueId_ = value;
                onChanged();
                return this;
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TheThirdPartyLoginRequestParameters build() {
                TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParametersBuildPartial = buildPartial();
                if (theThirdPartyLoginRequestParametersBuildPartial.isInitialized()) {
                    return theThirdPartyLoginRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) theThirdPartyLoginRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TheThirdPartyLoginRequestParameters buildPartial() {
                TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParameters = new TheThirdPartyLoginRequestParameters(this, (a) null);
                theThirdPartyLoginRequestParameters.uniqueId_ = this.uniqueId_;
                theThirdPartyLoginRequestParameters.theThirdPartLoginType_ = this.theThirdPartLoginType_;
                theThirdPartyLoginRequestParameters.sign_ = this.sign_;
                theThirdPartyLoginRequestParameters.appVersion_ = this.appVersion_;
                onBuilt();
                return theThirdPartyLoginRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TheThirdPartyLoginRequestParameters getDefaultInstanceForType() {
                return TheThirdPartyLoginRequestParameters.getDefaultInstance();
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
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
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
                if (other instanceof TheThirdPartyLoginRequestParameters) {
                    return mergeFrom((TheThirdPartyLoginRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(TheThirdPartyLoginRequestParameters other) {
                if (other == TheThirdPartyLoginRequestParameters.getDefaultInstance()) {
                    return this;
                }
                if (!other.getUniqueId().isEmpty()) {
                    this.uniqueId_ = other.uniqueId_;
                    onChanged();
                }
                if (other.theThirdPartLoginType_ != 0) {
                    setTheThirdPartLoginTypeValue(other.getTheThirdPartLoginTypeValue());
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
                TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParameters = null;
                try {
                    try {
                        TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParameters2 = (TheThirdPartyLoginRequestParameters) TheThirdPartyLoginRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (theThirdPartyLoginRequestParameters2 != null) {
                            mergeFrom(theThirdPartyLoginRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParameters3 = (TheThirdPartyLoginRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            theThirdPartyLoginRequestParameters = theThirdPartyLoginRequestParameters3;
                            if (theThirdPartyLoginRequestParameters != null) {
                                mergeFrom(theThirdPartyLoginRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (theThirdPartyLoginRequestParameters != null) {
                        mergeFrom(theThirdPartyLoginRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ TheThirdPartyLoginRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TheThirdPartyLoginRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageTheThirdPartyLoginRequest.f88089a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TheThirdPartyLoginRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<TheThirdPartyLoginRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TheThirdPartyLoginRequestParameters)) {
                return super.equals(obj);
            }
            TheThirdPartyLoginRequestParameters theThirdPartyLoginRequestParameters = (TheThirdPartyLoginRequestParameters) obj;
            return getUniqueId().equals(theThirdPartyLoginRequestParameters.getUniqueId()) && this.theThirdPartLoginType_ == theThirdPartyLoginRequestParameters.theThirdPartLoginType_ && getSign().equals(theThirdPartyLoginRequestParameters.getSign()) && getAppVersion().equals(theThirdPartyLoginRequestParameters.getAppVersion()) && this.unknownFields.equals(theThirdPartyLoginRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TheThirdPartyLoginRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getUniqueIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uniqueId_);
            if (this.theThirdPartLoginType_ != TheThirdPartLoginType.T_PAPA.getNumber()) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(2, this.theThirdPartLoginType_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(4, this.appVersion_);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public TheThirdPartLoginType getTheThirdPartLoginType() {
            TheThirdPartLoginType theThirdPartLoginTypeValueOf = TheThirdPartLoginType.valueOf(this.theThirdPartLoginType_);
            return theThirdPartLoginTypeValueOf == null ? TheThirdPartLoginType.UNRECOGNIZED : theThirdPartLoginTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public int getTheThirdPartLoginTypeValue() {
            return this.theThirdPartLoginType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest.b
        public ByteString getUniqueIdBytes() {
            Object obj = this.uniqueId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uniqueId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
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
            int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getUniqueId().hashCode()) * 37) + 2) * 53) + this.theThirdPartLoginType_) * 37) + 3) * 53) + getSign().hashCode()) * 37) + 4) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageTheThirdPartyLoginRequest.f88090b.ensureFieldAccessorsInitialized(TheThirdPartyLoginRequestParameters.class, b.class);
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
            if (!getUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.uniqueId_);
            }
            if (this.theThirdPartLoginType_ != TheThirdPartLoginType.T_PAPA.getNumber()) {
                output.writeEnum(2, this.theThirdPartLoginType_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.appVersion_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ TheThirdPartyLoginRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(TheThirdPartyLoginRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private TheThirdPartyLoginRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TheThirdPartyLoginRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TheThirdPartyLoginRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private TheThirdPartyLoginRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.uniqueId_ = "";
            this.theThirdPartLoginType_ = 0;
            this.sign_ = "";
            this.appVersion_ = "";
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(InputStream input) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private TheThirdPartyLoginRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            extensionRegistry.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.uniqueId_ = input.readStringRequireUtf8();
                            } else if (tag == 16) {
                                this.theThirdPartLoginType_ = input.readEnum();
                            } else if (tag == 26) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag != 34) {
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

        public static TheThirdPartyLoginRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static TheThirdPartyLoginRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageTheThirdPartyLoginRequest.f88091c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getSign();

        ByteString getSignBytes();

        TheThirdPartLoginType getTheThirdPartLoginType();

        int getTheThirdPartLoginTypeValue();

        String getUniqueId();

        ByteString getUniqueIdBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n#the_third_party_login_request.proto\u001a\u001denumeration/enumeration.proto\"\u009c\u0001\n#TheThirdPartyLoginRequestParameters\u0012\u0010\n\buniqueId\u0018\u0001 \u0001(\t\u0012A\n\u0015theThirdPartLoginType\u0018\u0002 \u0001(\u000e2\".enumeration.TheThirdPartLoginType\u0012\f\n\u0004sign\u0018\u0003 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0004 \u0001(\tBC\n\u001fcom.wufan.user.service.protobufB MessageTheThirdPartyLoginRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88089a = descriptor;
        f88090b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"UniqueId", "TheThirdPartLoginType", "Sign", "AppVersion"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageTheThirdPartyLoginRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88091c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
