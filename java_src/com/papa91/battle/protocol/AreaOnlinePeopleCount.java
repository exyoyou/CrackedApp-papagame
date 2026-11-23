package com.papa91.battle.protocol;

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

/* JADX INFO: loaded from: classes2.dex */
public final class AreaOnlinePeopleCount extends GeneratedMessageV3 implements AreaOnlinePeopleCountOrBuilder {
    public static final int BJ_FIELD_NUMBER = 1;
    public static final int GZ_FIELD_NUMBER = 3;
    public static final int SH_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int bj_;
    private int gz_;
    private byte memoizedIsInitialized;
    private int sh_;
    private static final AreaOnlinePeopleCount DEFAULT_INSTANCE = new AreaOnlinePeopleCount();
    private static final Parser<AreaOnlinePeopleCount> PARSER = new AbstractParser<AreaOnlinePeopleCount>() { // from class: com.papa91.battle.protocol.AreaOnlinePeopleCount.1
        @Override // com.google.protobuf.Parser
        public AreaOnlinePeopleCount parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new AreaOnlinePeopleCount(codedInputStream, extensionRegistryLite);
        }
    };

    public static AreaOnlinePeopleCount getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_AreaOnlinePeopleCount_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AreaOnlinePeopleCount parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<AreaOnlinePeopleCount> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AreaOnlinePeopleCount)) {
            return super.equals(obj);
        }
        AreaOnlinePeopleCount areaOnlinePeopleCount = (AreaOnlinePeopleCount) obj;
        return getBj() == areaOnlinePeopleCount.getBj() && getSh() == areaOnlinePeopleCount.getSh() && getGz() == areaOnlinePeopleCount.getGz() && this.unknownFields.equals(areaOnlinePeopleCount.unknownFields);
    }

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getBj() {
        return this.bj_;
    }

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getGz() {
        return this.gz_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<AreaOnlinePeopleCount> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.bj_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        int i12 = this.sh_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
        }
        int i13 = this.gz_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(3, i13);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
    public int getSh() {
        return this.sh_;
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getBj()) * 37) + 2) * 53) + getSh()) * 37) + 3) * 53) + getGz()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_AreaOnlinePeopleCount_fieldAccessorTable.ensureFieldAccessorsInitialized(AreaOnlinePeopleCount.class, Builder.class);
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
        return new AreaOnlinePeopleCount();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.bj_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        int i11 = this.sh_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(2, i11);
        }
        int i12 = this.gz_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(3, i12);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AreaOnlinePeopleCountOrBuilder {
        private int bj_;
        private int gz_;
        private int sh_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_AreaOnlinePeopleCount_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBj() {
            this.bj_ = 0;
            onChanged();
            return this;
        }

        public Builder clearGz() {
            this.gz_ = 0;
            onChanged();
            return this;
        }

        public Builder clearSh() {
            this.sh_ = 0;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getBj() {
            return this.bj_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_AreaOnlinePeopleCount_descriptor;
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getGz() {
            return this.gz_;
        }

        @Override // com.papa91.battle.protocol.AreaOnlinePeopleCountOrBuilder
        public int getSh() {
            return this.sh_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_AreaOnlinePeopleCount_fieldAccessorTable.ensureFieldAccessorsInitialized(AreaOnlinePeopleCount.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setBj(int i10) {
            this.bj_ = i10;
            onChanged();
            return this;
        }

        public Builder setGz(int i10) {
            this.gz_ = i10;
            onChanged();
            return this;
        }

        public Builder setSh(int i10) {
            this.sh_ = i10;
            onChanged();
            return this;
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AreaOnlinePeopleCount build() {
            AreaOnlinePeopleCount areaOnlinePeopleCountBuildPartial = buildPartial();
            if (areaOnlinePeopleCountBuildPartial.isInitialized()) {
                return areaOnlinePeopleCountBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) areaOnlinePeopleCountBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public AreaOnlinePeopleCount buildPartial() {
            AreaOnlinePeopleCount areaOnlinePeopleCount = new AreaOnlinePeopleCount(this);
            areaOnlinePeopleCount.bj_ = this.bj_;
            areaOnlinePeopleCount.sh_ = this.sh_;
            areaOnlinePeopleCount.gz_ = this.gz_;
            onBuilt();
            return areaOnlinePeopleCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public AreaOnlinePeopleCount getDefaultInstanceForType() {
            return AreaOnlinePeopleCount.getDefaultInstance();
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

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.bj_ = 0;
            this.sh_ = 0;
            this.gz_ = 0;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof AreaOnlinePeopleCount) {
                return mergeFrom((AreaOnlinePeopleCount) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(AreaOnlinePeopleCount areaOnlinePeopleCount) {
            if (areaOnlinePeopleCount == AreaOnlinePeopleCount.getDefaultInstance()) {
                return this;
            }
            if (areaOnlinePeopleCount.getBj() != 0) {
                setBj(areaOnlinePeopleCount.getBj());
            }
            if (areaOnlinePeopleCount.getSh() != 0) {
                setSh(areaOnlinePeopleCount.getSh());
            }
            if (areaOnlinePeopleCount.getGz() != 0) {
                setGz(areaOnlinePeopleCount.getGz());
            }
            mergeUnknownFields(((GeneratedMessageV3) areaOnlinePeopleCount).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            AreaOnlinePeopleCount areaOnlinePeopleCount = null;
            try {
                try {
                    AreaOnlinePeopleCount areaOnlinePeopleCount2 = (AreaOnlinePeopleCount) AreaOnlinePeopleCount.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (areaOnlinePeopleCount2 != null) {
                        mergeFrom(areaOnlinePeopleCount2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    AreaOnlinePeopleCount areaOnlinePeopleCount3 = (AreaOnlinePeopleCount) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        areaOnlinePeopleCount = areaOnlinePeopleCount3;
                        if (areaOnlinePeopleCount != null) {
                            mergeFrom(areaOnlinePeopleCount);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (areaOnlinePeopleCount != null) {
                    mergeFrom(areaOnlinePeopleCount);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(AreaOnlinePeopleCount areaOnlinePeopleCount) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(areaOnlinePeopleCount);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private AreaOnlinePeopleCount(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AreaOnlinePeopleCount parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public AreaOnlinePeopleCount getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static AreaOnlinePeopleCount parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private AreaOnlinePeopleCount() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AreaOnlinePeopleCount parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static AreaOnlinePeopleCount parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    private AreaOnlinePeopleCount(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 8) {
                            this.bj_ = codedInputStream.readInt32();
                        } else if (tag == 16) {
                            this.sh_ = codedInputStream.readInt32();
                        } else if (tag != 24) {
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        } else {
                            this.gz_ = codedInputStream.readInt32();
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

    public static AreaOnlinePeopleCount parseFrom(InputStream inputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AreaOnlinePeopleCount parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static AreaOnlinePeopleCount parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AreaOnlinePeopleCount) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
