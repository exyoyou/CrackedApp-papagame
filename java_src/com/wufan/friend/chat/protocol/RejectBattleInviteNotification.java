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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class RejectBattleInviteNotification extends GeneratedMessageV3 implements l0 {
    public static final int FRIEND_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private AccountInfo friend_;
    private byte memoizedIsInitialized;
    private volatile Object message_;
    private static final RejectBattleInviteNotification DEFAULT_INSTANCE = new RejectBattleInviteNotification();
    private static final Parser<RejectBattleInviteNotification> PARSER = new a();

    class a extends AbstractParser<RejectBattleInviteNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RejectBattleInviteNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new RejectBattleInviteNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements l0 {
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> friendBuilder_;
        private AccountInfo friend_;
        private Object message_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87899u0;
        }

        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> getFriendFieldBuilder() {
            if (this.friendBuilder_ == null) {
                this.friendBuilder_ = new SingleFieldBuilderV3<>(getFriend(), getParentForChildren(), isClean());
                this.friend_ = null;
            }
            return this.friendBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearFriend() {
            if (this.friendBuilder_ == null) {
                this.friend_ = null;
                onChanged();
            } else {
                this.friend_ = null;
                this.friendBuilder_ = null;
            }
            return this;
        }

        public b clearMessage() {
            this.message_ = RejectBattleInviteNotification.getDefaultInstance().getMessage();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87899u0;
        }

        @Override // com.wufan.friend.chat.protocol.l0
        public AccountInfo getFriend() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (AccountInfo) singleFieldBuilderV3.getMessage();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        public AccountInfo.b getFriendBuilder() {
            onChanged();
            return (AccountInfo.b) getFriendFieldBuilder().getBuilder();
        }

        @Override // com.wufan.friend.chat.protocol.l0
        public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.wufan.friend.chat.protocol.l0
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.message_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.l0
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.l0
        public boolean hasFriend() {
            return (this.friendBuilder_ == null && this.friend_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87901v0.ensureFieldAccessorsInitialized(RejectBattleInviteNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b mergeFriend(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                AccountInfo accountInfo = this.friend_;
                if (accountInfo != null) {
                    this.friend_ = AccountInfo.newBuilder(accountInfo).mergeFrom(value).buildPartial();
                } else {
                    this.friend_ = value;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(value);
            }
            return this;
        }

        public b setFriend(AccountInfo value) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.friend_ = value;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            return this;
        }

        public b setMessage(String value) {
            value.getClass();
            this.message_ = value;
            onChanged();
            return this;
        }

        public b setMessageBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.message_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.message_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RejectBattleInviteNotification build() {
            RejectBattleInviteNotification rejectBattleInviteNotificationBuildPartial = buildPartial();
            if (rejectBattleInviteNotificationBuildPartial.isInitialized()) {
                return rejectBattleInviteNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) rejectBattleInviteNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RejectBattleInviteNotification buildPartial() {
            RejectBattleInviteNotification rejectBattleInviteNotification = new RejectBattleInviteNotification(this, (a) null);
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                rejectBattleInviteNotification.friend_ = this.friend_;
            } else {
                rejectBattleInviteNotification.friend_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            rejectBattleInviteNotification.message_ = this.message_;
            onBuilt();
            return rejectBattleInviteNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RejectBattleInviteNotification getDefaultInstanceForType() {
            return RejectBattleInviteNotification.getDefaultInstance();
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
            if (this.friendBuilder_ == null) {
                this.friend_ = null;
            } else {
                this.friend_ = null;
                this.friendBuilder_ = null;
            }
            this.message_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.message_ = "";
            maybeForceBuilderInitialization();
        }

        public b setFriend(AccountInfo.b builderForValue) {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.friend_ = builderForValue.build();
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
            if (other instanceof RejectBattleInviteNotification) {
                return mergeFrom((RejectBattleInviteNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(RejectBattleInviteNotification other) {
            if (other == RejectBattleInviteNotification.getDefaultInstance()) {
                return this;
            }
            if (other.hasFriend()) {
                mergeFriend(other.getFriend());
            }
            if (!other.getMessage().isEmpty()) {
                this.message_ = other.message_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            RejectBattleInviteNotification rejectBattleInviteNotification = null;
            try {
                try {
                    RejectBattleInviteNotification rejectBattleInviteNotification2 = (RejectBattleInviteNotification) RejectBattleInviteNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (rejectBattleInviteNotification2 != null) {
                        mergeFrom(rejectBattleInviteNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RejectBattleInviteNotification rejectBattleInviteNotification3 = (RejectBattleInviteNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        rejectBattleInviteNotification = rejectBattleInviteNotification3;
                        if (rejectBattleInviteNotification != null) {
                            mergeFrom(rejectBattleInviteNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (rejectBattleInviteNotification != null) {
                    mergeFrom(rejectBattleInviteNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ RejectBattleInviteNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static RejectBattleInviteNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87899u0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RejectBattleInviteNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static RejectBattleInviteNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<RejectBattleInviteNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RejectBattleInviteNotification)) {
            return super.equals(obj);
        }
        RejectBattleInviteNotification rejectBattleInviteNotification = (RejectBattleInviteNotification) obj;
        if (hasFriend() != rejectBattleInviteNotification.hasFriend()) {
            return false;
        }
        return (!hasFriend() || getFriend().equals(rejectBattleInviteNotification.getFriend())) && getMessage().equals(rejectBattleInviteNotification.getMessage()) && this.unknownFields.equals(rejectBattleInviteNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.l0
    public AccountInfo getFriend() {
        AccountInfo accountInfo = this.friend_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.l0
    public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
        return getFriend();
    }

    @Override // com.wufan.friend.chat.protocol.l0
    public String getMessage() {
        Object obj = this.message_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.message_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.l0
    public ByteString getMessageBytes() {
        Object obj = this.message_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.message_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<RejectBattleInviteNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeMessageSize = this.friend_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getFriend()) : 0;
        if (!getMessageBytes().isEmpty()) {
            iComputeMessageSize += GeneratedMessageV3.computeStringSize(2, this.message_);
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.l0
    public boolean hasFriend() {
        return this.friend_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode();
        if (hasFriend()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getFriend().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 2) * 53) + getMessage().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87901v0.ensureFieldAccessorsInitialized(RejectBattleInviteNotification.class, b.class);
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
        if (this.friend_ != null) {
            output.writeMessage(1, getFriend());
        }
        if (!getMessageBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.message_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ RejectBattleInviteNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(RejectBattleInviteNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static RejectBattleInviteNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RejectBattleInviteNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RejectBattleInviteNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static RejectBattleInviteNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RejectBattleInviteNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static RejectBattleInviteNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private RejectBattleInviteNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.message_ = "";
    }

    public static RejectBattleInviteNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static RejectBattleInviteNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static RejectBattleInviteNotification parseFrom(InputStream input) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private RejectBattleInviteNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            AccountInfo accountInfo = this.friend_;
                            AccountInfo.b builder = accountInfo != null ? accountInfo.toBuilder() : null;
                            AccountInfo accountInfo2 = (AccountInfo) input.readMessage(AccountInfo.parser(), extensionRegistry);
                            this.friend_ = accountInfo2;
                            if (builder != null) {
                                builder.mergeFrom(accountInfo2);
                                this.friend_ = builder.buildPartial();
                            }
                        } else if (tag != 18) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.message_ = input.readStringRequireUtf8();
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

    public static RejectBattleInviteNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static RejectBattleInviteNotification parseFrom(CodedInputStream input) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RejectBattleInviteNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RejectBattleInviteNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
