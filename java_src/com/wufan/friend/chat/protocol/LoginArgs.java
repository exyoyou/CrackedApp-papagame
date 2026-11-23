package com.wufan.friend.chat.protocol;

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
public final class LoginArgs extends GeneratedMessageV3 implements y {
    public static final int ACCOUNTID_FIELD_NUMBER = 1;
    public static final int NICKNAME_FIELD_NUMBER = 2;
    public static final int TOKEN_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private volatile Object token_;
    private static final LoginArgs DEFAULT_INSTANCE = new LoginArgs();
    private static final Parser<LoginArgs> PARSER = new a();

    class a extends AbstractParser<LoginArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new LoginArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements y {
        private int accountId_;
        private Object nickname_;
        private Object token_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87886o;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearNickname() {
            this.nickname_ = LoginArgs.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public b clearToken() {
            this.token_ = LoginArgs.getDefaultInstance().getToken();
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87886o;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.token_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.y
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87888p.ensureFieldAccessorsInitialized(LoginArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setAccountId(int value) {
            this.accountId_ = value;
            onChanged();
            return this;
        }

        public b setNickname(String value) {
            value.getClass();
            this.nickname_ = value;
            onChanged();
            return this;
        }

        public b setNicknameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.nickname_ = value;
            onChanged();
            return this;
        }

        public b setToken(String value) {
            value.getClass();
            this.token_ = value;
            onChanged();
            return this;
        }

        public b setTokenBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.token_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.nickname_ = "";
            this.token_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LoginArgs build() {
            LoginArgs loginArgsBuildPartial = buildPartial();
            if (loginArgsBuildPartial.isInitialized()) {
                return loginArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) loginArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LoginArgs buildPartial() {
            LoginArgs loginArgs = new LoginArgs(this, (a) null);
            loginArgs.accountId_ = this.accountId_;
            loginArgs.nickname_ = this.nickname_;
            loginArgs.token_ = this.token_;
            onBuilt();
            return loginArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LoginArgs getDefaultInstanceForType() {
            return LoginArgs.getDefaultInstance();
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
            this.accountId_ = 0;
            this.nickname_ = "";
            this.token_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.nickname_ = "";
            this.token_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof LoginArgs) {
                return mergeFrom((LoginArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(LoginArgs other) {
            if (other == LoginArgs.getDefaultInstance()) {
                return this;
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (!other.getNickname().isEmpty()) {
                this.nickname_ = other.nickname_;
                onChanged();
            }
            if (!other.getToken().isEmpty()) {
                this.token_ = other.token_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            LoginArgs loginArgs = null;
            try {
                try {
                    LoginArgs loginArgs2 = (LoginArgs) LoginArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (loginArgs2 != null) {
                        mergeFrom(loginArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    LoginArgs loginArgs3 = (LoginArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        loginArgs = loginArgs3;
                        if (loginArgs != null) {
                            mergeFrom(loginArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (loginArgs != null) {
                    mergeFrom(loginArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ LoginArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static LoginArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87886o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoginArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static LoginArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<LoginArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoginArgs)) {
            return super.equals(obj);
        }
        LoginArgs loginArgs = (LoginArgs) obj;
        return getAccountId() == loginArgs.getAccountId() && getNickname().equals(loginArgs.getNickname()) && getToken().equals(loginArgs.getToken()) && this.unknownFields.equals(loginArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.y
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.y
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
    public Parser<LoginArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.accountId_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.nickname_);
        }
        if (!getTokenBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.token_);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public String getToken() {
        Object obj = this.token_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.token_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.y
    public ByteString getTokenBytes() {
        Object obj = this.token_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.token_ = byteStringCopyFromUtf8;
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAccountId()) * 37) + 2) * 53) + getNickname().hashCode()) * 37) + 3) * 53) + getToken().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87888p.ensureFieldAccessorsInitialized(LoginArgs.class, b.class);
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
        int i10 = this.accountId_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.nickname_);
        }
        if (!getTokenBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.token_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ LoginArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(LoginArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static LoginArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private LoginArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoginArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static LoginArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public LoginArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static LoginArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private LoginArgs() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
        this.token_ = "";
    }

    public static LoginArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static LoginArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static LoginArgs parseFrom(InputStream input) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private LoginArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.accountId_ = input.readInt32();
                        } else if (tag == 18) {
                            this.nickname_ = input.readStringRequireUtf8();
                        } else if (tag != 26) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.token_ = input.readStringRequireUtf8();
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

    public static LoginArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static LoginArgs parseFrom(CodedInputStream input) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static LoginArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LoginArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
