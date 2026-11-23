package com.wufan.user.service.protobuf;

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
import com.google.protobuf.UnknownFieldSet;
import com.haima.hmcp.proto.GSSDK;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class GameListPermission extends GeneratedMessageV3 implements com.wufan.user.service.protobuf.a {
    public static final int CHEATEXPIRETIME_FIELD_NUMBER = 5;
    public static final int GAMEID_FIELD_NUMBER = 1;
    public static final int ISOPENCHEAT_FIELD_NUMBER = 4;
    public static final int ISOPENSP_FIELD_NUMBER = 2;
    public static final int SPEXPIRETIME_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private long cheatExpireTime_;
    private long gameId_;
    private boolean isOpenCheat_;
    private boolean isOpenSp_;
    private byte memoizedIsInitialized;
    private long spExpireTime_;
    private static final GameListPermission DEFAULT_INSTANCE = new GameListPermission();
    private static final Parser<GameListPermission> PARSER = new a();

    class a extends AbstractParser<GameListPermission> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public GameListPermission parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new GameListPermission(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements com.wufan.user.service.protobuf.a {
        private long cheatExpireTime_;
        private long gameId_;
        private boolean isOpenCheat_;
        private boolean isOpenSp_;
        private long spExpireTime_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return c.f88130i;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearCheatExpireTime() {
            this.cheatExpireTime_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearIsOpenCheat() {
            this.isOpenCheat_ = false;
            onChanged();
            return this;
        }

        public b clearIsOpenSp() {
            this.isOpenSp_ = false;
            onChanged();
            return this;
        }

        public b clearSpExpireTime() {
            this.spExpireTime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.wufan.user.service.protobuf.a
        public long getCheatExpireTime() {
            return this.cheatExpireTime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return c.f88130i;
        }

        @Override // com.wufan.user.service.protobuf.a
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.user.service.protobuf.a
        public boolean getIsOpenCheat() {
            return this.isOpenCheat_;
        }

        @Override // com.wufan.user.service.protobuf.a
        public boolean getIsOpenSp() {
            return this.isOpenSp_;
        }

        @Override // com.wufan.user.service.protobuf.a
        public long getSpExpireTime() {
            return this.spExpireTime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return c.f88131j.ensureFieldAccessorsInitialized(GameListPermission.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setCheatExpireTime(long value) {
            this.cheatExpireTime_ = value;
            onChanged();
            return this;
        }

        public b setGameId(long value) {
            this.gameId_ = value;
            onChanged();
            return this;
        }

        public b setIsOpenCheat(boolean value) {
            this.isOpenCheat_ = value;
            onChanged();
            return this;
        }

        public b setIsOpenSp(boolean value) {
            this.isOpenSp_ = value;
            onChanged();
            return this;
        }

        public b setSpExpireTime(long value) {
            this.spExpireTime_ = value;
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
        public GameListPermission build() {
            GameListPermission gameListPermissionBuildPartial = buildPartial();
            if (gameListPermissionBuildPartial.isInitialized()) {
                return gameListPermissionBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) gameListPermissionBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public GameListPermission buildPartial() {
            GameListPermission gameListPermission = new GameListPermission(this, (a) null);
            gameListPermission.gameId_ = this.gameId_;
            gameListPermission.isOpenSp_ = this.isOpenSp_;
            gameListPermission.spExpireTime_ = this.spExpireTime_;
            gameListPermission.isOpenCheat_ = this.isOpenCheat_;
            gameListPermission.cheatExpireTime_ = this.cheatExpireTime_;
            onBuilt();
            return gameListPermission;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public GameListPermission getDefaultInstanceForType() {
            return GameListPermission.getDefaultInstance();
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
            this.gameId_ = 0L;
            this.isOpenSp_ = false;
            this.spExpireTime_ = 0L;
            this.isOpenCheat_ = false;
            this.cheatExpireTime_ = 0L;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof GameListPermission) {
                return mergeFrom((GameListPermission) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b mergeFrom(GameListPermission other) {
            if (other == GameListPermission.getDefaultInstance()) {
                return this;
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (other.getIsOpenSp()) {
                setIsOpenSp(other.getIsOpenSp());
            }
            if (other.getSpExpireTime() != 0) {
                setSpExpireTime(other.getSpExpireTime());
            }
            if (other.getIsOpenCheat()) {
                setIsOpenCheat(other.getIsOpenCheat());
            }
            if (other.getCheatExpireTime() != 0) {
                setCheatExpireTime(other.getCheatExpireTime());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            GameListPermission gameListPermission = null;
            try {
                try {
                    GameListPermission gameListPermission2 = (GameListPermission) GameListPermission.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (gameListPermission2 != null) {
                        mergeFrom(gameListPermission2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    GameListPermission gameListPermission3 = (GameListPermission) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        gameListPermission = gameListPermission3;
                        if (gameListPermission != null) {
                            mergeFrom(gameListPermission);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (gameListPermission != null) {
                    mergeFrom(gameListPermission);
                }
                throw th;
            }
        }
    }

    /* synthetic */ GameListPermission(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static GameListPermission getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return c.f88130i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GameListPermission parseDelimitedFrom(InputStream input) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static GameListPermission parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<GameListPermission> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GameListPermission)) {
            return super.equals(obj);
        }
        GameListPermission gameListPermission = (GameListPermission) obj;
        return getGameId() == gameListPermission.getGameId() && getIsOpenSp() == gameListPermission.getIsOpenSp() && getSpExpireTime() == gameListPermission.getSpExpireTime() && getIsOpenCheat() == gameListPermission.getIsOpenCheat() && getCheatExpireTime() == gameListPermission.getCheatExpireTime() && this.unknownFields.equals(gameListPermission.unknownFields);
    }

    @Override // com.wufan.user.service.protobuf.a
    public long getCheatExpireTime() {
        return this.cheatExpireTime_;
    }

    @Override // com.wufan.user.service.protobuf.a
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.user.service.protobuf.a
    public boolean getIsOpenCheat() {
        return this.isOpenCheat_;
    }

    @Override // com.wufan.user.service.protobuf.a
    public boolean getIsOpenSp() {
        return this.isOpenSp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<GameListPermission> getParserForType() {
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
        boolean z10 = this.isOpenSp_;
        if (z10) {
            iComputeInt64Size += CodedOutputStream.computeBoolSize(2, z10);
        }
        long j11 = this.spExpireTime_;
        if (j11 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(3, j11);
        }
        boolean z11 = this.isOpenCheat_;
        if (z11) {
            iComputeInt64Size += CodedOutputStream.computeBoolSize(4, z11);
        }
        long j12 = this.cheatExpireTime_;
        if (j12 != 0) {
            iComputeInt64Size += CodedOutputStream.computeInt64Size(5, j12);
        }
        int serializedSize = iComputeInt64Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.wufan.user.service.protobuf.a
    public long getSpExpireTime() {
        return this.spExpireTime_;
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
        int iHashCode = ((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getGameId())) * 37) + 2) * 53) + Internal.hashBoolean(getIsOpenSp())) * 37) + 3) * 53) + Internal.hashLong(getSpExpireTime())) * 37) + 4) * 53) + Internal.hashBoolean(getIsOpenCheat())) * 37) + 5) * 53) + Internal.hashLong(getCheatExpireTime())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return c.f88131j.ensureFieldAccessorsInitialized(GameListPermission.class, b.class);
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
        boolean z10 = this.isOpenSp_;
        if (z10) {
            output.writeBool(2, z10);
        }
        long j11 = this.spExpireTime_;
        if (j11 != 0) {
            output.writeInt64(3, j11);
        }
        boolean z11 = this.isOpenCheat_;
        if (z11) {
            output.writeBool(4, z11);
        }
        long j12 = this.cheatExpireTime_;
        if (j12 != 0) {
            output.writeInt64(5, j12);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ GameListPermission(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(GameListPermission prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static GameListPermission parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private GameListPermission(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GameListPermission parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static GameListPermission parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public GameListPermission getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static GameListPermission parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private GameListPermission() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GameListPermission parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static GameListPermission parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private GameListPermission(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        this();
        extensionRegistry.getClass();
        UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int tag = input.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.gameId_ = input.readInt64();
                            } else if (tag == 16) {
                                this.isOpenSp_ = input.readBool();
                            } else if (tag == 24) {
                                this.spExpireTime_ = input.readInt64();
                            } else if (tag == 32) {
                                this.isOpenCheat_ = input.readBool();
                            } else if (tag != 40) {
                                if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                                }
                            } else {
                                this.cheatExpireTime_ = input.readInt64();
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

    public static GameListPermission parseFrom(InputStream input) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static GameListPermission parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static GameListPermission parseFrom(CodedInputStream input) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static GameListPermission parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (GameListPermission) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
