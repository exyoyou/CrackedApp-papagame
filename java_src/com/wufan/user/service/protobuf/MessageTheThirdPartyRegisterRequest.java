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
public final class MessageTheThirdPartyRegisterRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88094c;

    public static final class TheThirdPartyRegisterRequestParameters extends GeneratedMessageV3 implements b {
        public static final int ACCOUNT_FIELD_NUMBER = 1;
        public static final int APPVERSION_FIELD_NUMBER = 8;
        public static final int CODETYPE_FIELD_NUMBER = 6;
        private static final TheThirdPartyRegisterRequestParameters DEFAULT_INSTANCE = new TheThirdPartyRegisterRequestParameters();
        private static final Parser<TheThirdPartyRegisterRequestParameters> PARSER = new a();
        public static final int PASSWORD_FIELD_NUMBER = 2;
        public static final int SIGN_FIELD_NUMBER = 7;
        public static final int SMSCODE_FIELD_NUMBER = 5;
        public static final int THETHIRDPARTLOGINTYPE_FIELD_NUMBER = 4;
        public static final int UNIQUEID_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object account_;
        private volatile Object appVersion_;
        private volatile Object codeType_;
        private byte memoizedIsInitialized;
        private volatile Object password_;
        private volatile Object sign_;
        private volatile Object smsCode_;
        private int theThirdPartLoginType_;
        private volatile Object uniqueId_;

        class a extends AbstractParser<TheThirdPartyRegisterRequestParameters> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public TheThirdPartyRegisterRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new TheThirdPartyRegisterRequestParameters(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object account_;
            private Object appVersion_;
            private Object codeType_;
            private Object password_;
            private Object sign_;
            private Object smsCode_;
            private int theThirdPartLoginType_;
            private Object uniqueId_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageTheThirdPartyRegisterRequest.f88092a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAccount() {
                this.account_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getAccount();
                onChanged();
                return this;
            }

            public b clearAppVersion() {
                this.appVersion_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearCodeType() {
                this.codeType_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getCodeType();
                onChanged();
                return this;
            }

            public b clearPassword() {
                this.password_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getPassword();
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            public b clearSmsCode() {
                this.smsCode_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getSmsCode();
                onChanged();
                return this;
            }

            public b clearTheThirdPartLoginType() {
                this.theThirdPartLoginType_ = 0;
                onChanged();
                return this;
            }

            public b clearUniqueId() {
                this.uniqueId_ = TheThirdPartyRegisterRequestParameters.getDefaultInstance().getUniqueId();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getAccount() {
                Object obj = this.account_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.account_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getAccountBytes() {
                Object obj = this.account_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.account_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getAppVersionBytes() {
                Object obj = this.appVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVersion_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getCodeType() {
                Object obj = this.codeType_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.codeType_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getCodeTypeBytes() {
                Object obj = this.codeType_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.codeType_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageTheThirdPartyRegisterRequest.f88092a;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getPassword() {
                Object obj = this.password_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.password_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getPasswordBytes() {
                Object obj = this.password_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.password_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getSignBytes() {
                Object obj = this.sign_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sign_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getSmsCode() {
                Object obj = this.smsCode_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.smsCode_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public ByteString getSmsCodeBytes() {
                Object obj = this.smsCode_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.smsCode_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public TheThirdPartLoginType getTheThirdPartLoginType() {
                TheThirdPartLoginType theThirdPartLoginTypeValueOf = TheThirdPartLoginType.valueOf(this.theThirdPartLoginType_);
                return theThirdPartLoginTypeValueOf == null ? TheThirdPartLoginType.UNRECOGNIZED : theThirdPartLoginTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public int getTheThirdPartLoginTypeValue() {
                return this.theThirdPartLoginType_;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
            public String getUniqueId() {
                Object obj = this.uniqueId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.uniqueId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
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
                return MessageTheThirdPartyRegisterRequest.f88093b.ensureFieldAccessorsInitialized(TheThirdPartyRegisterRequestParameters.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public b setAccount(String value) {
                value.getClass();
                this.account_ = value;
                onChanged();
                return this;
            }

            public b setAccountBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.account_ = value;
                onChanged();
                return this;
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

            public b setCodeType(String value) {
                value.getClass();
                this.codeType_ = value;
                onChanged();
                return this;
            }

            public b setCodeTypeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.codeType_ = value;
                onChanged();
                return this;
            }

            public b setPassword(String value) {
                value.getClass();
                this.password_ = value;
                onChanged();
                return this;
            }

            public b setPasswordBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.password_ = value;
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

            public b setSmsCode(String value) {
                value.getClass();
                this.smsCode_ = value;
                onChanged();
                return this;
            }

            public b setSmsCodeBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.smsCode_ = value;
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
                this.account_ = "";
                this.password_ = "";
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
                this.smsCode_ = "";
                this.codeType_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TheThirdPartyRegisterRequestParameters build() {
                TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParametersBuildPartial = buildPartial();
                if (theThirdPartyRegisterRequestParametersBuildPartial.isInitialized()) {
                    return theThirdPartyRegisterRequestParametersBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) theThirdPartyRegisterRequestParametersBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public TheThirdPartyRegisterRequestParameters buildPartial() {
                TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParameters = new TheThirdPartyRegisterRequestParameters(this, (a) null);
                theThirdPartyRegisterRequestParameters.account_ = this.account_;
                theThirdPartyRegisterRequestParameters.password_ = this.password_;
                theThirdPartyRegisterRequestParameters.uniqueId_ = this.uniqueId_;
                theThirdPartyRegisterRequestParameters.theThirdPartLoginType_ = this.theThirdPartLoginType_;
                theThirdPartyRegisterRequestParameters.smsCode_ = this.smsCode_;
                theThirdPartyRegisterRequestParameters.codeType_ = this.codeType_;
                theThirdPartyRegisterRequestParameters.sign_ = this.sign_;
                theThirdPartyRegisterRequestParameters.appVersion_ = this.appVersion_;
                onBuilt();
                return theThirdPartyRegisterRequestParameters;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public TheThirdPartyRegisterRequestParameters getDefaultInstanceForType() {
                return TheThirdPartyRegisterRequestParameters.getDefaultInstance();
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
                this.account_ = "";
                this.password_ = "";
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
                this.smsCode_ = "";
                this.codeType_ = "";
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
                if (other instanceof TheThirdPartyRegisterRequestParameters) {
                    return mergeFrom((TheThirdPartyRegisterRequestParameters) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b mergeFrom(TheThirdPartyRegisterRequestParameters other) {
                if (other == TheThirdPartyRegisterRequestParameters.getDefaultInstance()) {
                    return this;
                }
                if (!other.getAccount().isEmpty()) {
                    this.account_ = other.account_;
                    onChanged();
                }
                if (!other.getPassword().isEmpty()) {
                    this.password_ = other.password_;
                    onChanged();
                }
                if (!other.getUniqueId().isEmpty()) {
                    this.uniqueId_ = other.uniqueId_;
                    onChanged();
                }
                if (other.theThirdPartLoginType_ != 0) {
                    setTheThirdPartLoginTypeValue(other.getTheThirdPartLoginTypeValue());
                }
                if (!other.getSmsCode().isEmpty()) {
                    this.smsCode_ = other.smsCode_;
                    onChanged();
                }
                if (!other.getCodeType().isEmpty()) {
                    this.codeType_ = other.codeType_;
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

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.account_ = "";
                this.password_ = "";
                this.uniqueId_ = "";
                this.theThirdPartLoginType_ = 0;
                this.smsCode_ = "";
                this.codeType_ = "";
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
                TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParameters = null;
                try {
                    try {
                        TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParameters2 = (TheThirdPartyRegisterRequestParameters) TheThirdPartyRegisterRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (theThirdPartyRegisterRequestParameters2 != null) {
                            mergeFrom(theThirdPartyRegisterRequestParameters2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParameters3 = (TheThirdPartyRegisterRequestParameters) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            theThirdPartyRegisterRequestParameters = theThirdPartyRegisterRequestParameters3;
                            if (theThirdPartyRegisterRequestParameters != null) {
                                mergeFrom(theThirdPartyRegisterRequestParameters);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (theThirdPartyRegisterRequestParameters != null) {
                        mergeFrom(theThirdPartyRegisterRequestParameters);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ TheThirdPartyRegisterRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static TheThirdPartyRegisterRequestParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageTheThirdPartyRegisterRequest.f88092a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TheThirdPartyRegisterRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<TheThirdPartyRegisterRequestParameters> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TheThirdPartyRegisterRequestParameters)) {
                return super.equals(obj);
            }
            TheThirdPartyRegisterRequestParameters theThirdPartyRegisterRequestParameters = (TheThirdPartyRegisterRequestParameters) obj;
            return getAccount().equals(theThirdPartyRegisterRequestParameters.getAccount()) && getPassword().equals(theThirdPartyRegisterRequestParameters.getPassword()) && getUniqueId().equals(theThirdPartyRegisterRequestParameters.getUniqueId()) && this.theThirdPartLoginType_ == theThirdPartyRegisterRequestParameters.theThirdPartLoginType_ && getSmsCode().equals(theThirdPartyRegisterRequestParameters.getSmsCode()) && getCodeType().equals(theThirdPartyRegisterRequestParameters.getCodeType()) && getSign().equals(theThirdPartyRegisterRequestParameters.getSign()) && getAppVersion().equals(theThirdPartyRegisterRequestParameters.getAppVersion()) && this.unknownFields.equals(theThirdPartyRegisterRequestParameters.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getAccount() {
            Object obj = this.account_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.account_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getAccountBytes() {
            Object obj = this.account_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.account_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getCodeType() {
            Object obj = this.codeType_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.codeType_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getCodeTypeBytes() {
            Object obj = this.codeType_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.codeType_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<TheThirdPartyRegisterRequestParameters> getParserForType() {
            return PARSER;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.password_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.password_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getAccountBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.account_);
            if (!getPasswordBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.password_);
            }
            if (!getUniqueIdBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(3, this.uniqueId_);
            }
            if (this.theThirdPartLoginType_ != TheThirdPartLoginType.T_PAPA.getNumber()) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(4, this.theThirdPartLoginType_);
            }
            if (!getSmsCodeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(5, this.smsCode_);
            }
            if (!getCodeTypeBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(6, this.codeType_);
            }
            if (!getSignBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(7, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                iComputeStringSize += GeneratedMessageV3.computeStringSize(8, this.appVersion_);
            }
            int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getSmsCode() {
            Object obj = this.smsCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.smsCode_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public ByteString getSmsCodeBytes() {
            Object obj = this.smsCode_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.smsCode_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public TheThirdPartLoginType getTheThirdPartLoginType() {
            TheThirdPartLoginType theThirdPartLoginTypeValueOf = TheThirdPartLoginType.valueOf(this.theThirdPartLoginType_);
            return theThirdPartLoginTypeValueOf == null ? TheThirdPartLoginType.UNRECOGNIZED : theThirdPartLoginTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public int getTheThirdPartLoginTypeValue() {
            return this.theThirdPartLoginType_;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
        public String getUniqueId() {
            Object obj = this.uniqueId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uniqueId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest.b
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
            int iHashCode = ((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAccount().hashCode()) * 37) + 2) * 53) + getPassword().hashCode()) * 37) + 3) * 53) + getUniqueId().hashCode()) * 37) + 4) * 53) + this.theThirdPartLoginType_) * 37) + 5) * 53) + getSmsCode().hashCode()) * 37) + 6) * 53) + getCodeType().hashCode()) * 37) + 7) * 53) + getSign().hashCode()) * 37) + 8) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageTheThirdPartyRegisterRequest.f88093b.ensureFieldAccessorsInitialized(TheThirdPartyRegisterRequestParameters.class, b.class);
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
            if (!getAccountBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.account_);
            }
            if (!getPasswordBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.password_);
            }
            if (!getUniqueIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.uniqueId_);
            }
            if (this.theThirdPartLoginType_ != TheThirdPartLoginType.T_PAPA.getNumber()) {
                output.writeEnum(4, this.theThirdPartLoginType_);
            }
            if (!getSmsCodeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.smsCode_);
            }
            if (!getCodeTypeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.codeType_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.appVersion_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ TheThirdPartyRegisterRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(TheThirdPartyRegisterRequestParameters prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private TheThirdPartyRegisterRequestParameters(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TheThirdPartyRegisterRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public TheThirdPartyRegisterRequestParameters getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private TheThirdPartyRegisterRequestParameters() {
            this.memoizedIsInitialized = (byte) -1;
            this.account_ = "";
            this.password_ = "";
            this.uniqueId_ = "";
            this.theThirdPartLoginType_ = 0;
            this.smsCode_ = "";
            this.codeType_ = "";
            this.sign_ = "";
            this.appVersion_ = "";
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(InputStream input) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(CodedInputStream input) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static TheThirdPartyRegisterRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TheThirdPartyRegisterRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private TheThirdPartyRegisterRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.account_ = input.readStringRequireUtf8();
                            } else if (tag == 18) {
                                this.password_ = input.readStringRequireUtf8();
                            } else if (tag == 26) {
                                this.uniqueId_ = input.readStringRequireUtf8();
                            } else if (tag == 32) {
                                this.theThirdPartLoginType_ = input.readEnum();
                            } else if (tag == 42) {
                                this.smsCode_ = input.readStringRequireUtf8();
                            } else if (tag == 50) {
                                this.codeType_ = input.readStringRequireUtf8();
                            } else if (tag == 58) {
                                this.sign_ = input.readStringRequireUtf8();
                            } else if (tag != 66) {
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
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = MessageTheThirdPartyRegisterRequest.f88094c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAccount();

        ByteString getAccountBytes();

        String getAppVersion();

        ByteString getAppVersionBytes();

        String getCodeType();

        ByteString getCodeTypeBytes();

        String getPassword();

        ByteString getPasswordBytes();

        String getSign();

        ByteString getSignBytes();

        String getSmsCode();

        ByteString getSmsCodeBytes();

        TheThirdPartLoginType getTheThirdPartLoginType();

        int getTheThirdPartLoginTypeValue();

        String getUniqueId();

        ByteString getUniqueIdBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n&the_third_party_register_request.proto\u001a\u001denumeration/enumeration.proto\"å\u0001\n&TheThirdPartyRegisterRequestParameters\u0012\u000f\n\u0007account\u0018\u0001 \u0001(\t\u0012\u0010\n\bpassword\u0018\u0002 \u0001(\t\u0012\u0010\n\buniqueId\u0018\u0003 \u0001(\t\u0012A\n\u0015theThirdPartLoginType\u0018\u0004 \u0001(\u000e2\".enumeration.TheThirdPartLoginType\u0012\u000f\n\u0007smsCode\u0018\u0005 \u0001(\t\u0012\u0010\n\bcodeType\u0018\u0006 \u0001(\t\u0012\f\n\u0004sign\u0018\u0007 \u0001(\t\u0012\u0012\n\nappVersion\u0018\b \u0001(\tBF\n\u001fcom.wufan.user.service.protobufB#MessageTheThirdPartyRegisterRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88092a = descriptor;
        f88093b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Account", "Password", "UniqueId", "TheThirdPartLoginType", "SmsCode", "CodeType", "Sign", "AppVersion"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private MessageTheThirdPartyRegisterRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88094c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
