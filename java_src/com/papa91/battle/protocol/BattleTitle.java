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
public final class BattleTitle extends GeneratedMessageV3 implements BattleTitleOrBuilder {
    public static final int BACKGROUDCOLOR_FIELD_NUMBER = 2;
    private static final BattleTitle DEFAULT_INSTANCE = new BattleTitle();
    private static final Parser<BattleTitle> PARSER = new AbstractParser<BattleTitle>() { // from class: com.papa91.battle.protocol.BattleTitle.1
        @Override // com.google.protobuf.Parser
        public BattleTitle parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new BattleTitle(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int TITLE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object backgroudColor_;
    private byte memoizedIsInitialized;
    private volatile Object title_;

    public static BattleTitle getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return BattleProto.internal_static_papa_battle_BattleTitle_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BattleTitle parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BattleTitle parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Parser<BattleTitle> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BattleTitle)) {
            return super.equals(obj);
        }
        BattleTitle battleTitle = (BattleTitle) obj;
        return getTitle().equals(battleTitle.getTitle()) && getBackgroudColor().equals(battleTitle.getBackgroudColor()) && this.unknownFields.equals(battleTitle.unknownFields);
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public String getBackgroudColor() {
        Object obj = this.backgroudColor_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.backgroudColor_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public ByteString getBackgroudColorBytes() {
        Object obj = this.backgroudColor_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.backgroudColor_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<BattleTitle> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeStringSize = getTitleBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.title_);
        if (!getBackgroudColorBytes().isEmpty()) {
            iComputeStringSize += GeneratedMessageV3.computeStringSize(2, this.backgroudColor_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public String getTitle() {
        Object obj = this.title_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.title_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
    public ByteString getTitleBytes() {
        Object obj = this.title_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.title_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
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
        int iHashCode = ((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getTitle().hashCode()) * 37) + 2) * 53) + getBackgroudColor().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return BattleProto.internal_static_papa_battle_BattleTitle_fieldAccessorTable.ensureFieldAccessorsInitialized(BattleTitle.class, Builder.class);
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
        return new BattleTitle();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTitleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.title_);
        }
        if (!getBackgroudColorBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.backgroudColor_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BattleTitleOrBuilder {
        private Object backgroudColor_;
        private Object title_;

        public static final Descriptors.Descriptor getDescriptor() {
            return BattleProto.internal_static_papa_battle_BattleTitle_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBackgroudColor() {
            this.backgroudColor_ = BattleTitle.getDefaultInstance().getBackgroudColor();
            onChanged();
            return this;
        }

        public Builder clearTitle() {
            this.title_ = BattleTitle.getDefaultInstance().getTitle();
            onChanged();
            return this;
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public String getBackgroudColor() {
            Object obj = this.backgroudColor_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.backgroudColor_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public ByteString getBackgroudColorBytes() {
            Object obj = this.backgroudColor_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.backgroudColor_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return BattleProto.internal_static_papa_battle_BattleTitle_descriptor;
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public String getTitle() {
            Object obj = this.title_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.title_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.papa91.battle.protocol.BattleTitleOrBuilder
        public ByteString getTitleBytes() {
            Object obj = this.title_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.title_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return BattleProto.internal_static_papa_battle_BattleTitle_fieldAccessorTable.ensureFieldAccessorsInitialized(BattleTitle.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setBackgroudColor(String str) {
            str.getClass();
            this.backgroudColor_ = str;
            onChanged();
            return this;
        }

        public Builder setBackgroudColorBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.backgroudColor_ = byteString;
            onChanged();
            return this;
        }

        public Builder setTitle(String str) {
            str.getClass();
            this.title_ = str;
            onChanged();
            return this;
        }

        public Builder setTitleBytes(ByteString byteString) {
            byteString.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.title_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.title_ = "";
            this.backgroudColor_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BattleTitle build() {
            BattleTitle battleTitleBuildPartial = buildPartial();
            if (battleTitleBuildPartial.isInitialized()) {
                return battleTitleBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) battleTitleBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BattleTitle buildPartial() {
            BattleTitle battleTitle = new BattleTitle(this);
            battleTitle.title_ = this.title_;
            battleTitle.backgroudColor_ = this.backgroudColor_;
            onBuilt();
            return battleTitle;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BattleTitle getDefaultInstanceForType() {
            return BattleTitle.getDefaultInstance();
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
            this.title_ = "";
            this.backgroudColor_ = "";
            return this;
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.title_ = "";
            this.backgroudColor_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public Builder mo24clone() {
            return (Builder) super.m26clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof BattleTitle) {
                return mergeFrom((BattleTitle) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(BattleTitle battleTitle) {
            if (battleTitle == BattleTitle.getDefaultInstance()) {
                return this;
            }
            if (!battleTitle.getTitle().isEmpty()) {
                this.title_ = battleTitle.title_;
                onChanged();
            }
            if (!battleTitle.getBackgroudColor().isEmpty()) {
                this.backgroudColor_ = battleTitle.backgroudColor_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) battleTitle).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            BattleTitle battleTitle = null;
            try {
                try {
                    BattleTitle battleTitle2 = (BattleTitle) BattleTitle.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (battleTitle2 != null) {
                        mergeFrom(battleTitle2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    BattleTitle battleTitle3 = (BattleTitle) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        battleTitle = battleTitle3;
                        if (battleTitle != null) {
                            mergeFrom(battleTitle);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (battleTitle != null) {
                    mergeFrom(battleTitle);
                }
                throw th;
            }
        }
    }

    public static Builder newBuilder(BattleTitle battleTitle) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(battleTitle);
    }

    public static BattleTitle parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    private BattleTitle(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BattleTitle parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public BattleTitle getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static BattleTitle parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private BattleTitle() {
        this.memoizedIsInitialized = (byte) -1;
        this.title_ = "";
        this.backgroudColor_ = "";
    }

    public static BattleTitle parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public static BattleTitle parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(InputStream inputStream) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private BattleTitle(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.title_ = codedInputStream.readStringRequireUtf8();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                this.backgroudColor_ = codedInputStream.readStringRequireUtf8();
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

    public static BattleTitle parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BattleTitle parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static BattleTitle parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BattleTitle) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }
}
