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
public final class OnlineStateArgs extends GeneratedMessageV3 implements c0 {
    private static final OnlineStateArgs DEFAULT_INSTANCE = new OnlineStateArgs();
    private static final Parser<OnlineStateArgs> PARSER = new a();
    public static final int STATE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int state_;

    class a extends AbstractParser<OnlineStateArgs> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OnlineStateArgs parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new OnlineStateArgs(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements c0 {
        private int state_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.f87898u;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearState() {
            this.state_ = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.f87898u;
        }

        @Override // com.wufan.friend.chat.protocol.c0
        public OnlineState getState() {
            OnlineState onlineStateValueOf = OnlineState.valueOf(this.state_);
            return onlineStateValueOf == null ? OnlineState.UNRECOGNIZED : onlineStateValueOf;
        }

        @Override // com.wufan.friend.chat.protocol.c0
        public int getStateValue() {
            return this.state_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.f87900v.ensureFieldAccessorsInitialized(OnlineStateArgs.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setState(OnlineState value) {
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
        public OnlineStateArgs build() {
            OnlineStateArgs onlineStateArgsBuildPartial = buildPartial();
            if (onlineStateArgsBuildPartial.isInitialized()) {
                return onlineStateArgsBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) onlineStateArgsBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public OnlineStateArgs buildPartial() {
            OnlineStateArgs onlineStateArgs = new OnlineStateArgs(this, (a) null);
            onlineStateArgs.state_ = this.state_;
            onBuilt();
            return onlineStateArgs;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public OnlineStateArgs getDefaultInstanceForType() {
            return OnlineStateArgs.getDefaultInstance();
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
            if (other instanceof OnlineStateArgs) {
                return mergeFrom((OnlineStateArgs) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(OnlineStateArgs other) {
            if (other == OnlineStateArgs.getDefaultInstance()) {
                return this;
            }
            if (other.state_ != 0) {
                setStateValue(other.getStateValue());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            OnlineStateArgs onlineStateArgs = null;
            try {
                try {
                    OnlineStateArgs onlineStateArgs2 = (OnlineStateArgs) OnlineStateArgs.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (onlineStateArgs2 != null) {
                        mergeFrom(onlineStateArgs2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    OnlineStateArgs onlineStateArgs3 = (OnlineStateArgs) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        onlineStateArgs = onlineStateArgs3;
                        if (onlineStateArgs != null) {
                            mergeFrom(onlineStateArgs);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (onlineStateArgs != null) {
                    mergeFrom(onlineStateArgs);
                }
                throw th;
            }
        }
    }

    /* synthetic */ OnlineStateArgs(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static OnlineStateArgs getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.f87898u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OnlineStateArgs parseDelimitedFrom(InputStream input) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static OnlineStateArgs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<OnlineStateArgs> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OnlineStateArgs)) {
            return super.equals(obj);
        }
        OnlineStateArgs onlineStateArgs = (OnlineStateArgs) obj;
        return this.state_ == onlineStateArgs.state_ && this.unknownFields.equals(onlineStateArgs.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<OnlineStateArgs> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeEnumSize = (this.state_ != OnlineState.ONLINE.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.state_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = iComputeEnumSize;
        return iComputeEnumSize;
    }

    @Override // com.wufan.friend.chat.protocol.c0
    public OnlineState getState() {
        OnlineState onlineStateValueOf = OnlineState.valueOf(this.state_);
        return onlineStateValueOf == null ? OnlineState.UNRECOGNIZED : onlineStateValueOf;
    }

    @Override // com.wufan.friend.chat.protocol.c0
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
        int iHashCode = ((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + this.state_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.f87900v.ensureFieldAccessorsInitialized(OnlineStateArgs.class, b.class);
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
        if (this.state_ != OnlineState.ONLINE.getNumber()) {
            output.writeEnum(1, this.state_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ OnlineStateArgs(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(OnlineStateArgs prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static OnlineStateArgs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private OnlineStateArgs(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OnlineStateArgs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static OnlineStateArgs parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public OnlineStateArgs getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static OnlineStateArgs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private OnlineStateArgs() {
        this.memoizedIsInitialized = (byte) -1;
        this.state_ = 0;
    }

    public static OnlineStateArgs parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static OnlineStateArgs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static OnlineStateArgs parseFrom(InputStream input) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private OnlineStateArgs(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.state_ = input.readEnum();
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

    public static OnlineStateArgs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static OnlineStateArgs parseFrom(CodedInputStream input) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static OnlineStateArgs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (OnlineStateArgs) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
