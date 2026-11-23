package com.wufan.friend.chat.protocol;

import com.google.protobuf.AbstractMessage;
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
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatRoomArgs extends GeneratedMessageV3 implements h {
    public static final int ACCOUNTID_FIELD_NUMBER = 3;
    public static final int LOBBYROOMID_FIELD_NUMBER = 2;
    public static final int STATE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private long lobbyRoomId_;
    private byte memoizedIsInitialized;
    private int state_;
    private static final ChatRoomArgs DEFAULT_INSTANCE = new ChatRoomArgs();
    private static final Parser<ChatRoomArgs> PARSER = new a();

    public enum State implements ProtocolMessageEnum {
        JOIN(0),
        LEAVE(1),
        UNRECOGNIZED(-1);

        public static final int JOIN_VALUE = 0;
        public static final int LEAVE_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<State> internalValueMap = new a();
        private static final State[] VALUES = values();

        class a implements Internal.EnumLiteMap<State> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State findValueByNumber(int number) {
                return State.forNumber(number);
            }
        }

        State(int value) {
            this.value = value;
        }

        public static State forNumber(int value) {
            if (value == 0) {
                return JOIN;
            }
            if (value != 1) {
                return null;
            }
            return LEAVE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return ChatRoomArgs.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<State> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Deprecated
        public static State valueOf(int value) {
            return forNumber(value);
        }

        public static State valueOf(Descriptors.EnumValueDescriptor desc) {
            if (desc.getType() == getDescriptor()) {
                if (desc.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[desc.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    class a extends AbstractParser<ChatRoomArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ChatRoomArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new ChatRoomArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements h {
        private int accountId_;
        private long lobbyRoomId_;
        private int state_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87878k;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearLobbyRoomId() {
            this.lobbyRoomId_ = 0L;
            onChanged();
            return this;
        }

        public b clearState() {
            this.state_ = 0;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.h
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87878k;
        }

        @Override // com.wufan.friend.chat.protocol.h
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.wufan.friend.chat.protocol.h
        public State getState() {
            State stateValueOf = State.valueOf(this.state_);
            return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.h
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87880l.ensureFieldAccessorsInitialized(ChatRoomArgs.class, b.class);
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

        public b setLobbyRoomId(long value) {
            this.lobbyRoomId_ = value;
            onChanged();
            return this;
        }

        public b setState(State value) {
            value.getClass();
            this.state_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setStateValue(int value) {
            this.state_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.state_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ChatRoomArgs build() {
            ChatRoomArgs chatRoomArgsBuildPartial = buildPartial();
            if (chatRoomArgsBuildPartial.isInitialized()) {
                return chatRoomArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) chatRoomArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public ChatRoomArgs buildPartial() {
            ChatRoomArgs chatRoomArgs = new ChatRoomArgs(this, (a) null);
            chatRoomArgs.state_ = this.state_;
            chatRoomArgs.lobbyRoomId_ = this.lobbyRoomId_;
            chatRoomArgs.accountId_ = this.accountId_;
            onBuilt();
            return chatRoomArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChatRoomArgs getDefaultInstanceForType() {
            return ChatRoomArgs.getDefaultInstance();
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
            this.state_ = 0;
            this.lobbyRoomId_ = 0L;
            this.accountId_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.state_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof ChatRoomArgs) {
                return mergeFrom((ChatRoomArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(ChatRoomArgs other) {
            if (other == ChatRoomArgs.getDefaultInstance()) {
                return this;
            }
            if (other.state_ != 0) {
                setStateValue(other.getStateValue());
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            ChatRoomArgs chatRoomArgs = null;
            try {
                try {
                    ChatRoomArgs chatRoomArgs2 = (ChatRoomArgs) ChatRoomArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (chatRoomArgs2 != null) {
                        mergeFrom(chatRoomArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    ChatRoomArgs chatRoomArgs3 = (ChatRoomArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        chatRoomArgs = chatRoomArgs3;
                        if (chatRoomArgs != null) {
                            mergeFrom(chatRoomArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (chatRoomArgs != null) {
                    mergeFrom(chatRoomArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ ChatRoomArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static ChatRoomArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87878k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChatRoomArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static ChatRoomArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<ChatRoomArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChatRoomArgs)) {
            return super.equals(obj);
        }
        ChatRoomArgs chatRoomArgs = (ChatRoomArgs) obj;
        return this.state_ == chatRoomArgs.state_ && getLobbyRoomId() == chatRoomArgs.getLobbyRoomId() && getAccountId() == chatRoomArgs.getAccountId() && this.unknownFields.equals(chatRoomArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.h
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.h
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<ChatRoomArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = this.state_ != State.JOIN.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.state_) : 0;
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt64Size(2, j10);
        }
        int i11 = this.accountId_;
        if (i11 != 0) {
            iComputeEnumSize += CodedOutputStream.computeInt32Size(3, i11);
        }
        int serializedSize = iComputeEnumSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.h
    public State getState() {
        State stateValueOf = State.valueOf(this.state_);
        return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.h
    public int getStateValue() {
        return this.state_;
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.state_) * 37) + 2) * 53) + Internal.hashLong(getLobbyRoomId())) * 37) + 3) * 53) + getAccountId()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87880l.ensureFieldAccessorsInitialized(ChatRoomArgs.class, b.class);
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
        if (this.state_ != State.JOIN.getNumber()) {
            output.writeEnum(1, this.state_);
        }
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            output.writeInt64(2, j10);
        }
        int i10 = this.accountId_;
        if (i10 != 0) {
            output.writeInt32(3, i10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ ChatRoomArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(ChatRoomArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static ChatRoomArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private ChatRoomArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChatRoomArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static ChatRoomArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public ChatRoomArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static ChatRoomArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private ChatRoomArgs() {
        this.memoizedIsInitialized = (byte) -1;
        this.state_ = 0;
    }

    public static ChatRoomArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static ChatRoomArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static ChatRoomArgs parseFrom(InputStream input) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private ChatRoomArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.state_ = input.readEnum();
                        } else if (tag == 16) {
                            this.lobbyRoomId_ = input.readInt64();
                        } else if (tag != 24) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.accountId_ = input.readInt32();
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

    public static ChatRoomArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static ChatRoomArgs parseFrom(CodedInputStream input) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static ChatRoomArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (ChatRoomArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
