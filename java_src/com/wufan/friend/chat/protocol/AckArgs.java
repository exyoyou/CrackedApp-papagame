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
public final class AckArgs extends GeneratedMessageV3 implements com.wufan.friend.chat.protocol.b {
    public static final int INS_FIELD_NUMBER = 3;
    public static final int MESSAGEID_FIELD_NUMBER = 1;
    public static final int SENDTIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object ins_;
    private byte memoizedIsInitialized;
    private long messageId_;
    private long sendTimestamp_;
    private static final AckArgs DEFAULT_INSTANCE = new AckArgs();
    private static final Parser<AckArgs> PARSER = new a();

    class a extends AbstractParser<AckArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AckArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new AckArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements com.wufan.friend.chat.protocol.b {
        private Object ins_;
        private long messageId_;
        private long sendTimestamp_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87894s;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearIns() {
            this.ins_ = AckArgs.getDefaultInstance().getIns();
            onChanged();
            return this;
        }

        public b clearMessageId() {
            this.messageId_ = 0L;
            onChanged();
            return this;
        }

        public b clearSendTimestamp() {
            this.sendTimestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87894s;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public String getIns() {
            Object obj = this.ins_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ins_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public ByteString getInsBytes() {
            Object obj = this.ins_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ins_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public long getMessageId() {
            return this.messageId_;
        }

        @Override // com.wufan.friend.chat.protocol.b
        public long getSendTimestamp() {
            return this.sendTimestamp_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87896t.ensureFieldAccessorsInitialized(AckArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setIns(String value) {
            value.getClass();
            this.ins_ = value;
            onChanged();
            return this;
        }

        public b setInsBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ins_ = value;
            onChanged();
            return this;
        }

        public b setMessageId(long value) {
            this.messageId_ = value;
            onChanged();
            return this;
        }

        public b setSendTimestamp(long value) {
            this.sendTimestamp_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.ins_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AckArgs build() {
            AckArgs ackArgsBuildPartial = buildPartial();
            if (ackArgsBuildPartial.isInitialized()) {
                return ackArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) ackArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AckArgs buildPartial() {
            AckArgs ackArgs = new AckArgs(this, (a) null);
            ackArgs.messageId_ = this.messageId_;
            ackArgs.sendTimestamp_ = this.sendTimestamp_;
            ackArgs.ins_ = this.ins_;
            onBuilt();
            return ackArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AckArgs getDefaultInstanceForType() {
            return AckArgs.getDefaultInstance();
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
            this.messageId_ = 0L;
            this.sendTimestamp_ = 0L;
            this.ins_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.ins_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof AckArgs) {
                return mergeFrom((AckArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(AckArgs other) {
            if (other == AckArgs.getDefaultInstance()) {
                return this;
            }
            if (other.getMessageId() != 0) {
                setMessageId(other.getMessageId());
            }
            if (other.getSendTimestamp() != 0) {
                setSendTimestamp(other.getSendTimestamp());
            }
            if (!other.getIns().isEmpty()) {
                this.ins_ = other.ins_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            AckArgs ackArgs = null;
            try {
                try {
                    AckArgs ackArgs2 = (AckArgs) AckArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (ackArgs2 != null) {
                        mergeFrom(ackArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    AckArgs ackArgs3 = (AckArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        ackArgs = ackArgs3;
                        if (ackArgs != null) {
                            mergeFrom(ackArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (ackArgs != null) {
                    mergeFrom(ackArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ AckArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static AckArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87894s;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AckArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static AckArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<AckArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AckArgs)) {
            return super.equals(obj);
        }
        AckArgs ackArgs = (AckArgs) obj;
        return getMessageId() == ackArgs.getMessageId() && getSendTimestamp() == ackArgs.getSendTimestamp() && getIns().equals(ackArgs.getIns()) && this.unknownFields.equals(ackArgs.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.b
    public String getIns() {
        Object obj = this.ins_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ins_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public ByteString getInsBytes() {
        Object obj = this.ins_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.ins_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public long getMessageId() {
        return this.messageId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<AckArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.wufan.friend.chat.protocol.b
    public long getSendTimestamp() {
        return this.sendTimestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.messageId_;
        int iComputeInt64Size = j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0;
        long j11 = this.sendTimestamp_;
        if (j11 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(2, j11);
        }
        if (!getInsBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(3, this.ins_);
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getMessageId())) * 37) + 2) * 53) + Internal.hashLong(getSendTimestamp())) * 37) + 3) * 53) + getIns().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87896t.ensureFieldAccessorsInitialized(AckArgs.class, b.class);
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
        long j10 = this.messageId_;
        if (j10 != 0) {
            output.writeInt64(1, j10);
        }
        long j11 = this.sendTimestamp_;
        if (j11 != 0) {
            output.writeInt64(2, j11);
        }
        if (!getInsBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.ins_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ AckArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(AckArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static AckArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private AckArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AckArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static AckArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public AckArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static AckArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private AckArgs() {
        this.memoizedIsInitialized = (byte) -1;
        this.ins_ = "";
    }

    public static AckArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static AckArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static AckArgs parseFrom(InputStream input) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private AckArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.messageId_ = input.readInt64();
                        } else if (tag == 16) {
                            this.sendTimestamp_ = input.readInt64();
                        } else if (tag != 26) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.ins_ = input.readStringRequireUtf8();
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

    public static AckArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static AckArgs parseFrom(CodedInputStream input) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static AckArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (AckArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
