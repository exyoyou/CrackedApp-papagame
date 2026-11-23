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
import com.wufan.user.service.protobuf.enumeration.LoginType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class UserRegStatusRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Descriptors.Descriptor f88114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GeneratedMessageV3.FieldAccessorTable f88115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88116c;

    public static final class UserRegStatusRequestArgs extends GeneratedMessageV3 implements b {
        public static final int APPVERSION_FIELD_NUMBER = 4;
        public static final int LOGINID_FIELD_NUMBER = 1;
        public static final int LOGINTYPE_FIELD_NUMBER = 2;
        public static final int SIGN_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object appVersion_;
        private volatile Object loginId_;
        private int loginType_;
        private byte memoizedIsInitialized;
        private volatile Object sign_;
        private static final UserRegStatusRequestArgs DEFAULT_INSTANCE = new UserRegStatusRequestArgs();
        private static final Parser<UserRegStatusRequestArgs> PARSER = new a();

        class a extends AbstractParser<UserRegStatusRequestArgs> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UserRegStatusRequestArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new UserRegStatusRequestArgs(input, extensionRegistry, null);
            }
        }

        public static final class b extends GeneratedMessageV3.Builder<b> implements b {
            private Object appVersion_;
            private Object loginId_;
            private int loginType_;
            private Object sign_;

            /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return UserRegStatusRequest.f88114a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public b clearAppVersion() {
                this.appVersion_ = UserRegStatusRequestArgs.getDefaultInstance().getAppVersion();
                onChanged();
                return this;
            }

            public b clearLoginId() {
                this.loginId_ = UserRegStatusRequestArgs.getDefaultInstance().getLoginId();
                onChanged();
                return this;
            }

            public b clearLoginType() {
                this.loginType_ = 0;
                onChanged();
                return this;
            }

            public b clearSign() {
                this.sign_ = UserRegStatusRequestArgs.getDefaultInstance().getSign();
                onChanged();
                return this;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public String getAppVersion() {
                Object obj = this.appVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVersion_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
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
                return UserRegStatusRequest.f88114a;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public String getLoginId() {
                Object obj = this.loginId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.loginId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public ByteString getLoginIdBytes() {
                Object obj = this.loginId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.loginId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public LoginType getLoginType() {
                LoginType loginTypeValueOf = LoginType.valueOf(this.loginType_);
                return loginTypeValueOf == null ? LoginType.UNRECOGNIZED : loginTypeValueOf;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public int getLoginTypeValue() {
                return this.loginType_;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
            public String getSign() {
                Object obj = this.sign_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sign_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
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
                return UserRegStatusRequest.f88115b.ensureFieldAccessorsInitialized(UserRegStatusRequestArgs.class, b.class);
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

            public b setLoginId(String value) {
                value.getClass();
                this.loginId_ = value;
                onChanged();
                return this;
            }

            public b setLoginIdBytes(ByteString value) {
                value.getClass();
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.loginId_ = value;
                onChanged();
                return this;
            }

            public b setLoginType(LoginType value) {
                value.getClass();
                this.loginType_ = value.getNumber();
                onChanged();
                return this;
            }

            public b setLoginTypeValue(int value) {
                this.loginType_ = value;
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
                this.loginId_ = "";
                this.loginType_ = 0;
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (b) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UserRegStatusRequestArgs build() {
                UserRegStatusRequestArgs userRegStatusRequestArgsBuildPartial = buildPartial();
                if (userRegStatusRequestArgsBuildPartial.isInitialized()) {
                    return userRegStatusRequestArgsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) userRegStatusRequestArgsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UserRegStatusRequestArgs buildPartial() {
                UserRegStatusRequestArgs userRegStatusRequestArgs = new UserRegStatusRequestArgs(this, (a) null);
                userRegStatusRequestArgs.loginId_ = this.loginId_;
                userRegStatusRequestArgs.loginType_ = this.loginType_;
                userRegStatusRequestArgs.sign_ = this.sign_;
                userRegStatusRequestArgs.appVersion_ = this.appVersion_;
                onBuilt();
                return userRegStatusRequestArgs;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public b clearField(Descriptors.FieldDescriptor field) {
                return (b) super.clearField(field);
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UserRegStatusRequestArgs getDefaultInstanceForType() {
                return UserRegStatusRequestArgs.getDefaultInstance();
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
                this.loginId_ = "";
                this.loginType_ = 0;
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
                if (other instanceof UserRegStatusRequestArgs) {
                    return mergeFrom((UserRegStatusRequestArgs) other);
                }
                super.mergeFrom(other);
                return this;
            }

            private b(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.loginId_ = "";
                this.loginType_ = 0;
                this.sign_ = "";
                this.appVersion_ = "";
                maybeForceBuilderInitialization();
            }

            public b mergeFrom(UserRegStatusRequestArgs other) {
                if (other == UserRegStatusRequestArgs.getDefaultInstance()) {
                    return this;
                }
                if (!other.getLoginId().isEmpty()) {
                    this.loginId_ = other.loginId_;
                    onChanged();
                }
                if (other.loginType_ != 0) {
                    setLoginTypeValue(other.getLoginTypeValue());
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
                UserRegStatusRequestArgs userRegStatusRequestArgs = null;
                try {
                    try {
                        UserRegStatusRequestArgs userRegStatusRequestArgs2 = (UserRegStatusRequestArgs) UserRegStatusRequestArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                        if (userRegStatusRequestArgs2 != null) {
                            mergeFrom(userRegStatusRequestArgs2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e10) {
                        UserRegStatusRequestArgs userRegStatusRequestArgs3 = (UserRegStatusRequestArgs) e10.getUnfinishedMessage();
                        try {
                            throw e10.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            userRegStatusRequestArgs = userRegStatusRequestArgs3;
                            if (userRegStatusRequestArgs != null) {
                                mergeFrom(userRegStatusRequestArgs);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (userRegStatusRequestArgs != null) {
                        mergeFrom(userRegStatusRequestArgs);
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ UserRegStatusRequestArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
            this(codedInputStream, extensionRegistryLite);
        }

        public static UserRegStatusRequestArgs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return UserRegStatusRequest.f88114a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UserRegStatusRequestArgs parseDelimitedFrom(InputStream input) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static UserRegStatusRequestArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Parser<UserRegStatusRequestArgs> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserRegStatusRequestArgs)) {
                return super.equals(obj);
            }
            UserRegStatusRequestArgs userRegStatusRequestArgs = (UserRegStatusRequestArgs) obj;
            return getLoginId().equals(userRegStatusRequestArgs.getLoginId()) && this.loginType_ == userRegStatusRequestArgs.loginType_ && getSign().equals(userRegStatusRequestArgs.getSign()) && getAppVersion().equals(userRegStatusRequestArgs.getAppVersion()) && this.unknownFields.equals(userRegStatusRequestArgs.unknownFields);
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public String getAppVersion() {
            Object obj = this.appVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public ByteString getAppVersionBytes() {
            Object obj = this.appVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVersion_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public String getLoginId() {
            Object obj = this.loginId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.loginId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public ByteString getLoginIdBytes() {
            Object obj = this.loginId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.loginId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public LoginType getLoginType() {
            LoginType loginTypeValueOf = LoginType.valueOf(this.loginType_);
            return loginTypeValueOf == null ? LoginType.UNRECOGNIZED : loginTypeValueOf;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public int getLoginTypeValue() {
            return this.loginType_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<UserRegStatusRequestArgs> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int iComputeStringSize = getLoginIdBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.loginId_);
            if (this.loginType_ != LoginType.QQ.getNumber()) {
                iComputeStringSize += CodedOutputStream.computeEnumSize(2, this.loginType_);
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

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
        public String getSign() {
            Object obj = this.sign_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sign_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.user.service.protobuf.UserRegStatusRequest.b
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
            int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getLoginId().hashCode()) * 37) + 2) * 53) + this.loginType_) * 37) + 3) * 53) + getSign().hashCode()) * 37) + 4) * 53) + getAppVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return UserRegStatusRequest.f88115b.ensureFieldAccessorsInitialized(UserRegStatusRequestArgs.class, b.class);
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
            if (!getLoginIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 1, this.loginId_);
            }
            if (this.loginType_ != LoginType.QQ.getNumber()) {
                output.writeEnum(2, this.loginType_);
            }
            if (!getSignBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 3, this.sign_);
            }
            if (!getAppVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.appVersion_);
            }
            this.unknownFields.writeTo(output);
        }

        /* synthetic */ UserRegStatusRequestArgs(GeneratedMessageV3.Builder builder, a aVar) {
            this(builder);
        }

        public static b newBuilder(UserRegStatusRequestArgs prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        public static UserRegStatusRequestArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        private UserRegStatusRequestArgs(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserRegStatusRequestArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static UserRegStatusRequestArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UserRegStatusRequestArgs getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b toBuilder() {
            a aVar = null;
            return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
        }

        public static UserRegStatusRequestArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public b newBuilderForType() {
            return newBuilder();
        }

        private UserRegStatusRequestArgs() {
            this.memoizedIsInitialized = (byte) -1;
            this.loginId_ = "";
            this.loginType_ = 0;
            this.sign_ = "";
            this.appVersion_ = "";
        }

        public static UserRegStatusRequestArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new b(parent, null);
        }

        public static UserRegStatusRequestArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static UserRegStatusRequestArgs parseFrom(InputStream input) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static UserRegStatusRequestArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        private UserRegStatusRequestArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                                this.loginId_ = input.readStringRequireUtf8();
                            } else if (tag == 16) {
                                this.loginType_ = input.readEnum();
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

        public static UserRegStatusRequestArgs parseFrom(CodedInputStream input) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static UserRegStatusRequestArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserRegStatusRequestArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }
    }

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = UserRegStatusRequest.f88116c = root;
            return null;
        }
    }

    public interface b extends MessageOrBuilder {
        String getAppVersion();

        ByteString getAppVersionBytes();

        String getLoginId();

        ByteString getLoginIdBytes();

        LoginType getLoginType();

        int getLoginTypeValue();

        String getSign();

        ByteString getSignBytes();
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001duser_reg_status_request.proto\u001a\u001denumeration/enumeration.proto\"x\n\u0018UserRegStatusRequestArgs\u0012\u000f\n\u0007loginId\u0018\u0001 \u0001(\t\u0012)\n\tloginType\u0018\u0002 \u0001(\u000e2\u0016.enumeration.LoginType\u0012\f\n\u0004sign\u0018\u0003 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0004 \u0001(\tB7\n\u001fcom.wufan.user.service.protobufB\u0014UserRegStatusRequestb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.wufan.user.service.protobuf.enumeration.a.b()}, new a());
        Descriptors.Descriptor descriptor = d().getMessageTypes().get(0);
        f88114a = descriptor;
        f88115b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"LoginId", "LoginType", "Sign", "AppVersion"});
        com.wufan.user.service.protobuf.enumeration.a.b();
    }

    private UserRegStatusRequest() {
    }

    public static Descriptors.FileDescriptor d() {
        return f88116c;
    }

    public static void e(ExtensionRegistry registry) {
        f(registry);
    }

    public static void f(ExtensionRegistryLite registry) {
    }
}
