package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class PlayerBannedNotification extends GeneratedMessageV3 implements f0 {
    public static final int ACCOUNTINFO_FIELD_NUMBER = 1;
    private static final PlayerBannedNotification DEFAULT_INSTANCE = new PlayerBannedNotification();
    private static final Parser<PlayerBannedNotification> PARSER = new a();
    private static final long serialVersionUID = 0;
    private AccountInfo accountInfo_;
    private byte memoizedIsInitialized;

    class a extends AbstractParser<PlayerBannedNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlayerBannedNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new PlayerBannedNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements f0 {
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> accountInfoBuilder_;
        private AccountInfo accountInfo_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> getAccountInfoFieldBuilder() {
            if (this.accountInfoBuilder_ == null) {
                this.accountInfoBuilder_ = new SingleFieldBuilderV3<>(getAccountInfo(), getParentForChildren(), isClean());
                this.accountInfo_ = null;
            }
            return this.accountInfoBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.C0;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountInfo() {
            if (this.accountInfoBuilder_ == null) {
                this.accountInfo_ = null;
                onChanged();
            } else {
                this.accountInfo_ = null;
                this.accountInfoBuilder_ = null;
            }
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public AccountInfo getAccountInfo() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AccountInfo) singleFieldBuilderV3.getMessage();
            }
            AccountInfo accountInfo = this.accountInfo_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        public AccountInfo.b getAccountInfoBuilder() {
            onChanged();
            return (AccountInfo.b) getAccountInfoFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public com.wufan.friend.chat.protocol.a getAccountInfoOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.accountInfo_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.C0;
        }

        @Override // com.wufan.friend.chat.protocol.f0
        public boolean hasAccountInfo() {
            return (this.accountInfoBuilder_ == null && this.accountInfo_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.D0.ensureFieldAccessorsInitialized(PlayerBannedNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeAccountInfo(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                AccountInfo accountInfo = this.accountInfo_;
                if (accountInfo != null) {
                    this.accountInfo_ = AccountInfo.newBuilder(accountInfo).mergeFrom(value).buildPartial();
                } else {
                    this.accountInfo_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setAccountInfo(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.accountInfo_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
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
        public PlayerBannedNotification build() {
            PlayerBannedNotification playerBannedNotificationBuildPartial = buildPartial();
            if (playerBannedNotificationBuildPartial.isInitialized()) {
                return playerBannedNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) playerBannedNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public PlayerBannedNotification buildPartial() {
            PlayerBannedNotification playerBannedNotification = new PlayerBannedNotification(this, (a) null);
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                playerBannedNotification.accountInfo_ = this.accountInfo_;
            } else {
                playerBannedNotification.accountInfo_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            onBuilt();
            return playerBannedNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PlayerBannedNotification getDefaultInstanceForType() {
            return PlayerBannedNotification.getDefaultInstance();
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
            if (this.accountInfoBuilder_ == null) {
                this.accountInfo_ = null;
            } else {
                this.accountInfo_ = null;
                this.accountInfoBuilder_ = null;
            }
            return this;
        }

        public b setAccountInfo(AccountInfo.b builderForValue) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.accountInfoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.accountInfo_ = builderForValue.build();
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
            if (other instanceof PlayerBannedNotification) {
                return mergeFrom((PlayerBannedNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(PlayerBannedNotification other) {
            if (other == PlayerBannedNotification.getDefaultInstance()) {
                return this;
            }
            if (other.hasAccountInfo()) {
                mergeAccountInfo(other.getAccountInfo());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            PlayerBannedNotification playerBannedNotification = null;
            try {
                try {
                    PlayerBannedNotification playerBannedNotification2 = (PlayerBannedNotification) PlayerBannedNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (playerBannedNotification2 != null) {
                        mergeFrom(playerBannedNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    PlayerBannedNotification playerBannedNotification3 = (PlayerBannedNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        playerBannedNotification = playerBannedNotification3;
                        if (playerBannedNotification != null) {
                            mergeFrom(playerBannedNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (playerBannedNotification != null) {
                    mergeFrom(playerBannedNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ PlayerBannedNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static PlayerBannedNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.C0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PlayerBannedNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static PlayerBannedNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<PlayerBannedNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PlayerBannedNotification)) {
            return super.equals(obj);
        }
        PlayerBannedNotification playerBannedNotification = (PlayerBannedNotification) obj;
        if (hasAccountInfo() != playerBannedNotification.hasAccountInfo()) {
            return false;
        }
        return (!hasAccountInfo() || getAccountInfo().equals(playerBannedNotification.getAccountInfo())) && this.unknownFields.equals(playerBannedNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public AccountInfo getAccountInfo() {
        AccountInfo accountInfo = this.accountInfo_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public com.wufan.friend.chat.protocol.a getAccountInfoOrBuilder() {
        return getAccountInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<PlayerBannedNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = (this.accountInfo_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getAccountInfo()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iComputeMessageSize;
        return iComputeMessageSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.f0
    public boolean hasAccountInfo() {
        return this.accountInfo_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (hasAccountInfo()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getAccountInfo().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.D0.ensureFieldAccessorsInitialized(PlayerBannedNotification.class, b.class);
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
        if (this.accountInfo_ != null) {
            output.writeMessage(1, getAccountInfo());
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ PlayerBannedNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(PlayerBannedNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static PlayerBannedNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private PlayerBannedNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PlayerBannedNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayerBannedNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public PlayerBannedNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static PlayerBannedNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private PlayerBannedNotification() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PlayerBannedNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static PlayerBannedNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private PlayerBannedNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag != 10) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                AccountInfo accountInfo = this.accountInfo_;
                                AccountInfo.b builder = accountInfo != null ? accountInfo.toBuilder() : null;
                                AccountInfo accountInfo2 = (AccountInfo) input.readMessage(AccountInfo.parser(), extensionRegistry);
                                this.accountInfo_ = accountInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(accountInfo2);
                                    this.accountInfo_ = builder.buildPartial();
                                }
                            }
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

    public static PlayerBannedNotification parseFrom(InputStream input) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static PlayerBannedNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static PlayerBannedNotification parseFrom(CodedInputStream input) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static PlayerBannedNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (PlayerBannedNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
