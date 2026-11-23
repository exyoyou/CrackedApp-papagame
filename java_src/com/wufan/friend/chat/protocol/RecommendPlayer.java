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
public final class RecommendPlayer extends GeneratedMessageV3 implements j0 {
    public static final int ACCOUNTID_FIELD_NUMBER = 1;
    public static final int AVATAR_FIELD_NUMBER = 2;
    public static final int BANNED_FIELD_NUMBER = 8;
    public static final int GAMEID_FIELD_NUMBER = 4;
    public static final int GAMENAME_FIELD_NUMBER = 5;
    public static final int LEVELNAME_FIELD_NUMBER = 7;
    public static final int LEVEL_FIELD_NUMBER = 6;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int accountId_;
    private volatile Object avatar_;
    private boolean banned_;
    private long gameId_;
    private volatile Object gameName_;
    private volatile Object levelName_;
    private int level_;
    private byte memoizedIsInitialized;
    private volatile Object nickname_;
    private static final RecommendPlayer DEFAULT_INSTANCE = new RecommendPlayer();
    private static final Parser<RecommendPlayer> PARSER = new a();

    class a extends AbstractParser<RecommendPlayer> {
        a() {
        }

        @Override // com.google.protobuf.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RecommendPlayer parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return new RecommendPlayer(input, extensionRegistry, null);
        }
    }

    public static final class b extends GeneratedMessageV3.Builder<b> implements j0 {
        private int accountId_;
        private Object avatar_;
        private boolean banned_;
        private long gameId_;
        private Object gameName_;
        private Object levelName_;
        private int level_;
        private Object nickname_;

        /* synthetic */ b(GeneratedMessageV3.BuilderParent builderParent, a aVar) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return a0.A;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b clearAccountId() {
            this.accountId_ = 0;
            onChanged();
            return this;
        }

        public b clearAvatar() {
            this.avatar_ = RecommendPlayer.getDefaultInstance().getAvatar();
            onChanged();
            return this;
        }

        public b clearBanned() {
            this.banned_ = false;
            onChanged();
            return this;
        }

        public b clearGameId() {
            this.gameId_ = 0L;
            onChanged();
            return this;
        }

        public b clearGameName() {
            this.gameName_ = RecommendPlayer.getDefaultInstance().getGameName();
            onChanged();
            return this;
        }

        public b clearLevel() {
            this.level_ = 0;
            onChanged();
            return this;
        }

        public b clearLevelName() {
            this.levelName_ = RecommendPlayer.getDefaultInstance().getLevelName();
            onChanged();
            return this;
        }

        public b clearNickname() {
            this.nickname_ = RecommendPlayer.getDefaultInstance().getNickname();
            onChanged();
            return this;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public int getAccountId() {
            return this.accountId_;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public String getAvatar() {
            Object obj = this.avatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.avatar_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public ByteString getAvatarBytes() {
            Object obj = this.avatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatar_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public boolean getBanned() {
            return this.banned_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return a0.A;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public long getGameId() {
            return this.gameId_;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public String getGameName() {
            Object obj = this.gameName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public ByteString getGameNameBytes() {
            Object obj = this.gameName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gameName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public int getLevel() {
            return this.level_;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public String getLevelName() {
            Object obj = this.levelName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.levelName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public ByteString getLevelNameBytes() {
            Object obj = this.levelName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.levelName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public String getNickname() {
            Object obj = this.nickname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.wufan.friend.chat.protocol.j0
        public ByteString getNicknameBytes() {
            Object obj = this.nickname_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickname_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return a0.B.ensureFieldAccessorsInitialized(RecommendPlayer.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public b setAccountId(int value) {
            this.accountId_ = value;
            onChanged();
            return this;
        }

        public b setAvatar(String value) {
            value.getClass();
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setAvatarBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.avatar_ = value;
            onChanged();
            return this;
        }

        public b setBanned(boolean value) {
            this.banned_ = value;
            onChanged();
            return this;
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

        public b setLevel(int value) {
            this.level_ = value;
            onChanged();
            return this;
        }

        public b setLevelName(String value) {
            value.getClass();
            this.levelName_ = value;
            onChanged();
            return this;
        }

        public b setLevelNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.levelName_ = value;
            onChanged();
            return this;
        }

        public b setNickname(String value) {
            value.getClass();
            this.nickname_ = value;
            onChanged();
            return this;
        }

        public b setNicknameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.nickname_ = value;
            onChanged();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.avatar_ = "";
            this.nickname_ = "";
            this.gameName_ = "";
            this.levelName_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (b) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayer build() {
            RecommendPlayer recommendPlayerBuildPartial = buildPartial();
            if (recommendPlayerBuildPartial.isInitialized()) {
                return recommendPlayerBuildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) recommendPlayerBuildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public RecommendPlayer buildPartial() {
            RecommendPlayer recommendPlayer = new RecommendPlayer(this, (a) null);
            recommendPlayer.accountId_ = this.accountId_;
            recommendPlayer.avatar_ = this.avatar_;
            recommendPlayer.nickname_ = this.nickname_;
            recommendPlayer.gameId_ = this.gameId_;
            recommendPlayer.gameName_ = this.gameName_;
            recommendPlayer.level_ = this.level_;
            recommendPlayer.levelName_ = this.levelName_;
            recommendPlayer.banned_ = this.banned_;
            onBuilt();
            return recommendPlayer;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public b clearField(Descriptors.FieldDescriptor field) {
            return (b) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RecommendPlayer getDefaultInstanceForType() {
            return RecommendPlayer.getDefaultInstance();
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
            this.accountId_ = 0;
            this.avatar_ = "";
            this.nickname_ = "";
            this.gameId_ = 0L;
            this.gameName_ = "";
            this.level_ = 0;
            this.levelName_ = "";
            this.banned_ = false;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: clone */
        public b mo24clone() {
            return (b) super.mo24clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(Message other) {
            if (other instanceof RecommendPlayer) {
                return mergeFrom((RecommendPlayer) other);
            }
            super.mergeFrom(other);
            return this;
        }

        private b(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.avatar_ = "";
            this.nickname_ = "";
            this.gameName_ = "";
            this.levelName_ = "";
            maybeForceBuilderInitialization();
        }

        public b mergeFrom(RecommendPlayer other) {
            if (other == RecommendPlayer.getDefaultInstance()) {
                return this;
            }
            if (other.getAccountId() != 0) {
                setAccountId(other.getAccountId());
            }
            if (!other.getAvatar().isEmpty()) {
                this.avatar_ = other.avatar_;
                onChanged();
            }
            if (!other.getNickname().isEmpty()) {
                this.nickname_ = other.nickname_;
                onChanged();
            }
            if (other.getGameId() != 0) {
                setGameId(other.getGameId());
            }
            if (!other.getGameName().isEmpty()) {
                this.gameName_ = other.gameName_;
                onChanged();
            }
            if (other.getLevel() != 0) {
                setLevel(other.getLevel());
            }
            if (!other.getLevelName().isEmpty()) {
                this.levelName_ = other.levelName_;
                onChanged();
            }
            if (other.getBanned()) {
                setBanned(other.getBanned());
            }
            mergeUnknownFields(((GeneratedMessageV3) other).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public b mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws Throwable {
            RecommendPlayer recommendPlayer = null;
            try {
                try {
                    RecommendPlayer recommendPlayer2 = (RecommendPlayer) RecommendPlayer.PARSER.parsePartialFrom(input, extensionRegistry);
                    if (recommendPlayer2 != null) {
                        mergeFrom(recommendPlayer2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e10) {
                    RecommendPlayer recommendPlayer3 = (RecommendPlayer) e10.getUnfinishedMessage();
                    try {
                        throw e10.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        recommendPlayer = recommendPlayer3;
                        if (recommendPlayer != null) {
                            mergeFrom(recommendPlayer);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (recommendPlayer != null) {
                    mergeFrom(recommendPlayer);
                }
                throw th;
            }
        }
    }

    /* synthetic */ RecommendPlayer(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, a aVar) throws InvalidProtocolBufferException {
        this(codedInputStream, extensionRegistryLite);
    }

    public static RecommendPlayer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return a0.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecommendPlayer parseDelimitedFrom(InputStream input) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static RecommendPlayer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<RecommendPlayer> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecommendPlayer)) {
            return super.equals(obj);
        }
        RecommendPlayer recommendPlayer = (RecommendPlayer) obj;
        return getAccountId() == recommendPlayer.getAccountId() && getAvatar().equals(recommendPlayer.getAvatar()) && getNickname().equals(recommendPlayer.getNickname()) && getGameId() == recommendPlayer.getGameId() && getGameName().equals(recommendPlayer.getGameName()) && getLevel() == recommendPlayer.getLevel() && getLevelName().equals(recommendPlayer.getLevelName()) && getBanned() == recommendPlayer.getBanned() && this.unknownFields.equals(recommendPlayer.unknownFields);
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public int getAccountId() {
        return this.accountId_;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public String getAvatar() {
        Object obj = this.avatar_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.avatar_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public ByteString getAvatarBytes() {
        Object obj = this.avatar_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.avatar_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public boolean getBanned() {
        return this.banned_;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public long getGameId() {
        return this.gameId_;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public String getGameName() {
        Object obj = this.gameName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gameName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public ByteString getGameNameBytes() {
        Object obj = this.gameName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.gameName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public int getLevel() {
        return this.level_;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public String getLevelName() {
        Object obj = this.levelName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.levelName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public ByteString getLevelNameBytes() {
        Object obj = this.levelName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.levelName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
    public String getNickname() {
        Object obj = this.nickname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nickname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.wufan.friend.chat.protocol.j0
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
    public Parser<RecommendPlayer> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.accountId_;
        int iComputeInt32Size = i11 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i11) : 0;
        if (!getAvatarBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(2, this.avatar_);
        }
        if (!getNicknameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(3, this.nickname_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt64Size(4, j10);
        }
        if (!getGameNameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(5, this.gameName_);
        }
        int i12 = this.level_;
        if (i12 != 0) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(6, i12);
        }
        if (!getLevelNameBytes().isEmpty()) {
            iComputeInt32Size += GeneratedMessageV3.computeStringSize(7, this.levelName_);
        }
        boolean z10 = this.banned_;
        if (z10) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(8, z10);
        }
        int serializedSize = iComputeInt32Size + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((((((((((((((((((((((((((((GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE + getDescriptor().hashCode()) * 37) + 1) * 53) + getAccountId()) * 37) + 2) * 53) + getAvatar().hashCode()) * 37) + 3) * 53) + getNickname().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getGameId())) * 37) + 5) * 53) + getGameName().hashCode()) * 37) + 6) * 53) + getLevel()) * 37) + 7) * 53) + getLevelName().hashCode()) * 37) + 8) * 53) + Internal.hashBoolean(getBanned())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return a0.B.ensureFieldAccessorsInitialized(RecommendPlayer.class, b.class);
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
        int i10 = this.accountId_;
        if (i10 != 0) {
            output.writeInt32(1, i10);
        }
        if (!getAvatarBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 2, this.avatar_);
        }
        if (!getNicknameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 3, this.nickname_);
        }
        long j10 = this.gameId_;
        if (j10 != 0) {
            output.writeInt64(4, j10);
        }
        if (!getGameNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 5, this.gameName_);
        }
        int i11 = this.level_;
        if (i11 != 0) {
            output.writeInt32(6, i11);
        }
        if (!getLevelNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(output, 7, this.levelName_);
        }
        boolean z10 = this.banned_;
        if (z10) {
            output.writeBool(8, z10);
        }
        this.unknownFields.writeTo(output);
    }

    /* synthetic */ RecommendPlayer(GeneratedMessageV3.Builder builder, a aVar) {
        this(builder);
    }

    public static b newBuilder(RecommendPlayer prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static RecommendPlayer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private RecommendPlayer(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecommendPlayer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static RecommendPlayer parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public RecommendPlayer getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b toBuilder() {
        a aVar = null;
        return this == DEFAULT_INSTANCE ? new b(aVar) : new b(aVar).mergeFrom(this);
    }

    public static RecommendPlayer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecommendPlayer() {
        this.memoizedIsInitialized = (byte) -1;
        this.avatar_ = "";
        this.nickname_ = "";
        this.gameName_ = "";
        this.levelName_ = "";
    }

    public static RecommendPlayer parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new b(parent, null);
    }

    public static RecommendPlayer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static RecommendPlayer parseFrom(InputStream input) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RecommendPlayer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private RecommendPlayer(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
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
                            this.accountId_ = input.readInt32();
                        } else if (tag == 18) {
                            this.avatar_ = input.readStringRequireUtf8();
                        } else if (tag == 26) {
                            this.nickname_ = input.readStringRequireUtf8();
                        } else if (tag == 32) {
                            this.gameId_ = input.readInt64();
                        } else if (tag == 42) {
                            this.gameName_ = input.readStringRequireUtf8();
                        } else if (tag == 48) {
                            this.level_ = input.readInt32();
                        } else if (tag == 58) {
                            this.levelName_ = input.readStringRequireUtf8();
                        } else if (tag != 64) {
                            if (!parseUnknownField(input, builderNewBuilder, extensionRegistry, tag)) {
                            }
                        } else {
                            this.banned_ = input.readBool();
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

    public static RecommendPlayer parseFrom(CodedInputStream input) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static RecommendPlayer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (RecommendPlayer) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
