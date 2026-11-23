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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class LeaveRoomNotification extends GeneratedMessageV3 implements v {
    public static final int ACCOUNTID_FIELD_NUMBER = 1;
    public static final int LOBBYROOMID_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private long lobbyRoomId_;
    private byte memoizedIsInitialized;
    private static final LeaveRoomNotification DEFAULT_INSTANCE = new LeaveRoomNotification();
    private static final Parser<LeaveRoomNotification> PARSER = new a();

    class a extends AbstractParser<LeaveRoomNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LeaveRoomNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new LeaveRoomNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements v {
        private int accountId_;
        private long lobbyRoomId_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87891q0;
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

        @Override // com.wufan.friend.chat.protocol.v
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87891q0;
        }

        @Override // com.wufan.friend.chat.protocol.v
        public long getLobbyRoomId() {
            return this.lobbyRoomId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87893r0.ensureFieldAccessorsInitialized(LeaveRoomNotification.class, b.class);
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
        public LeaveRoomNotification build() {
            LeaveRoomNotification leaveRoomNotificationBuildPartial = buildPartial();
            if (leaveRoomNotificationBuildPartial.isInitialized()) {
                return leaveRoomNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) leaveRoomNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LeaveRoomNotification buildPartial() {
            LeaveRoomNotification leaveRoomNotification = new LeaveRoomNotification(this, (a) null);
            leaveRoomNotification.accountId_ = this.accountId_;
            leaveRoomNotification.lobbyRoomId_ = this.lobbyRoomId_;
            onBuilt();
            return leaveRoomNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LeaveRoomNotification getDefaultInstanceForType() {
            return LeaveRoomNotification.getDefaultInstance();
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
            this.accountId_ = 0;
            this.lobbyRoomId_ = 0L;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof LeaveRoomNotification) {
                return mergeFrom((LeaveRoomNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(LeaveRoomNotification other) {
            if (other == LeaveRoomNotification.getDefaultInstance()) {
                return this;
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (other.getLobbyRoomId() != 0) {
                setLobbyRoomId(other.getLobbyRoomId());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            LeaveRoomNotification leaveRoomNotification = null;
            try {
                try {
                    LeaveRoomNotification leaveRoomNotification2 = (LeaveRoomNotification) LeaveRoomNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (leaveRoomNotification2 != null) {
                        mergeFrom(leaveRoomNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    LeaveRoomNotification leaveRoomNotification3 = (LeaveRoomNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        leaveRoomNotification = leaveRoomNotification3;
                        if (leaveRoomNotification != null) {
                            mergeFrom(leaveRoomNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (leaveRoomNotification != null) {
                    mergeFrom(leaveRoomNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ LeaveRoomNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static LeaveRoomNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87891q0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LeaveRoomNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static LeaveRoomNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<LeaveRoomNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LeaveRoomNotification)) {
            return super.equals(obj);
        }
        LeaveRoomNotification leaveRoomNotification = (LeaveRoomNotification) obj;
        return getAccountId() == leaveRoomNotification.getAccountId() && getLobbyRoomId() == leaveRoomNotification.getLobbyRoomId() && this.unknownFields.equals(leaveRoomNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.v
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.v
    public long getLobbyRoomId() {
        return this.lobbyRoomId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<LeaveRoomNotification> getParserForType() {
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
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(2, j10);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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
        int iHashCode = ((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAccountId()) * 37) + 2) * 53) + Internal.hashLong(getLobbyRoomId())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87893r0.ensureFieldAccessorsInitialized(LeaveRoomNotification.class, b.class);
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
        long j10 = this.lobbyRoomId_;
        if (j10 != 0) {
            output.writeInt64(2, j10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ LeaveRoomNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(LeaveRoomNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static LeaveRoomNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private LeaveRoomNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LeaveRoomNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static LeaveRoomNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public LeaveRoomNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static LeaveRoomNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private LeaveRoomNotification() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LeaveRoomNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static LeaveRoomNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private LeaveRoomNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            if (tag == 8) {
                                this.accountId_ = input.readInt32();
                            } else if (tag != 16) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.lobbyRoomId_ = input.readInt64();
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

    public static LeaveRoomNotification parseFrom(InputStream input) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static LeaveRoomNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static LeaveRoomNotification parseFrom(CodedInputStream input) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static LeaveRoomNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LeaveRoomNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
