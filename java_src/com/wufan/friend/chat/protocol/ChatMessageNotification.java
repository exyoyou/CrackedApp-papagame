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
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatMessageNotification extends GeneratedMessageV3 implements g {
    public static final int FRIEND_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    public static final int TIMESTAMP_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private AccountInfo friend_;
    private byte memoizedIsInitialized;
    private volatile Object message_;
    private long timestamp_;
    private static final ChatMessageNotification DEFAULT_INSTANCE = new ChatMessageNotification();
    private static final Parser<ChatMessageNotification> PARSER = new a();

    class a extends AbstractParser<ChatMessageNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ChatMessageNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new ChatMessageNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements g {
        private SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> friendBuilder_;
        private AccountInfo friend_;
        private Object message_;
        private long timestamp_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87883m0;
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
            this.message_ = ChatMessageNotification.getDefaultInstance().getMessage();
            onChanged();
            return this;
        }

        public b clearTimestamp() {
            this.timestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87883m0;
        }

        @Override // com.wufan.friend.chat.protocol.g
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

        @Override // com.wufan.friend.chat.protocol.g
        public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 != null) {
                return (com.wufan.friend.chat.protocol.a) singleFieldBuilderV3.getMessageOrBuilder();
            }
            AccountInfo accountInfo = this.friend_;
            return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
        }

        @Override // com.wufan.friend.chat.protocol.g
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.message_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.g
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.g
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.wufan.friend.chat.protocol.g
        public boolean hasFriend() {
            return (this.friendBuilder_ == null && this.friend_ == null) ? false : true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87885n0.ensureFieldAccessorsInitialized(ChatMessageNotification.class, b.class);
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

        public b setTimestamp(long value) {
            this.timestamp_ = value;
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
        public ChatMessageNotification build() {
            ChatMessageNotification chatMessageNotificationBuildPartial = buildPartial();
            if (chatMessageNotificationBuildPartial.isInitialized()) {
                return chatMessageNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) chatMessageNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ChatMessageNotification buildPartial() {
            ChatMessageNotification chatMessageNotification = new ChatMessageNotification(this, (a) null);
            SingleFieldBuilderV3<AccountInfo, AccountInfo.b, com.wufan.friend.chat.protocol.a> singleFieldBuilderV3 = this.friendBuilder_;
            if (singleFieldBuilderV3 == null) {
                chatMessageNotification.friend_ = this.friend_;
            } else {
                chatMessageNotification.friend_ = (AccountInfo) singleFieldBuilderV3.build();
            }
            chatMessageNotification.message_ = this.message_;
            chatMessageNotification.timestamp_ = this.timestamp_;
            onBuilt();
            return chatMessageNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChatMessageNotification getDefaultInstanceForType() {
            return ChatMessageNotification.getDefaultInstance();
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
            this.timestamp_ = 0L;
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
            if (other instanceof ChatMessageNotification) {
                return mergeFrom((ChatMessageNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(ChatMessageNotification other) {
            if (other == ChatMessageNotification.getDefaultInstance()) {
                return this;
            }
            if (other.hasFriend()) {
                mergeFriend(other.getFriend());
            }
            if (!other.getMessage().isEmpty()) {
                this.message_ = other.message_;
                onChanged();
            }
            if (other.getTimestamp() != 0) {
                setTimestamp(other.getTimestamp());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            ChatMessageNotification chatMessageNotification = null;
            try {
                try {
                    ChatMessageNotification chatMessageNotification2 = (ChatMessageNotification) ChatMessageNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (chatMessageNotification2 != null) {
                        mergeFrom(chatMessageNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    ChatMessageNotification chatMessageNotification3 = (ChatMessageNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        chatMessageNotification = chatMessageNotification3;
                        if (chatMessageNotification != null) {
                            mergeFrom(chatMessageNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (chatMessageNotification != null) {
                    mergeFrom(chatMessageNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ ChatMessageNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static ChatMessageNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87883m0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChatMessageNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static ChatMessageNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<ChatMessageNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChatMessageNotification)) {
            return super.equals(obj);
        }
        ChatMessageNotification chatMessageNotification = (ChatMessageNotification) obj;
        if (hasFriend() != chatMessageNotification.hasFriend()) {
            return false;
        }
        return (!hasFriend() || getFriend().equals(chatMessageNotification.getFriend())) && getMessage().equals(chatMessageNotification.getMessage()) && getTimestamp() == chatMessageNotification.getTimestamp() && this.unknownFields.equals(chatMessageNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.g
    public AccountInfo getFriend() {
        AccountInfo accountInfo = this.friend_;
        return accountInfo == null ? AccountInfo.getDefaultInstance() : accountInfo;
    }

    @Override // com.wufan.friend.chat.protocol.g
    public com.wufan.friend.chat.protocol.a getFriendOrBuilder() {
        return getFriend();
    }

    @Override // com.wufan.friend.chat.protocol.g
    public String getMessage() {
        Object obj = this.message_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.message_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.g
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
    public Parser<ChatMessageNotification> getParserForType() {
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
        long j10 = this.timestamp_;
        if (j10 != 0) {
            iComputeMessageSize += CodedOutputStream.computeInt64Size(3, j10);
        }
        int serializedSize = iComputeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.g
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.wufan.friend.chat.protocol.g
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
        int iHashCode2 = (((((((((iHashCode * 37) + 2) * 53) + getMessage().hashCode()) * 37) + 3) * 53) + Internal.hashLong(getTimestamp())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87885n0.ensureFieldAccessorsInitialized(ChatMessageNotification.class, b.class);
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
        long j10 = this.timestamp_;
        if (j10 != 0) {
            output.writeInt64(3, j10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ ChatMessageNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(ChatMessageNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static ChatMessageNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private ChatMessageNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChatMessageNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static ChatMessageNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public ChatMessageNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static ChatMessageNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private ChatMessageNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.message_ = "";
    }

    public static ChatMessageNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static ChatMessageNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static ChatMessageNotification parseFrom(InputStream input) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private ChatMessageNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                        } else if (tag == 18) {
                            this.message_ = input.readStringRequireUtf8();
                        } else if (tag != 24) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.timestamp_ = input.readInt64();
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

    public static ChatMessageNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static ChatMessageNotification parseFrom(CodedInputStream input) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static ChatMessageNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatMessageNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
