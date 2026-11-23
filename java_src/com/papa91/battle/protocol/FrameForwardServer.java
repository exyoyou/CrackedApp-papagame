package com.papa91.battle.protocol;

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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class FrameForwardServer extends GeneratedMessageV3 implements FrameForwardServerOrBuilder {
    public static final int HOST_FIELD_NUMBER = 1;
    public static final int PORT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object host_;
    private byte memoizedIsInitialized;
    private int port_;
    private static final FrameForwardServer DEFAULT_INSTANCE = new FrameForwardServer();
    private static final Parser<FrameForwardServer> PARSER = new AbstractParser<FrameForwardServer>() { // from class: com.papa91.battle.protocol.FrameForwardServer.1
        @Override // com.google.protobuf.Parser
        public FrameForwardServer parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new FrameForwardServer(codedInputStream, extensionRegistryLite);
        }
    };

    public static FrameForwardServer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_FrameForwardServer_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FrameForwardServer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FrameForwardServer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<FrameForwardServer> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FrameForwardServer)) {
            return super.equals(obj);
        }
        FrameForwardServer frameForwardServer = (FrameForwardServer) obj;
        return getHost().equals(frameForwardServer.getHost()) && getPort() == frameForwardServer.getPort() && this.unknownFields.equals(frameForwardServer.unknownFields);
    }

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
    public String getHost() {
        Object obj = this.host_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.host_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
    public ByteString getHostBytes() {
        Object obj = this.host_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.host_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<FrameForwardServer> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
    public int getPort() {
        return this.port_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeStringSize = getHostBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.host_);
        int i11 = this.port_;
        if (i11 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt32Size(2, i11);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getHost().hashCode()) * 37) + 2) * 53) + getPort()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_FrameForwardServer_fieldAccessorTable.ensureFieldAccessorsInitialized(FrameForwardServer.class, Builder.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new FrameForwardServer();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getHostBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.host_);
        }
        int i10 = this.port_;
        if (i10 != 0) {
            codedOutputStream.writeUInt32(2, i10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FrameForwardServerOrBuilder {
        private Object host_;
        private int port_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_FrameForwardServer_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearHost() {
            this.host_ = FrameForwardServer.getDefaultInstance().getHost();
            onChanged();
            return this;
        }

        public Builder clearPort() {
            this.port_ = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_FrameForwardServer_descriptor;
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public String getHost() {
            Object obj = this.host_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.host_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public ByteString getHostBytes() {
            Object obj = this.host_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.host_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.FrameForwardServerOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_FrameForwardServer_fieldAccessorTable.ensureFieldAccessorsInitialized(FrameForwardServer.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setHost(String str) {
            str.getClass();
            this.host_ = str;
            onChanged();
            return this;
        }

        public Builder setHostBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.host_ = byteString;
            onChanged();
            return this;
        }

        public Builder setPort(int i10) {
            this.port_ = i10;
            onChanged();
            return this;
        }

        private Builder() {
            this.host_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FrameForwardServer build() {
            FrameForwardServer frameForwardServerBuildPartial = buildPartial();
            if (frameForwardServerBuildPartial.isInitialized()) {
                return frameForwardServerBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) frameForwardServerBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public FrameForwardServer buildPartial() {
            FrameForwardServer frameForwardServer = new FrameForwardServer(this);
            frameForwardServer.host_ = this.host_;
            frameForwardServer.port_ = this.port_;
            onBuilt();
            return frameForwardServer;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FrameForwardServer getDefaultInstanceForType() {
            return FrameForwardServer.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.host_ = "";
            this.port_ = 0;
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.host_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof FrameForwardServer) {
                return mergeFrom((FrameForwardServer) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(FrameForwardServer frameForwardServer) {
            if (frameForwardServer == FrameForwardServer.getDefaultInstance()) {
                return this;
            }
            if (!frameForwardServer.getHost().isEmpty()) {
                this.host_ = frameForwardServer.host_;
                onChanged();
            }
            if (frameForwardServer.getPort() != 0) {
                setPort(frameForwardServer.getPort());
            }
            mergeUnknownFields(((GeneratedMessageV3) frameForwardServer).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            FrameForwardServer frameForwardServer = null;
            try {
                try {
                    FrameForwardServer frameForwardServer2 = (FrameForwardServer) FrameForwardServer.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (frameForwardServer2 != null) {
                        mergeFrom(frameForwardServer2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    FrameForwardServer frameForwardServer3 = (FrameForwardServer) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        frameForwardServer = frameForwardServer3;
                        if (frameForwardServer != null) {
                            mergeFrom(frameForwardServer);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (frameForwardServer != null) {
                    mergeFrom(frameForwardServer);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(FrameForwardServer frameForwardServer) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(frameForwardServer);
    }

    public static FrameForwardServer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private FrameForwardServer(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FrameForwardServer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public FrameForwardServer getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static FrameForwardServer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private FrameForwardServer() {
        this.memoizedIsInitialized = (byte) -1;
        this.host_ = "";
    }

    public static FrameForwardServer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static FrameForwardServer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(InputStream inputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FrameForwardServer(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                this.host_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag != 16) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.port_ = codedInputStream.readUInt32();
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

    public static FrameForwardServer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static FrameForwardServer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static FrameForwardServer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (FrameForwardServer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
