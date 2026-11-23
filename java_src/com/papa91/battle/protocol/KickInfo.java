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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class KickInfo extends GeneratedMessageV3 implements KickInfoOrBuilder {
    public static final int COPPER_FIELD_NUMBER = 2;
    public static final int COUNT_FIELD_NUMBER = 1;
    public static final int ISVIP_FIELD_NUMBER = 3;
    public static final int NICKNAME_FIELD_NUMBER = 4;
    public static final int VIPCOPPER_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int copper_;
    private int count_;
    private boolean isVIP_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private int vipCopper_;
    private static final KickInfo DEFAULT_INSTANCE = new KickInfo();
    private static final Parser<KickInfo> PARSER = new AbstractParser<KickInfo>() { // from class: com.papa91.battle.protocol.KickInfo.1
        @Override // com.google.protobuf.Parser
        public KickInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new KickInfo(codedInputStream, extensionRegistryLite);
        }
    };

    public static KickInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_KickInfo_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static KickInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static KickInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<KickInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof KickInfo)) {
            return super.equals(obj);
        }
        KickInfo kickInfo = (KickInfo) obj;
        return getCount() == kickInfo.getCount() && getCopper() == kickInfo.getCopper() && getIsVIP() == kickInfo.getIsVIP() && getNickname().equals(kickInfo.getNickname()) && getVipCopper() == kickInfo.getVipCopper() && this.unknownFields.equals(kickInfo.unknownFields);
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public int getCopper() {
        return this.copper_;
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public int getCount() {
        return this.count_;
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public boolean getIsVIP() {
        return this.isVIP_;
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public ByteString getNicknameBytes() {
        Object obj = this.nickname_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.nickname_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<KickInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.count_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        int i12 = this.copper_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i12);
        }
        boolean z10 = this.isVIP_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(3, z10);
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(4, this.nickname_);
        }
        int i13 = this.vipCopper_;
        if (i13 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, i13);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.papa91.battle.protocol.KickInfoOrBuilder
    public int getVipCopper() {
        return this.vipCopper_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getCount()) * 37) + 2) * 53) + getCopper()) * 37) + 3) * 53) + Internal.hashBoolean(getIsVIP())) * 37) + 4) * 53) + getNickname().hashCode()) * 37) + 5) * 53) + getVipCopper()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_KickInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(KickInfo.class, Builder.class);
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
        return new KickInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.count_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(1, i10);
        }
        int i11 = this.copper_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(2, i11);
        }
        boolean z10 = this.isVIP_;
        if (z10) {
            codedOutputStream.writeBool(3, z10);
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.nickname_);
        }
        int i12 = this.vipCopper_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(5, i12);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements KickInfoOrBuilder {
        private int copper_;
        private int count_;
        private boolean isVIP_;
        private Object nickname_;
        private int vipCopper_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_KickInfo_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearCopper() {
            this.copper_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCount() {
            this.count_ = 0;
            onChanged();
            return this;
        }

        public Builder clearIsVIP() {
            this.isVIP_ = false;
            onChanged();
            return this;
        }

        public Builder clearNickname() {
            this.nickname_ = KickInfo.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        public Builder clearVipCopper() {
            this.vipCopper_ = 0;
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public int getCopper() {
            return this.copper_;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public int getCount() {
            return this.count_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_KickInfo_descriptor;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public boolean getIsVIP() {
            return this.isVIP_;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.papa91.battle.protocol.KickInfoOrBuilder
        public int getVipCopper() {
            return this.vipCopper_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_KickInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(KickInfo.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setCopper(int i10) {
            this.copper_ = i10;
            onChanged();
            return this;
        }

        public Builder setCount(int i10) {
            this.count_ = i10;
            onChanged();
            return this;
        }

        public Builder setIsVIP(boolean z10) {
            this.isVIP_ = z10;
            onChanged();
            return this;
        }

        public Builder setNickname(String str) {
            str.getClass();
            this.nickname_ = str;
            onChanged();
            return this;
        }

        public Builder setNicknameBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.nickname_ = byteString;
            onChanged();
            return this;
        }

        public Builder setVipCopper(int i10) {
            this.vipCopper_ = i10;
            onChanged();
            return this;
        }

        private Builder() {
            this.nickname_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public KickInfo build() {
            KickInfo kickInfoBuildPartial = buildPartial();
            if (kickInfoBuildPartial.isInitialized()) {
                return kickInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) kickInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public KickInfo buildPartial() {
            KickInfo kickInfo = new KickInfo(this);
            kickInfo.count_ = this.count_;
            kickInfo.copper_ = this.copper_;
            kickInfo.isVIP_ = this.isVIP_;
            kickInfo.nickname_ = this.nickname_;
            kickInfo.vipCopper_ = this.vipCopper_;
            onBuilt();
            return kickInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public KickInfo getDefaultInstanceForType() {
            return KickInfo.getDefaultInstance();
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
            this.count_ = 0;
            this.copper_ = 0;
            this.isVIP_ = false;
            this.nickname_ = "";
            this.vipCopper_ = 0;
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.nickname_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof KickInfo) {
                return mergeFrom((KickInfo) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(KickInfo kickInfo) {
            if (kickInfo == KickInfo.getDefaultInstance()) {
                return this;
            }
            if (kickInfo.getCount() != 0) {
                setCount(kickInfo.getCount());
            }
            if (kickInfo.getCopper() != 0) {
                setCopper(kickInfo.getCopper());
            }
            if (kickInfo.getIsVIP()) {
                setIsVIP(kickInfo.getIsVIP());
            }
            if (!kickInfo.getNickname().isEmpty()) {
                this.nickname_ = kickInfo.nickname_;
                onChanged();
            }
            if (kickInfo.getVipCopper() != 0) {
                setVipCopper(kickInfo.getVipCopper());
            }
            mergeUnknownFields(((GeneratedMessageV3) kickInfo).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            KickInfo kickInfo = null;
            try {
                try {
                    KickInfo kickInfo2 = (KickInfo) KickInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (kickInfo2 != null) {
                        mergeFrom(kickInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    KickInfo kickInfo3 = (KickInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        kickInfo = kickInfo3;
                        if (kickInfo != null) {
                            mergeFrom(kickInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (kickInfo != null) {
                    mergeFrom(kickInfo);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(KickInfo kickInfo) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(kickInfo);
    }

    public static KickInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private KickInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static KickInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static KickInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public KickInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static KickInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private KickInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.nickname_ = "";
    }

    public static KickInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static KickInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static KickInfo parseFrom(InputStream inputStream) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private KickInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (tag == 8) {
                                this.count_ = codedInputStream.readInt32();
                            } else if (tag == 16) {
                                this.copper_ = codedInputStream.readInt32();
                            } else if (tag == 24) {
                                this.isVIP_ = codedInputStream.readBool();
                            } else if (tag == 34) {
                                this.nickname_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag != 40) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.vipCopper_ = codedInputStream.readInt32();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
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

    public static KickInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static KickInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static KickInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (KickInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
