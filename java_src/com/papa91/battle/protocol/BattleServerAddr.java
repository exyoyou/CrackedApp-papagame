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

/* JADX INFO: loaded from: classes2.dex */
public final class BattleServerAddr extends GeneratedMessageV3 implements BattleServerAddrOrBuilder {
    public static final int BATTLEROOMID_FIELD_NUMBER = 4;
    public static final int HOST_FIELD_NUMBER = 1;
    public static final int NETTYPE_FIELD_NUMBER = 3;
    public static final int PORT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private long battleRoomId_;
    private volatile Object host_;
    private byte memoizedIsInitialized;
    private int netType_;
    private int port_;
    private static final BattleServerAddr DEFAULT_INSTANCE = new BattleServerAddr();
    private static final Parser<BattleServerAddr> PARSER = new AbstractParser<BattleServerAddr>() { // from class: com.papa91.battle.protocol.BattleServerAddr.1
        @Override // com.google.protobuf.Parser
        public BattleServerAddr parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new BattleServerAddr(codedInputStream, extensionRegistryLite);
        }
    };

    public enum NetType implements ProtocolMessageEnum {
        TCP(0),
        UDP(1),
        UNRECOGNIZED(-1);

        public static final int TCP_VALUE = 0;
        public static final int UDP_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<NetType> internalValueMap = new Internal.EnumLiteMap<NetType>() { // from class: com.papa91.battle.protocol.BattleServerAddr.NetType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public NetType findValueByNumber(int i10) {
                return NetType.forNumber(i10);
            }
        };
        private static final NetType[] VALUES = values();

        NetType(int i10) {
            this.value = i10;
        }

        public static NetType forNumber(int i10) {
            if (i10 == 0) {
                return TCP;
            }
            if (i10 != 1) {
                return null;
            }
            return UDP;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BattleServerAddr.getDescriptor().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<NetType> internalGetValueMap() {
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().getValues().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static NetType valueOf(int i10) {
            return forNumber(i10);
        }

        public static NetType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public static BattleServerAddr getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_BattleServerAddr_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BattleServerAddr parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BattleServerAddr parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<BattleServerAddr> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BattleServerAddr)) {
            return super.equals(obj);
        }
        BattleServerAddr battleServerAddr = (BattleServerAddr) obj;
        return getHost().equals(battleServerAddr.getHost()) && getPort() == battleServerAddr.getPort() && this.netType_ == battleServerAddr.netType_ && getBattleRoomId() == battleServerAddr.getBattleRoomId() && this.unknownFields.equals(battleServerAddr.unknownFields);
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public long getBattleRoomId() {
        return this.battleRoomId_;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public String getHost() {
        Object obj = this.host_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.host_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public ByteString getHostBytes() {
        Object obj = this.host_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.host_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public NetType getNetType() {
        NetType netTypeValueOf = NetType.valueOf(this.netType_);
        return netTypeValueOf == null ? NetType.UNRECOGNIZED : netTypeValueOf;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
    public int getNetTypeValue() {
        return this.netType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<BattleServerAddr> getParserForType() {
        return PARSER;
    }

    @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
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
        if (this.netType_ != NetType.TCP.getNumber()) {
            iComputeStringSize += CodedOutputStream.computeEnumSize(3, this.netType_);
        }
        long j10 = this.battleRoomId_;
        if (j10 != 0) {
            iComputeStringSize += CodedOutputStream.computeUInt64Size(4, j10);
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
        int iHashCode = ((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getHost().hashCode()) * 37) + 2) * 53) + getPort()) * 37) + 3) * 53) + this.netType_) * 37) + 4) * 53) + Internal.hashLong(getBattleRoomId())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_BattleServerAddr_fieldAccessorTable.ensureFieldAccessorsInitialized(BattleServerAddr.class, Builder.class);
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
        return new BattleServerAddr();
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
        if (this.netType_ != NetType.TCP.getNumber()) {
            codedOutputStream.writeEnum(3, this.netType_);
        }
        long j10 = this.battleRoomId_;
        if (j10 != 0) {
            codedOutputStream.writeUInt64(4, j10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BattleServerAddrOrBuilder {
        private long battleRoomId_;
        private Object host_;
        private int netType_;
        private int port_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_BattleServerAddr_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBattleRoomId() {
            this.battleRoomId_ = 0L;
            onChanged();
            return this;
        }

        public Builder clearHost() {
            this.host_ = BattleServerAddr.getDefaultInstance().getHost();
            onChanged();
            return this;
        }

        public Builder clearNetType() {
            this.netType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearPort() {
            this.port_ = 0;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public long getBattleRoomId() {
            return this.battleRoomId_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_BattleServerAddr_descriptor;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public String getHost() {
            Object obj = this.host_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.host_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public ByteString getHostBytes() {
            Object obj = this.host_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.host_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public NetType getNetType() {
            NetType netTypeValueOf = NetType.valueOf(this.netType_);
            return netTypeValueOf == null ? NetType.UNRECOGNIZED : netTypeValueOf;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public int getNetTypeValue() {
            return this.netType_;
        }

        @Override // com.papa91.battle.protocol.BattleServerAddrOrBuilder
        public int getPort() {
            return this.port_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_BattleServerAddr_fieldAccessorTable.ensureFieldAccessorsInitialized(BattleServerAddr.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setBattleRoomId(long j10) {
            this.battleRoomId_ = j10;
            onChanged();
            return this;
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

        public Builder setNetType(NetType netType) {
            netType.getClass();
            this.netType_ = netType.getNumber();
            onChanged();
            return this;
        }

        public Builder setNetTypeValue(int i10) {
            this.netType_ = i10;
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
            this.netType_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BattleServerAddr build() {
            BattleServerAddr battleServerAddrBuildPartial = buildPartial();
            if (battleServerAddrBuildPartial.isInitialized()) {
                return battleServerAddrBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) battleServerAddrBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BattleServerAddr buildPartial() {
            BattleServerAddr battleServerAddr = new BattleServerAddr(this);
            battleServerAddr.host_ = this.host_;
            battleServerAddr.port_ = this.port_;
            battleServerAddr.netType_ = this.netType_;
            battleServerAddr.battleRoomId_ = this.battleRoomId_;
            onBuilt();
            return battleServerAddr;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BattleServerAddr getDefaultInstanceForType() {
            return BattleServerAddr.getDefaultInstance();
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
            this.netType_ = 0;
            this.battleRoomId_ = 0L;
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.host_ = "";
            this.netType_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof BattleServerAddr) {
                return mergeFrom((BattleServerAddr) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(BattleServerAddr battleServerAddr) {
            if (battleServerAddr == BattleServerAddr.getDefaultInstance()) {
                return this;
            }
            if (!battleServerAddr.getHost().isEmpty()) {
                this.host_ = battleServerAddr.host_;
                onChanged();
            }
            if (battleServerAddr.getPort() != 0) {
                setPort(battleServerAddr.getPort());
            }
            if (battleServerAddr.netType_ != 0) {
                setNetTypeValue(battleServerAddr.getNetTypeValue());
            }
            if (battleServerAddr.getBattleRoomId() != 0) {
                setBattleRoomId(battleServerAddr.getBattleRoomId());
            }
            mergeUnknownFields(((GeneratedMessageV3) battleServerAddr).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            BattleServerAddr battleServerAddr = null;
            try {
                try {
                    BattleServerAddr battleServerAddr2 = (BattleServerAddr) BattleServerAddr.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (battleServerAddr2 != null) {
                        mergeFrom(battleServerAddr2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    BattleServerAddr battleServerAddr3 = (BattleServerAddr) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        battleServerAddr = battleServerAddr3;
                        if (battleServerAddr != null) {
                            mergeFrom(battleServerAddr);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (battleServerAddr != null) {
                    mergeFrom(battleServerAddr);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(BattleServerAddr battleServerAddr) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(battleServerAddr);
    }

    public static BattleServerAddr parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private BattleServerAddr(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BattleServerAddr parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public BattleServerAddr getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static BattleServerAddr parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private BattleServerAddr() {
        this.memoizedIsInitialized = (byte) -1;
        this.host_ = "";
        this.netType_ = 0;
    }

    public static BattleServerAddr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static BattleServerAddr parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(InputStream inputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private BattleServerAddr(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int tag = codedInputStream.readTag();
                    if (tag != 0) {
                        if (tag == 10) {
                            this.host_ = codedInputStream.readStringRequireUtf8();
                        } else if (tag == 16) {
                            this.port_ = codedInputStream.readUInt32();
                        } else if (tag == 24) {
                            this.netType_ = codedInputStream.readEnum();
                        } else if (tag != 32) {
                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        } else {
                            this.battleRoomId_ = codedInputStream.readUInt64();
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

    public static BattleServerAddr parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BattleServerAddr parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static BattleServerAddr parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleServerAddr) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
