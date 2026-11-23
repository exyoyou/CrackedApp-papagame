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
public final class LocalBattleGameInfo extends GeneratedMessageV3 implements x {
    public static final int GAMEID_FIELD_NUMBER = 1;
    public static final int GAMENAME_FIELD_NUMBER = 2;
    public static final int GAMESRC_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private long gameId_;
    private volatile Object gameName_;
    private volatile Object gameSrc_;
    private byte memoizedIsInitialized;
    private static final LocalBattleGameInfo DEFAULT_INSTANCE = new LocalBattleGameInfo();
    private static final Parser<LocalBattleGameInfo> PARSER = new a();

    class a extends AbstractParser<LocalBattleGameInfo> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LocalBattleGameInfo parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new LocalBattleGameInfo(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements x {
        private long gameId_;
        private Object gameName_;
        private Object gameSrc_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.E;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameName() {
            this.gameName_ = LocalBattleGameInfo.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public b clearGameSrc() {
            this.gameSrc_ = LocalBattleGameInfo.getDefaultInstance().getGameSrc();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.E;
        }

        @Override // com.wufan.friend.chat.protocol.x
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.x
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.x
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.x
        public String getGameSrc() {
            Object obj = this.gameSrc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameSrc_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.x
        public ByteString getGameSrcBytes() {
            Object obj = this.gameSrc_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameSrc_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.F.ensureFieldAccessorsInitialized(LocalBattleGameInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setGameName(String value) {
            value.getClass();
            this.gameName_ = value;
            onChanged();
            return this;
        }

        public b setGameNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gameName_ = value;
            onChanged();
            return this;
        }

        public b setGameSrc(String value) {
            value.getClass();
            this.gameSrc_ = value;
            onChanged();
            return this;
        }

        public b setGameSrcBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gameSrc_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.gameName_ = "";
            this.gameSrc_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LocalBattleGameInfo build() {
            LocalBattleGameInfo localBattleGameInfoBuildPartial = buildPartial();
            if (localBattleGameInfoBuildPartial.isInitialized()) {
                return localBattleGameInfoBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) localBattleGameInfoBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public LocalBattleGameInfo buildPartial() {
            LocalBattleGameInfo localBattleGameInfo = new LocalBattleGameInfo(this, (a) null);
            localBattleGameInfo.gameId_ = this.gameId_;
            localBattleGameInfo.gameName_ = this.gameName_;
            localBattleGameInfo.gameSrc_ = this.gameSrc_;
            onBuilt();
            return localBattleGameInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LocalBattleGameInfo getDefaultInstanceForType() {
            return LocalBattleGameInfo.getDefaultInstance();
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
            this.gameId_ = 0L;
            this.gameName_ = "";
            this.gameSrc_ = "";
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.gameName_ = "";
            this.gameSrc_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof LocalBattleGameInfo) {
                return mergeFrom((LocalBattleGameInfo) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(LocalBattleGameInfo other) {
            if (other == LocalBattleGameInfo.getDefaultInstance()) {
                return this;
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (!other.getGameName().isEmpty()) {
                this.gameName_ = other.gameName_;
                onChanged();
            }
            if (!other.getGameSrc().isEmpty()) {
                this.gameSrc_ = other.gameSrc_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            LocalBattleGameInfo localBattleGameInfo = null;
            try {
                try {
                    LocalBattleGameInfo localBattleGameInfo2 = (LocalBattleGameInfo) LocalBattleGameInfo.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (localBattleGameInfo2 != null) {
                        mergeFrom(localBattleGameInfo2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    LocalBattleGameInfo localBattleGameInfo3 = (LocalBattleGameInfo) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        localBattleGameInfo = localBattleGameInfo3;
                        if (localBattleGameInfo != null) {
                            mergeFrom(localBattleGameInfo);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (localBattleGameInfo != null) {
                    mergeFrom(localBattleGameInfo);
                }
                throw th;
            }
        }
    }

    /* synthetic */ LocalBattleGameInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static LocalBattleGameInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.E;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LocalBattleGameInfo parseDelimitedFrom(InputStream input) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static LocalBattleGameInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<LocalBattleGameInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalBattleGameInfo)) {
            return super.equals(obj);
        }
        LocalBattleGameInfo localBattleGameInfo = (LocalBattleGameInfo) obj;
        return getGameId() == localBattleGameInfo.getGameId() && getGameName().equals(localBattleGameInfo.getGameName()) && getGameSrc().equals(localBattleGameInfo.getGameSrc()) && this.unknownFields.equals(localBattleGameInfo.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.x
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.x
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.x
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.x
    public String getGameSrc() {
        Object obj = this.gameSrc_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameSrc_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.x
    public ByteString getGameSrcBytes() {
        Object obj = this.gameSrc_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameSrc_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<LocalBattleGameInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.gameId_;
        int iComputeInt64Size = j10 != 0 ? 0 + CodedOutputStream.computeInt64Size(1, j10) : 0;
        if (!getGameNameBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(2, this.gameName_);
        }
        if (!getGameSrcBytes().isEmpty()) {
            iComputeInt64Size += GeneratedMessageV3.computeStringSize(3, this.gameSrc_);
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
        int iHashCode = ((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getGameId())) * 37) + 2) * 53) + getGameName().hashCode()) * 37) + 3) * 53) + getGameSrc().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.F.ensureFieldAccessorsInitialized(LocalBattleGameInfo.class, b.class);
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
        long j10 = this.gameId_;
        if (j10 != 0) {
            output.writeInt64(1, j10);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.gameName_);
        }
        if (!getGameSrcBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.gameSrc_);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ LocalBattleGameInfo(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(LocalBattleGameInfo prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static LocalBattleGameInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private LocalBattleGameInfo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LocalBattleGameInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static LocalBattleGameInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public LocalBattleGameInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static LocalBattleGameInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private LocalBattleGameInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.gameName_ = "";
        this.gameSrc_ = "";
    }

    public static LocalBattleGameInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static LocalBattleGameInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static LocalBattleGameInfo parseFrom(InputStream input) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private LocalBattleGameInfo(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.gameId_ = input.readInt64();
                        } else if (tag == 18) {
                            this.gameName_ = input.readStringRequireUtf8();
                        } else if (tag != 26) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.gameSrc_ = input.readStringRequireUtf8();
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

    public static LocalBattleGameInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static LocalBattleGameInfo parseFrom(CodedInputStream input) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static LocalBattleGameInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LocalBattleGameInfo) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
