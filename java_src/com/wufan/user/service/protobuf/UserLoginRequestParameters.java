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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class UserLoginRequestParameters extends GeneratedMessageV3 implements i {
    public static final int ACCOUNT_FIELD_NUMBER = 1;
    public static final int APPVERSION_FIELD_NUMBER = 4;
    private static final UserLoginRequestParameters DEFAULT_INSTANCE = new UserLoginRequestParameters();
    private static final Parser<UserLoginRequestParameters> PARSER = new a();
    public static final int PASSWORD_FIELD_NUMBER = 2;
    public static final int SIGN_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object account_;
    private volatile Object appVersion_;
    private byte memoizedIsInitialized;
    private volatile Object password_;
    private volatile Object sign_;

    class a extends AbstractParser<UserLoginRequestParameters> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserLoginRequestParameters parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new UserLoginRequestParameters(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements i {
        private Object account_;
        private Object appVersion_;
        private Object password_;
        private Object sign_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return d.f88135a;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccount() {
            this.account_ = UserLoginRequestParameters.getDefaultInstance().getAccount();
            onChanged();
            return this;
        }

        public b clearAppVersion() {
            this.appVersion_ = UserLoginRequestParameters.getDefaultInstance().getAppVersion();
            onChanged();
            return this;
        }

        public b clearPassword() {
            this.password_ = UserLoginRequestParameters.getDefaultInstance().getPassword();
            onChanged();
            return this;
        }

        public b clearSign() {
            this.sign_ = UserLoginRequestParameters.getDefaultInstance().getSign();
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getAccount() {
            Object obj = this.account_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.account_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
        public ByteString getAccountBytes() {
            Object obj = this.account_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.account_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
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
            return d.f88135a;
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getPassword() {
            Object obj = this.password_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.password_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
        public ByteString getPasswordBytes() {
            Object obj = this.password_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.password_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.i
        public ByteString getSignBytes() {
            Object obj = this.sign_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sign_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return d.f88136b.ensureFieldAccessorsInitialized(UserLoginRequestParameters.class, b.class);
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.account_ = "";
            this.password_ = "";
            this.sign_ = "";
            this.appVersion_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserLoginRequestParameters build() {
            UserLoginRequestParameters userLoginRequestParametersBuildPartial = buildPartial();
            if (userLoginRequestParametersBuildPartial.isInitialized()) {
                return userLoginRequestParametersBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) userLoginRequestParametersBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public UserLoginRequestParameters buildPartial() {
            UserLoginRequestParameters userLoginRequestParameters = new UserLoginRequestParameters(this, (a) null);
            userLoginRequestParameters.account_ = this.account_;
            userLoginRequestParameters.password_ = this.password_;
            userLoginRequestParameters.sign_ = this.sign_;
            userLoginRequestParameters.appVersion_ = this.appVersion_;
            onBuilt();
            return userLoginRequestParameters;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserLoginRequestParameters getDefaultInstanceForType() {
            return UserLoginRequestParameters.getDefaultInstance();
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
            if (other instanceof UserLoginRequestParameters) {
                return mergeFrom((UserLoginRequestParameters) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.account_ = "";
            this.password_ = "";
            this.sign_ = "";
            this.appVersion_ = "";
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(UserLoginRequestParameters other) {
            if (other == UserLoginRequestParameters.getDefaultInstance()) {
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
            UserLoginRequestParameters userLoginRequestParameters = null;
            try {
                try {
                    UserLoginRequestParameters userLoginRequestParameters2 = (UserLoginRequestParameters) UserLoginRequestParameters.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (userLoginRequestParameters2 != null) {
                        mergeFrom(userLoginRequestParameters2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    UserLoginRequestParameters userLoginRequestParameters3 = (UserLoginRequestParameters) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        userLoginRequestParameters = userLoginRequestParameters3;
                        if (userLoginRequestParameters != null) {
                            mergeFrom(userLoginRequestParameters);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (userLoginRequestParameters != null) {
                    mergeFrom(userLoginRequestParameters);
                }
                throw th;
            }
        }
    }

    /* synthetic */ UserLoginRequestParameters(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static UserLoginRequestParameters getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return d.f88135a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UserLoginRequestParameters parseDelimitedFrom(InputStream input) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static UserLoginRequestParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<UserLoginRequestParameters> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserLoginRequestParameters)) {
            return super.equals(obj);
        }
        UserLoginRequestParameters userLoginRequestParameters = (UserLoginRequestParameters) obj;
        return getAccount().equals(userLoginRequestParameters.getAccount()) && getPassword().equals(userLoginRequestParameters.getPassword()) && getSign().equals(userLoginRequestParameters.getSign()) && getAppVersion().equals(userLoginRequestParameters.getAppVersion()) && this.unknownFields.equals(userLoginRequestParameters.unknownFields);
    }

    @Override // com.wufan.user.service.protobuf.i
    public String getAccount() {
        Object obj = this.account_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.account_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.i
    public ByteString getAccountBytes() {
        Object obj = this.account_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.account_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.user.service.protobuf.i
    public String getAppVersion() {
        Object obj = this.appVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.i
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
    public Parser<UserLoginRequestParameters> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.user.service.protobuf.i
    public String getPassword() {
        Object obj = this.password_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.password_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.i
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

    @Override // com.wufan.user.service.protobuf.i
    public String getSign() {
        Object obj = this.sign_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sign_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.user.service.protobuf.i
    public ByteString getSignBytes() {
        Object obj = this.sign_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.sign_ = byteStringCopyFromUtf8;
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
        int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAccount().hashCode()) * 37) + 2) * 53) + getPassword().hashCode()) * 37) + 3) * 53) + getSign().hashCode()) * 37) + 4) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return d.f88136b.ensureFieldAccessorsInitialized(UserLoginRequestParameters.class, b.class);
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
        if (!getSignBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.sign_);
        }
        if (!getAppVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 4, this.appVersion_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ UserLoginRequestParameters(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(UserLoginRequestParameters prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static UserLoginRequestParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private UserLoginRequestParameters(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UserLoginRequestParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static UserLoginRequestParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public UserLoginRequestParameters getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static UserLoginRequestParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private UserLoginRequestParameters() {
        this.memoizedIsInitialized = (byte) -1;
        this.account_ = "";
        this.password_ = "";
        this.sign_ = "";
        this.appVersion_ = "";
    }

    public static UserLoginRequestParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static UserLoginRequestParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static UserLoginRequestParameters parseFrom(InputStream input) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static UserLoginRequestParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private UserLoginRequestParameters(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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

    public static UserLoginRequestParameters parseFrom(CodedInputStream input) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static UserLoginRequestParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (UserLoginRequestParameters) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
