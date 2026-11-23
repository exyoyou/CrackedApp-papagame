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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class FriendDeleteSuccessNotification extends GeneratedMessageV3 implements n {
    public static final int FRIENDID_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int friendId_;
    private byte memoizedIsInitialized;
    private static final FriendDeleteSuccessNotification DEFAULT_INSTANCE = new FriendDeleteSuccessNotification();
    private static final Parser<FriendDeleteSuccessNotification> PARSER = new a();

    class a extends AbstractParser<FriendDeleteSuccessNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendDeleteSuccessNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new FriendDeleteSuccessNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements n {
        private int friendId_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.A0;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearFriendId() {
            this.friendId_ = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.A0;
        }

        @Override // com.wufan.friend.chat.protocol.n
        public int getFriendId() {
            return this.friendId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.B0.ensureFieldAccessorsInitialized(FriendDeleteSuccessNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setFriendId(int value) {
            this.friendId_ = value;
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
        public FriendDeleteSuccessNotification build() {
            FriendDeleteSuccessNotification friendDeleteSuccessNotificationBuildPartial = buildPartial();
            if (friendDeleteSuccessNotificationBuildPartial.isInitialized()) {
                return friendDeleteSuccessNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendDeleteSuccessNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendDeleteSuccessNotification buildPartial() {
            FriendDeleteSuccessNotification friendDeleteSuccessNotification = new FriendDeleteSuccessNotification(this, (a) null);
            friendDeleteSuccessNotification.friendId_ = this.friendId_;
            onBuilt();
            return friendDeleteSuccessNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FriendDeleteSuccessNotification getDefaultInstanceForType() {
            return FriendDeleteSuccessNotification.getDefaultInstance();
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
            this.friendId_ = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof FriendDeleteSuccessNotification) {
                return mergeFrom((FriendDeleteSuccessNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(FriendDeleteSuccessNotification other) {
            if (other == FriendDeleteSuccessNotification.getDefaultInstance()) {
                return this;
            }
            if (other.getFriendId() != 0) {
                setFriendId(other.getFriendId());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            FriendDeleteSuccessNotification friendDeleteSuccessNotification = null;
            try {
                try {
                    FriendDeleteSuccessNotification friendDeleteSuccessNotification2 = (FriendDeleteSuccessNotification) FriendDeleteSuccessNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (friendDeleteSuccessNotification2 != null) {
                        mergeFrom(friendDeleteSuccessNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    FriendDeleteSuccessNotification friendDeleteSuccessNotification3 = (FriendDeleteSuccessNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        friendDeleteSuccessNotification = friendDeleteSuccessNotification3;
                        if (friendDeleteSuccessNotification != null) {
                            mergeFrom(friendDeleteSuccessNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (friendDeleteSuccessNotification != null) {
                    mergeFrom(friendDeleteSuccessNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ FriendDeleteSuccessNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static FriendDeleteSuccessNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.A0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FriendDeleteSuccessNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static FriendDeleteSuccessNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<FriendDeleteSuccessNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FriendDeleteSuccessNotification)) {
            return super.equals(obj);
        }
        FriendDeleteSuccessNotification friendDeleteSuccessNotification = (FriendDeleteSuccessNotification) obj;
        return getFriendId() == friendDeleteSuccessNotification.getFriendId() && this.unknownFields.equals(friendDeleteSuccessNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.n
    public int getFriendId() {
        return this.friendId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<FriendDeleteSuccessNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.friendId_;
        int iComputeInt32Size = (i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iComputeInt32Size;
        return iComputeInt32Size;
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
        int iHashCode = ((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getFriendId()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.B0.ensureFieldAccessorsInitialized(FriendDeleteSuccessNotification.class, b.class);
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
        int i10 = this.friendId_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ FriendDeleteSuccessNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(FriendDeleteSuccessNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static FriendDeleteSuccessNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendDeleteSuccessNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendDeleteSuccessNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendDeleteSuccessNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public FriendDeleteSuccessNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static FriendDeleteSuccessNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private FriendDeleteSuccessNotification() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendDeleteSuccessNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static FriendDeleteSuccessNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendDeleteSuccessNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = input.readTag();
                    if (tag != 0) {
                        if (tag != 8) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.friendId_ = input.readInt32();
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

    public static FriendDeleteSuccessNotification parseFrom(InputStream input) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendDeleteSuccessNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendDeleteSuccessNotification parseFrom(CodedInputStream input) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendDeleteSuccessNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendDeleteSuccessNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
