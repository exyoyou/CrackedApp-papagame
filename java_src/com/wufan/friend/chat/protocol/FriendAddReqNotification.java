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
public final class FriendAddReqNotification extends GeneratedMessageV3 implements j {
    public static final int COUNT_FIELD_NUMBER = 3;
    private static final FriendAddReqNotification DEFAULT_INSTANCE = new FriendAddReqNotification();
    private static final Parser<FriendAddReqNotification> PARSER = new a();
    public static final int STATUS_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int count_;
    private byte memoizedIsInitialized;
    private boolean status_;
    private int type_;

    public enum State implements ProtocolMessageEnum {
        CHANGE_FRIEND_REQUEST(0),
        GIVE_LIKE(1),
        UNRECOGNIZED(-1);

        public static final int CHANGE_FRIEND_REQUEST_VALUE = 0;
        public static final int GIVE_LIKE_VALUE = 1;
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
                return CHANGE_FRIEND_REQUEST;
            }
            if (value != 1) {
                return null;
            }
            return GIVE_LIKE;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return FriendAddReqNotification.getDescriptor().getEnumTypes().get(0);
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

    class a extends AbstractParser<FriendAddReqNotification> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendAddReqNotification parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new FriendAddReqNotification(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements j {
        private int count_;
        private boolean status_;
        private int type_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87887o0;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearCount() {
            this.count_ = 0;
            onChanged();
            return this;
        }

        public b clearStatus() {
            this.status_ = false;
            onChanged();
            return this;
        }

        public b clearType() {
            this.type_ = 0;
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.j
        public int getCount() {
            return this.count_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87887o0;
        }

        @Override // com.wufan.friend.chat.protocol.j
        public boolean getStatus() {
            return this.status_;
        }

        @Override // com.wufan.friend.chat.protocol.j
        public State getType() {
            State stateValueOf = State.valueOf(this.type_);
            return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.j
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87889p0.ensureFieldAccessorsInitialized(FriendAddReqNotification.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setCount(int value) {
            this.count_ = value;
            onChanged();
            return this;
        }

        public b setStatus(boolean value) {
            this.status_ = value;
            onChanged();
            return this;
        }

        public b setType(State value) {
            value.getClass();
            this.type_ = value.getNumber();
            onChanged();
            return this;
        }

        public b setTypeValue(int value) {
            this.type_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.type_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendAddReqNotification build() {
            FriendAddReqNotification friendAddReqNotificationBuildPartial = buildPartial();
            if (friendAddReqNotificationBuildPartial.isInitialized()) {
                return friendAddReqNotificationBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) friendAddReqNotificationBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FriendAddReqNotification buildPartial() {
            FriendAddReqNotification friendAddReqNotification = new FriendAddReqNotification(this, (a) null);
            friendAddReqNotification.status_ = this.status_;
            friendAddReqNotification.type_ = this.type_;
            friendAddReqNotification.count_ = this.count_;
            onBuilt();
            return friendAddReqNotification;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FriendAddReqNotification getDefaultInstanceForType() {
            return FriendAddReqNotification.getDefaultInstance();
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
            this.status_ = false;
            this.type_ = 0;
            this.count_ = 0;
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.type_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof FriendAddReqNotification) {
                return mergeFrom((FriendAddReqNotification) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(FriendAddReqNotification other) {
            if (other == FriendAddReqNotification.getDefaultInstance()) {
                return this;
            }
            if (other.getStatus()) {
                setStatus(other.getStatus());
            }
            if (other.type_ != 0) {
                setTypeValue(other.getTypeValue());
            }
            if (other.getCount() != 0) {
                setCount(other.getCount());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            FriendAddReqNotification friendAddReqNotification = null;
            try {
                try {
                    FriendAddReqNotification friendAddReqNotification2 = (FriendAddReqNotification) FriendAddReqNotification.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (friendAddReqNotification2 != null) {
                        mergeFrom(friendAddReqNotification2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    FriendAddReqNotification friendAddReqNotification3 = (FriendAddReqNotification) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        friendAddReqNotification = friendAddReqNotification3;
                        if (friendAddReqNotification != null) {
                            mergeFrom(friendAddReqNotification);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (friendAddReqNotification != null) {
                    mergeFrom(friendAddReqNotification);
                }
                throw th;
            }
        }
    }

    /* synthetic */ FriendAddReqNotification(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static FriendAddReqNotification getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87887o0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FriendAddReqNotification parseDelimitedFrom(InputStream input) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static FriendAddReqNotification parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<FriendAddReqNotification> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FriendAddReqNotification)) {
            return super.equals(obj);
        }
        FriendAddReqNotification friendAddReqNotification = (FriendAddReqNotification) obj;
        return getStatus() == friendAddReqNotification.getStatus() && this.type_ == friendAddReqNotification.type_ && getCount() == friendAddReqNotification.getCount() && this.unknownFields.equals(friendAddReqNotification.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.j
    public int getCount() {
        return this.count_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<FriendAddReqNotification> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        boolean z10 = this.status_;
        int iComputeBoolSize = z10 ? 0 + CodedOutputStream.computeBoolSize(1, z10) : 0;
        if (this.type_ != State.CHANGE_FRIEND_REQUEST.getNumber()) {
            iComputeBoolSize += CodedOutputStream.computeEnumSize(2, this.type_);
        }
        int i11 = this.count_;
        if (i11 != 0) {
            iComputeBoolSize += CodedOutputStream.computeInt32Size(3, i11);
        }
        int serializedSize = iComputeBoolSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.friend.chat.protocol.j
    public boolean getStatus() {
        return this.status_;
    }

    @Override // com.wufan.friend.chat.protocol.j
    public State getType() {
        State stateValueOf = State.valueOf(this.type_);
        return stateValueOf == null ? State.UNRECOGNIZED : stateValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.j
    public int getTypeValue() {
        return this.type_;
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getStatus())) * 37) + 2) * 53) + this.type_) * 37) + 3) * 53) + getCount()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87889p0.ensureFieldAccessorsInitialized(FriendAddReqNotification.class, b.class);
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
        boolean z10 = this.status_;
        if (z10) {
            output.writeBool(1, z10);
        }
        if (this.type_ != State.CHANGE_FRIEND_REQUEST.getNumber()) {
            output.writeEnum(2, this.type_);
        }
        int i10 = this.count_;
        if (i10 != 0) {
            output.writeInt32(3, i10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ FriendAddReqNotification(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(FriendAddReqNotification prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static FriendAddReqNotification parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private FriendAddReqNotification(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FriendAddReqNotification parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendAddReqNotification parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public FriendAddReqNotification getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static FriendAddReqNotification parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private FriendAddReqNotification() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = 0;
    }

    public static FriendAddReqNotification parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static FriendAddReqNotification parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static FriendAddReqNotification parseFrom(InputStream input) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private FriendAddReqNotification(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.status_ = input.readBool();
                        } else if (tag == 16) {
                            this.type_ = input.readEnum();
                        } else if (tag != 24) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.count_ = input.readInt32();
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

    public static FriendAddReqNotification parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static FriendAddReqNotification parseFrom(CodedInputStream input) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static FriendAddReqNotification parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (FriendAddReqNotification) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
