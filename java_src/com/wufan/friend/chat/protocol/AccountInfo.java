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
public final class AccountInfo extends GeneratedMessageV3 implements com.wufan.friend.chat.protocol.a {
    public static final int ACCOUNTID_FIELD_NUMBER = 2;
    public static final int ADMINISTRATOR_FIELD_NUMBER = 1;
    public static final int AVATAR_FIELD_NUMBER = 4;
    public static final int BANNED_FIELD_NUMBER = 7;
    public static final int LEVEL_FIELD_NUMBER = 5;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    public static final int VIP_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private boolean administrator_;
    private volatile Object avatar_;
    private boolean banned_;
    private int level_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private boolean vip_;
    private static final AccountInfo DEFAULT_INSTANCE = new AccountInfo();
    private static final Parser<AccountInfo> PARSER = new a();

    class a extends AbstractParser<AccountInfo> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new AccountInfo(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements com.wufan.friend.chat.protocol.a {
        private int accountId_;
        private boolean administrator_;
        private Object avatar_;
        private boolean banned_;
        private int level_;
        private Object nickname_;
        private boolean vip_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.Q;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearAdministrator() {
            this.administrator_ = false;
            onChanged();
            return this;
        }

        public b clearAvatar() {
            this.avatar_ = AccountInfo.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public b clearBanned() {
            this.banned_ = false;
            onChanged();
            return this;
        }

        public b clearLevel() {
            this.level_ = 0;
            onChanged();
            return this;
        }

        public b clearNickname() {
            this.nickname_ = AccountInfo.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public b clearVip() {
            this.vip_ = false;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public boolean getAdministrator() {
            return this.administrator_;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public boolean getBanned() {
            return this.banned_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.Q;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public int getLevel() {
            return this.level_;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.a
        public boolean getVip() {
            return this.vip_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.R.ensureFieldAccessorsInitialized(AccountInfo.class, b.class);
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

        public b setAdministrator(boolean value) {
            this.administrator_ = value;
            onChanged();
            return this;
        }

        public b setAvatar(String value) {
            value.getClass();
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setAvatarBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setBanned(boolean value) {
            this.banned_ = value;
            onChanged();
            return this;
        }

        public b setLevel(int value) {
            this.level_ = value;
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

        public b setVip(boolean value) {
            this.vip_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.nickname_ = "";
            this.avatar_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AccountInfo build() {
            AccountInfo accountInfoBuildPartial = buildPartial();
            if (accountInfoBuildPartial.isInitialized()) {
                return accountInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) accountInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AccountInfo buildPartial() {
            AccountInfo accountInfo = new AccountInfo(this, (a) null);
            accountInfo.administrator_ = this.administrator_;
            accountInfo.accountId_ = this.accountId_;
            accountInfo.nickname_ = this.nickname_;
            accountInfo.avatar_ = this.avatar_;
            accountInfo.level_ = this.level_;
            accountInfo.vip_ = this.vip_;
            accountInfo.banned_ = this.banned_;
            onBuilt();
            return accountInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AccountInfo getDefaultInstanceForType() {
            return AccountInfo.getDefaultInstance();
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
            this.administrator_ = false;
            this.accountId_ = 0;
            this.nickname_ = "";
            this.avatar_ = "";
            this.level_ = 0;
            this.vip_ = false;
            this.banned_ = false;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.nickname_ = "";
            this.avatar_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof AccountInfo) {
                return mergeFrom((AccountInfo) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(AccountInfo other) {
            if (other == AccountInfo.getDefaultInstance()) {
                return this;
            }
            if (other.getAdministrator()) {
                setAdministrator(other.getAdministrator());
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (!other.getNickname().isEmpty()) {
                this.nickname_ = other.nickname_;
                onChanged();
            }
            if (!other.getAvatar().isEmpty()) {
                this.avatar_ = other.avatar_;
                onChanged();
            }
            if (other.getLevel() != 0) {
                setLevel(other.getLevel());
            }
            if (other.getVip()) {
                setVip(other.getVip());
            }
            if (other.getBanned()) {
                setBanned(other.getBanned());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            AccountInfo accountInfo = null;
            try {
                try {
                    AccountInfo accountInfo2 = (AccountInfo) AccountInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (accountInfo2 != null) {
                        mergeFrom(accountInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    AccountInfo accountInfo3 = (AccountInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        accountInfo = accountInfo3;
                        if (accountInfo != null) {
                            mergeFrom(accountInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (accountInfo != null) {
                    mergeFrom(accountInfo);
                }
                throw th;
            }
        }
    }

    /* synthetic */ AccountInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static AccountInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.Q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AccountInfo parseDelimitedFrom(InputStream input) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static AccountInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<AccountInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountInfo)) {
            return super.equals(obj);
        }
        AccountInfo accountInfo = (AccountInfo) obj;
        return getAdministrator() == accountInfo.getAdministrator() && getAccountId() == accountInfo.getAccountId() && getNickname().equals(accountInfo.getNickname()) && getAvatar().equals(accountInfo.getAvatar()) && getLevel() == accountInfo.getLevel() && getVip() == accountInfo.getVip() && getBanned() == accountInfo.getBanned() && this.unknownFields.equals(accountInfo.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.a
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public boolean getAdministrator() {
        return this.administrator_;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public boolean getBanned() {
        return this.banned_;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public int getLevel() {
        return this.level_;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.a
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
    public Parser<AccountInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        boolean z10 = this.administrator_;
        int iComputeBoolSize = z10 ? 0 + CodedOutputStream.computeBoolSize(1, z10) : 0;
        int i11 = this.accountId_;
        if (i11 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(2, i11);
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(3, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            iComputeBoolSize += GeneratedMessageV3.computeStringSize(4, this.avatar_);
        }
        int i12 = this.level_;
        if (i12 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(5, i12);
        }
        boolean z11 = this.vip_;
        if (z11) {
            iComputeBoolSize += CodedOutputStream.computeBoolSize(6, z11);
        }
        boolean z12 = this.banned_;
        if (z12) {
            iComputeBoolSize += CodedOutputStream.computeBoolSize(7, z12);
        }
        int serializedSize = iComputeBoolSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.a
    public boolean getVip() {
        return this.vip_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getAdministrator())) * 37) + 2) * 53) + getAccountId()) * 37) + 3) * 53) + getNickname().hashCode()) * 37) + 4) * 53) + getAvatar().hashCode()) * 37) + 5) * 53) + getLevel()) * 37) + 6) * 53) + Internal.hashBoolean(getVip())) * 37) + 7) * 53) + Internal.hashBoolean(getBanned())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.R.ensureFieldAccessorsInitialized(AccountInfo.class, b.class);
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
        boolean z10 = this.administrator_;
        if (z10) {
            output.writeBool(1, z10);
        }
        int i10 = this.accountId_;
        if (i10 != 0) {
            output.writeInt32(2, i10);
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.nickname_);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 4, this.avatar_);
        }
        int i11 = this.level_;
        if (i11 != 0) {
            output.writeInt32(5, i11);
        }
        boolean z11 = this.vip_;
        if (z11) {
            output.writeBool(6, z11);
        }
        boolean z12 = this.banned_;
        if (z12) {
            output.writeBool(7, z12);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ AccountInfo(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(AccountInfo prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static AccountInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private AccountInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AccountInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static AccountInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public AccountInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static AccountInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private AccountInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
        this.avatar_ = "";
    }

    public static AccountInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static AccountInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static AccountInfo parseFrom(InputStream input) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private AccountInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.administrator_ = input.readBool();
                        } else if (tag == 16) {
                            this.accountId_ = input.readInt32();
                        } else if (tag == 26) {
                            this.nickname_ = input.readStringRequireUtf8();
                        } else if (tag == 34) {
                            this.avatar_ = input.readStringRequireUtf8();
                        } else if (tag == 40) {
                            this.level_ = input.readInt32();
                        } else if (tag == 48) {
                            this.vip_ = input.readBool();
                        } else if (tag != 56) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.banned_ = input.readBool();
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

    public static AccountInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static AccountInfo parseFrom(CodedInputStream input) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static AccountInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AccountInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
